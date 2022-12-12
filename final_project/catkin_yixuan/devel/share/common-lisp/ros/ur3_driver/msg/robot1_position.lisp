; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot1_position.msg.html

(cl:defclass <robot1_position> (roslisp-msg-protocol:ros-message)
  ((position_1
    :reader position_1
    :initarg :position_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (isReady_1
    :reader isReady_1
    :initarg :isReady_1
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot1_position (<robot1_position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot1_position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot1_position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot1_position> is deprecated: use ur3_driver-msg:robot1_position instead.")))

(cl:ensure-generic-function 'position_1-val :lambda-list '(m))
(cl:defmethod position_1-val ((m <robot1_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:position_1-val is deprecated.  Use ur3_driver-msg:position_1 instead.")
  (position_1 m))

(cl:ensure-generic-function 'isReady_1-val :lambda-list '(m))
(cl:defmethod isReady_1-val ((m <robot1_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:isReady_1-val is deprecated.  Use ur3_driver-msg:isReady_1 instead.")
  (isReady_1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot1_position>) ostream)
  "Serializes a message object of type '<robot1_position>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_1))))
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
   (cl:slot-value msg 'position_1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isReady_1) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot1_position>) istream)
  "Deserializes a message object of type '<robot1_position>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_1)))
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
    (cl:setf (cl:slot-value msg 'isReady_1) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot1_position>)))
  "Returns string type for a message object of type '<robot1_position>"
  "ur3_driver/robot1_position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot1_position)))
  "Returns string type for a message object of type 'robot1_position"
  "ur3_driver/robot1_position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot1_position>)))
  "Returns md5sum for a message object of type '<robot1_position>"
  "f6cead3ecb176587694a624f90d3a7d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot1_position)))
  "Returns md5sum for a message object of type 'robot1_position"
  "f6cead3ecb176587694a624f90d3a7d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot1_position>)))
  "Returns full string definition for message of type '<robot1_position>"
  (cl:format cl:nil "float64[] position_1~%bool isReady_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot1_position)))
  "Returns full string definition for message of type 'robot1_position"
  (cl:format cl:nil "float64[] position_1~%bool isReady_1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot1_position>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot1_position>))
  "Converts a ROS message object to a list"
  (cl:list 'robot1_position
    (cl:cons ':position_1 (position_1 msg))
    (cl:cons ':isReady_1 (isReady_1 msg))
))
