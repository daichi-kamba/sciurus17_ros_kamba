#!/usr/bin/env python
import rospy
import tf
from geometry_msgs.msg import *


rospy.init_node("test")
rate = rospy.Rate(10)

b = tf.TransformBroadcaster()
l = tf.TransformListener()
rospy.Rate(1).sleep() # it should be wait for wake up of Listener.

now = rospy.Time.now()

b.sendTransform((1,2,3),(0,0,0,1),now,"aaa","base_link")
rate.sleep()

l.waitForTransform("base_link","camera_color_optical_frame",now, rospy.Duration(1.0))

trans,ret = l.lookupTransform("base_link","camera_color_optical_frame",now)
print(ret)
b.sendTransform((0,0,1),(0,0,0,1),now,"object_point","camera_color_optical_frame")
l.waitForTransform("base_link","object_point",now, rospy.Duration(1.0))
trans,ret = l.lookupTransform("base_link","object_point",now)
print(ret)
print(trans)

pose = PoseStamped()
pose.header.stamp = now
pose.header.frame_id = "camera_link"
pose.pose.position.x = 0
pose.pose.orientation.w = 1.

print("<PoseStamped>")
p = l.transformPose("base_link",pose)
print("---base_link---")
print(p)

rospy.spin()



