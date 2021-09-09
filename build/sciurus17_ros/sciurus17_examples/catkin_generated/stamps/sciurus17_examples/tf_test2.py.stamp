#!/usr/bin/env python
import rospy
import tf
import geometry_msgs.msg

t = tf.Transformer(True, rospy.Duration(10.0))
t.getFrameStrings()

m = geometry_msgs.msg,TransformStamped()
m.header.fram_id = "base_link"
m.child_frame_id = "head_camera"
m.transform.translation.x = 2.71828183
m.transform.rotaion.w = 1.0

t.setTransform(m)
t.getFrameStrings()

t.lookupTransform("base_link","head_camera",rospy.Time(0))

def tf_printer(msg):
	t = tf.Transformer(True, rospy.Duration(10.0))
	t.setTransform(msg)
	t.getFrameStrings()
	t.lookupTransform("base_link","head_camera",rospy.Time(0))
