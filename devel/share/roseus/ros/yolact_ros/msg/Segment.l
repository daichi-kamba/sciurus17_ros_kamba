;; Auto-generated. Do not edit!


(when (boundp 'yolact_ros::Segment)
  (if (not (find-package "YOLACT_ROS"))
    (make-package "YOLACT_ROS"))
  (shadow 'Segment (find-package "YOLACT_ROS")))
(unless (find-package "YOLACT_ROS::SEGMENT")
  (make-package "YOLACT_ROS::SEGMENT"))

(in-package "ROS")
;;//! \htmlinclude Segment.msg.html


(defclass yolact_ros::Segment
  :super ros::object
  :slots (_Class _probability _xmin _ymin _xmax _ymax _x_masks _y_masks ))

(defmethod yolact_ros::Segment
  (:init
   (&key
    ((:Class __Class) "")
    ((:probability __probability) 0.0)
    ((:xmin __xmin) 0)
    ((:ymin __ymin) 0)
    ((:xmax __xmax) 0)
    ((:ymax __ymax) 0)
    ((:x_masks __x_masks) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y_masks __y_masks) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _Class (string __Class))
   (setq _probability (float __probability))
   (setq _xmin (round __xmin))
   (setq _ymin (round __ymin))
   (setq _xmax (round __xmax))
   (setq _ymax (round __ymax))
   (setq _x_masks __x_masks)
   (setq _y_masks __y_masks)
   self)
  (:Class
   (&optional __Class)
   (if __Class (setq _Class __Class)) _Class)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:x_masks
   (&optional __x_masks)
   (if __x_masks (setq _x_masks __x_masks)) _x_masks)
  (:y_masks
   (&optional __y_masks)
   (if __y_masks (setq _y_masks __y_masks)) _y_masks)
  (:serialization-length
   ()
   (+
    ;; string _Class
    4 (length _Class)
    ;; float64 _probability
    8
    ;; int32 _xmin
    4
    ;; int32 _ymin
    4
    ;; int32 _xmax
    4
    ;; int32 _ymax
    4
    ;; int32[] _x_masks
    (* 4    (length _x_masks)) 4
    ;; int32[] _y_masks
    (* 4    (length _y_masks)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Class
       (write-long (length _Class) s) (princ _Class s)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _xmin
       (write-long _xmin s)
     ;; int32 _ymin
       (write-long _ymin s)
     ;; int32 _xmax
       (write-long _xmax s)
     ;; int32 _ymax
       (write-long _ymax s)
     ;; int32[] _x_masks
     (write-long (length _x_masks) s)
     (dotimes (i (length _x_masks))
       (write-long (elt _x_masks i) s)
       )
     ;; int32[] _y_masks
     (write-long (length _y_masks) s)
     (dotimes (i (length _y_masks))
       (write-long (elt _y_masks i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _xmin
     (setq _xmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymin
     (setq _ymin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _xmax
     (setq _xmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ymax
     (setq _ymax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _x_masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_masks (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x_masks i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y_masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_masks (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y_masks i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get yolact_ros::Segment :md5sum-) "9b822283fe5533fac6ff98c2ac9b6f3e")
(setf (get yolact_ros::Segment :datatype-) "yolact_ros/Segment")
(setf (get yolact_ros::Segment :definition-)
      "string Class
float64 probability
int32 xmin
int32 ymin
int32 xmax
int32 ymax
int32[] x_masks
int32[] y_masks

")



(provide :yolact_ros/Segment "9b822283fe5533fac6ff98c2ac9b6f3e")


