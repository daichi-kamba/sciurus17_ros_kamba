#!/usr/bin/env python
import rospy
import cv2
import sys
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import CameraInfo,CompressedImage,Image
from std_msgs.msg import String
#import matplotlib.pyplot as plt
import numpy as np


def camera_mtx():
	rospy.init_node("camera_mtx",anonymous=True)
	rospy.Subscriber("/sciurus17/camera/color/camera_info",CameraInfo,callback,queue_size=1)
	rospy.spin()

def callback(CameraInfo):
	info = CameraInfo
	print(info[0])
	
			

if __name__=="__main__":
	camera_mtx()
