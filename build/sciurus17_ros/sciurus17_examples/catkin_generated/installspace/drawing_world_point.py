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


def screen_to_world():
	queue_size = 10
	fps = 100.
	delay = 1 / fps * 0.5
	
	rospy.init_node('screen_to_world')
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
	u = depth_image.shape[1]/2
	v = depth_image.shape[0]/2
	
	camera_mtx = [[620.2434692382812,0.0,322.904541015625],[0.0,619.9580688476562,242.00775146484375],[0.0,0.0,1.0]]

	depth_array = np.array(depth_image, dtype=np.float32)
	z1 = depth_array[u][v]
	print("depth")	
	print(z1)

	#center
	uvz_list = [u,v,z1]
	t,q = camera_tf()
	trans = (round(t[0]*1000,0),round(t[1]*1000,0),round(t[2]*1000,0))
	print("trans:")
	print(trans)

	roll,pitch,yaw=quarternion_to_euler(q)
	print("r,p,y:")	
	print(roll,pitch,yaw)

	#R = calc_R(roll,pitch,yaw)
	#print("R:")
	#print(R)
	R = quarternion_to_R(q)
	print("R:")
	print(R)

	x,y,z = convert_uvz_to_xyz(uvz_list[0],uvz_list[1],uvz_list[2],R,trans,camera_mtx)
	
	
	print("center")
	print(x,y,z)


	input_image = cv_bridge.imgmsg_to_cv2(rgb_image)
	img = cv2.cvtColor(input_image, cv2.COLOR_BGR2RGB)
	cv2.circle(img,(u,v),5,(0,255,0),2)
	cv2.putText(img,"x:"+str(round(x,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"y:"+str(round(y,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"z:"+str(round(z,3)),(u-10,v-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	#button
	"""u = depth_image.shape[1]/2
	v = depth_image.shape[0] 
	z1 = depth_array[u][v]
	uvz_list = [u,v,z1]
	R = calc_R(roll,pitch,yaw)
	x,y,z = convert_uvz_to_xyz(uvz_list[0],uvz_list[1],uvz_list[2],R,trans,camera_mtx)
	print("button")	
	print(x,y,z)
	print(" ")
	cv2.circle(img,(u,v),5,(0,255,0),2)
	cv2.putText(img,"x:"+str(round(x,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"y:"+str(round(y,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(img,"z:"+str(round(z,3)),(u-10,v-40),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)"""
	input_image = cv2.cvtColor(input_image, cv2.COLOR_BGR2RGB)
	cv2.circle(input_image,(u,v),5,(0,255,0),2)
	cv2.putText(input_image,"x:"+str(round(u,3)),(u-10,v-10),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	cv2.putText(input_image,"y:"+str(round(v,3)),(u-10,v-25),cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,255,0),1,cv2.LINE_AA)
	
	frame = cv2.hconcat([img,input_image])

	"""cv2.imshow('test',input_image)
        cv2.waitKey(20)"""
	
	cv2.imshow('subtest',frame)
        cv2.waitKey(20)
		
     except CvBridgeError, e:
	print e     

def camera_tf():
	rate = rospy.Rate(1)

	b = tf.TransformBroadcaster()
	l = tf.TransformListener()
	rospy.Rate(1).sleep() # it should be wait for wake up of Listener.

	now = rospy.Time.now()

	b.sendTransform((1,2,3),(0,0,0,1),now,"aaa","base_link")
	rate.sleep()

	l.waitForTransform("base_link","camera_color_optical_frame",now, rospy.Duration(1))

	trans,ret = l.lookupTransform("base_link","camera_color_optical_frame",now)

	return trans,ret 

def quarternion_to_euler(q):
	r_c = 2*(q[0]*q[1]+q[2]*q[3])
	r_m = q[0]**2-q[1]**2-q[2]**2+q[3]**2
	R = r_c/r_m

	P = 2*(q[0]*q[2]-q[1]*q[3])

	y_c = 2*(q[0]*q[3]+q[1]*q[2])
	y_m = q[0]**2 + q[1]**2 - q[2]**2 - q[3]**2
	Y = y_c/y_m

	roll = math.degrees(math.atan(R))
	pitch = math.degrees(math.asin(P))
	yaw = math.degrees(math.atan(Y))

	return roll,pitch,yaw

def eulor_to_quaternion(q):

    sinr_cosp = 2 * (q[0] * q[1] + q[2] * q[3])
    cosr_cosp = 1 - 2 * (q[1] * q[1] + q[2] * q[2])
    roll = math.atan2(sinr_cosp, cosr_cosp)


    sinp = 2 * (q[0] * q[2] - q[3] * q[1])
    if math.fabs(sinp) >= 1:
        pitch = math.copysign(math.pi / 2, sinp)
    else:
        pitch = math.asin(sinp)


    siny_cosp = 2 * (q[0] * q[3] + q[1] * q[2])
    cosy_cosp = 1 - 2 * (q[2] * q[2] + q[3] * q[3])
    yaw = math.atan2(siny_cosp, cosy_cosp)
    

    return roll,pitch,yaw

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
    Rt = np.transpose(R)
    R_inv = np.linalg.inv(R)
    # in screen coord
    cs = np.asarray([u, v, 1])
    cs_ = cs * z
    
    cc = np.dot(K_inv, cs)

    if cc[0] < 0 or cc[1] < 0:
    	if cc[0]<0:
		cc[0]=-1*cc[0]
	if cc[1]<0:
		cc[1]=-1*cc[1]
	
    #cc[2] = z
    cc[0] = round(cc[0],2)
    cc[1] = round(cc[1],2)
    #cc[2] = round(cc[2],2)
    cc = cc*z
    # in camera coord
    #cc = np.dot(K_inv, cs_)
    print(cc)
    # in world coord
    cw = np.dot(R,cc)+t
    #cw = np.dot(Rt,(cc-t))
    
    cw[0] = round(cw[0],0)
    cw[1] = round(cw[1],0)
    cw[2] = round(cw[2],0)
 


    return cw

def calc_R(roll,pitch,yaw):
    a = np.radians(roll)
    b = np.radians(pitch)
    c = np.radians(yaw)

    R_x = np.asarray([
        [1, 0, 0],
        [0, cos(a), -sin(a)],
        [0, sin(a), cos(a)],
    ])

    R_y = np.asarray([
        [cos(b), 0, sin(b)],
        [0, 1, 0],
        [-sin(b), 0, cos(b)],
    ])

    R_z = np.asarray([
        [cos(c), -sin(c), 0],
        [sin(c), cos(c), 0],
        [0, 0, 1],
    ])

    R = np.dot(R_z, np.dot(R_y, R_x))

    return R



if __name__=="__main__":
     try:
         screen_to_world()
	 
     except rospy.ROSInterruptException:
         print(err)

