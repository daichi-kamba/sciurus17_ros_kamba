# Install script for directory: /home/kamba/catkin_ws/src/sciurus17_ros/sciurus17_examples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/sciurus17_examples.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sciurus17_examples/cmake" TYPE FILE FILES
    "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/sciurus17_examplesConfig.cmake"
    "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/sciurus17_examplesConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sciurus17_examples" TYPE FILE FILES "/home/kamba/catkin_ws/src/sciurus17_ros/sciurus17_examples/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE EXECUTABLE FILES "/home/kamba/catkin_ws/devel/lib/sciurus17_examples/object_detection")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection"
         OLD_RPATH "/opt/ros/kinetic/lib:/usr/lib/x86_64-linux-gnu/hdf5/serial/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples/object_detection")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sciurus17_examples" TYPE DIRECTORY FILES "/home/kamba/catkin_ws/src/sciurus17_ros/sciurus17_examples/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/camera_tf.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_world_point_perfect (別のコピー).py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/gripper_action_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/chest_camera_tracking.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/head_camera_tracking.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/control_effort_wrist.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_world_point.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/pick_and_place_two_arm_demo.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/box_stacking_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_screen_point.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/head_camera_tracking .py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/neck_joint_trajectory_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/tf_test.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/tf_test_listner.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/preset_pid_gain_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/waist_joint_trajectory_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/camera_info.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_world_point_perfect (コピー).py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/camera_to_world.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/pick_and_place_left_arm_demo_test.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/pick_and_place_right_arm_demo.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/hand_position_publisher_example.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/sub_test_aligned.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/camera_mtx.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/camera_to_world _prottype.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_world_point_perfect.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/gail_expert_data.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/tf_test_broadcaster.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/drawing_world_point_fov.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/depth_camera_tracking.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/aligned_image.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sciurus17_examples" TYPE PROGRAM FILES "/home/kamba/catkin_ws/build/sciurus17_ros/sciurus17_examples/catkin_generated/installspace/sub_test.py")
endif()

