;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot1_position)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot1_position (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT1_POSITION")
  (make-package "UR3_DRIVER::ROBOT1_POSITION"))

(in-package "ROS")
;;//! \htmlinclude robot1_position.msg.html


(defclass ur3_driver::robot1_position
  :super ros::object
  :slots (_position_1 _isReady_1 ))

(defmethod ur3_driver::robot1_position
  (:init
   (&key
    ((:position_1 __position_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isReady_1 __isReady_1) nil)
    )
   (send-super :init)
   (setq _position_1 __position_1)
   (setq _isReady_1 __isReady_1)
   self)
  (:position_1
   (&optional __position_1)
   (if __position_1 (setq _position_1 __position_1)) _position_1)
  (:isReady_1
   (&optional __isReady_1)
   (if __isReady_1 (setq _isReady_1 __isReady_1)) _isReady_1)
  (:serialization-length
   ()
   (+
    ;; float64[] _position_1
    (* 8    (length _position_1)) 4
    ;; bool _isReady_1
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position_1
     (write-long (length _position_1) s)
     (dotimes (i (length _position_1))
       (sys::poke (elt _position_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isReady_1
       (if _isReady_1 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isReady_1
     (setq _isReady_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur3_driver::robot1_position :md5sum-) "f6cead3ecb176587694a624f90d3a7d1")
(setf (get ur3_driver::robot1_position :datatype-) "ur3_driver/robot1_position")
(setf (get ur3_driver::robot1_position :definition-)
      "float64[] position_1
bool isReady_1

")



(provide :ur3_driver/robot1_position "f6cead3ecb176587694a624f90d3a7d1")


