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

uvz_list = []

camera_mtx = [[762.23310493,0,306.65644535],[0,761.81032949,262.67141681],[0,0,1]]

class screen_uvz:
	def __init__(self):
		self.sub = rospy.Subscriber("/sciurus17/camera/aligned_depth_to_color/image_raw", Image,self.convert_depth_image, queue_size=1)
		

	def convert_depth_image(self,ros_image):
	     # Use cv_bridge() to convert the ROS image to OpenCV format
	     try:
		cv_bridge = CvBridge()
	     	#Convert the depth image using the default passthrough encoding
		depth_image = cv_bridge.imgmsg_to_cv2(ros_image)
				
	     except CvBridgeError, e:
		print e
	     #Convert the depth image to a Numpy array
	     u = depth_image.shape[1]/2
	     v = depth_image.shape[0]/2
	     	
	     depth_array = np.array(depth_image, dtype=np.float32)
	     z = depth_array[u][v]
	     global uvz_list
	     uvz_list = [u,v,z]
	     
	     


def camera_tf():
	rate = rospy.Rate(10)

	b = tf.TransformBroadcaster()
	l = tf.TransformListener()
	rospy.Rate(1).sleep() # it should be wait for wake up of Listener.

	now = rospy.Time.now()

	b.sendTransform((1,2,3),(0,0,0,1),now,"aaa","world")
	rate.sleep()
	b.sendTransform((-3,-2,-1),(1,0,0,0),now,"bbb","world")
	rate.sleep()

	l.waitForTransform("aaa","world",rospy.Time(0), rospy.Duration(4.0))

	trans,ret = l.lookupTransform("base_link","camera_link",now)

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

def convert_uvz_to_xyz(u, v, z, R, t, K):
    K_inv = np.linalg.inv(K)

    # in screen coord
    cs = np.asarray([u, v, 1])
    cs_ = cs * z

    # in camera coord
    cc = np.dot(K_inv, cs_)

    # in world coord
    cw = np.dot(R, cc) + t

    return cw

def calc_R(pitch, yaw, roll):
    a = np.radians(pitch)
    b = np.radians(yaw)
    c = np.radians(roll)

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

def main():
	
	rospy.init_node('screen_to_world',anonymous=True)
	screen_uvz()
	trans,q = camera_tf()
	roll,pitch,yaw=quarternion_to_euler(q)
	R = calc_R(roll,pitch,yaw)
	x,y,z = convert_uvz_to_xyz(uvz_list[0],uvz_list[1],uvz_list[2],R,trans,camera_mtx)
	
	print(x,y,z)
	
	
     
	rospy.spin()

if __name__=="__main__":
	main()




