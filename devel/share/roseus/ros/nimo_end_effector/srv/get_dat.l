;; Auto-generated. Do not edit!


(when (boundp 'nimo_end_effector::get_dat)
  (if (not (find-package "NIMO_END_EFFECTOR"))
    (make-package "NIMO_END_EFFECTOR"))
  (shadow 'get_dat (find-package "NIMO_END_EFFECTOR")))
(unless (find-package "NIMO_END_EFFECTOR::GET_DAT")
  (make-package "NIMO_END_EFFECTOR::GET_DAT"))
(unless (find-package "NIMO_END_EFFECTOR::GET_DATREQUEST")
  (make-package "NIMO_END_EFFECTOR::GET_DATREQUEST"))
(unless (find-package "NIMO_END_EFFECTOR::GET_DATRESPONSE")
  (make-package "NIMO_END_EFFECTOR::GET_DATRESPONSE"))

(in-package "ROS")





(defclass nimo_end_effector::get_datRequest
  :super ros::object
  :slots ())

(defmethod nimo_end_effector::get_datRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass nimo_end_effector::get_datResponse
  :super ros::object
  :slots (_nitrate_val _flag ))

(defmethod nimo_end_effector::get_datResponse
  (:init
   (&key
    ((:nitrate_val __nitrate_val) 0.0)
    ((:flag __flag) "")
    )
   (send-super :init)
   (setq _nitrate_val (float __nitrate_val))
   (setq _flag (string __flag))
   self)
  (:nitrate_val
   (&optional __nitrate_val)
   (if __nitrate_val (setq _nitrate_val __nitrate_val)) _nitrate_val)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; float64 _nitrate_val
    8
    ;; string _flag
    4 (length _flag)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _nitrate_val
       (sys::poke _nitrate_val (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _flag
       (write-long (length _flag) s) (princ _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _nitrate_val
     (setq _nitrate_val (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _flag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nimo_end_effector::get_dat
  :super ros::object
  :slots ())

(setf (get nimo_end_effector::get_dat :md5sum-) "94e2c8ba95addd945b6e068d063d8aa3")
(setf (get nimo_end_effector::get_dat :datatype-) "nimo_end_effector/get_dat")
(setf (get nimo_end_effector::get_dat :request) nimo_end_effector::get_datRequest)
(setf (get nimo_end_effector::get_dat :response) nimo_end_effector::get_datResponse)

(defmethod nimo_end_effector::get_datRequest
  (:response () (instance nimo_end_effector::get_datResponse :init)))

(setf (get nimo_end_effector::get_datRequest :md5sum-) "94e2c8ba95addd945b6e068d063d8aa3")
(setf (get nimo_end_effector::get_datRequest :datatype-) "nimo_end_effector/get_datRequest")
(setf (get nimo_end_effector::get_datRequest :definition-)
      "---
float64 nitrate_val
string flag

")

(setf (get nimo_end_effector::get_datResponse :md5sum-) "94e2c8ba95addd945b6e068d063d8aa3")
(setf (get nimo_end_effector::get_datResponse :datatype-) "nimo_end_effector/get_datResponse")
(setf (get nimo_end_effector::get_datResponse :definition-)
      "---
float64 nitrate_val
string flag

")



(provide :nimo_end_effector/get_dat "94e2c8ba95addd945b6e068d063d8aa3")


