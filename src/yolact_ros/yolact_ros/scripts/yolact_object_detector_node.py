#! /usr/bin/env python

import rospy

from yolact_object_detector import YolactObjectDetector
#from yolact_detection_movie import cvBridgeDemo

if __name__ == "__main__":
    rospy.init_node("yolact_ros")
    YolactObjectDetector()
    #cvBridgeDemo()
    rospy.spin()
