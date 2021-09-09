#!/usr/bin/env python
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

b = tf.TransformBroadcaster()
bridge = CvBridge()
points = np.array([0,0])
def change_screen_coord():
	
	color_sub = message_filters.Subscriber("/sciurus17/camera/color/image_raw", Image)
	depth_sub = message_filters.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image)
	mf = message_filters.ApproximateTimeSynchronizer([color_sub,depth_sub], 100,5)
	mf.registerCallback(change_coord_callback)
	color_pub = rospy.Publisher("output/image/color",Image,queue_size=1)
	depth_pub = rospy.Publisher("output/image/depth",Image,queue_size=1)
	
def change_coord_callback(rgb_image,dep_image):
	# Use cv_bridge() to convert the ROS image to OpenCV format
	try:
		#Convert the depth image and color image using the default passthrough encoding
		depth_image = bridge.imgmsg_to_cv2(dep_image)
		color_image = bridge.imgmsg_to_cv2(rgb_image)
	except CvBridgeError, e:
		print e  

	#camera matrix from Camera_Info topic
	camera_mtx = [[620.2434692382812,0.0,322.904541015625],[0.0,619.9580688476562,242.00775146484375],[0.0,0.0,1.0]]

	#screen coordinate
	#u = depth_image.shape[1]/2
	#v = depth_image.shape[0]/2
	u = points[0]
	v = points[1]
	print(u)
	print(v)

	#get depth
	depth_array = np.array(depth_image, dtype=np.float32)
	
	zc = depth_array[u][v]
	
	#debag	
	print("depth")	
	print(zc)
	
	#change to world coordinate

	#new version
	cc = screen_to_camera(u,v,zc,camera_mtx)
	t = camera_to_world_on_tf(cc)
	trans = (round(t[0]*1000,0),round(t[1]*1000,0),round(t[2]*1000,0))
	x,y,z = trans[0],trans[1],trans[2]
	print("new_version:")
	print(x,y,z)

	
	

	#movie of debag
	#on_movie(color_image,u,v,x,y,z)

	#clicking to select screen coordinate on movie
	click_and_select(color_image,"change_coord",x,y,z)
		

def onMouse(event,x,y,flags,param):
	if event == cv2.EVENT_LBUTTONUP:
		points[0] = x
		points[1] = y
		

def click_and_select(color_image,windowname,x,y,z):
	img = cv2.cvtColor(color_image, cv2.COLOR_BGR2RGB)
	cv2.circle(img,(points[0],points[1]),5,(0,255,0),2)
	cv2.putText(img,"x:"+str(round(x,3)),(points[0]-10,points[1]-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"y:"+str(round(y,3)),(points[0]-10,points[1]-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"z:"+str(round(z,3)),(points[0]-10,points[1]-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.imshow(windowname,img)
	cv2.setMouseCallback(windowname,onMouse)
	cv2.waitKey(1)

def on_movie(color_image,u,v,x,y,z):
	img1 = cv2.cvtColor(color_image, cv2.COLOR_BGR2RGB)
	img2 = cv2.cvtColor(color_image, cv2.COLOR_BGR2RGB)
	cv2.circle(img1,(u,v),5,(0,255,0),2)
	cv2.putText(img1,"x:"+str(round(x,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img1,"y:"+str(round(y,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img1,"z:"+str(round(z,3)),(u-10,v-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	cv2.circle(img2,(u,v),5,(0,255,0),2)
	cv2.putText(img2,"x:"+str(round(u,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img2,"y:"+str(round(v,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	frame = cv2.hconcat([img1,img2])
	
	cv2.imshow('screen_to_world',frame)
	cv2.waitKey(20)


def camera_to_world_on_tf(cc):
	l = tf.TransformListener()
	rate = rospy.Rate(1)
	
	rospy.Rate(1).sleep() # it should be wait for wake up of Listener.

	now = rospy.Time.now()

	b.sendTransform((cc[0],cc[1],cc[2]),(0,0,0,1),now,"object_point","camera_color_optical_frame")

	rate.sleep()

	l.waitForTransform("base_link","object_point",now, rospy.Duration(1))

	trans,ret = l.lookupTransform("base_link","object_point",now)

	return trans

def screen_to_camera(u,v,z,K):
	K_inv = np.linalg.inv(K)

	# in screen coord
	cs = np.asarray([u, v, 1])
	cs_ = cs * z
	cc = np.dot(K_inv, cs_)

	cc[0] = round(cc[0],2)
	cc[1] = round(cc[1],2)

	return cc

		
	
if __name__=="__main__":
	rospy.init_node("change_screen_coord")
	change_screen_coord()
	try:
		rospy.spin()
	except rospy.ROSInterruptException:
			print(err)

