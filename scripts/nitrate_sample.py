"""
File: nitrate_sample.py
Author: Sruthi Mukkamala
Date: 3/11/2024
Description: Handles function calls and serial communication between end effector's Adafruit Bluefruit and NiMo's Finite State Machine (FSM).
"""

#!/usr/bin/env python3

from nimo_end_effector.srv import *
from std_msgs.msg import Float64
import rospy

from serial import *
import time

class NSampleNode:
    @classmethod
    def __init__(cls):
        """
        The end effector node has three service calls - 
        (1) get_dat: receive nitrate sensor's readings (when inserted in cornstalk) in mV. Complete simple data processing and linear interpolation 
        to determine final nitrate concentration reading in ppm (parts per million).
        (2) get_cal_dat: pass into service call which calibration point to collect and store: high concentration or low concentration. Similar to get_dat,
        mV values are recorded from the nitrate sensor. Data stored is the raw mV reading at this calibration point.
        (3) act_linear: pass into service call whether to fully extend or rectract linear actuator for gripping mechanism. 
        """

        # Define service calls
        rospy.loginfo('Starting nitrate_sample node.')
        cls.get_dat_service = rospy.Service('get_dat', get_dat, cls.handle_get_dat)
        cls.get_cal_dat_service = rospy.Service('get_cal_dat', get_cal_dat, cls.handle_get_cal_dat)
        cls.act_linear_service = rospy.Service('act_linear', act_linear, cls.handle_act_linear)
        cls.pub = rospy.Publisher('nit_val', Float64, queue_size=1000)

        # Define global variables
        cls.cal_high = 1.4 #high calibration reading, in mV
        cls.cal_low = 1.7 #low calibration reading, in mV
        cls.conc_high = 2000 #high calibration concentration of sol'n, in ppm
        cls.conc_low = 200 #low calibration concentration of sol'n, in ppm
        cls.actuator_status = "" #actuator status
        cls.actuate = "" #actuator extend vs. retract.

        # Set up pyserial communication
        # cls.serialcomm = Serial('/dev/ttyACM1', 9600)
        # cls.serialcomm.timeout = 1
        cls.serialcomm = Serial(port='/dev/ttyACM2', \
                                baudrate=9600,
                                bytesize=EIGHTBITS,
                                parity=PARITY_NONE,
                                stopbits=STOPBITS_ONE,
                                timeout=0.25)
        
        cls.timer = rospy.timer.Timer(rospy.rostime.Duration(0.01), cls.getNitVal)

        rospy.loginfo('Waiting for service calls...')

    @classmethod
    def getNitVal(cls, idk):
        text = str(cls.serialcomm.readline().decode().strip('\r\n'))
        # rospy.logwarn(text)
        try:
            info = text.split(',')
            cls.nit_val = float(info[1])
            if info[0] == '1':
                cls.actuator_status = True
            cls.pub.publish(Float64(cls.nit_val))
        except:
            return

    @classmethod
    def sample(cls):
        """
        Handles reading nitrate sensor readings and simple data processing. Data processing involves taking the average of the readings
        over a course of 10 seconds.
        """

        # Delay reading for 5 seconds
        time.sleep(5)
        # Read continuously for 10 seconds
        t_end = time.time() + 10
        # For ten seconds, collect data and sample values in mV
        nit_vals = []
        # For ten seconds, collect data and sample values
        while time.time() < t_end:
            nit_vals.append(float(cls.nit_val))
            time.sleep(0.1)
        # Average over ten seconds for final calibration value
        rospy.logwarn(nit_vals)
        out_val = sum(nit_vals) / len(nit_vals)
        return out_val
    
    @classmethod
    def handle_get_dat(cls, req: get_datRequest) -> get_datResponse:
        """
        get_dat callback function. Reads in nitrate sensor values and linearly interpolates to ppm value.

        INPUTS (get_datRequest):
        * None
        OUTPUTS (get_datResponse):
        * flag: description of how get_dat process went
        * nitrate_val: nitrate concentration reading from nitrate sensor, in ppm. -1 if invalid or out of range reading.
        """

        # Call sample function
        nit_val_mV = cls.sample()
        # Linear interpolation for value in ppm (given mV)
        if cls.cal_high == cls.cal_low:
            return get_datResponse(nitrate_val = -1, flag = "ERROR")
        nit_val_ppm = (cls.conc_high-cls.conc_low)/(cls.cal_high-cls.cal_low)*(nit_val_mV-cls.cal_low) + cls.conc_low
        # If interpolated value is out of calibration range, throw error flag
        if nit_val_ppm > cls.conc_high or nit_val_ppm < cls.conc_low:
            return get_datResponse(nitrate_val = -1, flag = "Nitrate value out of range.")
        # Otherwise return nitrate value in ppm
        else:
            return get_datResponse(nitrate_val = nit_val_ppm, flag = "SUCCESS")
        
    @classmethod
    def handle_get_cal_dat(cls, req: get_cal_datRequest) -> get_cal_datResponse:
        """
        get_cal_dat callback function. Reads in nitrate sensor values during calibration process and stores as raw mV value.

        INPUTS (get_cal_datRequest):
        * status: identifies which clean/calibration process is triggered by FSM. Can be "clean" (water rinse), "cal_low" (low conc. calibration process),
        or "clean_high" (low conc. calibration process).
        OUTPUTS (get_cal_datResponse):
        * flag: description of how get_cal_dat process went
        """

        status = req.id
        # If "clean" status, just return N/A flag
        if status == "clean":
            rospy.loginfo("Clean sensor has been requested.")
            return get_cal_datResponse(flag = "N/A")
        # If "cal_low" or "cal_high", call sample function and store appropriately
        elif status == "cal_low":
            cls.cal_low = cls.sample()
        elif status == "cal_high":
            cls.cal_high = cls.sample()
        # Throw error otherwise
        else:
            rospy.logerr("Invalid status for calibration has likely been inputted!")
            return get_cal_datResponse(flag = "ERROR")

        return get_cal_datResponse(flag = "SUCCESS")

    @classmethod
    def handle_act_linear(cls, req: act_linearRequest) -> act_linearResponse:
        """
        act_linear callback function. Controls movement of linear actuator.

        INPUTS (act_linearRequest):
        * actuate: identifies whether to "extend" or "retract" the linear actuator.
        OUTPUTS (act_linearResponse):
        * flag: description of how act_linear process went
        """
        if cls.actuate == req.actuate:
            rospy.logerr("The linear actuator is already at requested position.")
            return act_linearResponse(flag = "ERROR")
        else:
            cls.actuate = req.actuate

        if cls.actuate == "extend":
            cls.serialcomm.write(str(3).encode()) # "1" is associated to full extention (50 mm stroke)
        elif cls.actuate == "retract":
            cls.serialcomm.write(str(5).encode()) # "0" is associated to full retraction (0 mm stroke)

        # just for testing (need to write elsewhere)
        elif cls.actuate == "unload":
            cls.serialcomm.write(str(6).encode()) # "0" is associated to full retraction (0 mm stroke)
        elif cls.actuate == "load":
            cls.serialcomm.write(str(1).encode()) # "0" is associated to full retraction (0 mm stroke)

        else: # Otherwise throw error
            rospy.logerr("Invalid request for actuation has likely been inputted!")
            return act_linearResponse(flag = "ERROR")
        
        while True:
            if cls.actuator_status == True:
                cls.actuator_status = False
                break

        return act_linearResponse(flag = "SUCCESS")



if __name__ == '__main__':
    # Define nimo_end_effector node and process service calls.
    rospy.init_node('nimo_end_effector')
    N_sample_node = NSampleNode()
    rospy.spin()
    
