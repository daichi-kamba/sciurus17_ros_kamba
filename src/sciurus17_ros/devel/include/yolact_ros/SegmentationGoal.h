// Generated by gencpp from file yolact_ros/SegmentationGoal.msg
// DO NOT EDIT!


#ifndef YOLACT_ROS_MESSAGE_SEGMENTATIONGOAL_H
#define YOLACT_ROS_MESSAGE_SEGMENTATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace yolact_ros
{
template <class ContainerAllocator>
struct SegmentationGoal_
{
  typedef SegmentationGoal_<ContainerAllocator> Type;

  SegmentationGoal_()
    : image()
    , id(0)  {
    }
  SegmentationGoal_(const ContainerAllocator& _alloc)
    : image(_alloc)
    , id(0)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef int32_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::yolact_ros::SegmentationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::yolact_ros::SegmentationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct SegmentationGoal_

typedef ::yolact_ros::SegmentationGoal_<std::allocator<void> > SegmentationGoal;

typedef boost::shared_ptr< ::yolact_ros::SegmentationGoal > SegmentationGoalPtr;
typedef boost::shared_ptr< ::yolact_ros::SegmentationGoal const> SegmentationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::yolact_ros::SegmentationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace yolact_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'yolact_ros': ['/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg', '/home/kamba/catkin_ws/devel/share/yolact_ros/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::yolact_ros::SegmentationGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::yolact_ros::SegmentationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::yolact_ros::SegmentationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9eda2599b492e6ca4735825cfb596482";
  }

  static const char* value(const ::yolact_ros::SegmentationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9eda2599b492e6caULL;
  static const uint64_t static_value2 = 0x4735825cfb596482ULL;
};

template<class ContainerAllocator>
struct DataType< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "yolact_ros/SegmentationGoal";
  }

  static const char* value(const ::yolact_ros::SegmentationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Check if objects in image\n\
\n\
# Goal definition\n\
sensor_msgs/Image image\n\
int32 id\n\
\n\
\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of camera\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::yolact_ros::SegmentationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.image);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SegmentationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::yolact_ros::SegmentationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::yolact_ros::SegmentationGoal_<ContainerAllocator>& v)
  {
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOLACT_ROS_MESSAGE_SEGMENTATIONGOAL_H
