# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yolact_ros: 9 messages, 0 services")

set(MSG_I_FLAGS "-Iyolact_ros:/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg;-Iyolact_ros:/home/kamba/catkin_ws/devel/share/yolact_ros/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yolact_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" "yolact_ros/SegmentationActionGoal:yolact_ros/Segments:std_msgs/Header:yolact_ros/SegmentationResult:yolact_ros/SegmentationActionFeedback:yolact_ros/Segment:sensor_msgs/Image:yolact_ros/SegmentationFeedback:yolact_ros/SegmentationGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:yolact_ros/SegmentationActionResult"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" "sensor_msgs/Image:actionlib_msgs/GoalID:std_msgs/Header:yolact_ros/SegmentationGoal"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" "yolact_ros/Segment:yolact_ros/Segments:std_msgs/Header"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:yolact_ros/SegmentationFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" "yolact_ros/SegmentationResult:yolact_ros/Segments:std_msgs/Header:yolact_ros/Segment:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" ""
)

get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" "yolact_ros/Segment:std_msgs/Header"
)

get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_custom_target(_yolact_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yolact_ros" "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)
_generate_msg_cpp(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(yolact_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yolact_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yolact_ros_generate_messages yolact_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_cpp _yolact_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yolact_ros_gencpp)
add_dependencies(yolact_ros_gencpp yolact_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yolact_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)
_generate_msg_eus(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(yolact_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yolact_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yolact_ros_generate_messages yolact_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_eus _yolact_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yolact_ros_geneus)
add_dependencies(yolact_ros_geneus yolact_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yolact_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)
_generate_msg_lisp(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(yolact_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yolact_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yolact_ros_generate_messages yolact_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_lisp _yolact_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yolact_ros_genlisp)
add_dependencies(yolact_ros_genlisp yolact_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yolact_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)
_generate_msg_nodejs(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(yolact_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yolact_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yolact_ros_generate_messages yolact_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_nodejs _yolact_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yolact_ros_gennodejs)
add_dependencies(yolact_ros_gennodejs yolact_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yolact_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)
_generate_msg_py(yolact_ros
  "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
)

### Generating Services

### Generating Module File
_generate_module_py(yolact_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yolact_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yolact_ros_generate_messages yolact_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg" NAME_WE)
add_dependencies(yolact_ros_generate_messages_py _yolact_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yolact_ros_genpy)
add_dependencies(yolact_ros_genpy yolact_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yolact_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yolact_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(yolact_ros_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yolact_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(yolact_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yolact_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yolact_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(yolact_ros_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(yolact_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(yolact_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yolact_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yolact_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(yolact_ros_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yolact_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(yolact_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yolact_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yolact_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(yolact_ros_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(yolact_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(yolact_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yolact_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yolact_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(yolact_ros_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yolact_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(yolact_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yolact_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
