; Auto-generated. Do not edit!


(cl:in-package nimo_end_effector-srv)


;//! \htmlinclude act_linear-request.msg.html

(cl:defclass <act_linear-request> (roslisp-msg-protocol:ros-message)
  ((actuate
    :reader actuate
    :initarg :actuate
    :type cl:string
    :initform ""))
)

(cl:defclass act_linear-request (<act_linear-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <act_linear-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'act_linear-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<act_linear-request> is deprecated: use nimo_end_effector-srv:act_linear-request instead.")))

(cl:ensure-generic-function 'actuate-val :lambda-list '(m))
(cl:defmethod actuate-val ((m <act_linear-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:actuate-val is deprecated.  Use nimo_end_effector-srv:actuate instead.")
  (actuate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <act_linear-request>) ostream)
  "Serializes a message object of type '<act_linear-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actuate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actuate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <act_linear-request>) istream)
  "Deserializes a message object of type '<act_linear-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actuate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actuate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<act_linear-request>)))
  "Returns string type for a service object of type '<act_linear-request>"
  "nimo_end_effector/act_linearRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'act_linear-request)))
  "Returns string type for a service object of type 'act_linear-request"
  "nimo_end_effector/act_linearRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<act_linear-request>)))
  "Returns md5sum for a message object of type '<act_linear-request>"
  "63835d95a9bc618eb2108b4cd1999061")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'act_linear-request)))
  "Returns md5sum for a message object of type 'act_linear-request"
  "63835d95a9bc618eb2108b4cd1999061")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<act_linear-request>)))
  "Returns full string definition for message of type '<act_linear-request>"
  (cl:format cl:nil "string actuate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'act_linear-request)))
  "Returns full string definition for message of type 'act_linear-request"
  (cl:format cl:nil "string actuate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <act_linear-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actuate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <act_linear-request>))
  "Converts a ROS message object to a list"
  (cl:list 'act_linear-request
    (cl:cons ':actuate (actuate msg))
))
;//! \htmlinclude act_linear-response.msg.html

(cl:defclass <act_linear-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:string
    :initform ""))
)

(cl:defclass act_linear-response (<act_linear-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <act_linear-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'act_linear-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nimo_end_effector-srv:<act_linear-response> is deprecated: use nimo_end_effector-srv:act_linear-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <act_linear-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nimo_end_effector-srv:flag-val is deprecated.  Use nimo_end_effector-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <act_linear-response>) ostream)
  "Serializes a message object of type '<act_linear-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <act_linear-response>) istream)
  "Deserializes a message object of type '<act_linear-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<act_linear-response>)))
  "Returns string type for a service object of type '<act_linear-response>"
  "nimo_end_effector/act_linearResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'act_linear-response)))
  "Returns string type for a service object of type 'act_linear-response"
  "nimo_end_effector/act_linearResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<act_linear-response>)))
  "Returns md5sum for a message object of type '<act_linear-response>"
  "63835d95a9bc618eb2108b4cd1999061")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'act_linear-response)))
  "Returns md5sum for a message object of type 'act_linear-response"
  "63835d95a9bc618eb2108b4cd1999061")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<act_linear-response>)))
  "Returns full string definition for message of type '<act_linear-response>"
  (cl:format cl:nil "string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'act_linear-response)))
  "Returns full string definition for message of type 'act_linear-response"
  (cl:format cl:nil "string flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <act_linear-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <act_linear-response>))
  "Converts a ROS message object to a list"
  (cl:list 'act_linear-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'act_linear)))
  'act_linear-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'act_linear)))
  'act_linear-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'act_linear)))
  "Returns string type for a service object of type '<act_linear>"
  "nimo_end_effector/act_linear")