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

a = 0

def image_callback(ros_image):
    global a
    a+=1
    print(a)

    try:
        bridge = CvBridge()
        
	#COLOR画像
	"""input_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")
        img = cv2.cvtColor(input_image, cv2.COLOR_BGR2GRAY)"""
    	#depth画像
	input_image = bridge.imgmsg_to_cv2(ros_image)
	img = cv2.applyColorMap(cv2.convertScaleAbs(input_image, alpha=0.08), cv2.COLORMAP_JET)

        cv2.imshow('subtest',img)
        cv2.waitKey(1)
	
    except Exception as err:
        print("err")


def sub_test():
     rospy.init_node("sub_test")
     rospy.loginfo('img_proc node started')
     #color画像
     #rospy.Subscriber("/sciurus17/camera/color/image_raw", Image, image_callback, queue_size=1)
     #depth画像
     #rospy.Subscriber("/sciurus17/camera/depth/image_rect_raw", Image, image_callback, queue_size=1)
     rospy.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image, image_callback, queue_size=1)
     rospy.spin()


if __name__ == '__main__':
     try:
         sub_test()
     except rospy.ROSInterruptException:
         pass
