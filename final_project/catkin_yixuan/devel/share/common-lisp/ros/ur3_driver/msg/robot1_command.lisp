; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot1_command.msg.html

(cl:defclass <robot1_command> (roslisp-msg-protocol:ros-message)
  ((destination_1
    :reader destination_1
    :initarg :destination_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (v_1
    :reader v_1
    :initarg :v_1
    :type cl:float
    :initform 0.0)
   (a_1
    :reader a_1
    :initarg :a_1
    :type cl:float
    :initform 0.0)
   (io_0_1
    :reader io_0_1
    :initarg :io_0_1
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot1_command (<robot1_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot1_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot1_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot1_command> is deprecated: use ur3_driver-msg:robot1_command instead.")))

(cl:ensure-generic-function 'destination_1-val :lambda-list '(m))
(cl:defmethod destination_1-val ((m <robot1_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:destination_1-val is deprecated.  Use ur3_driver-msg:destination_1 instead.")
  (destination_1 m))

(cl:ensure-generic-function 'v_1-val :lambda-list '(m))
(cl:defmethod v_1-val ((m <robot1_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:v_1-val is deprecated.  Use ur3_driver-msg:v_1 instead.")
  (v_1 m))

(cl:ensure-generic-function 'a_1-val :lambda-list '(m))
(cl:defmethod a_1-val ((m <robot1_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:a_1-val is deprecated.  Use ur3_driver-msg:a_1 instead.")
  (a_1 m))

(cl:ensure-generic-function 'io_0_1-val :lambda-list '(m))
(cl:defmethod io_0_1-val ((m <robot1_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:io_0_1-val is deprecated.  Use ur3_driver-msg:io_0_1 instead.")
  (io_0_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot1_command>) ostream)
  "Serializes a message object of type '<robot1_command>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destination_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'destination_1))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_0_1) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot1_command>) istream)
  "Deserializes a message object of type '<robot1_command>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destination_1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destination_1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'io_0_1) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot1_command>)))
  "Returns string type for a message object of type '<robot1_command>"
  "ur3_driver/robot1_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot1_command)))
  "Returns string type for a message object of type 'robot1_command"
  "ur3_driver/robot1_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot1_command>)))
  "Returns md5sum for a message object of type '<robot1_command>"
  "99902d5d43f582b0b0f3d20f4d4b2b9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot1_command)))
  "Returns md5sum for a message object of type 'robot1_command"
  "99902d5d43f582b0b0f3d20f4d4b2b9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot1_command>)))
  "Returns full string definition for message of type '<robot1_command>"
  (cl:format cl:nil "float64[] destination_1~%float64 v_1~%float64 a_1~%bool io_0_1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot1_command)))
  "Returns full string definition for message of type 'robot1_command"
  (cl:format cl:nil "float64[] destination_1~%float64 v_1~%float64 a_1~%bool io_0_1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot1_command>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destination_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot1_command>))
  "Converts a ROS message object to a list"
  (cl:list 'robot1_command
    (cl:cons ':destination_1 (destination_1 msg))
    (cl:cons ':v_1 (v_1 msg))
    (cl:cons ':a_1 (a_1 msg))
    (cl:cons ':io_0_1 (io_0_1 msg))
))
