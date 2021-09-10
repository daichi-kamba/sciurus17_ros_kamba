#!/usr/bin/env python
import rospy
import cv2
import sys
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import CameraInfo,CompressedImage,Image
from std_msgs.msg import String
#import matplotlib.pyplot as plt
import numpy as np


square_size = 2.1
pattern_size = (7, 7)
reference_img = 40
a = 0
pattern_points = np.zeros( (np.prod(pattern_size), 3), np.float32 )
pattern_points[:,:2] = np.indices(pattern_size).T.reshape(-1, 2)
pattern_points *= square_size
objpoints = []
imgpoints = []

def camera_mtx():
	rospy.init_node("camera_mtx",anonymous=True)
	rospy.Subscriber("/sciurus17/camera/color/image_raw",Image,callback,queue_size=1)
	rospy.spin()

def callback(ros_image):

	cv_bridge=CvBridge()
	img = cv_bridge.imgmsg_to_cv2(ros_image)
	height = img.shape[0]
	width = img.shape[1]
	
	gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
	cv2.imshow('image', gray)
	cv2.waitKey(1)
	ret, corner = cv2.findChessboardCorners(gray, pattern_size)
	if ret == True and a <= 40:
		print("detected coner!")
		print(str(len(objpoints)+1) + "/" + str(reference_img))
		term = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_COUNT, 30, 0.1)
		cv2.cornerSubPix(gray, corner, (5,5), (-1,-1), term)
		imgpoints.append(corner.reshape(-1, 2))
		objpoints.append(pattern_points)

		global a
		a+=1
		print(a)
		rospy.sleep(1.0)
		if a == 40:
			print("calculating camera parameter...")
			ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)
			#np.save("home/kamba/mtx", mtx)
			print("mtx = \n", mtx)
			print(height,width)
			

if __name__=="__main__":
	camera_mtx()
