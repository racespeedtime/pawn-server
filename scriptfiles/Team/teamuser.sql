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

 Date: 24/07/2020 17:06:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for teamuser
-- ----------------------------
DROP TABLE IF EXISTS `teamuser`;
CREATE TABLE `teamuser`  (
  `UID` int(11) UNSIGNED NOT NULL,
  `TID` int(11) NULL DEFAULT NULL,
  `Level` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`UID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teamuser
-- ----------------------------
INSERT INTO `teamuser` VALUES (3, 1, 1);
INSERT INTO `teamuser` VALUES (12, 1, 0);
INSERT INTO `teamuser` VALUES (14, 1, 0);
INSERT INTO `teamuser` VALUES (16, 1, 1);
INSERT INTO `teamuser` VALUES (18, 1, 0);
INSERT INTO `teamuser` VALUES (20, 1, 0);
INSERT INTO `teamuser` VALUES (22, 1, 1);
INSERT INTO `teamuser` VALUES (26, 1, 0);
INSERT INTO `teamuser` VALUES (39, 1, 0);
INSERT INTO `teamuser` VALUES (45, 1, 0);
INSERT INTO `teamuser` VALUES (48, 1, 0);
INSERT INTO `teamuser` VALUES (54, 2, 2);
INSERT INTO `teamuser` VALUES (60, 1, 0);
INSERT INTO `teamuser` VALUES (61, 1, 0);
INSERT INTO `teamuser` VALUES (66, 1, 0);
INSERT INTO `teamuser` VALUES (72, 1, 0);
INSERT INTO `teamuser` VALUES (77, 5, 2);
INSERT INTO `teamuser` VALUES (92, 1, 0);
INSERT INTO `teamuser` VALUES (132, 2, 0);
INSERT INTO `teamuser` VALUES (156, 1, 0);
INSERT INTO `teamuser` VALUES (175, 1, 2);
INSERT INTO `teamuser` VALUES (179, 2, 1);
INSERT INTO `teamuser` VALUES (180, 2, 0);
INSERT INTO `teamuser` VALUES (183, 1, 0);
INSERT INTO `teamuser` VALUES (184, 1, 0);
INSERT INTO `teamuser` VALUES (188, 1, 0);
INSERT INTO `teamuser` VALUES (203, 1, 0);
INSERT INTO `teamuser` VALUES (235, 5, 0);
INSERT INTO `teamuser` VALUES (237, 1, 0);
INSERT INTO `teamuser` VALUES (284, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
