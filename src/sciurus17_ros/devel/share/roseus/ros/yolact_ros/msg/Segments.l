;; Auto-generated. Do not edit!


(when (boundp 'yolact_ros::Segments)
  (if (not (find-package "YOLACT_ROS"))
    (make-package "YOLACT_ROS"))
  (shadow 'Segments (find-package "YOLACT_ROS")))
(unless (find-package "YOLACT_ROS::SEGMENTS")
  (make-package "YOLACT_ROS::SEGMENTS"))

(in-package "ROS")
;;//! \htmlinclude Segments.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass yolact_ros::Segments
  :super ros::object
  :slots (_header _image_header _segments ))

(defmethod yolact_ros::Segments
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance yolact_ros::Segment :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; yolact_ros/Segment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; yolact_ros/Segment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; yolact_ros/Segment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance yolact_ros::Segment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get yolact_ros::Segments :md5sum-) "8b0937284d770b93e976b3fece0798c2")
(setf (get yolact_ros::Segments :datatype-) "yolact_ros/Segments")
(setf (get yolact_ros::Segments :definition-)
      "Header header
Header image_header
Segment[] segments

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: yolact_ros/Segment
string Class
float64 probability
int32 xmin
int32 ymin
int32 xmax
int32 ymax
int32[] x_masks
int32[] y_masks

")



(provide :yolact_ros/Segments "8b0937284d770b93e976b3fece0798c2")


