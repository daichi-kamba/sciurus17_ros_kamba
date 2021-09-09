#!/usr/bin/env python
import rospy
import cv2
import sys
from cv_bridge import CvBridge,CvBridgeError
from sensor_msgs.msg import CameraInfo,CompressedImage,Image
from std_msgs.msg import String

import numpy as np

points = np.array([0,0])

def onMouse(event,x,y,flags,param):
	if event == cv2.EVENT_LBUTTONUP:
		points[0] = x
		points[1] = y
		

def movie(img,windowname,z):
	cv2.circle(img,(points[0],points[1]),5,(0,255,0),2)
	cv2.putText(img,"z:"+str(round(z,3)),(points[0]-10,points[1]-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.imshow(windowname,img)
	cv2.setMouseCallback(windowname,onMouse)
	cv2.waitKey(1)


def convert_depth_image(ros_image):
	# Use cv_bridge() to convert the ROS image to OpenCV format
	try:
		cv_bridge = CvBridge()
		#Convert the depth image using the default passthrough encoding
		depth_image = cv_bridge.imgmsg_to_cv2(ros_image)
		img = cv2.applyColorMap(cv2.convertScaleAbs(depth_image, alpha=0.08), cv2.COLORMAP_JET)
	except CvBridgeError, e:
		print e
	#Convert the depth image to a Numpy array
	"""
	x = depth_image.shape[1]/2-40
	y = depth_image.shape[0]/2+80
	"""
	x = points[0]
	y = points[1]

	depth_array = np.array(depth_image, dtype=np.float32)
	z = depth_array[x][y]
	rospy.loginfo(z)
	
	movie(img,"aligned_depth",z)

	"""
	cv2.circle(img,(x,y),5,(0,255,0),2)
	cv2.imshow('subtest',img)
	cv2.waitKey(1)
    """

def compressed_depth(ros_data):
	np_arr = np.fromstring(ros_data.data,np.uint8)
	#x,y = [len(v) for v in np_arr]
  	print(np_arr[320])

def pixel2depth():
	rospy.init_node('pixel2depth',anonymous=True)
	rospy.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image,callback=convert_depth_image, queue_size=1)
	#rospy.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw/compressed", CompressedImage,callback=compressed_depth, queue_size=1)
	rospy.spin()

if __name__ == '__main__':
	pixel2depth()
