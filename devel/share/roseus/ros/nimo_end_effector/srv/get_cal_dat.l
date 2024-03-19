;; Auto-generated. Do not edit!


(when (boundp 'nimo_end_effector::get_cal_dat)
  (if (not (find-package "NIMO_END_EFFECTOR"))
    (make-package "NIMO_END_EFFECTOR"))
  (shadow 'get_cal_dat (find-package "NIMO_END_EFFECTOR")))
(unless (find-package "NIMO_END_EFFECTOR::GET_CAL_DAT")
  (make-package "NIMO_END_EFFECTOR::GET_CAL_DAT"))
(unless (find-package "NIMO_END_EFFECTOR::GET_CAL_DATREQUEST")
  (make-package "NIMO_END_EFFECTOR::GET_CAL_DATREQUEST"))
(unless (find-package "NIMO_END_EFFECTOR::GET_CAL_DATRESPONSE")
  (make-package "NIMO_END_EFFECTOR::GET_CAL_DATRESPONSE"))

(in-package "ROS")





(defclass nimo_end_effector::get_cal_datRequest
  :super ros::object
  :slots (_id ))

(defmethod nimo_end_effector::get_cal_datRequest
  (:init
   (&key
    ((:id __id) "")
    )
   (send-super :init)
   (setq _id (string __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nimo_end_effector::get_cal_datResponse
  :super ros::object
  :slots (_flag ))

(defmethod nimo_end_effector::get_cal_datResponse
  (:init
   (&key
    ((:flag __flag) "")
    )
   (send-super :init)
   (setq _flag (string __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; string _flag
    4 (length _flag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _flag
       (write-long (length _flag) s) (princ _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _flag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nimo_end_effector::get_cal_dat
  :super ros::object
  :slots ())

(setf (get nimo_end_effector::get_cal_dat :md5sum-) "74ed4807db3aea6f5382bb427e2c235b")
(setf (get nimo_end_effector::get_cal_dat :datatype-) "nimo_end_effector/get_cal_dat")
(setf (get nimo_end_effector::get_cal_dat :request) nimo_end_effector::get_cal_datRequest)
(setf (get nimo_end_effector::get_cal_dat :response) nimo_end_effector::get_cal_datResponse)

(defmethod nimo_end_effector::get_cal_datRequest
  (:response () (instance nimo_end_effector::get_cal_datResponse :init)))

(setf (get nimo_end_effector::get_cal_datRequest :md5sum-) "74ed4807db3aea6f5382bb427e2c235b")
(setf (get nimo_end_effector::get_cal_datRequest :datatype-) "nimo_end_effector/get_cal_datRequest")
(setf (get nimo_end_effector::get_cal_datRequest :definition-)
      "string id
---
string flag

")

(setf (get nimo_end_effector::get_cal_datResponse :md5sum-) "74ed4807db3aea6f5382bb427e2c235b")
(setf (get nimo_end_effector::get_cal_datResponse :datatype-) "nimo_end_effector/get_cal_datResponse")
(setf (get nimo_end_effector::get_cal_datResponse :definition-)
      "string id
---
string flag

")



(provide :nimo_end_effector/get_cal_dat "74ed4807db3aea6f5382bb427e2c235b")


