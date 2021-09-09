#!/usr/bin/env python
import rospy
import tf
from geometry_msgs.msg import *

def camera_tf():
	rospy.init_node("camera_tf")
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

	pose = PoseStamped()
	pose.header.stamp = now
	pose.header.frame_id = "base_link"
	pose.pose.position.x = 0
	pose.pose.orientation.w = 1.


	"""
	print("<PoseStamped>")

	p = l.transformPose("camera_link",pose)
	print("---camera_link---")
	print(p)
	"""
	return trans,ret


if __name__ == '__main__':
     try:
         trans,q = camera_tf() 
	 print(trans)
	 print(q)
	 
     except rospy.ROSInterruptException:
         pass



