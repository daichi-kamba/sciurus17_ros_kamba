# Install script for directory: /home/kamba/catkin_ws/src/yolact_ros/yolact_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kamba/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/msg" TYPE FILE FILES
    "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segment.msg"
    "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/msg/Segments.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/action" TYPE FILE FILES "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/action/Segmentation.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/msg" TYPE FILE FILES
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationAction.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionGoal.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionResult.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationActionFeedback.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationGoal.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationResult.msg"
    "/home/kamba/catkin_ws/devel/share/yolact_ros/msg/SegmentationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/cmake" TYPE FILE FILES "/home/kamba/catkin_ws/build/yolact_ros/yolact_ros/catkin_generated/installspace/yolact_ros-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/devel/include/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/devel/share/roseus/ros/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/devel/share/common-lisp/ros/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/devel/share/gennodejs/ros/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/kamba/catkin_ws/devel/lib/python2.7/dist-packages/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/devel/lib/python2.7/dist-packages/yolact_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kamba/catkin_ws/build/yolact_ros/yolact_ros/catkin_generated/installspace/yolact_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/cmake" TYPE FILE FILES "/home/kamba/catkin_ws/build/yolact_ros/yolact_ros/catkin_generated/installspace/yolact_ros-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros/cmake" TYPE FILE FILES
    "/home/kamba/catkin_ws/build/yolact_ros/yolact_ros/catkin_generated/installspace/yolact_rosConfig.cmake"
    "/home/kamba/catkin_ws/build/yolact_ros/yolact_ros/catkin_generated/installspace/yolact_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yolact_ros" TYPE FILE FILES "/home/kamba/catkin_ws/src/yolact_ros/yolact_ros/package.xml")
endif()

