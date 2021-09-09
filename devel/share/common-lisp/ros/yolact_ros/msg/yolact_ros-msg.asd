
(cl:in-package :asdf)

(defsystem "yolact_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Segment" :depends-on ("_package_Segment"))
    (:file "_package_Segment" :depends-on ("_package"))
    (:file "SegmentationAction" :depends-on ("_package_SegmentationAction"))
    (:file "_package_SegmentationAction" :depends-on ("_package"))
    (:file "SegmentationActionFeedback" :depends-on ("_package_SegmentationActionFeedback"))
    (:file "_package_SegmentationActionFeedback" :depends-on ("_package"))
    (:file "SegmentationActionGoal" :depends-on ("_package_SegmentationActionGoal"))
    (:file "_package_SegmentationActionGoal" :depends-on ("_package"))
    (:file "SegmentationActionResult" :depends-on ("_package_SegmentationActionResult"))
    (:file "_package_SegmentationActionResult" :depends-on ("_package"))
    (:file "SegmentationFeedback" :depends-on ("_package_SegmentationFeedback"))
    (:file "_package_SegmentationFeedback" :depends-on ("_package"))
    (:file "SegmentationGoal" :depends-on ("_package_SegmentationGoal"))
    (:file "_package_SegmentationGoal" :depends-on ("_package"))
    (:file "SegmentationResult" :depends-on ("_package_SegmentationResult"))
    (:file "_package_SegmentationResult" :depends-on ("_package"))
    (:file "Segments" :depends-on ("_package_Segments"))
    (:file "_package_Segments" :depends-on ("_package"))
  ))