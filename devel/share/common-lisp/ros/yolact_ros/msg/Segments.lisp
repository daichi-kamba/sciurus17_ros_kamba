; Auto-generated. Do not edit!


(cl:in-package yolact_ros-msg)


;//! \htmlinclude Segments.msg.html

(cl:defclass <Segments> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_header
    :reader image_header
    :initarg :image_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector yolact_ros-msg:Segment)
   :initform (cl:make-array 0 :element-type 'yolact_ros-msg:Segment :initial-element (cl:make-instance 'yolact_ros-msg:Segment))))
)

(cl:defclass Segments (<Segments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolact_ros-msg:<Segments> is deprecated: use yolact_ros-msg:Segments instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Segments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolact_ros-msg:header-val is deprecated.  Use yolact_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_header-val :lambda-list '(m))
(cl:defmethod image_header-val ((m <Segments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolact_ros-msg:image_header-val is deprecated.  Use yolact_ros-msg:image_header instead.")
  (image_header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <Segments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolact_ros-msg:segments-val is deprecated.  Use yolact_ros-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segments>) ostream)
  "Serializes a message object of type '<Segments>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segments>) istream)
  "Deserializes a message object of type '<Segments>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yolact_ros-msg:Segment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segments>)))
  "Returns string type for a message object of type '<Segments>"
  "yolact_ros/Segments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segments)))
  "Returns string type for a message object of type 'Segments"
  "yolact_ros/Segments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segments>)))
  "Returns md5sum for a message object of type '<Segments>"
  "8b0937284d770b93e976b3fece0798c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segments)))
  "Returns md5sum for a message object of type 'Segments"
  "8b0937284d770b93e976b3fece0798c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segments>)))
  "Returns full string definition for message of type '<Segments>"
  (cl:format cl:nil "Header header~%Header image_header~%Segment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: yolact_ros/Segment~%string Class~%float64 probability~%int32 xmin~%int32 ymin~%int32 xmax~%int32 ymax~%int32[] x_masks~%int32[] y_masks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segments)))
  "Returns full string definition for message of type 'Segments"
  (cl:format cl:nil "Header header~%Header image_header~%Segment[] segments~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: yolact_ros/Segment~%string Class~%float64 probability~%int32 xmin~%int32 ymin~%int32 xmax~%int32 ymax~%int32[] x_masks~%int32[] y_masks~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segments>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segments>))
  "Converts a ROS message object to a list"
  (cl:list 'Segments
    (cl:cons ':header (header msg))
    (cl:cons ':image_header (image_header msg))
    (cl:cons ':segments (segments msg))
))
