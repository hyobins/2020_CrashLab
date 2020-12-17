;; Auto-generated. Do not edit!


(when (boundp 'cranberry_topic::CommLight)
  (if (not (find-package "CRANBERRY_TOPIC"))
    (make-package "CRANBERRY_TOPIC"))
  (shadow 'CommLight (find-package "CRANBERRY_TOPIC")))
(unless (find-package "CRANBERRY_TOPIC::COMMLIGHT")
  (make-package "CRANBERRY_TOPIC::COMMLIGHT"))
(unless (find-package "CRANBERRY_TOPIC::COMMLIGHTREQUEST")
  (make-package "CRANBERRY_TOPIC::COMMLIGHTREQUEST"))
(unless (find-package "CRANBERRY_TOPIC::COMMLIGHTRESPONSE")
  (make-package "CRANBERRY_TOPIC::COMMLIGHTRESPONSE"))

(in-package "ROS")





(defclass cranberry_topic::CommLightRequest
  :super ros::object
  :slots (_target _state ))

(defmethod cranberry_topic::CommLightRequest
  (:init
   (&key
    ((:target __target) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _target (round __target))
   (setq _state (round __state))
   self)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _target
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _target
       (write-long _target s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _target
     (setq _target (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cranberry_topic::CommLightResponse
  :super ros::object
  :slots (_result ))

(defmethod cranberry_topic::CommLightResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cranberry_topic::CommLight
  :super ros::object
  :slots ())

(setf (get cranberry_topic::CommLight :md5sum-) "3fb457a38866a7644279b98b76746b3c")
(setf (get cranberry_topic::CommLight :datatype-) "cranberry_topic/CommLight")
(setf (get cranberry_topic::CommLight :request) cranberry_topic::CommLightRequest)
(setf (get cranberry_topic::CommLight :response) cranberry_topic::CommLightResponse)

(defmethod cranberry_topic::CommLightRequest
  (:response () (instance cranberry_topic::CommLightResponse :init)))

(setf (get cranberry_topic::CommLightRequest :md5sum-) "3fb457a38866a7644279b98b76746b3c")
(setf (get cranberry_topic::CommLightRequest :datatype-) "cranberry_topic/CommLightRequest")
(setf (get cranberry_topic::CommLightRequest :definition-)
      "int32 target
int32 state
---
int32 result

")

(setf (get cranberry_topic::CommLightResponse :md5sum-) "3fb457a38866a7644279b98b76746b3c")
(setf (get cranberry_topic::CommLightResponse :datatype-) "cranberry_topic/CommLightResponse")
(setf (get cranberry_topic::CommLightResponse :definition-)
      "int32 target
int32 state
---
int32 result

")



(provide :cranberry_topic/CommLight "3fb457a38866a7644279b98b76746b3c")


