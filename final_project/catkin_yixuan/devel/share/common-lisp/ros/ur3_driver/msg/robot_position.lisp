; Auto-generated. Do not edit!


(cl:in-package ur3_driver-msg)


;//! \htmlinclude robot_position.msg.html

(cl:defclass <robot_position> (roslisp-msg-protocol:ros-message)
  ((position_new_1
    :reader position_new_1
    :initarg :position_new_1
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (isReady_new_1
    :reader isReady_new_1
    :initarg :isReady_new_1
    :type cl:boolean
    :initform cl:nil)
   (position_new_2
    :reader position_new_2
    :initarg :position_new_2
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (isReady_new_2
    :reader isReady_new_2
    :initarg :isReady_new_2
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot_position (<robot_position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3_driver-msg:<robot_position> is deprecated: use ur3_driver-msg:robot_position instead.")))

(cl:ensure-generic-function 'position_new_1-val :lambda-list '(m))
(cl:defmethod position_new_1-val ((m <robot_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:position_new_1-val is deprecated.  Use ur3_driver-msg:position_new_1 instead.")
  (position_new_1 m))

(cl:ensure-generic-function 'isReady_new_1-val :lambda-list '(m))
(cl:defmethod isReady_new_1-val ((m <robot_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:isReady_new_1-val is deprecated.  Use ur3_driver-msg:isReady_new_1 instead.")
  (isReady_new_1 m))

(cl:ensure-generic-function 'position_new_2-val :lambda-list '(m))
(cl:defmethod position_new_2-val ((m <robot_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:position_new_2-val is deprecated.  Use ur3_driver-msg:position_new_2 instead.")
  (position_new_2 m))

(cl:ensure-generic-function 'isReady_new_2-val :lambda-list '(m))
(cl:defmethod isReady_new_2-val ((m <robot_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3_driver-msg:isReady_new_2-val is deprecated.  Use ur3_driver-msg:isReady_new_2 instead.")
  (isReady_new_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_position>) ostream)
  "Serializes a message object of type '<robot_position>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_new_1))))
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
   (cl:slot-value msg 'position_new_1))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isReady_new_1) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_new_2))))
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
   (cl:slot-value msg 'position_new_2))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isReady_new_2) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_position>) istream)
  "Deserializes a message object of type '<robot_position>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_new_1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_new_1)))
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
    (cl:setf (cl:slot-value msg 'isReady_new_1) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_new_2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_new_2)))
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
    (cl:setf (cl:slot-value msg 'isReady_new_2) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_position>)))
  "Returns string type for a message object of type '<robot_position>"
  "ur3_driver/robot_position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_position)))
  "Returns string type for a message object of type 'robot_position"
  "ur3_driver/robot_position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_position>)))
  "Returns md5sum for a message object of type '<robot_position>"
  "8eb0a358142a84437f7ab31c0470ba46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_position)))
  "Returns md5sum for a message object of type 'robot_position"
  "8eb0a358142a84437f7ab31c0470ba46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_position>)))
  "Returns full string definition for message of type '<robot_position>"
  (cl:format cl:nil "float64[] position_new_1~%bool isReady_new_1~%float64[] position_new_2~%bool isReady_new_2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_position)))
  "Returns full string definition for message of type 'robot_position"
  (cl:format cl:nil "float64[] position_new_1~%bool isReady_new_1~%float64[] position_new_2~%bool isReady_new_2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_position>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_new_1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_new_2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_position>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_position
    (cl:cons ':position_new_1 (position_new_1 msg))
    (cl:cons ':isReady_new_1 (isReady_new_1 msg))
    (cl:cons ':position_new_2 (position_new_2 msg))
    (cl:cons ':isReady_new_2 (isReady_new_2 msg))
))
