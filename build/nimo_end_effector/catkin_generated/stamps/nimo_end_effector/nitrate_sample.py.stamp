#!/usr/bin/env python3

# from nimo_end_effector.srv import (get_dat, get_cal_dat, act_linear)

from nimo_end_effector.srv import *
import rospy

import serial
import time

class NSampleNode:
    @classmethod
    def __init__(cls):

        rospy.loginfo('Starting nitrate_sample node.')
        cls.get_dat_service = rospy.Service('get_dat', get_dat, handle_get_dat)
        cls.get_cal_dat_service = rospy.Service('get_cal_dat', get_cal_dat, handle_get_cal_dat)
        cls.act_linear_service = rospy.Service('act_linear', act_linear, handle_act_linear)

        cls.cal_high = -1
        cls.cal_low = -1
        cls.conc_high = 2000 #ppm
        cls.conc_low = 200 #ppm

        serialcomm = serial.Serial('COM6', 9600)
        serialcomm.timeout = 1

        rospy.loginfo('Waiting for service calls...')

    def sample(cls):
        # Delay for 5 seconds
        time.sleep(5)
        # Read for 10 seconds
        t_end = time.time() + 10
        n_samples = 0
        nit_val = 0
        # For ten seconds, collect data and sample values
        while time.time() < t_end:
            nit_val += float(serialcomm.read())
            n_samples += 1
        # Average over ten seconds for final calibration value
        nit_val /= n_samples
        return nit_val
    
    def handle_get_dat(cls, req) -> get_datResponse:
        nit_val_mV = sample()
        nit_val_ppm = (cls.conc_high-cls.conc_low)/(cls.cal_high-cls.cal_low)*(nit_val_mV-cls.cal_low) + cls.conc_low
        if nit_val_ppm > cls.conc_high or nit_val_ppm < cls.conc_low:
            return get_datResponse(nitrate_val = -1, flag = "Nitrate value out of range.")
        else:
            return get_datResponse(nitrate_val = nit_val_ppm, flag = "SUCCESS")
        
        
    def handle_get_cal_dat(cls, req) -> get_cal_datResponse:

        status = req.status
        if status == "clean":
            rospy.loginfo("Clean sensor has been requested.")
            return get_cal_datResponse(flag = "N/A")
        elif status == "cal_low":
            cls.cal_low = sample()
        elif status == "cal_high":
            cls.cal_high = sample()
        else:
            rospy.logerr("Invalid status for calibration has likely been inputted!", "red")
            return get_cal_datResponse(flag = "ERROR")

        return get_cal_datResponse(flag = "SUCCESS")


    def handle_act_linear(cls, req) -> act_linearResponse:
        actuate = req.actuate
        if actuate == "extend":
            serialcomm.write(str(1).encode())
        elif actuate == "retract":
            serialcomm.write(str(0).encode())
        else:
            rospy.logerr("Invalid request for actuation has likely been inputted!", "red")
            return act_linearResponse(flag = "ERROR")
        return act_linearResponse(flag = "SUCCESS")



if __name__ == '__main__':
    rospy.init_node('nitrate_sample')
    N_sample_node = NSampleNode()
    rospy.spin()
    