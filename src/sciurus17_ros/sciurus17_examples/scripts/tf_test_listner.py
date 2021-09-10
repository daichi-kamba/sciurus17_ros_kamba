#!/usr/bin/env python
import rospy
import math
import tf
import geometry_msgs.msg



if __name__ == '__main__':
	#listner
	#rospy.init_node('sciurus17_tf_listner')
	rospy.init_node('sciurus17_tf_listner')
	listener = tf.TransformListener()

	turtle_vel = rospy.Publisher('turtle2/cmd_vel', geometry_msgs.msg.Twist)

	rate = rospy.Rate(10.0)

	try:
	    (trans,rot) = listener.lookupTransform('base_link', 'camera_link', rospy.Time(0))
	    rospy.loginfo(trans)

	except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
