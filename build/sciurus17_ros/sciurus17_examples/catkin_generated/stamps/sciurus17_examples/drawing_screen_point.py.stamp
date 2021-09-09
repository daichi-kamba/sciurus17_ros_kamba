#!/usr/bin/python
# -*- coding: utf-8 -*-
import rospy
import tf
from geometry_msgs.msg import *
import math
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import sys
import cv2
import numpy as np
from numpy import sin, cos, tan
import message_filters

def screen_no_change():
	queue_size = 10
	fps = 100.
	delay = 1 / fps * 0.5
	
	rospy.init_node('screen_to_world')
	sub1 = message_filters.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image)
	sub2 = message_filters.Subscriber("/sciurus17/camera/color/image_raw", Image)
	mf = message_filters.ApproximateTimeSynchronizer([sub1, sub2],100,5)
	mf.registerCallback(image_callback)
	rospy.spin()

def image_callback(ros_image,rgb_image):
	# Use cv_bridge() to convert the ROS image to OpenCV format
     try:
	cv_bridge = CvBridge()
     	#Convert the depth image using the default passthrough encoding
	depth_image = cv_bridge.imgmsg_to_cv2(ros_image)
	u = depth_image.shape[1]/2
	v = depth_image.shape[0]/2
	
	camera_mtx = [[762.23310493,0,306.65644535],[0,761.81032949,262.67141681],[0,0,1]]
	depth_array = np.array(depth_image, dtype=np.float32)
	z1 = depth_array[u][v]

	uvz_list = [u,v,z1]

	input_image = cv_bridge.imgmsg_to_cv2(rgb_image)
	img = cv2.cvtColor(input_image, cv2.COLOR_BGR2RGB)
	cv2.circle(img,(u,v),5,(0,255,0),2)
	cv2.putText(img,"x:"+str(round(u,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"y:"+str(round(v,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"z:"+str(round(z1,3)),(u-10,v-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.imshow('subtest',img)
        cv2.waitKey(10)
		
     except CvBridgeError, e:
	print e 


if __name__=="__main__":
	screen_no_change()
