#!/usr/bin/env python
import rospy
import math
import tf

import tf2_ros
import tf2_msgs.msg
from tf2_msgs.msg import TFMessage
#from geometry_msgs.msg import Pose


def sciurus17_pose(msg):
	br = tf.TransformBroadcaster()
	m = msg.transforms[0].transform
	
	for transform in msg.transforms:
		transform.header.stamp = rospy.Time.now()
		transform.header.frame_id = "base_link"
		print("ok")
		transform.child_frame_id = "camera_link"
		print("Iterating data transforms", transform)
		print(m)


#br.sendTransform((m.translation.x,m.translation.y,m.translation.z),(m.transrotation.x,m.transrotation.y,m.transrotation.z,m.transrotation.w),rospy.Time.now(),"camera_link","base_link")
	#t = m.TransformStamped()
	#t=tf.Transformer(True,rospy.Duration(10.0))
	#t.setTransform(m)
	"""t.header.stamp = rospy.Time.now()
	t.header.frame_id = "base_link"
	t.child.frame_id = "camera_link"
	"""
	#print(type(msg))
	#print(type(m))
	#print(m)
	
	
	#br.sendTransform(m)
	"""br.sendTransform((msg.x, msg.y, 0),
	       tf.transformations.quaternion_from_euler(0, 0, msg.theta),
	       rospy.Time.now(),
	       "camera_link",
	       "base_link")"""
	

if __name__ == '__main__':
	#broadcaster
	rospy.init_node('sciurus17_tf_broadcaster')
	rospy.Subscriber('/tf',tf2_msgs.msg.TFMessage,sciurus17_pose)
	rospy.spin()
