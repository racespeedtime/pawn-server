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

 Date: 25/07/2020 22:33:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `UsersID` int(10) UNSIGNED NULL DEFAULT NULL,
  `ModelID` int(11) NULL DEFAULT NULL,
  `Color1` int(11) NULL DEFAULT NULL,
  `Color2` int(11) NULL DEFAULT NULL,
  `Lock` int(11) NULL DEFAULT NULL,
  `X` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Y` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Z` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `A` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` int(11) NULL DEFAULT NULL,
  `Text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BanGoto` int(11) NULL DEFAULT NULL,
  `SellValue` int(11) NULL DEFAULT 0,
  `Mod1` int(11) NULL DEFAULT NULL,
  `Mod2` int(11) NULL DEFAULT NULL,
  `Mod3` int(11) NULL DEFAULT NULL,
  `Mod4` int(11) NULL DEFAULT NULL,
  `Mod5` int(11) NULL DEFAULT NULL,
  `Mod6` int(11) NULL DEFAULT NULL,
  `Mod7` int(11) NULL DEFAULT NULL,
  `Mod8` int(11) NULL DEFAULT NULL,
  `Mod9` int(11) NULL DEFAULT NULL,
  `Mod10` int(11) NULL DEFAULT NULL,
  `Moded` int(11) NULL DEFAULT NULL,
  `Printjob` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES (2, 22, 411, 2, 0, 1, '-330.298889', '1514.904418', '75.085655', '358.779388', 4000, '{0080FF}Please {FF80FF}Call Me {FF8040}Boss ->> {FF0000}[R_ST]KiVen', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (8, 45, 411, 0, 0, 0, '1883.010498', '-1567.683349', '13.419016', '181.606933', 4000, 'FengZi的欢乐小车', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (9, 121, 411, 0, 0, 0, '-270.480529', '1547.292480', '75.086456', '314.842285', 5000, '[R_omantic]Ait.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (11, 39, 411, 0, 0, 1, '-313.895172', '1515.432128', '75.030960', '5.911198', 4000, '黑 色 高 级 车', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (12, 61, 411, 0, 0, 0, '-262.323272', '1541.855468', '75.086456', '134.762039', 10000, '黑 色 高 级 车', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (13, 96, 600, 0, 0, 0, '-327.336303', '1515.046630', '75.076675', '359.811279', 4000, '月饼送货店（自家用）', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (14, 3, 411, 10, 9, 1, '1907.606445', '-1569.610229', '13.402455', '178.137557', 4000, 'RaceSpeedTime', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (15, 120, 411, 0, 0, 1, '-339.824890', '1514.409545', '75.086448', '0.373776', 4000, 'Yukine', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (16, 54, 562, 0, 0, 1, '-320.845458', '1514.843383', '75.018447', '359.783020', 4000, '如果还有梦,就带着理想出发吧！', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (17, 60, 411, 3, 0, 1, '-342.816040', '1514.543945', '75.035469', '359.849334', 4000, '菠萝战宝', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (18, 26, 562, 31, 0, 0, '-336.588775', '1515.002441', '75.019004', '0.150661', 4000, '[R_ST]peretDK', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (19, 160, 411, 0, 0, 0, '429.012359', '-1836.450683', '5.388294', '0.065610', 4000, 'mag', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (20, 162, 411, 0, 0, 1, '-1654.489624', '-211.600189', '14.148437', '218.744995', 4000, 'Andy', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (21, 179, 411, 0, 0, 0, '-333.684417', '1514.701538', '75.086372', '358.898651', 4000, '强哥牛逼！！！！！', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (22, 180, 411, 0, 0, 0, '-268.099395', '1544.979858', '75.034515', '314.393463', 4000, 'LangShenXiaoGenBan', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (23, 184, 411, 1, 0, 1, '-324.129943', '1514.897338', '75.086441', '359.679809', 4000, 'Shoumar：无论多大，我想继续热爱！', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (24, 183, 411, 4, 0, 0, '-345.925079', '1514.993164', '75.086448', '359.836883', 4000, 'CatsonS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);
INSERT INTO `cars` VALUES (25, 175, 411, 0, 0, 0, '-349.234466', '1515.641845', '75.234947', '358.525421', 4000, 'RSTDenver', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (26, 48, 411, 0, 0, 1, '-273.041534', '1549.823364', '75.086898', '314.300415', 4000, '[R_ST]GongB', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `cars` VALUES (27, 203, 562, 0, 0, 0, '-272.569885', '1549.980346', '75.020256', '133.212646', 4000, '[R_ST]Promise_DC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
