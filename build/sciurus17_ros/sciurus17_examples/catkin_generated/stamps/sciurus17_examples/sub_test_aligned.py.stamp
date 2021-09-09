#!/usr/bin/env python
# coding: utf-8

import rospy
import math
import sys
from time import sleep

# for ObjectTracker
import cv2
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import message_filters
import pyrealsense2 as rs


def image_callback(rgb_data,depth_data):
    #try:
        bridge = CvBridge()
        
	#COLOR画像
	rgb_image = bridge.imgmsg_to_cv2(rgb_data, "bgr8")
        img_rgb = cv2.cvtColor(rgb_image, cv2.COLOR_BGR2RGB)
    	#depth画像
	depth_image = bridge.imgmsg_to_cv2(depth_data,"32FC1")
	img_dep = cv2.applyColorMap(cv2.convertScaleAbs(depth_image, alpha=0.08), cv2.COLORMAP_JET)
	print(type(depth_data))
	rgb_x=rgb_image.shape[1]
        rgb_y=rgb_image.shape[0]
        dep_x=depth_image.shape[1]
        dep_y=depth_image.shape[0]

	depth_frame = depth_data.wait_for_frame()
	dep_z=depth_frame.get_distance(dep_x/2,dep_y/2)
	rospy.loginfo(dep_z)

	

	"""cv2.normalize(img2, img2, 0, 1, cv2.NORM_MINMAX)
        cv2.namedWindow("subtest_rgb")
        cv2.namedWindow("subtest_depth")"""
	#イメージに線を引く（）
	"""cv2.line(img_rgb,(0,rgb_y/2),(rgb_x,rgb_y/2),(0,255,0),2)
	cv2.line(img_dep,(0,dep_y/2),(dep_x,dep_y/2),(0,255,0),2)"""
	
        """cv2.imshow('subtest_rgb',img_rgb)
	cv2.imshow('subtest_depth',img_dep)
	cv2.moveWindow("subtest_depth",rgb_x,0)
        if cv2.waitKey(0)==27:
		cv2.destroyAllWindows()"""
	
    #except Exception as err:
     #   print("err")


def sub_test():
     fps = 100. #fpsが整数だと、1/fpsをpython2が評価すると0になってしまう(整数同士の除算は切り捨て除算)
     delay = 1/fps*0.5

     rospy.init_node("sub_test")
     rospy.loginfo('img_proc node started')
     #color画像
     sub_rgb = message_filters.Subscriber("/sciurus17/camera/color/image_raw", Image)
     #aligned_depth画像
     sub_dep = message_filters.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image)

     mf = message_filters.ApproximateTimeSynchronizer([sub_rgb, sub_dep], 1, delay)
     mf.registerCallback(image_callback)

     rospy.spin()


if __name__ == '__main__':
     try:
         sub_test()
     except rospy.ROSInterruptException:
         pass
