#!/usr/bin/env python
import rospy
import tf
from geometry_msgs.msg import *


class screen_xyz:
	def __init__(self):
		self.pub = rospy.Publisher("/output_xyz",)
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
	     x = depth_image.shape[1]/2
	     y = depth_image.shape[0]/2
	     	
	     depth_array = np.array(depth_image, dtype=np.float32)
	     z = depth_array[x][y]

	     xyz_list = [x,y,z]
	     self.pub.publish(xyz_list)


def camera_tf():
	
	rate = rospy.Rate(10)

	b = tf.TransformBroadcaster()
	l = tf.TransformListener()
	rospy.Rate(1).sleep() # it should be wait for wake up of Listener.

	now = rospy.Time.now()

	b.sendTransform((1,2,3),(0,0,0,1),now,"aaa","world")
	rate.sleep()

	l.waitForTransform("aaa","world",rospy.Time(0), rospy.Duration(4.0))

	pose = PoseStamped()
	pose.header.stamp = now
	pose.header.frame_id = "world"
	pose.pose.position.x = 0
	pose.pose.orientation.w = 1.

	p = l.transformPose("camera_link",pose)
	return 

def main():
	tf_para = camera_tf()
	
	
	
	rospy.init_node('screen_to_world',anonymous=True)
     
	rospy.spin()

