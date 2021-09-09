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

b.sendTransform((1,2,3),(0,0,0,1),now,"aaa","world")
rate.sleep()
b.sendTransform((-3,-2,-1),(1,0,0,0),now,"bbb","world")
rate.sleep()

l.waitForTransform("aaa","world",rospy.Time(0), rospy.Duration(4.0))

ret = l.lookupTransform("aaa","bbb",now)
print(ret)

pose = PoseStamped()
pose.header.stamp = now
pose.header.frame_id = "base_link"
pose.pose.position.x = 0
pose.pose.orientation.w = 1.

print("<PoseStamped>")
"""p = l.transformPose("camera_color_optical_frame",pose)
print("---camera_color_optical_frame---")
print(p)"""

p = l.transformPose("camera_link",pose)
print("---camera_link---")
print(p)

rospy.spin()


"""p = l.transformPose("body_link",pose)
print("---body_link---")
print(p)

point = PointStamped()
point.header.stamp = now
point.header.frame_id = "laser"
point.point.x = 1
point.point.y =-1
point.point.z = 0

print("<PointStamped>")
p = l.transformPoint("laser",point)
print("---laser---")
print(p)

p = l.transformPoint("aaa",point)
print("---aaa---")
print(p)

p = l.transformPoint("bbb",point)
print("---bbb---")
print(p)"""

