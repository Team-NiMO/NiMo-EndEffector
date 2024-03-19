;; Auto-generated. Do not edit!


(when (boundp 'nimo_end_effector::act_linear)
  (if (not (find-package "NIMO_END_EFFECTOR"))
    (make-package "NIMO_END_EFFECTOR"))
  (shadow 'act_linear (find-package "NIMO_END_EFFECTOR")))
(unless (find-package "NIMO_END_EFFECTOR::ACT_LINEAR")
  (make-package "NIMO_END_EFFECTOR::ACT_LINEAR"))
(unless (find-package "NIMO_END_EFFECTOR::ACT_LINEARREQUEST")
  (make-package "NIMO_END_EFFECTOR::ACT_LINEARREQUEST"))
(unless (find-package "NIMO_END_EFFECTOR::ACT_LINEARRESPONSE")
  (make-package "NIMO_END_EFFECTOR::ACT_LINEARRESPONSE"))

(in-package "ROS")





(defclass nimo_end_effector::act_linearRequest
  :super ros::object
  :slots (_actuate ))

(defmethod nimo_end_effector::act_linearRequest
  (:init
   (&key
    ((:actuate __actuate) "")
    )
   (send-super :init)
   (setq _actuate (string __actuate))
   self)
  (:actuate
   (&optional __actuate)
   (if __actuate (setq _actuate __actuate)) _actuate)
  (:serialization-length
   ()
   (+
    ;; string _actuate
    4 (length _actuate)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _actuate
       (write-long (length _actuate) s) (princ _actuate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _actuate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actuate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nimo_end_effector::act_linearResponse
  :super ros::object
  :slots (_flag ))

(defmethod nimo_end_effector::act_linearResponse
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

(defclass nimo_end_effector::act_linear
  :super ros::object
  :slots ())

(setf (get nimo_end_effector::act_linear :md5sum-) "63835d95a9bc618eb2108b4cd1999061")
(setf (get nimo_end_effector::act_linear :datatype-) "nimo_end_effector/act_linear")
(setf (get nimo_end_effector::act_linear :request) nimo_end_effector::act_linearRequest)
(setf (get nimo_end_effector::act_linear :response) nimo_end_effector::act_linearResponse)

(defmethod nimo_end_effector::act_linearRequest
  (:response () (instance nimo_end_effector::act_linearResponse :init)))

(setf (get nimo_end_effector::act_linearRequest :md5sum-) "63835d95a9bc618eb2108b4cd1999061")
(setf (get nimo_end_effector::act_linearRequest :datatype-) "nimo_end_effector/act_linearRequest")
(setf (get nimo_end_effector::act_linearRequest :definition-)
      "string actuate
---
string flag

")

(setf (get nimo_end_effector::act_linearResponse :md5sum-) "63835d95a9bc618eb2108b4cd1999061")
(setf (get nimo_end_effector::act_linearResponse :datatype-) "nimo_end_effector/act_linearResponse")
(setf (get nimo_end_effector::act_linearResponse :definition-)
      "string actuate
---
string flag

")



(provide :nimo_end_effector/act_linear "63835d95a9bc618eb2108b4cd1999061")


