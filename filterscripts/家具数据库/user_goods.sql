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

 Date: 01/08/2020 22:03:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_goods
-- ----------------------------
DROP TABLE IF EXISTS `user_goods`;
CREATE TABLE `user_goods`  (
  `GID` int(11) NOT NULL,
  `TAKEN` int(11) NOT NULL,
  `UID` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `GNAME` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GOBJID` int(11) NOT NULL,
  `SALE` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `PRICE` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `RX` float NOT NULL,
  `RY` float NOT NULL,
  `RZ` float NOT NULL,
  `KEY` int(11) NOT NULL,
  `WID` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_goods
-- ----------------------------
INSERT INTO `user_goods` VALUES (94, 1, '451', 'mr.cat 的物品', 1505, '0', 200, 2063.84, 2187.71, 9.83899, 0, -1, -88, 0, 0);
INSERT INTO `user_goods` VALUES (95, 1, '450', 'EJava_PSparrow 的物品', 2133, '0', 200, 2366.42, -1130.14, 1049.82, 0, 0, -92.4, 0, 5008);
INSERT INTO `user_goods` VALUES (96, 1, '452', '[莫离小区]晒太阳专用', 1745, '0', 200, 2148.89, -1814.01, 17.86, 0, 0, 89, 0, 0);
INSERT INTO `user_goods` VALUES (97, 1, '452', 'Triad丶莫离 的物品', 2225, '0', 200, 2184.56, -1815.11, 17.93, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (98, 1, '452', 'Triad丶莫离 的物品', 2225, '0', 200, 2177.59, -1784.05, 17.5212, 0, 0, -88.6, 0, 0);
INSERT INTO `user_goods` VALUES (99, 1, '452', 'Triad丶莫离 的物品', 18728, '0', 500, 2173.7, -1801.19, 24.3072, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (100, 1, '453', '淘C之光', 18728, '0', 500, 2066.01, 2160.8, 10.7359, -53.9, 87.2, 73.8, 0, 0);
INSERT INTO `user_goods` VALUES (101, 1, '453', '[N.O.O.S.E]NF_CC 的物品', 2510, '0', 200, 2068.31, 2218.32, 10.8203, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (102, 1, '450', 'EJava_PSparrow 的物品', 2510, '0', 200, 1033.84, -809.018, 105.178, 0, -9.2, -161.9, 0, 0);
INSERT INTO `user_goods` VALUES (103, 1, '454', 'FBI小区欢迎你！', 2510, '0', 200, 2111.18, 2177, 14.29, 0, 0, 90, 0, 0);
INSERT INTO `user_goods` VALUES (104, 1, '450', 'EJava_PSparrow 的物品', 2510, '0', 200, 1028.06, -811.215, 105.055, 0.8, 44.9, -175.3, 0, 0);
INSERT INTO `user_goods` VALUES (105, 1, '452', '[莫离小区]玩具模型', 2511, '0', 200, 2157.75, -1805.84, 12.9541, -15, 9, 89, 0, 0);
INSERT INTO `user_goods` VALUES (106, 1, '454', 'FBI小区专用停车场', 2797, '0', 200, 2035.2, 2158.5, 13.0703, 0, 0, 178.9, 0, 0);
INSERT INTO `user_goods` VALUES (109, 1, '452', '{ff0000}[莫离小区]昆明犬', 19315, '0', 200, 2188.41, -1786.01, 12.8, 0, 0, 88, 0, 0);
INSERT INTO `user_goods` VALUES (107, 1, '452', '{ff0000}[莫离小区]德国牧羊犬', 19315, '0', 200, 2181.24, -1786.03, 12.8, 0, 0, 92, 0, 0);
INSERT INTO `user_goods` VALUES (110, 1, '452', '{ff0000}[莫离小区]生人勿进', 19304, '0', 300, 2181.89, -1769.02, 13, 0, 0, 179, 0, 0);
INSERT INTO `user_goods` VALUES (111, 1, '454', '！FBI小区 停车场！', 19304, '0', 300, 2036.79, 2161.23, 10.6977, 1, 1, 1.99999, 0, 0);
INSERT INTO `user_goods` VALUES (120, 1, '450', 'EJava_PSparrow 的物品', 18688, '0', 10, 1023.39, -803.326, 100.08, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (112, 1, '454', '警察局(F.B.I) 的物品', 1428, '0', 300, 2096.81, 2185.88, 11.17, -20, 0, -104, 0, 0);
INSERT INTO `user_goods` VALUES (113, 1, '1', '{ff0000}这其实是个炸弹，嘿嘿!', 1429, '0', 300, 2179.83, -1770.31, 13.5718, -27.9, 0, -88.5, 0, 0);
INSERT INTO `user_goods` VALUES (114, 1, '1', '{ff0000}捷径!欢迎走此', 1437, '0', 300, 227.233, 1029.17, 1084, -25.4, 2.3, -77.7, 0, 5022);
INSERT INTO `user_goods` VALUES (115, 1, NULL, 'tomcat小区的自动贩卖机', 956, '0', 90, 2037.47, 2136.44, 10.2203, 0, 0, -88.1, 0, 0);
INSERT INTO `user_goods` VALUES (116, 1, '452', '[莫离小区]自动贩卖机', 956, '0', 90, 2177.96, -1781.02, 12.8827, 0, 0, 89, 0, 0);
INSERT INTO `user_goods` VALUES (117, 1, '452', 'Triad丶莫离 的物品', 956, '0', 90, 2037.51, 2135.23, 10.2203, 0, 0, -88.6001, 0, 0);
INSERT INTO `user_goods` VALUES (118, 1, '452', '{ff0000}[莫离小区]喷泉', 3515, '0', 180, 2166, -1799, 13, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (119, 1, '1', '{000000}哇！真牛逼！', 11470, '0', 180, 2106.97, 2177.21, 18.5285, -0.200001, 0, -90.1999, 0, 0);
INSERT INTO `user_goods` VALUES (121, 1, '1', '{ff0000}空格{000000}的{ff0000}车位!', 19474, '0', 120, 2075.01, 2188, 9.27997, 0, 0.4, 179, 0, 0);
INSERT INTO `user_goods` VALUES (122, 1, '1', '{ff0000}凭证出入', 3666, '0', 120, 2183.62, -1769.89, 14.078, 0, 1.9, 0, 0, 0);
INSERT INTO `user_goods` VALUES (123, 1, '450', 'EJava_PSparrow 的物品', 19279, '0', 120, 1034.93, -813.477, 103.756, -8.7, 0.099999, 16.6, 0, 0);
INSERT INTO `user_goods` VALUES (27, 1, '54', 'KiVen 的物品', 1598, '0', 500, 1463.64, -2436.71, 12.8889, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (28, 1, NULL, 'N/A', 953, '1', 500, 1468.38, -2429.94, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (30, 1, NULL, 'N/A', 1895, '1', 500, 1470.57, -2432.85, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (17, 1, NULL, 'N/A', 19346, '1', 500, 1457.83, -2454.7, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (24, 1, '3', '[R_ST]Hygen 的物品', 3096, '0', 50, -1572.72, -1540.98, 38.4506, 0, 0, -88.2002, 0, 0);
INSERT INTO `user_goods` VALUES (3, 1, '3', '[R_ST]Hygen 的物品', 18729, '0', 1, -1636.23, -205.782, 14.1484, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (6, 1, '54', 'KiVen 的物品', 1946, '0', 1, -310.075, 1536.42, 74.7794, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (5, 1, NULL, '枣子哥的饮水机', 2002, '0', 300, -324.862, 1535.02, 74.5694, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (7, 1, '54', 'KiVen 的物品', 18963, '0', 500, 1428.01, -2458.44, 14.8947, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (8, 1, '3', '[R_ST]Hygen 的物品', 1641, '0', 1, -317.883, 1537.26, 76.845, 89.9, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (2, 1, '3', '[R_ST]Hygen 的物品', 19128, '0', 50, 999.303, 1577.18, 9.8125, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (11, 1, '3', '[R_ST]Hygen 的物品', 1946, '0', 1, -315.163, 1535, 75.5625, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (12, 1, NULL, 'N/A', 19315, '1', 500, 1431.53, -2454.53, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (13, 1, NULL, 'N/A', 19336, '1', 500, 1437.48, -2435.63, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (14, 1, '3', '[R_ST]Hygen 的物品', 3496, '0', 1, -308.882, 1535.76, 74.5894, 0, 0, 179.7, 0, 0);
INSERT INTO `user_goods` VALUES (15, 1, '3', '[R_ST]Hygen 的物品', 3531, '0', 1, -1562.67, -1566.39, 38.7606, 0, 0, -3.79995, 0, 0);
INSERT INTO `user_goods` VALUES (16, 1, '3', '[R_ST]Hygen 的物品', 3531, '0', 20, 1172.17, -2388.08, 12.3679, 0, 0, -89.2, 0, 0);
INSERT INTO `user_goods` VALUES (26, 1, '54', 'KiVen 的物品', 1598, '0', 500, 1461.55, -2428.89, 12.8602, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (43, 1, NULL, 'N/A', 1227, '1', 500, 1486.69, -2443.78, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (40, 1, NULL, 'N/A', 2496, '1', 500, 1484.33, -2436.86, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (18, 1, NULL, 'N/A', 19339, '1', 500, 1459.87, -2448.46, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (45, 1, NULL, 'N/A', 1276, '1', 500, 1481.41, -2450.83, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (22, 1, '3', '[R_ST]Hygen 的物品', 19128, '0', 60, 1008.5, 1563.67, 10.6719, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (23, 1, '3', '[R_ST]Hygen 的物品', 19128, '0', 60, 1008.52, 1549.44, 10.6719, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (4, 1, '3', '[R_ST]Hygen 的物品', 3096, '0', 5000, 996.857, 1609.72, 13.419, -0.6, -39, 90.5, 0, 0);
INSERT INTO `user_goods` VALUES (25, 1, NULL, 'N/A', 11704, '1', 500, 1469.96, -2440.87, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (42, 1, NULL, 'N/A', 1776, '1', 500, 1474.97, -2451.26, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (39, 1, NULL, 'N/A', 2497, '1', 500, 1479.96, -2437.94, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (38, 1, NULL, 'N/A', 2845, '1', 500, 1471.48, -2444.8, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (32, 1, NULL, 'N/A', 1975, '1', 500, 1479.5, -2431.41, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (33, 1, NULL, 'N/A', 1973, '1', 500, 1479.04, -2433.17, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (34, 1, NULL, 'N/A', 1972, '1', 500, 1478.37, -2429.93, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (35, 1, NULL, 'N/A', 1974, '1', 500, 1482.89, -2431.9, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (29, 1, '3', '[R_ST]Hygen 的物品', 19076, '0', 2000, -1570.22, -1547.73, 36.5307, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (41, 1, NULL, 'N/A', 2498, '1', 500, 1485.21, -2438.57, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (31, 1, NULL, 'N/A', 1976, '1', 500, 1476.5, -2431.06, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (36, 1, NULL, 'N/A', 1978, '1', 500, 1475.32, -2430.8, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (37, 1, NULL, 'N/A', 2499, '1', 500, 1477.51, -2444.47, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (1, 1, '3', '[R_ST]Hygen 的物品', 3096, '0', 1, -314.027, 1537.81, 75.727, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (20, 1, NULL, 'N/A', 11731, '1', 500, 1455.97, -2440.13, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (21, 1, NULL, 'N/A', 11701, '1', 500, 1468.7, -2439.68, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (44, 1, NULL, 'N/A', 1277, '1', 500, 1483.9, -2449.89, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (10, 1, '3', '[R_ST]Hygen 的物品', 1586, '0', 1, -322.861, 1537.41, 75.3594, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (19, 1, NULL, 'N/A', 11733, '1', 500, 1461.19, -2444.11, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (9, 1, NULL, 'N/A', 18966, '1', 500, 1428.16, -2454.36, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (0, 1, '3', '[R_ST]Hygen 的物品', 3471, '0', 1, -1484.31, 713.662, 7.46819, 0, 0, -178.1, 0, 0);
INSERT INTO `user_goods` VALUES (46, 1, NULL, 'N/A', 1636, '1', 500, 1470.25, -2455.31, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (47, 1, NULL, 'N/A', 1241, '1', 500, 1466.99, -2455.14, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (48, 1, NULL, 'N/A', 1210, '1', 500, 1466.43, -2451.63, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (49, 1, NULL, 'N/A', 954, '1', 500, 1469.16, -2447.46, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (50, 1, NULL, 'N/A', 1275, '1', 500, 1465.77, -2440.93, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (51, 1, NULL, 'N/A', 1314, '1', 500, 1491.62, -2450.46, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (52, 1, NULL, 'N/A', 1313, '1', 500, 1490.79, -2452.44, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (53, 1, NULL, 'N/A', 1318, '1', 500, 1491.17, -2454.11, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (54, 1, NULL, 'N/A', 1310, '1', 500, 1488.49, -2454.06, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (55, 1, NULL, 'N/A', 1239, '1', 500, 1485.03, -2454.66, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (56, 1, NULL, 'N/A', 1240, '1', 500, 1479.8, -2456.16, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (57, 1, NULL, 'N/A', 14608, '1', 500, 1484.66, -2458.53, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (58, 1, NULL, 'N/A', 11470, '1', 500, 1476.2, -2462.01, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (59, 1, NULL, 'N/A', 1570, '1', 500, 1464.09, -2464.95, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (60, 1, NULL, 'N/A', 1369, '1', 500, 1456.88, -2459.59, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (61, 1, NULL, 'N/A', 8644, '1', 500, 1454.82, -2478.18, 15.4047, 0, 0, -48.1, 0, 0);
INSERT INTO `user_goods` VALUES (62, 1, NULL, 'N/A', 1371, '1', 500, 1463.19, -2458.96, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (63, 1, NULL, 'N/A', 1572, '1', 500, 1469.66, -2458.28, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (64, 1, NULL, 'N/A', 1359, '1', 500, 1453.85, -2453.95, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (65, 1, NULL, 'N/A', 1349, '1', 500, 1462.69, -2452.34, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (66, 1, NULL, 'N/A', 2770, '1', 500, 1454.36, -2446.77, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (67, 1, NULL, 'N/A', 2472, '1', 500, 1451.27, -2463.25, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (68, 1, NULL, 'N/A', 9189, '1', 500, 1493.27, -2473.91, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (69, 1, NULL, 'N/A', 7907, '1', 500, 1469.41, -2473.81, 16.2947, 0, 0, -177.1, 0, 0);
INSERT INTO `user_goods` VALUES (70, 1, NULL, 'N/A', 1453, '1', 500, 1493.53, -2426.78, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (71, 1, NULL, 'N/A', 3026, '1', 500, 1498.21, -2428.23, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (72, 1, NULL, 'N/A', 3437, '1', 500, 1502, -2433.41, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (73, 1, NULL, '[R_ST]FunnySnake1111 的物品', 1697, '0', 500, 1496.14, -2436.67, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (74, 1, NULL, 'N/A', 742, '1', 500, 1501.68, -2445.24, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (75, 1, NULL, 'N/A', 3525, '1', 500, 1502.94, -2451.98, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (76, 1, NULL, 'N/A', 3877, '1', 500, 1498.48, -2451.96, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (77, 1, NULL, 'N/A', 1247, '1', 500, 1499.05, -2456.36, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (78, 1, NULL, 'N/A', 1253, '1', 500, 1499.48, -2461.4, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (79, 1, NULL, 'N/A', 2454, '1', 500, 1494.87, -2458.44, 13.5547, 0, 0, -164.5, 0, 0);
INSERT INTO `user_goods` VALUES (80, 1, NULL, 'N/A', 2455, '1', 500, 1495.53, -2463.13, 13.5547, 0, 0, -92.2, 0, 0);
INSERT INTO `user_goods` VALUES (81, 1, '54', 'KiVen 的物品', 2457, '0', 500, 1495.11, -2452.52, 13.5547, 0, 0, -86.3, 0, 0);
INSERT INTO `user_goods` VALUES (82, 1, NULL, 'N/A', 2485, '1', 500, 1489.35, -2420.87, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (83, 1, NULL, 'N/A', 1989, '1', 500, 1489.59, -2422.57, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (84, 1, NULL, 'N/A', 1990, '1', 500, 1481.88, -2419.86, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (85, 1, NULL, 'N/A', 1736, '1', 500, 1476.58, -2417.39, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (86, 1, NULL, 'N/A', 1481, '1', 500, 1474.61, -2416.77, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (87, 1, NULL, 'N/A', 1793, '1', 500, 1472.57, -2415.76, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (88, 1, NULL, 'N/A', 2005, '1', 500, 1469.46, -2415.02, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (89, 1, NULL, 'N/A', 2630, '1', 500, 1465.91, -2413.97, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (90, 1, NULL, 'N/A', 2097, '1', 500, 1470.8, -2406.44, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (91, 1, '54', 'KiVen 的物品', 2737, '0', 500, 1482.04, -2424.34, 13.5547, 0, 0, -102.6, 0, 0);
INSERT INTO `user_goods` VALUES (92, 1, NULL, 'N/A', 2168, '1', 500, 1474.45, -2422.67, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (93, 1, NULL, 'N/A', 2167, '1', 500, 1469.46, -2421.65, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (108, 1, NULL, 'N/A', 2169, '1', 500, 1469.84, -2424.03, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (124, 1, NULL, 'N/A', 2081, '1', 500, 1464.7, -2420.43, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (125, 1, NULL, 'N/A', 11725, '1', 500, 1464.99, -2423.23, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (126, 1, NULL, 'N/A', 19474, '1', 500, 1459.22, -2418.41, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (127, 1, NULL, 'N/A', 19059, '1', 500, 1458.43, -2423.57, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (128, 1, NULL, 'N/A', 19060, '1', 500, 1454.01, -2416.92, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (129, 1, NULL, 'N/A', 19061, '1', 500, 1454.24, -2421.74, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (130, 1, NULL, 'N/A', 19053, '1', 500, 1449.85, -2422.45, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (131, 1, NULL, 'N/A', 18771, '1', 500, 1459.83, -2428.16, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (132, 1, NULL, 'N/A', 19164, '1', 500, 1451.24, -2414.05, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (133, 1, NULL, 'N/A', 19165, '1', 500, 1452.17, -2417.87, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (134, 1, NULL, 'N/A', 19166, '1', 500, 1448.95, -2417.54, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (135, 1, NULL, 'N/A', 19167, '1', 500, 1447.66, -2412.36, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (136, 1, NULL, 'N/A', 19168, '1', 500, 1443.05, -2413.5, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (137, 1, NULL, 'N/A', 19169, '1', 500, 1445.81, -2413.83, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (138, 1, NULL, 'N/A', 19170, '1', 500, 1444.4, -2415.28, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (139, 1, NULL, 'N/A', 19171, '1', 500, 1446.82, -2415.57, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (140, 1, NULL, 'N/A', 19094, '1', 500, 1444.13, -2419.66, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (141, 1, NULL, 'N/A', 19137, '1', 500, 1447.52, -2419.69, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (142, 1, NULL, 'N/A', 19525, '1', 500, 1451.79, -2425.68, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (143, 1, NULL, 'N/A', 19997, '1', 500, 1451.22, -2429.99, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (144, 1, NULL, 'N/A', 19306, '1', 500, 1502.28, -2455.12, 13.5547, 0, 0, 0, 0, 0);
INSERT INTO `user_goods` VALUES (145, 1, NULL, '[R_ST]KiVen 的物品', 1671, '0', 1, -326.115, 1535.16, 75.047, 0, 0, 0, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
