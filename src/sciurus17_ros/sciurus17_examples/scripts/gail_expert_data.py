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


def gail_expert_data():
	queue_size = 10
	fps = 100.
	delay = 1 / fps * 0.5
	
	rospy.init_node('gail_data_node')
	sub1 = message_filters.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image)
	sub2 = message_filters.Subscriber("/sciurus17/camera/color/image_raw", Image)
	mf = message_filters.ApproximateTimeSynchronizer([sub1, sub2], 100,5)
	mf.registerCallback(convert_depth_image)
	rospy.spin()

def convert_depth_image(ros_image,rgb_image):
     # Use cv_bridge() to convert the ROS image to OpenCV format
     try:
	cv_bridge = CvBridge()
     	#Convert the depth image using the default passthrough encoding
	depth_image = cv_bridge.imgmsg_to_cv2(ros_image)

	#get screen coordinate
	u = depth_image.shape[1]/2-40
	v = depth_image.shape[0]/2+80
	
	#get camera matrix from CameraInfo
	camera_mtx = [[620.2434692382812,0.0,322.904541015625],[0.0,619.9580688476562,242.00775146484375],[0.0,0.0,1.0]]
	
	#get depth	
	depth_array = np.array(depth_image, dtype=np.float32)
	z1 = depth_array[u][v]
	#change coordinate in world
	uvz_list = [u,v,z1]
	t = [0.16324832385494337, 0.0353919655359308, 0.6155538401404779]
	q = [-0.5020227850933225, 0.4985267055931895, -0.49928346638534477, 0.500160155073831]
	trans = (round(t[0]*1000,0),round(t[1]*1000,0),round(t[2]*1000,0))
	R = quarternion_to_R(q)
	x,y,z = convert_uvz_to_xyz(uvz_list[0],uvz_list[1],uvz_list[2],R,trans,camera_mtx)
	#debag	
	print("depth")	
	print(z1)	
	print("center")
	print(x,y,z)


	input_image = cv_bridge.imgmsg_to_cv2(rgb_image)
	img = cv2.cvtColor(input_image, cv2.COLOR_BGR2RGB)
	#movie
	on_movie(img,input_image,u,v,x,y,z)
		
     except CvBridgeError, e:
	print e     

def on_movie(img,input_image,u,z,x,y,z):
	cv2.circle(img,(u,v),5,(0,255,0),2)
	cv2.putText(img,"x:"+str(round(x,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"y:"+str(round(y,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"z:"+str(round(z,3)),(u-10,v-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	input_image = cv2.cvtColor(input_image, cv2.COLOR_BGR2RGB)
	cv2.circle(input_image,(u,v),5,(0,255,0),2)
	cv2.putText(input_image,"x:"+str(round(u,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(input_image,"y:"+str(round(v,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	frame = cv2.hconcat([img,input_image])
	
	cv2.imshow('screen_to_world',frame)
        cv2.waitKey(20)

def quarternion_to_R(q):
	
	r00 = q[0]**2 + q[1]**2 - q[2]**2 - q[3]**2
	r01 = 2*(q[1]*q[2] - q[0]*q[3])
	r02 = 2*(q[1]*q[3] + q[0]*q[2])

	r10 = 2*(q[1]*q[2] + q[0]*q[3])
	r11 = q[0]**2 - q[1]**2 + q[2]**2 - q[3]**2
	r12 = 2*(q[2]*q[3] - q[0]*q[1])

	r20 = 2*(q[1]*q[3] - q[0]*q[2])
	r21 = 2*(q[2]*q[3] + q[0]*q[1])
	r22 = q[0]**2 - q[1]**2 - q[2]**2 + q[3]**2

	R = [[r00,r01,r02],[r10,r11,r12],[r20,r21,r22]]

	return R

def convert_uvz_to_xyz(u, v, z, R, t, K):
    K_inv = np.linalg.inv(K)

    # in screen coord
    cs = np.asarray([u, v, 1])
    cs_ = cs * z
    cc = np.dot(K_inv, cs_)

    cc[0] = round(cc[0],2)
    cc[1] = round(cc[1],2)

    cw = np.dot(R,cc)+t
    
    cw[0] = round(cw[0],0)
    cw[1] = round(cw[1],0)
    cw[2] = round(cw[2],0)
    """
    print("z:%d" % z)
    print("K_inv:")
    print(K_inv)
    print("cs:")
    print(cs)
    print("cs_:")
    print(cs_)
    print("cc:")
    print(cc)
    print("R:")
    print(R)
    print("t:")
    print(t)
    """

    return cw

if __name__=="__main__":
     try:
         screen_to_world()
	 
     except rospy.ROSInterruptException:
         print(err)

