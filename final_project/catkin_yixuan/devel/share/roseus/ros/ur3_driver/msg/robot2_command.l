;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot2_command)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot2_command (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT2_COMMAND")
  (make-package "UR3_DRIVER::ROBOT2_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude robot2_command.msg.html


(defclass ur3_driver::robot2_command
  :super ros::object
  :slots (_destination_2 _v_2 _a_2 _io_0_2 ))

(defmethod ur3_driver::robot2_command
  (:init
   (&key
    ((:destination_2 __destination_2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v_2 __v_2) 0.0)
    ((:a_2 __a_2) 0.0)
    ((:io_0_2 __io_0_2) nil)
    )
   (send-super :init)
   (setq _destination_2 __destination_2)
   (setq _v_2 (float __v_2))
   (setq _a_2 (float __a_2))
   (setq _io_0_2 __io_0_2)
   self)
  (:destination_2
   (&optional __destination_2)
   (if __destination_2 (setq _destination_2 __destination_2)) _destination_2)
  (:v_2
   (&optional __v_2)
   (if __v_2 (setq _v_2 __v_2)) _v_2)
  (:a_2
   (&optional __a_2)
   (if __a_2 (setq _a_2 __a_2)) _a_2)
  (:io_0_2
   (&optional __io_0_2)
   (if __io_0_2 (setq _io_0_2 __io_0_2)) _io_0_2)
  (:serialization-length
   ()
   (+
    ;; float64[] _destination_2
    (* 8    (length _destination_2)) 4
    ;; float64 _v_2
    8
    ;; float64 _a_2
    8
    ;; bool _io_0_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _destination_2
     (write-long (length _destination_2) s)
     (dotimes (i (length _destination_2))
       (sys::poke (elt _destination_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _v_2
       (sys::poke _v_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_2
       (sys::poke _a_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _io_0_2
       (if _io_0_2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _destination_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destination_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _destination_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _v_2
     (setq _v_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_2
     (setq _a_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _io_0_2
     (setq _io_0_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur3_driver::robot2_command :md5sum-) "d1a5d9f50588237f312ad342ca45045c")
(setf (get ur3_driver::robot2_command :datatype-) "ur3_driver/robot2_command")
(setf (get ur3_driver::robot2_command :definition-)
      "float64[] destination_2
float64 v_2
float64 a_2
bool io_0_2
")



(provide :ur3_driver/robot2_command "d1a5d9f50588237f312ad342ca45045c")


