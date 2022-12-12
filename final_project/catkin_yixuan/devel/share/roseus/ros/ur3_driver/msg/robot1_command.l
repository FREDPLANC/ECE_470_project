;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot1_command)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot1_command (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT1_COMMAND")
  (make-package "UR3_DRIVER::ROBOT1_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude robot1_command.msg.html


(defclass ur3_driver::robot1_command
  :super ros::object
  :slots (_destination_1 _v_1 _a_1 _io_0_1 ))

(defmethod ur3_driver::robot1_command
  (:init
   (&key
    ((:destination_1 __destination_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v_1 __v_1) 0.0)
    ((:a_1 __a_1) 0.0)
    ((:io_0_1 __io_0_1) nil)
    )
   (send-super :init)
   (setq _destination_1 __destination_1)
   (setq _v_1 (float __v_1))
   (setq _a_1 (float __a_1))
   (setq _io_0_1 __io_0_1)
   self)
  (:destination_1
   (&optional __destination_1)
   (if __destination_1 (setq _destination_1 __destination_1)) _destination_1)
  (:v_1
   (&optional __v_1)
   (if __v_1 (setq _v_1 __v_1)) _v_1)
  (:a_1
   (&optional __a_1)
   (if __a_1 (setq _a_1 __a_1)) _a_1)
  (:io_0_1
   (&optional __io_0_1)
   (if __io_0_1 (setq _io_0_1 __io_0_1)) _io_0_1)
  (:serialization-length
   ()
   (+
    ;; float64[] _destination_1
    (* 8    (length _destination_1)) 4
    ;; float64 _v_1
    8
    ;; float64 _a_1
    8
    ;; bool _io_0_1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _destination_1
     (write-long (length _destination_1) s)
     (dotimes (i (length _destination_1))
       (sys::poke (elt _destination_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _v_1
       (sys::poke _v_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_1
       (sys::poke _a_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _io_0_1
       (if _io_0_1 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _destination_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destination_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _destination_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _v_1
     (setq _v_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_1
     (setq _a_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _io_0_1
     (setq _io_0_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur3_driver::robot1_command :md5sum-) "99902d5d43f582b0b0f3d20f4d4b2b9c")
(setf (get ur3_driver::robot1_command :datatype-) "ur3_driver/robot1_command")
(setf (get ur3_driver::robot1_command :definition-)
      "float64[] destination_1
float64 v_1
float64 a_1
bool io_0_1
")



(provide :ur3_driver/robot1_command "99902d5d43f582b0b0f3d20f4d4b2b9c")


