; Auto-generated. Do not edit!


(cl:in-package nimo_end_effector-srv)


;//! \htmlinclude get_cal_dat-request.msg.html

(cl:defclass <get_cal_dat-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass get_cal_dat-request (<get_cal_dat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_cal_dat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_cal_dat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<get_cal_dat-request> is deprecated: use nimo_end_effector-srv:get_cal_dat-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <get_cal_dat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:id-val is deprecated.  Use nimo_end_effector-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_cal_dat-request>) ostream)
  "Serializes a message object of type '<get_cal_dat-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_cal_dat-request>) istream)
  "Deserializes a message object of type '<get_cal_dat-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_cal_dat-request>)))
  "Returns string type for a service object of type '<get_cal_dat-request>"
  "nimo_end_effector/get_cal_datRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_cal_dat-request)))
  "Returns string type for a service object of type 'get_cal_dat-request"
  "nimo_end_effector/get_cal_datRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_cal_dat-request>)))
  "Returns md5sum for a message object of type '<get_cal_dat-request>"
  "74ed4807db3aea6f5382bb427e2c235b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_cal_dat-request)))
  "Returns md5sum for a message object of type 'get_cal_dat-request"
  "74ed4807db3aea6f5382bb427e2c235b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_cal_dat-request>)))
  "Returns full string definition for message of type '<get_cal_dat-request>"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_cal_dat-request)))
  "Returns full string definition for message of type 'get_cal_dat-request"
  (cl:format cl:nil "string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_cal_dat-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_cal_dat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_cal_dat-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude get_cal_dat-response.msg.html

(cl:defclass <get_cal_dat-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:string
    :initform ""))
)

(cl:defclass get_cal_dat-response (<get_cal_dat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_cal_dat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_cal_dat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<get_cal_dat-response> is deprecated: use nimo_end_effector-srv:get_cal_dat-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <get_cal_dat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:flag-val is deprecated.  Use nimo_end_effector-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_cal_dat-response>) ostream)
  "Serializes a message object of type '<get_cal_dat-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_cal_dat-response>) istream)
  "Deserializes a message object of type '<get_cal_dat-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_cal_dat-response>)))
  "Returns string type for a service object of type '<get_cal_dat-response>"
  "nimo_end_effector/get_cal_datResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_cal_dat-response)))
  "Returns string type for a service object of type 'get_cal_dat-response"
  "nimo_end_effector/get_cal_datResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_cal_dat-response>)))
  "Returns md5sum for a message object of type '<get_cal_dat-response>"
  "74ed4807db3aea6f5382bb427e2c235b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_cal_dat-response)))
  "Returns md5sum for a message object of type 'get_cal_dat-response"
  "74ed4807db3aea6f5382bb427e2c235b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_cal_dat-response>)))
  "Returns full string definition for message of type '<get_cal_dat-response>"
  (cl:format cl:nil "string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_cal_dat-response)))
  "Returns full string definition for message of type 'get_cal_dat-response"
  (cl:format cl:nil "string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_cal_dat-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_cal_dat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_cal_dat-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_cal_dat)))
  'get_cal_dat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_cal_dat)))
  'get_cal_dat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_cal_dat)))
  "Returns string type for a service object of type '<get_cal_dat>"
  "nimo_end_effector/get_cal_dat")