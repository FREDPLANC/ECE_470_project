;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot1_gripper_input)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot1_gripper_input (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT1_GRIPPER_INPUT")
  (make-package "UR3_DRIVER::ROBOT1_GRIPPER_INPUT"))

(in-package "ROS")
;;//! \htmlinclude robot1_gripper_input.msg.html


(defclass ur3_driver::robot1_gripper_input
  :super ros::object
  :slots (_DIGIN_1 _AIN0_1 _AIN1_1 ))

(defmethod ur3_driver::robot1_gripper_input
  (:init
   (&key
    ((:DIGIN_1 __DIGIN_1) 0)
    ((:AIN0_1 __AIN0_1) 0.0)
    ((:AIN1_1 __AIN1_1) 0.0)
    )
   (send-super :init)
   (setq _DIGIN_1 (round __DIGIN_1))
   (setq _AIN0_1 (float __AIN0_1))
   (setq _AIN1_1 (float __AIN1_1))
   self)
  (:DIGIN_1
   (&optional __DIGIN_1)
   (if __DIGIN_1 (setq _DIGIN_1 __DIGIN_1)) _DIGIN_1)
  (:AIN0_1
   (&optional __AIN0_1)
   (if __AIN0_1 (setq _AIN0_1 __AIN0_1)) _AIN0_1)
  (:AIN1_1
   (&optional __AIN1_1)
   (if __AIN1_1 (setq _AIN1_1 __AIN1_1)) _AIN1_1)
  (:serialization-length
   ()
   (+
    ;; int32 _DIGIN_1
    4
    ;; float64 _AIN0_1
    8
    ;; float64 _AIN1_1
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _DIGIN_1
       (write-long _DIGIN_1 s)
     ;; float64 _AIN0_1
       (sys::poke _AIN0_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AIN1_1
       (sys::poke _AIN1_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _DIGIN_1
     (setq _DIGIN_1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _AIN0_1
     (setq _AIN0_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AIN1_1
     (setq _AIN1_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ur3_driver::robot1_gripper_input :md5sum-) "470db4c19d42bec85fe6c2febed1313f")
(setf (get ur3_driver::robot1_gripper_input :datatype-) "ur3_driver/robot1_gripper_input")
(setf (get ur3_driver::robot1_gripper_input :definition-)
      "int32 DIGIN_1 
float64 AIN0_1
float64 AIN1_1

")



(provide :ur3_driver/robot1_gripper_input "470db4c19d42bec85fe6c2febed1313f")


