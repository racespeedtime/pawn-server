/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50609
 Source Host           : localhost:3306
 Source Schema         : samp

 Target Server Type    : MySQL
 Target Server Version : 50609
 File Encoding         : 65001

 Date: 24/07/2020 21:16:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for teamsystem
-- ----------------------------
DROP TABLE IF EXISTS `teamsystem`;
CREATE TABLE `teamsystem`  (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `ShortName` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FullName` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Description` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`TID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teamsystem
-- ----------------------------
INSERT INTO `teamsystem` VALUES (1, 'RST', 'RaceSpeedTime', 'RaceSpeedTime 骇速之时\r\n前身Fire车队 2014-2020-∞\r\n');
INSERT INTO `teamsystem` VALUES (2, 'QGQ', '强哥强啊狼神强啊', 'NULL');
INSERT INTO `teamsystem` VALUES (5, 'GC', 'GripClub', 'null');

SET FOREIGN_KEY_CHECKS = 1;
