; Auto-generated. Do not edit!


(cl:in-package cranberry_topic-srv)


;//! \htmlinclude CommLight-request.msg.html

(cl:defclass <CommLight-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass CommLight-request (<CommLight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommLight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommLight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cranberry_topic-srv:<CommLight-request> is deprecated: use cranberry_topic-srv:CommLight-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <CommLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cranberry_topic-srv:target-val is deprecated.  Use cranberry_topic-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CommLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cranberry_topic-srv:state-val is deprecated.  Use cranberry_topic-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommLight-request>) ostream)
  "Serializes a message object of type '<CommLight-request>"
  (cl:let* ((signed (cl:slot-value msg 'target)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommLight-request>) istream)
  "Deserializes a message object of type '<CommLight-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommLight-request>)))
  "Returns string type for a service object of type '<CommLight-request>"
  "cranberry_topic/CommLightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommLight-request)))
  "Returns string type for a service object of type 'CommLight-request"
  "cranberry_topic/CommLightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommLight-request>)))
  "Returns md5sum for a message object of type '<CommLight-request>"
  "3fb457a38866a7644279b98b76746b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommLight-request)))
  "Returns md5sum for a message object of type 'CommLight-request"
  "3fb457a38866a7644279b98b76746b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommLight-request>)))
  "Returns full string definition for message of type '<CommLight-request>"
  (cl:format cl:nil "int32 target~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommLight-request)))
  "Returns full string definition for message of type 'CommLight-request"
  (cl:format cl:nil "int32 target~%int32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommLight-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommLight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CommLight-request
    (cl:cons ':target (target msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude CommLight-response.msg.html

(cl:defclass <CommLight-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass CommLight-response (<CommLight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommLight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommLight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cranberry_topic-srv:<CommLight-response> is deprecated: use cranberry_topic-srv:CommLight-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CommLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cranberry_topic-srv:result-val is deprecated.  Use cranberry_topic-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommLight-response>) ostream)
  "Serializes a message object of type '<CommLight-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommLight-response>) istream)
  "Deserializes a message object of type '<CommLight-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommLight-response>)))
  "Returns string type for a service object of type '<CommLight-response>"
  "cranberry_topic/CommLightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommLight-response)))
  "Returns string type for a service object of type 'CommLight-response"
  "cranberry_topic/CommLightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommLight-response>)))
  "Returns md5sum for a message object of type '<CommLight-response>"
  "3fb457a38866a7644279b98b76746b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommLight-response)))
  "Returns md5sum for a message object of type 'CommLight-response"
  "3fb457a38866a7644279b98b76746b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommLight-response>)))
  "Returns full string definition for message of type '<CommLight-response>"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommLight-response)))
  "Returns full string definition for message of type 'CommLight-response"
  (cl:format cl:nil "int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommLight-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommLight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CommLight-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CommLight)))
  'CommLight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CommLight)))
  'CommLight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommLight)))
  "Returns string type for a service object of type '<CommLight>"
  "cranberry_topic/CommLight")