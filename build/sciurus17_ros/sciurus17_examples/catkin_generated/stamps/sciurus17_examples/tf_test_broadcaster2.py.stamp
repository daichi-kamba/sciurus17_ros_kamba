#!/usr/bin/python
# -*- coding: utf-8 -*-
import rospy
import tf
import tf2_ros
import geometry_msgs.msg

def Main():

    # ROS ノードの初期化処理
    rospy.init_node('static_tf2_broadcaster')

    # ブロードキャスタ、Transform
    br = tf2_ros.StaticTransformBroadcaster()
    t = geometry_msgs.msg.TransformStamped()

    # Transform の時刻情報、Base となる座標系、world を Base とする座標系
    t.header.stamp = rospy.Time.now()
    t.header.frame_id = 'world'
    t.child_frame_id = 'xxx'

    # 6D pose (位置 translation、姿勢 rotation)
    t.transform.translation.x = 0
    t.transform.translation.y = 0
    t.transform.translation.z = 0

    quat = tf.transformations.quaternion_from_euler(0, 0, 0)
    t.transform.rotation.x = quat[0]
    t.transform.rotation.y = quat[1]
    t.transform.rotation.z = quat[2]
    t.transform.rotation.w = quat[3]

    br.sendTransform(t)
    rospy.spin()

if __name__ == '__main__':
    Main()
