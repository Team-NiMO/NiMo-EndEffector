# NiMo-EndEffector
End Effector package for MRSD '25 Team D: NiMo (Nitrate Monitoring of Cornstalks).

Handles function calls and serial communication between end effector's Adafruit Bluefruit and NiMo's Finite State Machine (FSM).

The end effector node has three service calls - 
(1) get_dat: receive nitrate sensor's readings (when inserted in cornstalk) in mV. Complete simple data processing and linear interpolation to determine final nitrate concentration reading in ppm (parts per million).

(2) get_cal_dat: pass into service call which calibration point to collect and store: high concentration or low concentration. Similar to get_dat, mV values are recorded from the nitrate sensor. Data stored is the raw mV reading at this calibration point.

(3) act_linear: pass into service call whether to fully extend or rectract linear actuator for gripping mechanism.
