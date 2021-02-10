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

 Date: 26/07/2020 23:03:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for race_cp_script
-- ----------------------------
DROP TABLE IF EXISTS `race_cp_script`;
CREATE TABLE `race_cp_script`  (
  `rid` int(11) NULL DEFAULT NULL,
  `cpid` int(11) NULL DEFAULT NULL,
  `list` int(11) NULL DEFAULT NULL,
  `script` varchar(99) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `Rid_Cp_Script_index`(`cpid`, `rid`, `list`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of race_cp_script
-- ----------------------------
INSERT INTO `race_cp_script` VALUES (14, 303, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (16, 305, 0, 'speed | 180 | 500');
INSERT INTO `race_cp_script` VALUES (16, 306, 0, 'speedex | 180 | 250 | 0.8');
INSERT INTO `race_cp_script` VALUES (16, 307, 0, 'speed | 180 | 0');
INSERT INTO `race_cp_script` VALUES (16, 311, 0, 'speedex | 269 | 200 | 0.5');
INSERT INTO `race_cp_script` VALUES (16, 329, 0, 'speedex | 100 | 585 | 1.2');
INSERT INTO `race_cp_script` VALUES (16, 330, 0, 'vgoto s 1477.673 1576.677 10.537');
INSERT INTO `race_cp_script` VALUES (16, 304, 0, 'msg {F7F8F9}欢迎来到Speed_G高级赛道!');
INSERT INTO `race_cp_script` VALUES (18, 523, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (19, 525, 0, 'speed | 180 | 400');
INSERT INTO `race_cp_script` VALUES (21, 607, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (4, 117, 0, 'vgoto v -262.122 1528.860 75.287');
INSERT INTO `race_cp_script` VALUES (6, 127, 0, 'vgoto s -2122.606 917.703 79.566');
INSERT INTO `race_cp_script` VALUES (6, 139, 0, 'angle | 179');
INSERT INTO `race_cp_script` VALUES (6, 139, 1, 'vgoto v -2412.854 273.865 34.742');
INSERT INTO `race_cp_script` VALUES (6, 156, 0, 'vgoto s -1519.083 -661.802 13.868');
INSERT INTO `race_cp_script` VALUES (7, 160, 0, 'speedex | 180 | 211 | 1.1');
INSERT INTO `race_cp_script` VALUES (7, 161, 0, 'speedex | 180 | 200 | 0.95');
INSERT INTO `race_cp_script` VALUES (7, 187, 0, 'angle | 343');
INSERT INTO `race_cp_script` VALUES (7, 187, 1, 'vgoto v -1207.065 -2295.811 -9.445');
INSERT INTO `race_cp_script` VALUES (7, 190, 0, 'speedex | 50 | 195 | 1.8');
INSERT INTO `race_cp_script` VALUES (7, 196, 0, 'speedex | 316 | 200 | 1.2');
INSERT INTO `race_cp_script` VALUES (7, 197, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (27, 776, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (8, 198, 0, 'msg {F123FF}DR三部曲之LS街道激情');
INSERT INTO `race_cp_script` VALUES (9, 230, 0, 'msg {FF4564}DR三部曲之SF街道游荡');
INSERT INTO `race_cp_script` VALUES (10, 255, 0, 'msg {F7531F}DR三部曲之LV城市竞速');
INSERT INTO `race_cp_script` VALUES (29, 830, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (10, 274, 0, 'speedex | 363 | 500 | 1.8');
INSERT INTO `race_cp_script` VALUES (35, 1058, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (37, 1149, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (37, 1113, 0, 'msg DiRT3');
INSERT INTO `race_cp_script` VALUES (21, 571, 0, 'msg DiRT2');
INSERT INTO `race_cp_script` VALUES (51, 1362, 0, 'speedex | 312 | 999 | 1.5');
INSERT INTO `race_cp_script` VALUES (51, 1363, 0, 'speedex | 312 | 999 | 1.8');
INSERT INTO `race_cp_script` VALUES (51, 1364, 0, 'speedex | 350 | 500 | 2');
INSERT INTO `race_cp_script` VALUES (51, 1365, 0, 'speedex | 94 | 500 | 1');
INSERT INTO `race_cp_script` VALUES (51, 1368, 0, 'speedex | 186 | 300 | 2');
INSERT INTO `race_cp_script` VALUES (51, 1369, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (51, 1376, 0, 'speedex | 156 | 1500 | 3');
INSERT INTO `race_cp_script` VALUES (55, 1494, 0, 'speedex | 315 | 500 | 1');
INSERT INTO `race_cp_script` VALUES (55, 1495, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (55, 1496, 0, 'speedex | 330 | 400 | 2');
INSERT INTO `race_cp_script` VALUES (55, 1504, 0, 'speedex | 300 | 250 | 0.70');
INSERT INTO `race_cp_script` VALUES (59, 1531, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (59, 1538, 0, 'speed | 92.546 | 190');
INSERT INTO `race_cp_script` VALUES (60, 1561, 0, 'cveh | 493');
INSERT INTO `race_cp_script` VALUES (60, 1564, 0, 'cveh | 487');
INSERT INTO `race_cp_script` VALUES (60, 1567, 0, 'cveh | 562');
INSERT INTO `race_cp_script` VALUES (61, 1618, 0, 'vgoto v 303.427 -2252.898 -28.530');
INSERT INTO `race_cp_script` VALUES (70, 2167, 0, 'msg {FF9527}欢迎来到 L.A狂飙赛道,希望该赛道能提高你的赛车技术!');
INSERT INTO `race_cp_script` VALUES (74, 2303, 0, 'speedex | 269 | 500 | 0.6');
INSERT INTO `race_cp_script` VALUES (75, 2323, 0, 'vgoto v -902.003 -1104.714 98.313');
INSERT INTO `race_cp_script` VALUES (75, 2323, 1, 'angle | 43.701');
INSERT INTO `race_cp_script` VALUES (75, 2343, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (77, 2347, 0, 'speedex | 189 | 1000 | 2.55');
INSERT INTO `race_cp_script` VALUES (77, 2348, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (77, 2348, 1, 'angle | 164');
INSERT INTO `race_cp_script` VALUES (78, 2368, 0, 'msg {F5897F}欢迎开启,电台山竞速赛!,赛车愉快!');
INSERT INTO `race_cp_script` VALUES (77, 2366, 0, 'speed | 0 | 500');
INSERT INTO `race_cp_script` VALUES (79, 2415, 0, 'speed | 90 | 500');
INSERT INTO `race_cp_script` VALUES (79, 2416, 0, 'speedex | 90 | 200 | 1');
INSERT INTO `race_cp_script` VALUES (79, 2417, 0, 'cveh | 519');
INSERT INTO `race_cp_script` VALUES (79, 2417, 1, 'speed | 90 | 200');
INSERT INTO `race_cp_script` VALUES (79, 2418, 0, 'cveh | 411');
INSERT INTO `race_cp_script` VALUES (79, 2418, 1, 'vgoto v 197.929 172.844 -45.960');
INSERT INTO `race_cp_script` VALUES (79, 2418, 2, 'angle | 7');
INSERT INTO `race_cp_script` VALUES (79, 2427, 0, 'speedex | 180 | 120 | 0.68');
INSERT INTO `race_cp_script` VALUES (79, 2428, 0, 'cveh | 541');
INSERT INTO `race_cp_script` VALUES (79, 2428, 1, 'speed | 180 | 150');
INSERT INTO `race_cp_script` VALUES (79, 2438, 0, 'damage 5');
INSERT INTO `race_cp_script` VALUES (79, 2439, 0, 'fix r');
INSERT INTO `race_cp_script` VALUES (79, 2442, 0, 'cveh | 411');
INSERT INTO `race_cp_script` VALUES (79, 2442, 1, 'speedex | 19 | 250 | 2.2');
INSERT INTO `race_cp_script` VALUES (79, 2443, 0, 'speed | 0 | 0');
INSERT INTO `race_cp_script` VALUES (79, 2444, 0, 'speed | 350 | 500');
INSERT INTO `race_cp_script` VALUES (84, 2447, 0, 'vgoto v 1482.6 -957 36');
INSERT INTO `race_cp_script` VALUES (84, 2447, 1, 'angle | 82 |');
INSERT INTO `race_cp_script` VALUES (84, 2469, 0, 'vgoto s -2070 2749 174');
INSERT INTO `race_cp_script` VALUES (84, 2469, 1, 'angle | 154 |');
INSERT INTO `race_cp_script` VALUES (84, 2470, 0, 'speed | 148 | 250');
INSERT INTO `race_cp_script` VALUES (91, 2615, 0, 'speedex | 92 | 300 | 1.6');
INSERT INTO `race_cp_script` VALUES (91, 2617, 0, 'vgoto s -2322 -1653 483');
INSERT INTO `race_cp_script` VALUES (94, 2691, 0, '高能');
INSERT INTO `race_cp_script` VALUES (94, 2691, 1, 'sfgaagasaf');
INSERT INTO `race_cp_script` VALUES (94, 2684, 0, NULL);
INSERT INTO `race_cp_script` VALUES (457, 11170, 0, 'cveh 562');
INSERT INTO `race_cp_script` VALUES (457, 11170, 1, 'weather 8');
INSERT INTO `race_cp_script` VALUES (457, 11171, 0, 'cveh 531');
INSERT INTO `race_cp_script` VALUES (458, 11185, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (458, 11184, 0, 'cveh 495');
INSERT INTO `race_cp_script` VALUES (458, 11196, 0, 'cveh 425');
INSERT INTO `race_cp_script` VALUES (51, 1370, 0, 'cveh 562');
INSERT INTO `race_cp_script` VALUES (51, 1375, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (460, 11217, 0, 'cveh 495');
INSERT INTO `race_cp_script` VALUES (460, 11218, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (460, 11220, 0, 'cveh 473');
INSERT INTO `race_cp_script` VALUES (460, 11221, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (460, 11223, 0, 'cveh 495');
INSERT INTO `race_cp_script` VALUES (460, 11224, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (460, 11229, 0, 'cveh 473');
INSERT INTO `race_cp_script` VALUES (460, 11230, 0, 'cveh 425');
INSERT INTO `race_cp_script` VALUES (460, 11230, 1, 'speedex | 76 | 200 | 0.45');
INSERT INTO `race_cp_script` VALUES (460, 11213, 0, 'time 4 50');
INSERT INTO `race_cp_script` VALUES (458, 11172, 0, 'time 4 50');
INSERT INTO `race_cp_script` VALUES (473, 11653, 0, 'vgoto s 7388.192871 -824.203002 37.425136');
INSERT INTO `race_cp_script` VALUES (473, 11657, 0, 'cveh 411');
INSERT INTO `race_cp_script` VALUES (473, 11656, 0, 'cveh 448');
INSERT INTO `race_cp_script` VALUES (473, 11659, 0, 'vgoto s 3356.859619 -1042.051513 96.454734');
INSERT INTO `race_cp_script` VALUES (473, 11659, 1, 'angle l 0.264669');
INSERT INTO `race_cp_script` VALUES (473, 11669, 0, 'vgoto s 4471.219238 -3113.008544 51.984115');
INSERT INTO `race_cp_script` VALUES (473, 11674, 0, 'cveh 425');
INSERT INTO `race_cp_script` VALUES (473, 11653, 1, 'angle l 306.551025');
INSERT INTO `race_cp_script` VALUES (473, 11642, 0, 'weather 1');
INSERT INTO `race_cp_script` VALUES (473, 11642, 1, 'time 5 15');

SET FOREIGN_KEY_CHECKS = 1;
