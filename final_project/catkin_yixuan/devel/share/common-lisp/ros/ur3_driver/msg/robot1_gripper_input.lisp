; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot1_gripper_input.msg.html

(cl:defclass <robot1_gripper_input> (roslisp-msg-protocol:ros-message)
  ((DIGIN_1
    :reader DIGIN_1
    :initarg :DIGIN_1
    :type cl:integer
    :initform 0)
   (AIN0_1
    :reader AIN0_1
    :initarg :AIN0_1
    :type cl:float
    :initform 0.0)
   (AIN1_1
    :reader AIN1_1
    :initarg :AIN1_1
    :type cl:float
    :initform 0.0))
)

(cl:defclass robot1_gripper_input (<robot1_gripper_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot1_gripper_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot1_gripper_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot1_gripper_input> is deprecated: use ur3_driver-msg:robot1_gripper_input instead.")))

(cl:ensure-generic-function 'DIGIN_1-val :lambda-list '(m))
(cl:defmethod DIGIN_1-val ((m <robot1_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:DIGIN_1-val is deprecated.  Use ur3_driver-msg:DIGIN_1 instead.")
  (DIGIN_1 m))

(cl:ensure-generic-function 'AIN0_1-val :lambda-list '(m))
(cl:defmethod AIN0_1-val ((m <robot1_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:AIN0_1-val is deprecated.  Use ur3_driver-msg:AIN0_1 instead.")
  (AIN0_1 m))

(cl:ensure-generic-function 'AIN1_1-val :lambda-list '(m))
(cl:defmethod AIN1_1-val ((m <robot1_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:AIN1_1-val is deprecated.  Use ur3_driver-msg:AIN1_1 instead.")
  (AIN1_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot1_gripper_input>) ostream)
  "Serializes a message object of type '<robot1_gripper_input>"
  (cl:let* ((signed (cl:slot-value msg 'DIGIN_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AIN0_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AIN1_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot1_gripper_input>) istream)
  "Deserializes a message object of type '<robot1_gripper_input>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DIGIN_1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AIN0_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AIN1_1) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot1_gripper_input>)))
  "Returns string type for a message object of type '<robot1_gripper_input>"
  "ur3_driver/robot1_gripper_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot1_gripper_input)))
  "Returns string type for a message object of type 'robot1_gripper_input"
  "ur3_driver/robot1_gripper_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot1_gripper_input>)))
  "Returns md5sum for a message object of type '<robot1_gripper_input>"
  "470db4c19d42bec85fe6c2febed1313f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot1_gripper_input)))
  "Returns md5sum for a message object of type 'robot1_gripper_input"
  "470db4c19d42bec85fe6c2febed1313f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot1_gripper_input>)))
  "Returns full string definition for message of type '<robot1_gripper_input>"
  (cl:format cl:nil "int32 DIGIN_1 ~%float64 AIN0_1~%float64 AIN1_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot1_gripper_input)))
  "Returns full string definition for message of type 'robot1_gripper_input"
  (cl:format cl:nil "int32 DIGIN_1 ~%float64 AIN0_1~%float64 AIN1_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot1_gripper_input>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot1_gripper_input>))
  "Converts a ROS message object to a list"
  (cl:list 'robot1_gripper_input
    (cl:cons ':DIGIN_1 (DIGIN_1 msg))
    (cl:cons ':AIN0_1 (AIN0_1 msg))
    (cl:cons ':AIN1_1 (AIN1_1 msg))
))
