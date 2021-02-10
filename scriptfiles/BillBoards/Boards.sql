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

 Date: 27/07/2020 17:02:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for boards
-- ----------------------------
DROP TABLE IF EXISTS `boards`;
CREATE TABLE `boards`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ObjID` int(11) NOT NULL,
  `UsersID` int(10) UNSIGNED NOT NULL,
  `Text` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MaterialIndex` int(11) NOT NULL,
  `MaterialSize` int(11) NOT NULL,
  `FontFace` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FontSize` int(11) NOT NULL,
  `Bold` int(11) NOT NULL,
  `FontColor` int(11) NOT NULL,
  `BackColor` int(11) NOT NULL,
  `TextAlignment` int(11) NOT NULL,
  `X` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Y` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Z` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RX` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RY` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RZ` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `World` int(11) NOT NULL,
  `Int` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of boards
-- ----------------------------
INSERT INTO `boards` VALUES (9, 7606, 3, 'RaceSpeedTime团队(RST)\r\n本服为公益,自由赛车服\r\n在基础功能完善后将免费开源\r\n', 0, 130, '黑体', 33, 0, -11111, 33023, 1, '-320.831909', '1509.489868', '79.212615', '0.0', '0.0', '86.100006', 0, 0);
INSERT INTO `boards` VALUES (10, 9314, 22, 'KiVen\r\n→→→→→\r\n别看我看它\r\n→→→→→\r\n', 0, 90, '黑体', 28, 0, -1, 16744703, 1, '-312.925964', '1509.402709', '76.339347', '0.0', '0.0', '-93.199935', 0, 0);
INSERT INTO `boards` VALUES (11, 9314, 22, 'Hygen\r\n←←←←←\r\n别看我看它\r\n←←←←←\r\n', 0, 90, '黑体', 28, 0, -1, 16744703, 1, '-330.057037', '1509.978515', '76.329368', '0.0', '0.0', '-91.400001', 0, 0);
INSERT INTO `boards` VALUES (31, 9314, 22, '哔哩哔哩 (゜-゜)つロ\r\n哔哩哔哩 (゜-゜)つロ\r\n哔哩哔哩 (゜-゜)つロ\r\n哔哩哔哩 (゜-゜)つロ\r\n', 0, 140, '黑体', 49, 0, -1, 33023, 1, '-294.038116', '1505.040039', '76.419403', '0.0', '0.0', '-177.799942', 0, 0);
INSERT INTO `boards` VALUES (32, 9314, 22, '============================\r\n||->> samp - 给多年后的自己<<-||\r\n||或许多年后不曾有人听闻这游戏||\r\n||但请你不要忘记那些年意气风发||\r\n||无限热爱着游戏心怀大志的自己||\r\n||如果还有梦那就带着理想出发吧||\r\n===============by 鹏达 KiVen\r\n', 0, 130, '黑体', 29, 0, -1, 16744448, 1, '-291.871337', '1511.364868', '76.24932', '0.0', '0.0', '136.799896', 0, 0);
INSERT INTO `boards` VALUES (41, 9314, 54, '《终了》\r\n终是庄周梦了蝶,你是恩赐也是劫\r\n终是李白醉了酒,你是孤独也是愁\r\n终是荆轲刺了秦,一代君王一世民\r\n终是妲己祸了国,万里江山似蹉跎\r\n终是玉环停了曲,无人再懂琵琶语\r\n终是韩信放下枪,也是宿命也是伤\r\n终是悟空成了佛,你一堕落便成魔\r\n终是霸王别了姬,弃了江山负了你\r\n终是后羿断了箭,此生注定难相见\r\n终是圣安已截止,从此告别地列斯\r\n', 0, 140, '黑体', 32, 0, -1, 16599601, 1, '-319.068023', '1536.147705', '76.299415', '0.0', '0.0', '-90.800056', 0, 0);
INSERT INTO `boards` VALUES (42, 9314, 54, '这世上的久处不厌都是因为用心\r\nAll the time in the world is because of heart\r\n', 0, 130, '黑体', 20, 0, -1, 16711680, 1, '-334.339202', '1535.434692', '76.295669', '0.399999', '0.0', '-89.0998', 0, 0);
INSERT INTO `boards` VALUES (44, 9314, 54, '曾经以为,所爱隔山海山海不可平\r\n当时感觉,海有舟可渡山有路可行\r\n后来发现,山海皆可平难平是人心\r\n', 0, 130, '黑体', 30, 0, -1, 16744576, 1, '-293.97525', '1535.588745', '76.359375', '0.0', '0.0', '-91.699905', 0, 0);
INSERT INTO `boards` VALUES (50, 9314, 60, '我菠萝吹雪吹的不是雪，是血。\r\n是我剑上的血。\r\n', 0, 90, '草书', 16, 0, -32256, 3, 1, '-286.962005', '1515.855346', '76.317909', '4.4e-05', '0.399996', '131.499893', 0, 0);
INSERT INTO `boards` VALUES (52, 9314, 39, 'SAMP在国内迟早有一天完全消亡\r\n先在RST服留下我的足迹，做个纪念\r\n——FUNNYSNAKE1111\r\n', 0, 140, '微软雅黑', 40, 0, -1, 32768, 1, '-294.078704', '1490.157592', '76.456047', '0.0', '0.0', '0.0', 0, 0);
INSERT INTO `boards` VALUES (53, 7313, 3, '欢迎来到雷达站 BigEar\r\n', 0, 110, '黑体', 30, 0, -32256, -16777216, 1, '-313.121215', '1509.691162', '77.619369', '0.0', '0.0', '178.499923', 0, 0);
INSERT INTO `boards` VALUES (54, 7313, 22, 'Race Speed Time 骇速之时\r\n', 0, 110, '黑体', 40, 1, -1, 255, 1, '-320.97705', '1510.422729', '77.936592', '0.0', '0.0', '-178.199935', 0, 0);
INSERT INTO `boards` VALUES (56, 19603, 414, '请修改文字', 0, 90, 'Arial', 28, 0, -32256, -16777216, 1, '-293.879486', '1497.969726', '77.89656', '0.0', '0.0', '0.0', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
