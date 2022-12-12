; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot2_gripper_input.msg.html

(cl:defclass <robot2_gripper_input> (roslisp-msg-protocol:ros-message)
  ((DIGIN_2
    :reader DIGIN_2
    :initarg :DIGIN_2
    :type cl:integer
    :initform 0)
   (AIN0_2
    :reader AIN0_2
    :initarg :AIN0_2
    :type cl:float
    :initform 0.0)
   (AIN1_2
    :reader AIN1_2
    :initarg :AIN1_2
    :type cl:float
    :initform 0.0))
)

(cl:defclass robot2_gripper_input (<robot2_gripper_input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot2_gripper_input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot2_gripper_input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot2_gripper_input> is deprecated: use ur3_driver-msg:robot2_gripper_input instead.")))

(cl:ensure-generic-function 'DIGIN_2-val :lambda-list '(m))
(cl:defmethod DIGIN_2-val ((m <robot2_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:DIGIN_2-val is deprecated.  Use ur3_driver-msg:DIGIN_2 instead.")
  (DIGIN_2 m))

(cl:ensure-generic-function 'AIN0_2-val :lambda-list '(m))
(cl:defmethod AIN0_2-val ((m <robot2_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:AIN0_2-val is deprecated.  Use ur3_driver-msg:AIN0_2 instead.")
  (AIN0_2 m))

(cl:ensure-generic-function 'AIN1_2-val :lambda-list '(m))
(cl:defmethod AIN1_2-val ((m <robot2_gripper_input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:AIN1_2-val is deprecated.  Use ur3_driver-msg:AIN1_2 instead.")
  (AIN1_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot2_gripper_input>) ostream)
  "Serializes a message object of type '<robot2_gripper_input>"
  (cl:let* ((signed (cl:slot-value msg 'DIGIN_2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AIN0_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AIN1_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot2_gripper_input>) istream)
  "Deserializes a message object of type '<robot2_gripper_input>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DIGIN_2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AIN0_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AIN1_2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot2_gripper_input>)))
  "Returns string type for a message object of type '<robot2_gripper_input>"
  "ur3_driver/robot2_gripper_input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot2_gripper_input)))
  "Returns string type for a message object of type 'robot2_gripper_input"
  "ur3_driver/robot2_gripper_input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot2_gripper_input>)))
  "Returns md5sum for a message object of type '<robot2_gripper_input>"
  "e5cac449f67c506d08572b8886dce274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot2_gripper_input)))
  "Returns md5sum for a message object of type 'robot2_gripper_input"
  "e5cac449f67c506d08572b8886dce274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot2_gripper_input>)))
  "Returns full string definition for message of type '<robot2_gripper_input>"
  (cl:format cl:nil "int32 DIGIN_2 ~%float64 AIN0_2~%float64 AIN1_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot2_gripper_input)))
  "Returns full string definition for message of type 'robot2_gripper_input"
  (cl:format cl:nil "int32 DIGIN_2 ~%float64 AIN0_2~%float64 AIN1_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot2_gripper_input>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot2_gripper_input>))
  "Converts a ROS message object to a list"
  (cl:list 'robot2_gripper_input
    (cl:cons ':DIGIN_2 (DIGIN_2 msg))
    (cl:cons ':AIN0_2 (AIN0_2 msg))
    (cl:cons ':AIN1_2 (AIN1_2 msg))
))
