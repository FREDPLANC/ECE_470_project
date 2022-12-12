;; Auto-generated. Do not edit!


(when (boundp 'ur3_driver::robot_position)
  (if (not (find-package "UR3_DRIVER"))
    (make-package "UR3_DRIVER"))
  (shadow 'robot_position (find-package "UR3_DRIVER")))
(unless (find-package "UR3_DRIVER::ROBOT_POSITION")
  (make-package "UR3_DRIVER::ROBOT_POSITION"))

(in-package "ROS")
;;//! \htmlinclude robot_position.msg.html


(defclass ur3_driver::robot_position
  :super ros::object
  :slots (_position_new_1 _isReady_new_1 _position_new_2 _isReady_new_2 ))

(defmethod ur3_driver::robot_position
  (:init
   (&key
    ((:position_new_1 __position_new_1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isReady_new_1 __isReady_new_1) nil)
    ((:position_new_2 __position_new_2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isReady_new_2 __isReady_new_2) nil)
    )
   (send-super :init)
   (setq _position_new_1 __position_new_1)
   (setq _isReady_new_1 __isReady_new_1)
   (setq _position_new_2 __position_new_2)
   (setq _isReady_new_2 __isReady_new_2)
   self)
  (:position_new_1
   (&optional __position_new_1)
   (if __position_new_1 (setq _position_new_1 __position_new_1)) _position_new_1)
  (:isReady_new_1
   (&optional __isReady_new_1)
   (if __isReady_new_1 (setq _isReady_new_1 __isReady_new_1)) _isReady_new_1)
  (:position_new_2
   (&optional __position_new_2)
   (if __position_new_2 (setq _position_new_2 __position_new_2)) _position_new_2)
  (:isReady_new_2
   (&optional __isReady_new_2)
   (if __isReady_new_2 (setq _isReady_new_2 __isReady_new_2)) _isReady_new_2)
  (:serialization-length
   ()
   (+
    ;; float64[] _position_new_1
    (* 8    (length _position_new_1)) 4
    ;; bool _isReady_new_1
    1
    ;; float64[] _position_new_2
    (* 8    (length _position_new_2)) 4
    ;; bool _isReady_new_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position_new_1
     (write-long (length _position_new_1) s)
     (dotimes (i (length _position_new_1))
       (sys::poke (elt _position_new_1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isReady_new_1
       (if _isReady_new_1 (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _position_new_2
     (write-long (length _position_new_2) s)
     (dotimes (i (length _position_new_2))
       (sys::poke (elt _position_new_2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _isReady_new_2
       (if _isReady_new_2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position_new_1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_new_1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_new_1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isReady_new_1
     (setq _isReady_new_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _position_new_2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_new_2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_new_2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _isReady_new_2
     (setq _isReady_new_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ur3_driver::robot_position :md5sum-) "8eb0a358142a84437f7ab31c0470ba46")
(setf (get ur3_driver::robot_position :datatype-) "ur3_driver/robot_position")
(setf (get ur3_driver::robot_position :definition-)
      "float64[] position_new_1
bool isReady_new_1
float64[] position_new_2
bool isReady_new_2
")



(provide :ur3_driver/robot_position "8eb0a358142a84437f7ab31c0470ba46")


