; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot2_command.msg.html

(cl:defclass <robot2_command> (roslisp-msg-protocol:ros-message)
  ((destination_2
    :reader destination_2
    :initarg :destination_2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (v_2
    :reader v_2
    :initarg :v_2
    :type cl:float
    :initform 0.0)
   (a_2
    :reader a_2
    :initarg :a_2
    :type cl:float
    :initform 0.0)
   (io_0_2
    :reader io_0_2
    :initarg :io_0_2
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot2_command (<robot2_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot2_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot2_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot2_command> is deprecated: use ur3_driver-msg:robot2_command instead.")))

(cl:ensure-generic-function 'destination_2-val :lambda-list '(m))
(cl:defmethod destination_2-val ((m <robot2_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:destination_2-val is deprecated.  Use ur3_driver-msg:destination_2 instead.")
  (destination_2 m))

(cl:ensure-generic-function 'v_2-val :lambda-list '(m))
(cl:defmethod v_2-val ((m <robot2_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:v_2-val is deprecated.  Use ur3_driver-msg:v_2 instead.")
  (v_2 m))

(cl:ensure-generic-function 'a_2-val :lambda-list '(m))
(cl:defmethod a_2-val ((m <robot2_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:a_2-val is deprecated.  Use ur3_driver-msg:a_2 instead.")
  (a_2 m))

(cl:ensure-generic-function 'io_0_2-val :lambda-list '(m))
(cl:defmethod io_0_2-val ((m <robot2_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:io_0_2-val is deprecated.  Use ur3_driver-msg:io_0_2 instead.")
  (io_0_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot2_command>) ostream)
  "Serializes a message object of type '<robot2_command>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destination_2))))
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
   (cl:slot-value msg 'destination_2))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'io_0_2) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot2_command>) istream)
  "Deserializes a message object of type '<robot2_command>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destination_2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destination_2)))
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
    (cl:setf (cl:slot-value msg 'v_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'io_0_2) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot2_command>)))
  "Returns string type for a message object of type '<robot2_command>"
  "ur3_driver/robot2_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot2_command)))
  "Returns string type for a message object of type 'robot2_command"
  "ur3_driver/robot2_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot2_command>)))
  "Returns md5sum for a message object of type '<robot2_command>"
  "d1a5d9f50588237f312ad342ca45045c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot2_command)))
  "Returns md5sum for a message object of type 'robot2_command"
  "d1a5d9f50588237f312ad342ca45045c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot2_command>)))
  "Returns full string definition for message of type '<robot2_command>"
  (cl:format cl:nil "float64[] destination_2~%float64 v_2~%float64 a_2~%bool io_0_2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot2_command)))
  "Returns full string definition for message of type 'robot2_command"
  (cl:format cl:nil "float64[] destination_2~%float64 v_2~%float64 a_2~%bool io_0_2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot2_command>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destination_2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot2_command>))
  "Converts a ROS message object to a list"
  (cl:list 'robot2_command
    (cl:cons ':destination_2 (destination_2 msg))
    (cl:cons ':v_2 (v_2 msg))
    (cl:cons ':a_2 (a_2 msg))
    (cl:cons ':io_0_2 (io_0_2 msg))
))
