;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot2_gripper_input)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot2_gripper_input (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT2_GRIPPER_INPUT")
  (make-package "UR3_DRIVER::ROBOT2_GRIPPER_INPUT"))

(in-package "ROS")
;;//! \htmlinclude robot2_gripper_input.msg.html


(defclass ur3_driver::robot2_gripper_input
  :super ros::object
  :slots (_DIGIN_2 _AIN0_2 _AIN1_2 ))

(defmethod ur3_driver::robot2_gripper_input
  (:init
   (&key
    ((:DIGIN_2 __DIGIN_2) 0)
    ((:AIN0_2 __AIN0_2) 0.0)
    ((:AIN1_2 __AIN1_2) 0.0)
    )
   (send-super :init)
   (setq _DIGIN_2 (round __DIGIN_2))
   (setq _AIN0_2 (float __AIN0_2))
   (setq _AIN1_2 (float __AIN1_2))
   self)
  (:DIGIN_2
   (&optional __DIGIN_2)
   (if __DIGIN_2 (setq _DIGIN_2 __DIGIN_2)) _DIGIN_2)
  (:AIN0_2
   (&optional __AIN0_2)
   (if __AIN0_2 (setq _AIN0_2 __AIN0_2)) _AIN0_2)
  (:AIN1_2
   (&optional __AIN1_2)
   (if __AIN1_2 (setq _AIN1_2 __AIN1_2)) _AIN1_2)
  (:serialization-length
   ()
   (+
    ;; int32 _DIGIN_2
    4
    ;; float64 _AIN0_2
    8
    ;; float64 _AIN1_2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _DIGIN_2
       (write-long _DIGIN_2 s)
     ;; float64 _AIN0_2
       (sys::poke _AIN0_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AIN1_2
       (sys::poke _AIN1_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _DIGIN_2
     (setq _DIGIN_2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _AIN0_2
     (setq _AIN0_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AIN1_2
     (setq _AIN1_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ur3_driver::robot2_gripper_input :md5sum-) "e5cac449f67c506d08572b8886dce274")
(setf (get ur3_driver::robot2_gripper_input :datatype-) "ur3_driver/robot2_gripper_input")
(setf (get ur3_driver::robot2_gripper_input :definition-)
      "int32 DIGIN_2 
float64 AIN0_2
float64 AIN1_2

")



(provide :ur3_driver/robot2_gripper_input "e5cac449f67c506d08572b8886dce274")


