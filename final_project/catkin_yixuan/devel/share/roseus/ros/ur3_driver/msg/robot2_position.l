;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot2_position)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot2_position (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT2_POSITION")
  (make-package "UR3_DRIVER::ROBOT2_POSITION"))

(in-package "ROS")
;;//! \htmlinclude robot2_position.msg.html


(defclass ur3_driver::robot2_position
  :super ros::object
  :slots (_position_2 _isReady_2 ))

(defmethod ur3_driver::robot2_position
  (:init
   (&key
    ((:position_2 __position_2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isReady_2 __isReady_2) nil)
    )
   (send-super :init)
   (setq _position_2 __position_2)
   (setq _isReady_2 __isReady_2)
   self)
  (:position_2
   (&optional __position_2)
   (if __position_2 (setq _position_2 __position_2)) _position_2)
  (:isReady_2
   (&optional __isReady_2)
   (if __isReady_2 (setq _isReady_2 __isReady_2)) _isReady_2)
  (:serialization-length
   ()
   (+
    ;; float64[] _position_2
    (* 8    (length _position_2)) 4
    ;; bool _isReady_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position_2
     (write-long (length _position_2) s)
     (dotimes (i (length _position_2))
       (sys::poke (elt _position_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isReady_2
       (if _isReady_2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isReady_2
     (setq _isReady_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur3_driver::robot2_position :md5sum-) "b665405e743567d05aac6f78168ff841")
(setf (get ur3_driver::robot2_position :datatype-) "ur3_driver/robot2_position")
(setf (get ur3_driver::robot2_position :definition-)
      "float64[] position_2
bool isReady_2

")



(provide :ur3_driver/robot2_position "b665405e743567d05aac6f78168ff841")


