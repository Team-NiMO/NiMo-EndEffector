; Auto-generated. Do not edit!


(cl:in-package nimo_end_effector-srv)


;//! \htmlinclude get_dat-request.msg.html

(cl:defclass <get_dat-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_dat-request (<get_dat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_dat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_dat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<get_dat-request> is deprecated: use nimo_end_effector-srv:get_dat-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_dat-request>) ostream)
  "Serializes a message object of type '<get_dat-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_dat-request>) istream)
  "Deserializes a message object of type '<get_dat-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_dat-request>)))
  "Returns string type for a service object of type '<get_dat-request>"
  "nimo_end_effector/get_datRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_dat-request)))
  "Returns string type for a service object of type 'get_dat-request"
  "nimo_end_effector/get_datRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_dat-request>)))
  "Returns md5sum for a message object of type '<get_dat-request>"
  "94e2c8ba95addd945b6e068d063d8aa3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_dat-request)))
  "Returns md5sum for a message object of type 'get_dat-request"
  "94e2c8ba95addd945b6e068d063d8aa3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_dat-request>)))
  "Returns full string definition for message of type '<get_dat-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_dat-request)))
  "Returns full string definition for message of type 'get_dat-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_dat-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_dat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_dat-request
))
;//! \htmlinclude get_dat-response.msg.html

(cl:defclass <get_dat-response> (roslisp-msg-protocol:ros-message)
  ((nitrate_val
    :reader nitrate_val
    :initarg :nitrate_val
    :type cl:float
    :initform 0.0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:string
    :initform ""))
)

(cl:defclass get_dat-response (<get_dat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_dat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_dat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<get_dat-response> is deprecated: use nimo_end_effector-srv:get_dat-response instead.")))

(cl:ensure-generic-function 'nitrate_val-val :lambda-list '(m))
(cl:defmethod nitrate_val-val ((m <get_dat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:nitrate_val-val is deprecated.  Use nimo_end_effector-srv:nitrate_val instead.")
  (nitrate_val m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <get_dat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:flag-val is deprecated.  Use nimo_end_effector-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_dat-response>) ostream)
  "Serializes a message object of type '<get_dat-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'nitrate_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_dat-response>) istream)
  "Deserializes a message object of type '<get_dat-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nitrate_val) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_dat-response>)))
  "Returns string type for a service object of type '<get_dat-response>"
  "nimo_end_effector/get_datResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_dat-response)))
  "Returns string type for a service object of type 'get_dat-response"
  "nimo_end_effector/get_datResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_dat-response>)))
  "Returns md5sum for a message object of type '<get_dat-response>"
  "94e2c8ba95addd945b6e068d063d8aa3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_dat-response)))
  "Returns md5sum for a message object of type 'get_dat-response"
  "94e2c8ba95addd945b6e068d063d8aa3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_dat-response>)))
  "Returns full string definition for message of type '<get_dat-response>"
  (cl:format cl:nil "float64 nitrate_val~%string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_dat-response)))
  "Returns full string definition for message of type 'get_dat-response"
  (cl:format cl:nil "float64 nitrate_val~%string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_dat-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_dat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_dat-response
    (cl:cons ':nitrate_val (nitrate_val msg))
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_dat)))
  'get_dat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_dat)))
  'get_dat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_dat)))
  "Returns string type for a service object of type '<get_dat>"
  "nimo_end_effector/get_dat")