#!/usr/bin/env python
# -*- coding: utf-8 -*-
import copy
import argparse
import sys
sys.path.insert(0,"/home/kamba/.pyenv/versions/3.7.3/lib/python3.7/site-packages")
sys.path.insert(0,"/home/kamba/cv_bridge_ws/devel/lib/python3/dist-packages")

import cv2 as cv
import numpy as np
import mediapipe as mp

from utils import CvFpsCalc

import rospy
from geometry_msgs.msg import *
import math
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np
from numpy import sin, cos, tan
import message_filters


class gail_expert:
    def __init__(self):
        # 引数解析 #################################################################
        # upper_body_only = args.upper_body_only
        self.model_complexity = 1
        self.min_detection_confidence = 0.5
        self.min_tracking_confidence = 0.5
        self.enable_segmentation = True
        self.segmentation_score_th = 0.5

        self.use_brect = True
        self.plot_world_landmark = True
        
        self.bridge = CvBridge()
        
        
        # モデルロード #############################################################
        self.mp_pose = mp.solutions.pose
        self.pose = self.mp_pose.Pose(
            # upper_body_only=upper_body_only,
            model_complexity=self.model_complexity,
            enable_segmentation=self.enable_segmentation,
            min_detection_confidence=self.min_detection_confidence,
            min_tracking_confidence=self.min_tracking_confidence,
        )
        

        rospy.init_node("gail_expert")
        rospy.Subscriber("/sciurus17/camera/color/image_raw",Image,self.call_back,queue_size=100)
        rospy.spin()

    def call_back(self,ros_image):
        image = self.bridge.imgmsg_to_cv2(ros_image)
 
        # 画像処理 #####################################################
        #image = cv.flip(image, 1)#ミラー表示
        image = cv.cvtColor(image, cv.COLOR_BGR2RGB)
        debug_image = copy.deepcopy(image)

        # 検出実施 #############################################################
        
        results = self.pose.process(image)

        # 描画 ################################################################
        if results.pose_landmarks is not None:
            # 外接矩形の計算
            brect = self.calc_bounding_rect(debug_image, results.pose_landmarks)
            # 描画
            debug_image = self.draw_landmarks(
                debug_image,
                results.pose_landmarks,
                # upper_body_only,
            )
            #debug_image = self.draw_bounding_rect(self.use_brect, debug_image, brect)

        # 画面反映 #############################################################
        cv.imshow('MediaPipe Pose Demo', debug_image)
        key = cv.waitKey(1)
  


    def calc_bounding_rect(self,image, landmarks):
        image_width, image_height = image.shape[1], image.shape[0]

        landmark_array = np.empty((0, 2), int)

        for _, landmark in enumerate(landmarks.landmark):
            landmark_x = min(int(landmark.x * image_width), image_width - 1)
            landmark_y = min(int(landmark.y * image_height), image_height - 1)

            landmark_point = [np.array((landmark_x, landmark_y))]

            landmark_array = np.append(landmark_array, landmark_point, axis=0)

        x, y, w, h = cv.boundingRect(landmark_array)

        return [x, y, x + w, y + h]


    def draw_landmarks(
        self,
        image,
        landmarks,
        # upper_body_only,
        visibility_th=0.5,
    ):
        image_width, image_height = image.shape[1], image.shape[0]

        landmark_point = []

        for index, landmark in enumerate(landmarks.landmark):
            landmark_x = min(int(landmark.x * image_width), image_width - 1)
            landmark_y = min(int(landmark.y * image_height), image_height - 1)
            landmark_z = landmark.z
            landmark_point.append([landmark.visibility, (landmark_x, landmark_y)])

            if landmark.visibility < visibility_th:
                continue

            if index == 0:  # 鼻
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 1:  # 右目：目頭
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 2:  # 右目：瞳
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 3:  # 右目：目尻
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 4:  # 左目：目頭
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 5:  # 左目：瞳
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 6:  # 左目：目尻
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 7:  # 右耳
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 8:  # 左耳
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 9:  # 口：左端
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 10:  # 口：左端
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 11:  # 右肩
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 12:  # 左肩
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 13:  # 右肘
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 14:  # 左肘
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 15:  # 右手首
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 16:  # 左手首
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 17:  # 右手1(外側端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 18:  # 左手1(外側端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 19:  # 右手2(先端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 20:  # 左手2(先端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 21:  # 右手3(内側端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 22:  # 左手3(内側端)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 23:  # 腰(右側)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 24:  # 腰(左側)
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 25:  # 右ひざ
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 26:  # 左ひざ
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 27:  # 右足首
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 28:  # 左足首
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 29:  # 右かかと
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 30:  # 左かかと
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 31:  # 右つま先
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)
            if index == 32:  # 左つま先
                cv.circle(image, (landmark_x, landmark_y), 5, (0, 255, 0), 2)

            # if not upper_body_only:

            if True:
                cv.putText(image, "x:" + str(round(landmark_x, 3)),
                        (landmark_x - 10, landmark_y - 10),
                        cv.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1,
                        cv.LINE_AA)

        if len(landmark_point) > 0:
            # 右目
            if landmark_point[1][0] > visibility_th and landmark_point[2][
                    0] > visibility_th:
                cv.line(image, landmark_point[1][1], landmark_point[2][1],
                        (0, 255, 0), 2)
            if landmark_point[2][0] > visibility_th and landmark_point[3][
                    0] > visibility_th:
                cv.line(image, landmark_point[2][1], landmark_point[3][1],
                        (0, 255, 0), 2)

            # 左目
            if landmark_point[4][0] > visibility_th and landmark_point[5][
                    0] > visibility_th:
                cv.line(image, landmark_point[4][1], landmark_point[5][1],
                        (0, 255, 0), 2)
            if landmark_point[5][0] > visibility_th and landmark_point[6][
                    0] > visibility_th:
                cv.line(image, landmark_point[5][1], landmark_point[6][1],
                        (0, 255, 0), 2)

            # 口
            if landmark_point[9][0] > visibility_th and landmark_point[10][
                    0] > visibility_th:
                cv.line(image, landmark_point[9][1], landmark_point[10][1],
                        (0, 255, 0), 2)

            # 肩
            if landmark_point[11][0] > visibility_th and landmark_point[12][
                    0] > visibility_th:
                cv.line(image, landmark_point[11][1], landmark_point[12][1],
                        (0, 255, 0), 2)

            # 右腕
            if landmark_point[11][0] > visibility_th and landmark_point[13][
                    0] > visibility_th:
                cv.line(image, landmark_point[11][1], landmark_point[13][1],
                        (0, 255, 0), 2)
            if landmark_point[13][0] > visibility_th and landmark_point[15][
                    0] > visibility_th:
                cv.line(image, landmark_point[13][1], landmark_point[15][1],
                        (0, 255, 0), 2)

            # 左腕
            if landmark_point[12][0] > visibility_th and landmark_point[14][
                    0] > visibility_th:
                cv.line(image, landmark_point[12][1], landmark_point[14][1],
                        (0, 255, 0), 2)
            if landmark_point[14][0] > visibility_th and landmark_point[16][
                    0] > visibility_th:
                cv.line(image, landmark_point[14][1], landmark_point[16][1],
                        (0, 255, 0), 2)

            # 右手
            if landmark_point[15][0] > visibility_th and landmark_point[17][
                    0] > visibility_th:
                cv.line(image, landmark_point[15][1], landmark_point[17][1],
                        (0, 255, 0), 2)
            if landmark_point[17][0] > visibility_th and landmark_point[19][
                    0] > visibility_th:
                cv.line(image, landmark_point[17][1], landmark_point[19][1],
                        (0, 255, 0), 2)
            if landmark_point[19][0] > visibility_th and landmark_point[21][
                    0] > visibility_th:
                cv.line(image, landmark_point[19][1], landmark_point[21][1],
                        (0, 255, 0), 2)
            if landmark_point[21][0] > visibility_th and landmark_point[15][
                    0] > visibility_th:
                cv.line(image, landmark_point[21][1], landmark_point[15][1],
                        (0, 255, 0), 2)

            # 左手
            if landmark_point[16][0] > visibility_th and landmark_point[18][
                    0] > visibility_th:
                cv.line(image, landmark_point[16][1], landmark_point[18][1],
                        (0, 255, 0), 2)
            if landmark_point[18][0] > visibility_th and landmark_point[20][
                    0] > visibility_th:
                cv.line(image, landmark_point[18][1], landmark_point[20][1],
                        (0, 255, 0), 2)
            if landmark_point[20][0] > visibility_th and landmark_point[22][
                    0] > visibility_th:
                cv.line(image, landmark_point[20][1], landmark_point[22][1],
                        (0, 255, 0), 2)
            if landmark_point[22][0] > visibility_th and landmark_point[16][
                    0] > visibility_th:
                cv.line(image, landmark_point[22][1], landmark_point[16][1],
                        (0, 255, 0), 2)

            # 胴体
            if landmark_point[11][0] > visibility_th and landmark_point[23][
                    0] > visibility_th:
                cv.line(image, landmark_point[11][1], landmark_point[23][1],
                        (0, 255, 0), 2)
            if landmark_point[12][0] > visibility_th and landmark_point[24][
                    0] > visibility_th:
                cv.line(image, landmark_point[12][1], landmark_point[24][1],
                        (0, 255, 0), 2)
            if landmark_point[23][0] > visibility_th and landmark_point[24][
                    0] > visibility_th:
                cv.line(image, landmark_point[23][1], landmark_point[24][1],
                        (0, 255, 0), 2)

            if len(landmark_point) > 25:
                # 右足
                if landmark_point[23][0] > visibility_th and landmark_point[25][
                        0] > visibility_th:
                    cv.line(image, landmark_point[23][1], landmark_point[25][1],
                            (0, 255, 0), 2)
                if landmark_point[25][0] > visibility_th and landmark_point[27][
                        0] > visibility_th:
                    cv.line(image, landmark_point[25][1], landmark_point[27][1],
                            (0, 255, 0), 2)
                if landmark_point[27][0] > visibility_th and landmark_point[29][
                        0] > visibility_th:
                    cv.line(image, landmark_point[27][1], landmark_point[29][1],
                            (0, 255, 0), 2)
                if landmark_point[29][0] > visibility_th and landmark_point[31][
                        0] > visibility_th:
                    cv.line(image, landmark_point[29][1], landmark_point[31][1],
                            (0, 255, 0), 2)

                # 左足
                if landmark_point[24][0] > visibility_th and landmark_point[26][
                        0] > visibility_th:
                    cv.line(image, landmark_point[24][1], landmark_point[26][1],
                            (0, 255, 0), 2)
                if landmark_point[26][0] > visibility_th and landmark_point[28][
                        0] > visibility_th:
                    cv.line(image, landmark_point[26][1], landmark_point[28][1],
                            (0, 255, 0), 2)
                if landmark_point[28][0] > visibility_th and landmark_point[30][
                        0] > visibility_th:
                    cv.line(image, landmark_point[28][1], landmark_point[30][1],
                            (0, 255, 0), 2)
                if landmark_point[30][0] > visibility_th and landmark_point[32][
                        0] > visibility_th:
                    cv.line(image, landmark_point[30][1], landmark_point[32][1],
                            (0, 255, 0), 2)
        return image

    def draw_bounding_rect(self,use_brect, image, brect):
        if self.use_brect:
            # 外接矩形
            cv.rectangle(image, (brect[0], brect[1]), (brect[2], brect[3]),
                        (0, 255, 0), 2)

        return image


if __name__ == '__main__':
    gail=gail_expert()
