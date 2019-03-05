/*
 Navicat Premium Data Transfer

 Source Server         : mysql-admin
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : dsos_zgq

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 05/03/2019 18:55:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dsos_live_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `dsos_live_adminuser`;
CREATE TABLE `dsos_live_adminuser`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `roleNo` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'lsr001' COMMENT '角色编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `adminAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `idCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `homeAt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `birthday` datetime(6) NULL DEFAULT NULL COMMENT '生日',
  `imgRoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像存放地址',
  `md5Passowrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'md5加密的密码',
  PRIMARY KEY (`adminId`, `adminAccount`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_adminuser
-- ----------------------------
INSERT INTO `dsos_live_adminuser` VALUES (1, 'lsr001', '竹根七', '男', 'admin', 'admin', '15988887777', 'idcard001', 'homeat001', '1997-07-07 00:00:00.000000', '../images/logo/hmbb.jpg', NULL);

-- ----------------------------
-- Table structure for dsos_live_chainworkuser
-- ----------------------------
DROP TABLE IF EXISTS `dsos_live_chainworkuser`;
CREATE TABLE `dsos_live_chainworkuser`  (
  `chainId` int(11) NOT NULL AUTO_INCREMENT,
  `roleNo` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'lsr003' COMMENT '角色编号',
  `linkedStore` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属门店编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `chainAccount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '123456' COMMENT '登录密码',
  `mobile` int(255) NULL DEFAULT NULL COMMENT '手机号',
  `idCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `homeAt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `birthday` datetime(6) NULL DEFAULT NULL COMMENT '生日',
  `imgRoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像存放地址',
  `md5Passowrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'md5加密的密码',
  `level` int(10) NOT NULL DEFAULT 1 COMMENT '职位级别',
  `lectruer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '店员' COMMENT '职称',
  PRIMARY KEY (`chainId`, `chainAccount`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_chainworkuser
-- ----------------------------
INSERT INTO `dsos_live_chainworkuser` VALUES (1, 'lsr003', '01', '杜衡', '男', '123456', '123456', 156348596, '1354562154', NULL, NULL, '../images/logo/woniu.jpg', NULL, 1, '店员');

-- ----------------------------
-- Table structure for dsos_live_memberinfo
-- ----------------------------
DROP TABLE IF EXISTS `dsos_live_memberinfo`;
CREATE TABLE `dsos_live_memberinfo`  (
  `infoId` int(50) NOT NULL AUTO_INCREMENT COMMENT '会员信息标识',
  `cardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属卡号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭住址/收货地址',
  `intergration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '积分',
  `amount` double(50, 0) NULL DEFAULT 0 COMMENT '余额',
  `discount` double(255, 0) NULL DEFAULT 100 COMMENT '折扣率',
  `imgRoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像存放地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `leavel` int(50) NULL DEFAULT 0 COMMENT '会员等级',
  `statu` int(255) NULL DEFAULT 1 COMMENT '会员状态',
  PRIMARY KEY (`infoId`, `cardNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_memberinfo
-- ----------------------------
INSERT INTO `dsos_live_memberinfo` VALUES (1, 'rsd123456', 'zgq', NULL, '1997-07-07 00:00:00', '浙江省-杭州市-西湖区', '0', 88, 100, '..\\images\\member\\1550656922975mm.jpg', '12345678911@qq.com', 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (2, 'rsd444', 'fgf', '男', '1999-09-09 00:00:00', '0', '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (3, 'rsd057233', '丽姐', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (4, 'rsd057571', '袁榕', '女', '1974-04-18 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (5, 'rsd059250', '曾信英', '女', '1968-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (6, 'rsd059885', '陈欢', '女', '1972-11-11 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (7, 'rsd060169', '李健', '男', '1970-12-01 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (8, 'rsd060660', '彭继华', '女', '1974-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (9, 'rsd060721', '钟莉', '女', '1975-04-19 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (10, 'rsd061318', '汤玲', '女', '1978-11-27 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (11, 'rsd061586', '魏师王', '女', '1983-08-10 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (12, 'rsd061641', '吴利军', '男', '1974-09-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (13, 'rsd062026', '杨玲', '女', '1971-08-20 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (14, 'rsd06324', '王小平', '男', '1974-11-27 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (15, 'rsd065056', '吴健', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (16, 'rsd06521', '尹康', '女', '1953-09-16 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (17, 'rsd06579', '王燕萍', '女', '1954-11-20 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (18, 'rsd066329', '孟承玉', '女', '1953-01-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (19, 'rsd066672', '陈代容', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (20, 'rsd067024', '丁玉', '女', '1972-04-05 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (21, 'rsd06722', '魏志敏', '女', '1967-09-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (22, 'rsd067294', '钟传碧', '女', '1961-05-23 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (23, 'rsd06818', '李小平', '女', '1971-11-03 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (24, 'rsd068202', '冯曙光', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (25, 'rsd068445', '信秀梅', '女', '1974-02-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (26, 'rsd068599', '简单', '女', '1970-10-21 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (27, 'rsd068634', '罗梅', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (28, 'rsd069218', '吴琴', '女', '1983-10-13 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (29, 'rsd069743', '贺宝贵', '男', '1959-04-08 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (30, 'rsd070018', '万萍', '女', '1965-08-13 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (31, 'rsd070326', '左开蓉', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (32, 'rsd070495', '王建华', '女', '1962-11-06 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (33, 'rsd070550', '李学成', '男', '1975-04-08 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (34, 'rsd071020', '张永星', NULL, '1977-09-24 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (35, 'rsd071410', '李艳洋', '女', '1974-12-16 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (36, 'rsd07174', '白龙', '男', '1984-10-18 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (37, 'rsd072324', '孔凡华', '男', '1964-10-16 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (38, 'rsd072405', '唐纯贵', '女', '1964-09-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (39, 'rsd073257', '唐玉蓉', '女', '1968-06-13 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (40, 'rsd073280', '奉明', '男', '1979-03-28 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (41, 'rsd073384', '陈翠霞', '女', '1972-05-28 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (42, 'rsd07378', '李清秀', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (43, 'rsd073943', '范宏平', '女', '1973-06-26 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (44, 'rsd075027', '李砚芳', '女', '1930-02-24 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (45, 'rsd075606', '周彬蓉', '女', '1968-07-22 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (46, 'rsd076596', '罗正宗', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (47, 'rsd077099', '龙全波', '男', '1972-02-21 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (48, 'rsd077368', '巫健', '男', '1967-01-21 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (49, 'rsd078009', '陈祖绶，', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (50, 'rsd078654', '周国顺', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (51, 'rsd079098', '傅开', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (52, 'rsd079332', '董子勇', '男', '1971-10-01 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (53, 'rsd080026', '野猪', '男', '1982-04-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (54, 'rsd08025', '青容', '女', '1979-06-11 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (55, 'rsd080343', '张树容', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (56, 'rsd080801', '涂丽娜', '女', '1973-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (57, 'rsd080935', '沈莹', '女', '1982-08-29 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (58, 'rsd082557', '周训丽', '女', '1971-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (59, 'rsd082962', '赵小云', '女', '1980-10-21 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (60, 'rsd083082', '母琳娜', '女', '1978-07-09 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (61, 'rsd083236', '周黎', '男', '1979-04-24 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (62, 'rsd083320', '陈渠', '女', '1962-01-23 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (63, 'rsd08431', '罗静', '女', '1959-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (64, 'rsd084542', '曾自强', '男', '1984-08-03 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (65, 'rsd08522', '陈艳', '女', '1979-01-24 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (66, 'rsd085838', '周萍', '女', '1982-01-17 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (67, 'rsd086264', '祝剑', '女', '1970-12-13 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (68, 'rsd086303', '凌岚', '女', '1978-07-18 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (69, 'rsd086631', '赵志君', NULL, '1964-12-05 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (70, 'rsd087203', '徐丽', '女', '1975-09-04 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (71, 'rsd087217', '刘莉', '女', '1983-03-01 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (72, 'rsd087222', '张萍', '男', '1982-02-20 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (73, 'rsd087528', '王英', '女', '1960-12-22 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (74, 'rsd087691', '肖远金', '男', '1974-07-27 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (75, 'rsd089122', '张丽莉', '女', '1972-11-09 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (76, 'rsd089589', 'kitty', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (77, 'rsd090614', '李继淑', NULL, '1975-10-08 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (78, 'rsd091370', '聂俊华', '女', '1981-08-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (79, 'rsd091450', '吴成容', '女', '1970-01-12 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (80, 'rsd091476', '王薇', '女', '1967-01-27 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (81, 'rsd092134', '杨勇泉', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (82, 'rsd09362', '林燕', '女', '1971-07-25 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (83, 'rsd093888', '黄水滨', '男', '1980-08-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (84, 'rsd093937', '何剑', '男', '1984-03-28 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (85, 'rsd094029', '佘雪斌', '女', '1972-01-25 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (86, 'rsd094143', '柯玫媛', '女', '1985-04-02 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (87, 'rsd09536', '黄润红', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (88, 'rsd096456', '杨琼美', '女', '1970-10-28 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (89, 'rsd096623', '辛鸣', '女', '1957-07-28 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (90, 'rsd096800', '刘莉', '女', '1972-10-17 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (91, 'rsd09682', '骆桂玉', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (92, 'rsd096894', '刘明芳', '女', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (93, 'rsd097231', '魏建梅', '女', '1973-12-04 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (94, 'rsd09795', '彭明', '男', '1975-09-05 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (95, 'rsd098413', '刘刚', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (96, 'rsd098702', '向凤', '女', '1982-08-22 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (97, 'rsd098713', '陈勇贤', '男', '1983-06-15 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (98, 'rsd098886', '黄艳菊', '女', '1974-08-07 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (99, 'rsd099039', '刘清模', '男', '1962-04-11 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (100, 'rsd099361', '陈国秀', '女', '1974-07-14 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (101, 'rsd099915', '陈明华', '女', '1973-11-20 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (102, 'rsd1000259', '刘小平', '女', '1988-09-05 00:00:00', NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (123, 'rsd123457', '杜衡', '男', NULL, NULL, '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (124, 'rsd123458', 'test', '男', NULL, NULL, '0', 0, 100, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for dsos_live_memberuser
-- ----------------------------
DROP TABLE IF EXISTS `dsos_live_memberuser`;
CREATE TABLE `dsos_live_memberuser`  (
  `cardId` int(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `roleNo` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'lsr002' COMMENT '角色编号',
  `cardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户，也是卡号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '123456',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storeId` int(50) NULL DEFAULT 0 COMMENT '所属门店标识',
  `md5Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'MD5加密的密码',
  PRIMARY KEY (`cardId`, `cardNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_memberuser
-- ----------------------------
INSERT INTO `dsos_live_memberuser` VALUES (1, 'lsr002', 'rsd123456', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (102, 'lsr002', 'rsd057233', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (103, 'lsr002', 'rsd057571', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (104, 'lsr002', 'rsd059250', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (105, 'lsr002', 'rsd059885', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (106, 'lsr002', 'rsd060169', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (107, 'lsr002', 'rsd060660', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (108, 'lsr002', 'rsd060721', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (109, 'lsr002', 'rsd061318', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (110, 'lsr002', 'rsd061586', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (111, 'lsr002', 'rsd061641', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (112, 'lsr002', 'rsd062026', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (113, 'lsr002', 'rsd06324', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (114, 'lsr002', 'rsd065056', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (115, 'lsr002', 'rsd06521', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (116, 'lsr002', 'rsd06579', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (117, 'lsr002', 'rsd066329', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (118, 'lsr002', 'rsd066672', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (119, 'lsr002', 'rsd067024', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (120, 'lsr002', 'rsd06722', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (121, 'lsr002', 'rsd067294', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (122, 'lsr002', 'rsd06818', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (123, 'lsr002', 'rsd068202', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (124, 'lsr002', 'rsd068445', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (125, 'lsr002', 'rsd068599', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (126, 'lsr002', 'rsd068634', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (127, 'lsr002', 'rsd069218', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (128, 'lsr002', 'rsd069743', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (129, 'lsr002', 'rsd070018', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (130, 'lsr002', 'rsd070326', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (131, 'lsr002', 'rsd070495', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (132, 'lsr002', 'rsd070550', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (133, 'lsr002', 'rsd071020', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (134, 'lsr002', 'rsd071410', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (135, 'lsr002', 'rsd07174', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (136, 'lsr002', 'rsd072324', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (137, 'lsr002', 'rsd072405', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (138, 'lsr002', 'rsd073257', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (139, 'lsr002', 'rsd073280', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (140, 'lsr002', 'rsd073384', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (141, 'lsr002', 'rsd07378', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (142, 'lsr002', 'rsd073943', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (143, 'lsr002', 'rsd075027', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (144, 'lsr002', 'rsd075606', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (145, 'lsr002', 'rsd076596', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (146, 'lsr002', 'rsd077099', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (147, 'lsr002', 'rsd077368', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (148, 'lsr002', 'rsd078009', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (149, 'lsr002', 'rsd078654', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (150, 'lsr002', 'rsd079098', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (151, 'lsr002', 'rsd079332', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (152, 'lsr002', 'rsd080026', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (153, 'lsr002', 'rsd08025', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (154, 'lsr002', 'rsd080343', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (155, 'lsr002', 'rsd080801', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (156, 'lsr002', 'rsd080935', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (157, 'lsr002', 'rsd082557', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (158, 'lsr002', 'rsd082962', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (159, 'lsr002', 'rsd083082', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (160, 'lsr002', 'rsd083236', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (161, 'lsr002', 'rsd083320', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (162, 'lsr002', 'rsd08431', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (163, 'lsr002', 'rsd084542', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (164, 'lsr002', 'rsd08522', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (165, 'lsr002', 'rsd085838', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (166, 'lsr002', 'rsd086264', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (167, 'lsr002', 'rsd086303', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (168, 'lsr002', 'rsd086631', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (169, 'lsr002', 'rsd087203', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (170, 'lsr002', 'rsd087217', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (171, 'lsr002', 'rsd087222', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (172, 'lsr002', 'rsd087528', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (173, 'lsr002', 'rsd087691', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (174, 'lsr002', 'rsd089122', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (175, 'lsr002', 'rsd089589', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (176, 'lsr002', 'rsd090614', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (177, 'lsr002', 'rsd091370', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (178, 'lsr002', 'rsd091450', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (179, 'lsr002', 'rsd091476', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (180, 'lsr002', 'rsd092134', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (181, 'lsr002', 'rsd09362', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (182, 'lsr002', 'rsd093888', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (183, 'lsr002', 'rsd093937', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (184, 'lsr002', 'rsd094029', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (185, 'lsr002', 'rsd094143', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (186, 'lsr002', 'rsd09536', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (187, 'lsr002', 'rsd096456', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (188, 'lsr002', 'rsd096623', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (189, 'lsr002', 'rsd096800', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (190, 'lsr002', 'rsd09682', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (191, 'lsr002', 'rsd096894', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (192, 'lsr002', 'rsd097231', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (193, 'lsr002', 'rsd09795', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (194, 'lsr002', 'rsd098413', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (195, 'lsr002', 'rsd098702', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (196, 'lsr002', 'rsd098713', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (197, 'lsr002', 'rsd098886', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (198, 'lsr002', 'rsd099039', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (199, 'lsr002', 'rsd099361', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (200, 'lsr002', 'rsd099915', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (201, 'lsr002', 'rsd1000259', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (222, 'lsr002', 'rsd123457', '123456', '15211593787', 0, NULL);
INSERT INTO `dsos_live_memberuser` VALUES (223, 'lsr002', 'rsd123458', '123456', '15211593787', 0, NULL);

-- ----------------------------
-- Table structure for dsos_perms
-- ----------------------------
DROP TABLE IF EXISTS `dsos_perms`;
CREATE TABLE `dsos_perms`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `permNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限编号',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限',
  `permUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所能访问的url',
  `permTest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限备注',
  PRIMARY KEY (`id`, `permNo`, `permUrl`, `permission`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_perms
-- ----------------------------
INSERT INTO `dsos_perms` VALUES (1, 'lsr001', 'addDrug', '/addDrug', '添加药品');
INSERT INTO `dsos_perms` VALUES (2, 'lsr002', 'getDrugList', '/getDrugList', '获取药品列表');

-- ----------------------------
-- Table structure for dsos_role
-- ----------------------------
DROP TABLE IF EXISTS `dsos_role`;
CREATE TABLE `dsos_role`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `roleNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编号',
  `roleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色备注',
  `roleText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色说明',
  PRIMARY KEY (`id`, `roleName`, `roleText`, `roleNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_role
-- ----------------------------
INSERT INTO `dsos_role` VALUES (1, 'lsr001', 'admin', '平台管理员');
INSERT INTO `dsos_role` VALUES (2, 'lsr002', 'member', '平台会员');
INSERT INTO `dsos_role` VALUES (3, 'lsr003', 'chainer', '连锁人员');

-- ----------------------------
-- Table structure for dsos_vot_drugrecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_vot_drugrecord`;
CREATE TABLE `dsos_vot_drugrecord`  (
  `drugId` int(50) NOT NULL AUTO_INCREMENT,
  `chainId` int(50) NOT NULL DEFAULT 1 COMMENT '所属连锁',
  `drugName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drugData` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '药品图片地址',
  `drugKind` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '西药' COMMENT '药品种类',
  `drugCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `barCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品内码',
  `unitPrice` double(10, 2) NULL DEFAULT 0.00 COMMENT '连锁的单价',
  `storePrice` double(10, 2) NULL DEFAULT NULL COMMENT '门店的单价',
  `costPrice` double(10, 2) NULL DEFAULT NULL COMMENT '进价',
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位',
  `spec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进货厂商',
  `purchaseDate` datetime(0) NULL DEFAULT '2019-01-01 00:00:00' COMMENT '进货日期',
  `produceDate` datetime(0) NULL DEFAULT '2018-12-31 00:00:00' COMMENT '生产日期',
  `effectDate` datetime(0) NULL DEFAULT '2020-01-01 00:00:00' COMMENT '保质日期',
  `approval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '国产准字',
  `explaination` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `isAllowedTrade` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`drugId`, `chainId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_vot_drugrecord
-- ----------------------------
INSERT INTO `dsos_vot_drugrecord` VALUES (1, 1, '贯黄感冒颗粒', 'images/drugs/贯黄感冒颗粒.jpg', '西药', 'drugcode001', 'barcode001', 10.00, 11.00, 5.00, NULL, '盒', '欧盟', '2019-01-27 00:00:00', '2019-01-10 00:00:00', '2020-12-01 00:00:00', NULL, NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (2, 1, '立白新金桔洗洁精', NULL, NULL, '101', '6920174736922', 0.00, NULL, NULL, '支', '408g(1*28)', NULL, '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '6920174736922', NULL, 0);
INSERT INTO `dsos_vot_drugrecord` VALUES (3, 1, '美满霉素胶囊（盐酸米诺环素胶囊）', NULL, '四环素类', '101001', '6921361253444', 48.00, NULL, NULL, '盒', '0.1g*10\'S', '惠氏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960010', NULL, 0);
INSERT INTO `dsos_vot_drugrecord` VALUES (4, 1, '红金消结胶囊', NULL, '活血散结用药', '101002', '6925130421027', 43.50, NULL, NULL, '盒', '0.4g*48\'S', '云南佑生药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026032', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (5, 1, '诺氟沙星胶囊（氟哌酸胶囊）（）（基）', NULL, '奎诺酮类', '101003', '6922261200873', 3.70, NULL, NULL, '盒', '0.1g*50\'S', '广东邦民制药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44022061', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (6, 1, '脑络通胶囊', NULL, '活血及抗凝用药', '101004', '6900372281585', 26.50, NULL, NULL, '瓶', '0.5g*60\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020002', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (7, 1, '甲硝唑芬布芬胶囊（雅舟康）', NULL, '口腔用药', '101005', '6936180600041', 5.50, NULL, NULL, '盒', '10\'S', '广州欧化药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024371', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (8, 1, '罗盖全（骨化三醇胶丸）', NULL, '骨质疏松用药', '101006', NULL, 67.00, NULL, NULL, '盒', '0.25ug*10\'S', '上海罗氏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20150011', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (9, 1, '蛤蚧定喘胶囊（基）', NULL, '补肺益气用药', '101007', '6903193418611', 16.50, NULL, NULL, '盒', '0.5mg*20\'S', '桂林三金药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10940033', NULL, 0);
INSERT INTO `dsos_vot_drugrecord` VALUES (10, 1, '克咳胶囊（）', NULL, '祛痰止咳平喘中药', '101008', '6923959408694', 9.00, NULL, NULL, '盒', '0.3g*12\'S', '贵州益佰制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020239', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (11, 1, '地奥心血康胶囊（）（基）', NULL, '活血及抗凝用药', '101009', '6923995001217', 12.80, NULL, NULL, '盒', '0.1g*20\'S', '成都地奥制药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10910051', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (12, 1, '脑络通胶囊', NULL, '活血及抗凝用药', '101010', '6900372207400', 14.20, NULL, NULL, '瓶', '30\'S（1*12）', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020002', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (13, 1, '罗红霉素软胶囊（基）', NULL, '大环内酯类', '101011', '6925558400390', 15.00, NULL, NULL, '盒', '0.15g*12\'S', '浙江维康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070302', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (14, 1, '喉疾灵胶囊', NULL, '清热解毒用药', '101012', '6910682000592', 12.00, NULL, NULL, '盒', '0.25g*24\'S', '广州白云山陈李济药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021354', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (15, 1, '藿香清胃胶囊', NULL, '清热燥湿止痛用药', '101013', '6924959491044', 14.00, NULL, NULL, '盒', '0.32g*20\'S', '吉林吉春制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050591', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (16, 1, '胃乃安胶囊（）', NULL, '调和肝脾胃用药', '101014', '6901591150720', 15.50, NULL, NULL, '瓶', '0.3g*36\'S', '广州白云山中一药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020043', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (17, 1, '三九胃泰胶囊（基）', NULL, '清热燥湿止痛用药', '101015', '6901339902215', 15.20, NULL, NULL, '盒', '0.5g*12\'S', '华润三九医药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020704', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (18, 1, '华蟾素胶囊', NULL, '肝类用药', '101016', '6936838914292', 398.00, NULL, NULL, '盒', '0.25g*2板*10粒', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050846', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (19, 1, '整肠生胶囊（地衣芽孢杆菌活菌胶囊）（基）（）', NULL, '调节肠道功能用药', '101017', '6905227000014', 8.00, NULL, NULL, '盒', '0.25g*6\'S', '东北制药集团公司沈阳第一制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S10950019', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (20, 1, '金鸡胶囊（）', NULL, '消炎利湿止带用药', '101018', '6907531221284', 15.80, NULL, NULL, '盒', '0.35g*48\'S', '广西灵峰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45020293', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (21, 1, '田七痛经胶囊（）', NULL, '活血调经止痛用药', '101020', '6901616270099', 7.50, NULL, NULL, '瓶', '30\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020926', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (22, 1, '宫血宁胶囊（）', NULL, '妇科止血药用药', '101021', '6901070125072', 37.00, NULL, NULL, '盒', '0.13g*18\'S', '云南白药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (23, 1, '维生素E胶丸（滴丸）', NULL, '维生素类', '101022', NULL, 11.00, NULL, NULL, '瓶', '100mg*60\'S', '广州白云山星群(药业)股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023177', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (24, 1, '维生素软胶囊', NULL, '维生素类', '101023', '6953460812857', 6.80, NULL, NULL, '瓶', '100mg*60\'S', '三才石歧制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021285', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (25, 1, '维生素软胶囊', NULL, '维生素类', '101024', '6901334110462', 8.00, NULL, NULL, '瓶', '50mg*60\'S 滴丸', '广州白云山星群(药业)股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023178', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (26, 1, '维生素软胶囊（滴丸）（）', NULL, '维生素类', '101025', '6953460813380', 4.50, NULL, NULL, '瓶', '50mg*60\'S', '三才石歧制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021338', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (27, 1, '羟苯磺酸钙胶囊', NULL, '其它类', '101026', NULL, 43.50, NULL, NULL, '盒', '0.5g*24\'s', '宁夏康亚药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20110031', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (28, 1, '健肝灵胶囊', NULL, '肝类用药', '101027', '6924604868481', 8.70, NULL, NULL, '瓶', '0.5g*60\'S', '肇庆星湖制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021458', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (29, 1, '健肝灵胶囊', NULL, '肝类用药', '101028', '6900372211445', 27.00, NULL, NULL, '瓶', '0.5*60\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (30, 1, '养血生发胶囊', NULL, '补气养血用药', '101029', '6901616270136', 7.20, NULL, NULL, '瓶', '0.5g*30\'S', '广州白云山敬修堂药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020913', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (31, 1, '湿毒清胶囊', NULL, '皮肤瘙痒用药', '101030', '6901370001281', 17.30, NULL, NULL, '瓶', '0.5g*30\'S', '广西玉林制药集团有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45021731', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (32, 1, '黄柏胶囊', NULL, '清热解毒用药', '101031', '6921317400069', 9.50, NULL, NULL, '盒', '36\'S', '广东省惠州市中药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021878', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (33, 1, '硒酵母胶囊', NULL, '补钾、补硒', '101032', '6939435820621', 39.50, NULL, NULL, '瓶', '0.143g(100ug)*30\'S', '芜湖华信生物药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052532', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (34, 1, '一力咳特灵胶囊', NULL, '祛痰止咳平喘中药', '101033', '6902401920083', 8.00, NULL, NULL, '瓶', '30\'S', '广州白云山制药股份有限公司白云山制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022408', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (35, 1, '易蒙停胶囊（盐酸洛哌丁胺胶囊）（）', NULL, '止吐、止泻用药', '101035', '6922154600414', 5.70, NULL, NULL, '盒', '2mg*6\'S', '西安杨森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10910085', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (36, 1, '阿莫西林胶囊（基）', NULL, '青霉素类', '101036', '6922261200200', 7.90, NULL, NULL, '盒', '0.25g*50\'S', '广东邦民制药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44022059', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (37, 1, '阿莫灵胶囊（阿莫西林胶囊）（基）', NULL, '青霉素类', '101037', '4895013200136', 14.50, NULL, NULL, '盒', '0.25g*24\'S', '香港澳美制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'HC20130014', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (38, 1, '乳宁胶囊', NULL, '活血散结用药', '101038', '6936838913325', 20.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080607', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (39, 1, '前列通胶囊', NULL, '前列腺用药', '101039', '6936838910232', 21.00, NULL, NULL, '盒', '0.38g*24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050047', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (40, 1, '脑栓通胶囊（）', NULL, '活血及抗凝用药', '101040', '6910942381188', 23.50, NULL, NULL, '盒', '0.4g*18\'S', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040093', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (41, 1, '清肠通便胶囊', NULL, '润肠通便用药', '101041', '6927317321847', 33.50, NULL, NULL, '盒', '0.3g*30\'S', '昆明中一堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025654', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (42, 1, '降酶灵胶囊（甘维乐舒）', NULL, '肝类用药', '101043', '6926885900102', 9.50, NULL, NULL, '盒', '0.15g*24\'S', '江西银涛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003415', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (43, 1, '香连胶囊', NULL, '清热燥湿止痛用药', '101044', '6920761891881', 25.00, NULL, NULL, '盒', '10\'S', '李时珍医药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10930038', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (44, 1, '银丹心脑通软胶囊（基）', NULL, '活血及抗凝用药', '101045', NULL, 23.80, NULL, NULL, '盒', '0.4g*24\'S', '贵州百灵企业集团制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (45, 1, '阿莫西林胶囊（仁和中方）（基）', NULL, '青霉素类', '101046', '6938588802072', 15.00, NULL, NULL, '盒', '0.25g*40\'S', '华北制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H13020726', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (46, 1, '西比灵胶囊（盐酸氟桂利嗪胶囊）（基）', NULL, '改善脑功能（促智）与记忆障碍用药', '101047', '6922154601015', 24.00, NULL, NULL, '盒', '5mg*20\'S', '西安杨森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930003', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (47, 1, '伊泰青胶囊（厄贝沙坦胶囊）（）', NULL, '高血压用药', '101048', '6902148995016', 15.50, NULL, NULL, '盒', '0.15g*7\'S', '珠海润都民彤制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000540', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (48, 1, '盐酸雷尼替丁胶囊（雷立雅）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101049', '6916470410420', 10.50, NULL, NULL, '瓶', '0.15g*30\'S', '佛山手心制药有限公司（原阿特维斯）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021231', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (49, 1, '复方蛤青胶囊', NULL, '祛痰止咳平喘中药', '101050', '6936838940581', 23.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050525', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (50, 1, '洛赛克片（奥美拉唑镁肠溶片）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101051', '6923878310399', 180.00, NULL, NULL, '盒', '20mg*14\'S', '阿斯利康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20130093', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (51, 1, '喉疾灵胶囊', NULL, '清热解毒用药', '101052', '6934050602188', 6.50, NULL, NULL, '瓶', '0.25g*36\'S', '广东一片天医药集团制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020651', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (52, 1, '来适可胶囊（氟伐他汀钠胶囊）', NULL, '调节血脂用药', '101053', NULL, 33.50, NULL, NULL, '盒', '40mg*7\'S', '北京诺华制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010518', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (53, 1, '金刚藤胶囊（）', NULL, '消炎利湿止带用药', '101054', '6923623318182', 11.50, NULL, NULL, '盒', '0.5g*24\'S', '湖北福人药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19991031', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (54, 1, '辛伐他汀胶囊（理舒达）', NULL, '调节血脂用药', '101055', NULL, 19.50, NULL, NULL, '盒', '20mg*7\'S', '远大医药（中国）有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030103', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (55, 1, '四季感冒胶囊（仁和中方）', NULL, '风寒感冒用药', '101056', '6924853620007', 18.00, NULL, NULL, '盒', '0.35g*30\'S', '湖南东润联合制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050094', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (56, 1, '益心康泰胶囊', NULL, '活血及抗凝用药', '101057', '6936316018085', 32.00, NULL, NULL, '盒', '0.5g*20\'S', '青海益欣药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025113', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (57, 1, '小金胶囊（基）', NULL, '活血散结用药', '101058', NULL, 37.00, NULL, NULL, '盒', '0.3g*16\'S', '四川省天基生物药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980097', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (58, 1, '麝香心脑乐胶囊', NULL, '活血及抗凝用药', '101059', '6936838911581', 20.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080021', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (59, 1, '胃康灵胶囊', NULL, '清热燥湿止痛用药', '101060', '6922867751274', 19.50, NULL, NULL, '盒', '0.4g*48\'S', '黑龙江葵花药业股份药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021657', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (60, 1, '代文胶囊（缬沙坦胶囊）（基）', NULL, '高血压用药', '101061', NULL, 34.80, NULL, NULL, '盒', '80mg*7\'S', '北京诺华制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040217', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (61, 1, '甘利欣胶囊（甘草酸二铵胶囊）', NULL, '肝类用药', '101063', NULL, 18.00, NULL, NULL, '盒', '50mg*24\'S', '正大天晴药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10940191', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (62, 1, '血脂康胶囊（）（基）', NULL, '调节血脂用药', '101064', '6919959180128', 14.80, NULL, NULL, '盒', '0.3g*12\'S', '北京北大维信生物科技有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950029', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (63, 1, '抗骨增生胶囊', NULL, '骨质增生用药', '101065', NULL, 0.00, NULL, NULL, '盒', '0.35g*50\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (64, 1, '那格列奈胶囊（）', NULL, '磺脲类', '101066', '6933515023902', 32.00, NULL, NULL, '盒', '30mg*30\'S', '重庆康刻尔制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051460', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (65, 1, '前列回春胶囊（）', NULL, '前列腺用药', '101067', '6926013702431', 23.00, NULL, NULL, '盒', '0.3*30\'S', '吉林省东丰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021384', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (66, 1, '斯皮仁诺胶囊（伊曲康唑胶囊）', NULL, '抗真菌类', '101068', '6922154606614', 126.00, NULL, NULL, '盒', '0.1g*14\'S', '西安杨森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020367', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (67, 1, '胃康灵胶囊', NULL, '清热燥湿止痛用药', '101069', '6924959491402', 15.00, NULL, NULL, '盒', '30\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021630', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (68, 1, '血脉通胶囊', NULL, '活血及抗凝用药', '101070', NULL, 36.00, NULL, NULL, '盒', '0.26g*36\'S', '贵州益康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025117', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (69, 1, '振源胶囊', NULL, '其它类', '101071', '6922790902064', 28.50, NULL, NULL, '盒', '0.25g*24\'S', '吉林省集安益盛药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22026091', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (70, 1, '哈乐胶囊（盐酸坦索罗辛缓释胶囊）', NULL, '前列腺用药', '101072', '6922111001704', 58.00, NULL, NULL, '盒', '0.2mg*10\'S', '安斯泰来制药(中国)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000681', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (71, 1, '盐酸氟桂利嗪胶囊（）（基）', NULL, '改善脑功能（促智）与记忆障碍用药', '101073', '6908197888378', 3.20, NULL, NULL, '盒', '5mg*20\'S', '深圳市中联制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021801', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (72, 1, '血塞通胶囊（基）', NULL, '活血及抗凝用药', '101074', '6947687520237', 39.80, NULL, NULL, '盒', '100mg*20\'S（1*10）', '云南维和药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53021144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (73, 1, '单硝酸异山梨酯缓释胶囊（异乐定）', NULL, '心脏病用药', '101075', NULL, 38.00, NULL, NULL, '盒', '50mg*10\'S', '优时比（珠海）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20031224', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (74, 1, '复方田七胃痛胶囊（）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101077', '6903193418413', 10.00, NULL, NULL, '盒', '0.5*20\'S', '桂林三金药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45020611', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (75, 1, '力平之（非诺贝特胶囊）（）', NULL, '调节血脂用药', '101078', NULL, 39.50, NULL, NULL, '盒', '0.2g*10\'S', '法国利博福尼制药公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20160155', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (76, 1, '丽珠得乐胶囊（枸橼酸铋钾胶囊）（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101079', '6903286104018', 30.50, NULL, NULL, '盒', '0.3g*40\'S', '丽珠集团丽珠制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10920098', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (77, 1, '帕夫林（白芍总苷胶囊）', NULL, '风湿用药', '101080', NULL, 79.00, NULL, NULL, '盒', '0.3g*60\'S', '宁波立华制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20055058', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (78, 1, '999感冒灵胶囊（）', NULL, '风热感冒用药', '101081', '6901339924569', 11.00, NULL, NULL, '盒', '0.5g*12\'S', '华润三九医药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021939', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (79, 1, '希尔安大败毒胶囊', NULL, '清热袪湿通淋用药', '101082', '6922173700386', 53.00, NULL, NULL, '大盒', '0.5g60\'S', '重庆希尔安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19993001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (80, 1, '清开灵胶囊（）（基）', NULL, '清热解毒用药', '101083', '6914159000191', 8.90, NULL, NULL, '盒', '0.25g*12\'S', '广州白云山明兴制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (81, 1, '天麻素胶囊', NULL, '神经系统用药', '101085', '6922261200309', 4.00, NULL, NULL, '盒', '50mg*10\'S', '广东邦民制药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44025052', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (82, 1, '达那唑胶囊', NULL, '性激素及促性激素', '101088', NULL, 37.00, NULL, NULL, '盒', '0.1g*30\'S', '江苏联环药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32022729', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (83, 1, '复方救必应胶囊', NULL, '清热燥湿止痛用药', '101089', '6901334120195', 6.30, NULL, NULL, '瓶', '0.3g*12\'S', '广州白云山星群(药业)股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022534', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (84, 1, '安胃疡胶囊（基）', NULL, '其它类', '101091', '6921392298056', 30.00, NULL, NULL, '盒', '0.2g*24\'S', '惠州市九惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970059', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (85, 1, '他克莫司胶囊', NULL, '其它类', '101092', NULL, 788.00, NULL, NULL, '盒', '1mg*48\'S', '浙江弘盛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20084522', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (86, 1, '达吉（复方消化酶胶囊）', NULL, '促进胃动力、助消化用药', '101094', '8806453001647', 49.00, NULL, NULL, '盒', '20\'S', '韩国韩林制药株式会社', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20140686', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (87, 1, '诺氟沙星胶囊（氟哌酸）（基）', NULL, '奎诺酮类', '101095', '6916119040179', 8.20, NULL, NULL, '盒', '0.1*24\'S', '石药集团欧意药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H13022807', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (88, 1, '盐酸氟桂利嗪胶囊（奥力保克）（基）', NULL, '改善脑功能（促智）与记忆障碍用药', '101096', '6934428600136', 26.50, NULL, NULL, '盒', '10mg*20\'S', '黑龙江澳利达奈德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H23022467', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (89, 1, '双氯芬酸钠双释放肠溶胶囊（戴芬）', NULL, '抗炎、解热镇痛药', '101097', NULL, 22.00, NULL, NULL, '盒', '75mg*10\'S', '爱尔兰TemmlerTrelandLtd（包装德国SwissCapsGmbh）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20170098', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (90, 1, '桂枝茯苓胶囊（基）', NULL, '活血散结用药', '101098', '6934918700018', 51.50, NULL, NULL, '盒', '0.31g*100\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950005', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (91, 1, '谷参肠安胶囊（复方谷氨酰胺肠溶胶囊）', NULL, '调节肠道功能用药', '101099', NULL, 29.50, NULL, NULL, '盒', '24\'S', '地奥集团成都药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51023598', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (92, 1, '维生素E软胶囊', NULL, '维生素类', '101100', '6931435342189', 12.00, NULL, NULL, '盒', '100mg*30\'S', '哈药集团制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H23022321', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (93, 1, '氢溴酸右美沙芬软胶囊', NULL, '祛痰止咳平喘西药', '101101', '6900251909104', 18.50, NULL, NULL, '盒', '15mg*12\'S', '大连天宇奥森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19991143', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (94, 1, '益肾健骨胶囊', NULL, '壮阳补肾用药', '101102', '6920389900330', 38.00, NULL, NULL, '盒', '36\'S', '广西博科药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090867', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (95, 1, '诺迪康胶囊（基）', NULL, '活血及抗凝用药', '101103', '6925326900206', 23.50, NULL, NULL, '盒', '0.28g*20\'S', '西藏诺迪康药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980020', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (96, 1, '十一味能消胶囊', NULL, '活血调经止痛用药', '101104', '6922036380496', 42.00, NULL, NULL, '瓶', '0.3g*12\'S', '青海省格拉丹东药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025231', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (97, 1, '莲芝消炎胶囊（）', NULL, '清热解毒用药', '101105', '6900372203044', 6.30, NULL, NULL, '盒', '12\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020010', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (98, 1, '松龄血脉康胶囊（基）', NULL, '清心、安神、开窍', '101106', '6925500800155', 16.00, NULL, NULL, '包', '20\'S', '成都康弘药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960023', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (99, 1, '芬必得（布洛芬缓释胶囊）（基）', NULL, '解热镇痛用药', '101107', '6913991300322', 14.50, NULL, NULL, '盒', '0.3g*20\'S', '中美天津史克制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10900089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (100, 1, '芬必得胶囊', NULL, '解热镇痛用药', '101107-1', '6913991300322', 0.80, NULL, NULL, '粒', '1\'s', '中美天津史克制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10900089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (101, 1, '肾安胶囊', NULL, '清热袪湿通淋用药', '101108', '6912885200038', 32.50, NULL, NULL, '盒', '0.4g*24\'S', '云南保元堂药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025529', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (102, 1, '步长脑心通胶囊（）（基）', NULL, '活血及抗凝用药', '101109', '6950077609245', 25.50, NULL, NULL, '盒', '0.4g*36\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (103, 1, '心脑舒通胶囊（）', NULL, '活血及抗凝用药', '101110', '6922230568935', 18.00, NULL, NULL, '盒', '15mg*30\'S', '吉林敖东洮南药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021965', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (104, 1, '盐酸雷尼替丁胶囊（雷立雅）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101111', '6916470410703', 7.50, NULL, NULL, '瓶', '0.15g*20\'S', '佛山手心制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021231', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (105, 1, '宁泌泰胶囊（）', NULL, '清热袪湿通淋用药', '101112', '6922606800188', 33.00, NULL, NULL, '盒', '0.38g*36\'S', '贵阳新天药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025442', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (106, 1, '枸橼酸铋雷尼替丁胶囊（舒威）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101113', '6923157000027', 22.50, NULL, NULL, '瓶', '0.2g*14\'S', '常州兰陵制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020725', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (107, 1, '糖尿乐胶囊', NULL, '中药降糖药', '101114', '6926013701038', 22.00, NULL, NULL, '瓶', '0.3g*50\'S', '吉林省东丰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021389', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (108, 1, '盐酸雷尼替丁胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101115', NULL, 1.50, NULL, NULL, '盒', '0.15g*20\'S', '广东恒健制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021173', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (109, 1, '人工牛黄甲硝唑胶囊（仁和中方）', NULL, '口腔用药', '101116', '6930397802458', 15.00, NULL, NULL, '盒', '24\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H36022263', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (110, 1, '口炎清胶囊（仁和中方）', NULL, '清热利咽用药', '101119', '6923528198650', 21.00, NULL, NULL, '盒', '18\'S', '成都倍特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090786', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (111, 1, '清肝利胆胶囊', NULL, '胆类用药', '101120', NULL, 26.00, NULL, NULL, '盒', '0.35g*24\'S', '江西康恩贝中药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19991028', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (112, 1, '力蜚能胶囊（多糖铁复合物胶囊）', NULL, '补铁', '101122', NULL, 41.50, NULL, NULL, '盒', '0.15g*10\'S(1*7)', '优时比（珠海）制药有限公司（原珠海许瓦兹）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20160027', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (113, 1, '谷参肠安胶囊（复方谷氨酰胺肠溶胶囊）（）', NULL, '调节肠道功能用药', '101123', '6928607402116', 15.00, NULL, NULL, '盒', '12\'S', '地奥集团成都药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51023598', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (114, 1, '六味能消胶囊', NULL, '润肠通便用药', '101125', '6936653705198', 21.40, NULL, NULL, '盒', '0.45g*10\'S', '西藏藏药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980090', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (115, 1, '桂枝茯苓胶囊（基）', NULL, '活血散结用药', '101126', NULL, 39.50, NULL, NULL, '盒', '0.31g*60\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950005', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (116, 1, '复方斑蝥胶囊（康赛迪）', NULL, '肿瘤、癌症用药', '101128', '6923959415678', 118.00, NULL, NULL, '盒', '0.25g*60\'S', '贵州益佰制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020238', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (117, 1, '天丹通络胶囊', NULL, '活血及抗凝用药', '101129', '6924060400515', 33.50, NULL, NULL, '瓶', '0.4g*45\'S', '山东凤凰制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010029', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (118, 1, '萘普生胶囊', NULL, '抗炎、解热镇痛药', '101130', NULL, 3.80, NULL, NULL, '盒', '0.125g*20\'S', '广东邦民制药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023049', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (119, 1, '利福平胶囊（基）', NULL, '抗结核类', '101131', '6920190330517', 16.50, NULL, NULL, '盒', '0.15g*100\'S', '广东恒健制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020615', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (120, 1, '益脑胶囊', NULL, '安神助眠用药', '101132', '6925477500065', 15.50, NULL, NULL, '盒', '0.3g*30\'S', '贵州安康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020459', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (121, 1, '连花清瘟胶囊（基）', NULL, '风热感冒用药', '101133', '6920855052068', 11.50, NULL, NULL, '盒', '0.35g*24\'S(1*10)', '石家庄以岭药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040063', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (122, 1, '咳特灵胶囊', NULL, '祛痰止咳平喘中药', '101134', '6903281000254', 10.00, NULL, NULL, '盒', '20\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020950', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (123, 1, '盐酸文拉法辛胶囊（博乐欣胶囊）', NULL, '抗抑郁药', '101135', '6926756410013', 33.00, NULL, NULL, '盒', '25mg*16\'S', '成都康弘药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19980051', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (124, 1, '茵栀黄胶囊', NULL, '肝类用药', '101136', NULL, 50.00, NULL, NULL, '盒', '0.33g*36\'S', '四川百利药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050262', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (125, 1, '五酯胶囊', NULL, '肝类用药', '101137', '6922342113016', 24.00, NULL, NULL, '盒', '11.25mg*24\'S', '四川禾正制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10983013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (126, 1, '蛇胆川贝胶囊', NULL, '祛痰止咳平喘中药', '101138', '无', 6.50, NULL, NULL, '盒', '24\'S', '广州粤华药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022653', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (127, 1, '清热消炎宁胶囊', NULL, '清热解毒用药', '101139', '6932961619127', 9.50, NULL, NULL, '盒', '20\'S', '广东五虎山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021862', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (128, 1, '复方灵芝健脑胶囊', NULL, '安神助眠用药', '101140', '6926050200020', 28.50, NULL, NULL, '盒', '0.25*24\'S', '山西蜀中制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020975', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (129, 1, '西咪替丁胶囊（甲氰咪胍）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101141', NULL, 12.00, NULL, NULL, '瓶', '0.2g*50\'S', '广东台城制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023010', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (130, 1, '来益维生素软胶囊（天然型）', NULL, '维生素类', '101142', NULL, 18.00, NULL, NULL, '瓶', '100mg*30\'S', '浙江医药股份有限公司新昌制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20003539', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (131, 1, '盐酸左氧氟沙星胶囊（仁和中方）（基）', NULL, '奎诺酮类', '101143', '6934403200047', 15.00, NULL, NULL, '盒', '10\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103012', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (132, 1, '吉春金甲排石胶囊', NULL, '排石用药', '101144', '6924959489768', 26.00, NULL, NULL, '盒', '0.3g*24\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025832', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (133, 1, '马来酸依那普利胶囊（福天乐胶囊）', NULL, '高血压用药', '101145', '6916470410017', 15.50, NULL, NULL, '瓶', '5mg*20\'S', '佛山手心（原阿特维斯）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (134, 1, '降脂通脉胶囊', NULL, '调节血脂用药', '101146', '6927961020042', 53.00, NULL, NULL, '盒', '0.5*36\'S', '云南优克制药公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026429', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (135, 1, '振源胶囊', NULL, '其它类', '101147', '6922790902088', 28.50, NULL, NULL, '盒', '25mg*20\'S', '吉林省集安益盛药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22026091', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (136, 1, '美满霉素胶囊（盐酸米诺环素胶囊）', NULL, '四环素类', '101148', NULL, 52.00, NULL, NULL, '盒', '50mg*20\'S', '惠氏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960011', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (137, 1, '盐酸二甲双胍肠溶胶囊（君力达）（基）', NULL, '双呱类胰岛素增敏剂', '101149', NULL, 30.50, NULL, NULL, '盒', '0.25g*48\'S', '北京圣永制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10980064', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (138, 1, '安神胶囊', NULL, '安神助眠用药', '101150', '6924959489515', 16.00, NULL, NULL, '盒', '24\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22023722', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (139, 1, '参芪肝康胶囊', NULL, '肝类用药', '101151', NULL, 22.00, NULL, NULL, '盒', '0.4g*40\'S', '陕西兆兴制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026654', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (140, 1, '格列美脲胶囊（普仁平）', NULL, '磺脲类', '101152', '6922821401825', 18.50, NULL, NULL, '盒', '2mg*12\'S', '四川普渡制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000704', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (141, 1, '奥美拉唑肠溶胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101153', '6916119040490', 17.00, NULL, NULL, '瓶', '20mg*14\'S', '石药集团欧意药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20046430', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (142, 1, '强力止咳宁胶囊', NULL, '祛痰止咳平喘中药', '101154', '6924297210215', 14.50, NULL, NULL, '盒', '0.4g*20\'S', '哈尔滨三木制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021295', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (143, 1, '佳迪胶囊（醋酸甲地孕酮）', NULL, '其它类', '101155', '6910518168687', 95.00, NULL, NULL, '瓶', '0.16g*8\'S', '南京先河制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19991017', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (144, 1, '抗宫炎胶囊', NULL, '消炎利湿止带用药', '101156', '6924853610091', 12.00, NULL, NULL, '盒', '0.5g*24\'S', '湖南东润联合制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990054', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (145, 1, '咳克平胶囊', NULL, '祛痰止咳平喘中药', '101157', '6903281003354', 24.00, NULL, NULL, '盒', '40\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20059017', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (146, 1, '胶体果胶铋胶囊（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101159', '6901804090317', 18.00, NULL, NULL, '盒', '0.1g*24\'S', '浙江得恩德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093002', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (147, 1, '骨松宝胶囊', NULL, '骨质疏松用药', '101160', '6921773900172', 29.00, NULL, NULL, '盒', '0.5g*24\'S', '贵州富华药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030084', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (148, 1, '莲芝消炎滴丸', NULL, '清热解毒用药', '101162', '6936038800630', 14.80, NULL, NULL, '盒', '30\'S*9袋', '海南伊顺药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060402', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (149, 1, '感冒清胶囊', NULL, '风热感冒用药', '101163', '6932067402210', 7.00, NULL, NULL, '盒', '12\'S', '吉林通化药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021511', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (150, 1, '盐酸二甲双胍肠溶胶囊（基）', NULL, '双呱类胰岛素增敏剂', '101165', '6926316888894', 38.00, NULL, NULL, '盒', '0.25g*60\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060728', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (151, 1, '银黄胶囊（基）', NULL, '清热解毒用药', '101168', '6940520000019', 9.80, NULL, NULL, '盒', '0.3g*20\'S', '中山市恒生药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044402', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (152, 1, '西乐葆胶囊（塞来昔布胶囊）（）', NULL, '抗炎、解热镇痛药', '101169', '6958703500195', 38.00, NULL, NULL, '盒', '0.2g*6\'S', '辉瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20140072', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (153, 1, '强骨胶囊', NULL, '其它类', '101171', NULL, 35.00, NULL, NULL, '盒', '0.25g*12\'S', '北京岐黄医药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030007', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (154, 1, '布洛芬缓释胶囊（仁和中方）（基）', NULL, '解热镇痛用药', '101172', '6922097701513', 23.00, NULL, NULL, '盒', '0.3g*22\'S', '福建太平洋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093691', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (155, 1, '脑安胶囊（基）', NULL, '活血及抗凝用药', '101173', '6902858600767', 26.50, NULL, NULL, '盒', '0.4g*20\'S', '辽源誉隆亚东药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10940065', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (156, 1, '颈康胶囊（仁和中方）', NULL, '骨质增生用药', '101174', '6930463401516', 28.00, NULL, NULL, '盒', '24\'S', '江西铜鼓仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090430', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (157, 1, '通便灵胶囊', NULL, '润肠通便用药', '101175', '6936838940031', 9.50, NULL, NULL, '盒', '20\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20053053', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (158, 1, '阿奇霉素肠溶胶囊（基）', NULL, '大环内酯类', '101176', '6926316888733', 33.00, NULL, NULL, '盒', '0.125g*12\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100102', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (159, 1, '肺宁胶囊（仁和中方）', NULL, '祛痰止咳平喘中药', '101177', '6932474201796', 25.00, NULL, NULL, '盒', '0.4g*45\'S', '江西民济药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050557', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (160, 1, '骨折挫伤胶囊LH', NULL, '跌打损伤用药', '101180', '6924577800013', 16.00, NULL, NULL, '盒', '30\'S', '葵花药业集团(佳木斯)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021314', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (161, 1, '加味天麻胶囊LH', NULL, '风湿用药', '101181', '6924577830652', 25.50, NULL, NULL, '盒', '36\'S', '葵花药业集团(佳木斯)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23020970', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (162, 1, '左羟丙哌嗪胶囊（仁和中方）', NULL, '祛痰止咳平喘西药', '101182', '6933791700962', 13.00, NULL, NULL, '盒', '60mg*10\'S', '湖南九典制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050641', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (163, 1, '藿香清胃胶囊（显通）', NULL, '清热燥湿止痛用药', '101183', '6924959491068', 20.00, NULL, NULL, '盒', '30\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050591', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (164, 1, '辅酶Q10胶囊', NULL, '心脏病用药', '101184', '6910942381812', 8.50, NULL, NULL, '瓶', '10mg*30\'S', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19993662', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (165, 1, '感冒灵胶囊（仁和中方）', NULL, '风热感冒用药', '101185', '6931452806541', 18.00, NULL, NULL, '盒', '0.5g*18\'S', '江西新赣江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044039', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (166, 1, '胃膜素胶囊LH', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101186', '6934366600106', 25.50, NULL, NULL, '盒', '36\'S', '葵花药业集团（唐山）生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H13023865', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (167, 1, '益康胶囊', NULL, '心脏病用药', '101189', '6924959489683', 32.00, NULL, NULL, '盒', '24\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021594', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (168, 1, '曲尼司特胶囊', NULL, '其它类', '101190', '6949215106183', 39.00, NULL, NULL, '盒', '0.1g*36\'S', '中国药科大学制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930175', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (169, 1, '达克普隆(兰索拉唑肠溶胶囊)', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101192', NULL, 159.00, NULL, NULL, '盒', '30mg*14\'S', '天津武田药品有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10980035', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (170, 1, '仙灵骨葆胶囊（基）', NULL, '骨质疏松用药', '101193', '6926786100403', 29.50, NULL, NULL, '盒', '0.5g*30\'S', '贵州同济堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025337', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (171, 1, '泰尔丝(异维A酸软胶囊）', NULL, '痤疮用药', '101194', NULL, 49.00, NULL, NULL, '盒', '10mg*20\'S', '上海信谊延安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930210', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (172, 1, '盐酸二甲双胍缓释胶囊（基）', NULL, '双呱类胰岛素增敏剂', '101195', NULL, 0.00, NULL, NULL, '盒', '0.25g*48\'S', '哈药集团制药六厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051805', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (173, 1, '治感佳胶囊', NULL, '风热感冒用药', '101196', '6924604868474', 12.00, NULL, NULL, '盒', '12\'S', '肇庆星湖制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021298', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (174, 1, '维U颠茄铝胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101197', '6932067401480', 16.00, NULL, NULL, '盒', '12\'S', '吉林通化药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22024970', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (175, 1, '整肠生胶囊（地衣芽孢杆菌活菌胶囊）（基）', NULL, '调节肠道功能用药', '101198', NULL, 26.00, NULL, NULL, '盒', '0.25g*20\'S', '东北制药集团公司沈阳第一制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S10950019', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (176, 1, '六味地黄胶囊（基）', NULL, '滋阴补肾用药', '101199', '6903281004313', 19.50, NULL, NULL, '盒', '10\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021271', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (177, 1, '兰索拉唑肠溶胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101200', '6913027861414', 39.50, NULL, NULL, '盒', '15mg*14\'S', '北京红林制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20123069', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (178, 1, '阿莫西林胶囊（基）', NULL, '青霉素类', '101201', '6932067402142', 13.00, NULL, NULL, '盒', '0.25g*20\'S', '吉林通化药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22020952', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (179, 1, '新复方芦荟胶囊', NULL, '润肠通便用药', '101202', '6935723100086', 43.50, NULL, NULL, '盒', '0.43g*30\'S', '河北万邦复临药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z13020306', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (180, 1, '胃康灵胶囊', NULL, '调和肝脾胃用药', '101204', '6932067401206', 19.80, NULL, NULL, '盒', '36\'S', '吉林万通药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025154', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (181, 1, '银耳孢糖胶囊', NULL, '其它类', '101205', NULL, 18.50, NULL, NULL, '盒', '0.25g*24\'S', '吉林双药药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025765', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (182, 1, '复方石韦胶囊', NULL, '清热袪湿通淋用药', '101206', '6936838940574', 30.00, NULL, NULL, '盒', '0.5g*36\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050138', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (183, 1, '氨酚伪麻胶囊', NULL, '西药感冒药', '101207', '6942656500067', 16.00, NULL, NULL, '盒', '12\'S', '吉林万通药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960181', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (184, 1, '思考林（胞磷胆碱钠胶囊）', NULL, '帕金森用药', '101208', '6915798001136', 23.00, NULL, NULL, '盒', '0.1g*12\'S', '齐鲁制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020220', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (185, 1, '羚羊感冒胶囊LH', NULL, '风热感冒用药', '101211', '6925614223291', 19.50, NULL, NULL, '盒', '20\'S', '修正药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22024416', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (186, 1, '枸椽酸铋钾胶囊（仁和中方）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101212', '6927764908318', 25.00, NULL, NULL, '盒', '0.3g*24\'S', '湖南华纳大地药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20033756', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (187, 1, '银花芒果胶囊', NULL, '祛痰止咳平喘中药', '101213', '6926322400653', 12.50, NULL, NULL, '盒', '0.48g*24\'S', '广西万山红药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080631', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (188, 1, '胃康灵胶囊（仁和中方）', NULL, '清热燥湿止痛用药', '101214', '6930397802236', 28.00, NULL, NULL, '盒', '0.4g*40\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (189, 1, '腰息痛胶囊', NULL, '舒筋活络用药', '101215', '6938237700193', 18.00, NULL, NULL, '盒', '0.3g*30\'S', '河南辅仁堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10983078', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (190, 1, '替普瑞酮胶囊（施维舒）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101216', '6924503907366', 30.50, NULL, NULL, '盒', '50mg*20\'S', '卫材(中国)药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20093656', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (191, 1, '胃康灵胶囊', NULL, '清热燥湿止痛用药', '101217', '6922867751229', 13.70, NULL, NULL, '盒', '0.4g*24\'S', '黑龙江葵花药业股份药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021657', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (192, 1, '清开灵胶囊（基）', NULL, '清热解毒用药', '101218', '6914159003840', 17.50, NULL, NULL, '盒', '0.25g*24\'S', '广州白云山明兴制有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (193, 1, '舒眠胶囊', NULL, '安神助眠用药', '101219', NULL, 43.00, NULL, NULL, '盒', '0.4g*36\'S', '贵州大隆药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000105', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (194, 1, '盆炎净胶囊', NULL, '消炎利湿止带用药', '101222', '6936838911239', 24.00, NULL, NULL, '盒', '36\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050614', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (195, 1, '步长祛风止痛胶囊', NULL, '风湿用药', '101223', '6950077609146', 26.00, NULL, NULL, '盒', '36\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970038', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (196, 1, '口炎胶囊（仁和中方）', NULL, '口腔用药', '101224', '6930397802069', 20.00, NULL, NULL, '盒', '30\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090640', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (197, 1, '诺氟沙星胶囊（基）', NULL, '奎诺酮类', '101225', '6943750066107', 8.00, NULL, NULL, '盒', '24\'S', '万通郑州复升药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H41025660', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (198, 1, '男宝胶囊', NULL, '壮阳补肾用药', '101226', '6920302211628', 19.00, NULL, NULL, '盒', '24\'S', '万通四平神农制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022641', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (199, 1, '新血宝胶囊', NULL, '补气养血用药', '101227', '6910682000530', 14.00, NULL, NULL, '盒', '0.25g*24\'S', '广州白云山陈李济药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023595', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (200, 1, '茵栀黄胶囊', NULL, '肝类用药', '101229', NULL, 26.00, NULL, NULL, '盒', '0.33g*18\'S', '四川百利药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050262', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (201, 1, '痔炎消胶囊', NULL, '痔疮用药', '101230', '6924959489812', 27.00, NULL, NULL, '盒', '48\'S', '吉林吉春制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060132', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (202, 1, '盐酸左氧氟沙星胶囊（基）', NULL, '奎诺酮类', '101231', '6922552000069', 16.00, NULL, NULL, '盒', '20\'S', '浙江花园药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093894', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (203, 1, '人工牛黄甲硝唑胶囊', NULL, '口腔用药', '101232', '6920302211413', 16.00, NULL, NULL, '盒', '24\'S', '四平神农制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22024844', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (204, 1, '薏辛除湿止痛胶囊（曹清华）', NULL, '风湿用药', '101234', '6931600235599', 495.00, NULL, NULL, '盒', '0.3g*216\'S', '西安阿房宫药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020225', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (205, 1, '瑞健（马来酸曲美布汀胶囊）', NULL, '调节肠道功能用药', '101237', NULL, 19.80, NULL, NULL, '盒', '0.1g*24\'S', '山西振东安特生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040713', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (206, 1, '水飞蓟宾胶囊（水林佳）', NULL, '肝类用药', '101238', '6920535420019', 33.50, NULL, NULL, '盒', '35mg*20\'S', '天津天士力圣特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040299', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (207, 1, '步长康妇炎胶囊', NULL, '消炎利湿止带用药', '101239', '6937611700125', 45.00, NULL, NULL, '盒', '0.4g*48\'S', '山东步长神州制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20055634', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (208, 1, '(特)安特尔（十一酸睾酮胶丸）同化制剂', NULL, '蛋白同化制剂', '101240', NULL, 41.00, NULL, NULL, '盒', '40mg*20\'S', '法国Catalent', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20091047', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (209, 1, '银黄清肺胶囊（基）', NULL, '祛痰止咳平喘中药', '101241', '6933285600136', 29.00, NULL, NULL, '盒', '0.15g*24\'S', '湖南安邦制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020075', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (210, 1, '培元通脑胶囊', NULL, '其它类', '101242', NULL, 56.00, NULL, NULL, '瓶', '0.6g*27\'S', '河南羚锐制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000022', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (211, 1, '健肝灵胶囊', NULL, '肝类用药', '101243', '6926285814696', 28.00, NULL, NULL, '盒', '36\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021414', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (212, 1, '牛黄蛇胆川贝胶囊', NULL, '祛痰止咳平喘中药', '101244', '6926285819813', 19.80, NULL, NULL, '盒', '0.5g*20\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027133', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (213, 1, '金莲花软胶囊', NULL, '清热解毒用药', '101245', '6926285815440', 28.00, NULL, NULL, '盒', '24\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080130', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (214, 1, '苁黄补肾胶囊', NULL, '滋阴补肾用药', '101246', '6926285816751', 32.00, NULL, NULL, '盒', '36\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090814', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (215, 1, '替米沙坦胶囊（仁和中方）', NULL, '高血压用药', '101247', '6927075100838', 28.00, NULL, NULL, '盒', '40mg*21\'S', '河北神兴集团沙棘药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080431', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (216, 1, '灯盏生脉胶囊', NULL, '活血及抗凝用药', '101248', '6920587420067', 69.90, NULL, NULL, '盒', '0.18g*30\'S', '云南生物谷药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026439', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (217, 1, '润燥止痒胶囊（基）', NULL, '皮肤瘙痒用药', '101249', '6926786100885', 32.50, NULL, NULL, '盒', '0.5g*36\'S', '国药集团同济堂（贵州）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025030', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (218, 1, '金水宝胶囊（）', NULL, '其它类', '101252', '6907919600021', 37.00, NULL, NULL, '盒', '0.33g*63\'S', '江西济民可信金水宝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10890003', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (219, 1, '芪苈强心胶囊', NULL, '活血及抗凝用药', '101253', '6920855011515', 32.50, NULL, NULL, '盒', '0.3g*36\'S', '石家庄以岭药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040141', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (220, 1, '盐酸氟西汀胶囊（俞氏）', NULL, '抗抑郁药', '101254', '6933782901088', 25.50, NULL, NULL, '盒', '20mg*12\'S', '苏州俞氏药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093454', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (221, 1, '七味胃痛胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101255', '6936316019068', 49.00, NULL, NULL, '盒', '36\'S', '青海益欣药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026459', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (222, 1, '脑心安胶囊', NULL, '活血及抗凝用药', '101257', '6926974000164', 51.00, NULL, NULL, '盒', '0.3g*36\'S', '吉林省通化神龙药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025833', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (223, 1, '复方蛤青胶囊', NULL, '祛痰止咳平喘中药', '101258', '6936838940925', 32.00, NULL, NULL, '盒', '30\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050525', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (224, 1, '肝必复软胶囊', NULL, '肝类用药', '101259', '6933562624657', 15.50, NULL, NULL, '盒', '0.5g*36\'S', '深圳市佳泰药业股份有限公', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050572', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (225, 1, '银杏叶胶囊（汉森）（基）', NULL, '活血及抗凝用药', '101260', '6926372910652', 41.50, NULL, NULL, '瓶', '0.25g*20\'S', '湖南汉森制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026289', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (226, 1, '尼扎替丁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101261', '6935072300441', 23.00, NULL, NULL, '盒', '0.15g*10\'S', '广东元宁制药股份有限公司（原广东申威药业有限公司）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20059748', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (227, 1, '根痛平胶囊', NULL, '骨质增生用药', '101262', '6936838911611', 25.00, NULL, NULL, '盒', '30\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (228, 1, '八珍益母胶囊（基）', NULL, '活血调经止痛用药', '101263', '6911672041755', 25.70, NULL, NULL, '瓶', '0.28g*36\'S', '江西南昌桑海制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980009', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (229, 1, '参茸三肾胶囊', NULL, '壮阳补肾用药', '101264', '6936838911895', 57.00, NULL, NULL, '盒', '30\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063020', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (230, 1, '六味消痔胶囊', NULL, '痔疮用药', '101265', '6936838910744', 29.00, NULL, NULL, '盒', '0.6g*36\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050809', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (231, 1, '复方珍珠暗疮胶囊', NULL, '痤疮用药', '101266', '6936838911659', 29.00, NULL, NULL, '盒', '36\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050624', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (232, 1, '感冒灵胶囊', NULL, '风热感冒用药', '101267', '6936838910447', 14.00, NULL, NULL, '盒', '12\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20054096', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (233, 1, '丹灯通脑软胶囊（施普瑞）', NULL, '活血及抗凝用药', '101268', '6903954991056', 27.00, NULL, NULL, '盒', '0.55g*36\'S', '云南施普瑞生物工程有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (234, 1, '参芪肝康胶囊', NULL, '肝类用药', '101270', NULL, 0.00, NULL, NULL, '盒', '0.4g*60粒', '陕西兆兴制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026654', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (235, 1, '感冒清胶囊（仁和中方）', NULL, '风热感冒用药', '101271', '6930397802687', 15.00, NULL, NULL, '盒', '0.5g*20\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021034', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (236, 1, '步长消石利胆胶囊', NULL, '胆类用药', '101272', '6932453000198', 42.00, NULL, NULL, '盒', '36\'S', '保定步长天浩制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027143', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (237, 1, '红源达（多糖铁复合物胶囊）', NULL, '补铁', '101274', '6920583682018', 30.50, NULL, NULL, '盒', '0.15g*10\'S', '上海医药集团青岛国风药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030033', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (238, 1, '奥美拉唑肠溶胶囊（罗丹）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101275', NULL, 14.00, NULL, NULL, '盒', '20mg*14\'S', '山东罗欣药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20033444', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (239, 1, '三九胃泰胶囊（基）', NULL, '清热燥湿止痛用药', '101277', '6901339924194', 27.50, NULL, NULL, '盒', '0.5g*24\'S', '华润三九医药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020704', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (240, 1, '新赛斯平（环孢素软胶囊）（基）', NULL, '其它类', '101278', NULL, 296.00, NULL, NULL, '盒', '25mg*50\'S', '杭州中美华东制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960122', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (241, 1, '丽珠优可（苯磺酸氨氯地平胶囊）（）', NULL, '高血压用药', '101279', '6903286104476', 8.50, NULL, NULL, '盒', '5mg*7\'S', '丽珠集团丽珠制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030289', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (242, 1, '步长中风回春胶囊', NULL, '活血及抗凝用药', '101280', '6950077609061', 68.00, NULL, NULL, '盒', '120\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970037', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (243, 1, '血栓通胶囊（基）', NULL, '活血及抗凝用药', '101283', '6946617600063', 26.00, NULL, NULL, '盒', '0.18g*20\'S(1*10)', '哈尔滨珍宝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025972', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (244, 1, '茴拉西坦胶囊（罗布坦）', NULL, '改善脑功能（促智）与记忆障碍用药', '101284', '6930205910542', 18.00, NULL, NULL, '盒', '0.2g*18\'S', '山东罗欣药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20059459', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (245, 1, '步长通脉降糖胶囊', NULL, '中药降糖药', '101285', '6932453000167', 53.50, NULL, NULL, '盒', '60\'S', '保定天浩制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026853', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (246, 1, '参茯胶囊（芯畅）', NULL, '滋阴用药', '101286', '6933299399101', 49.00, NULL, NULL, '盒', '0.3g*24\'S', '陕西健民制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020852', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (247, 1, '清热消炎宁胶囊', NULL, '清热解毒用药', '101288', '6901616270518', 15.00, NULL, NULL, '盒', '0.32g*12\'S', '广州白云山敬修堂药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022708', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (248, 1, '抗骨增生胶囊', NULL, '骨质增生用药', '101290', NULL, 37.00, NULL, NULL, '盒', '0.35g*100\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (249, 1, '瑞素坦（雷米普利片）（）', NULL, '高血压用药', '101291', NULL, 26.50, NULL, NULL, '盒', '2.5mg*14\'S', '昆山龙灯瑞迪制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030724', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (250, 1, '大活络胶囊', NULL, '活血及抗凝用药', '101292', '6937800701384', 39.00, NULL, NULL, '盒', '0.25g*36\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990044', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (251, 1, '参术胶囊', NULL, '调和肝脾胃用药', '101293', '6923674600069', 39.00, NULL, NULL, '盒', '0.35g*36\'S', '贵州太和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020660', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (252, 1, '腰痹通胶囊（基）', NULL, '风湿用药', '101294', '6934918700315', 89.00, NULL, NULL, '盒', '0.42g*100\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010045', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (253, 1, '安利博（厄贝沙坦氢氯噻嗪胶囊）', NULL, '高血压用药', '101295', NULL, 28.00, NULL, NULL, '盒', '150mg:12.5mg*7\'S', '元和药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060811', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (254, 1, '降酶灵胶囊', NULL, '肝类用药', '101297', '6926885900119', 14.50, NULL, NULL, '盒', '0.15g*36\'S', '江西银涛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003415', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (255, 1, '复方蒂达胶囊', NULL, '肝类用药', '101298', '6923048100157', 69.00, NULL, NULL, '盒', '0.35g*30\'S', '青海鲁抗大地药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026344', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (256, 1, '安胃疡胶囊（基）', NULL, '其它类', '101300', NULL, 15.00, NULL, NULL, '盒', '0.2g*12\'S', '惠州市九惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970059', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (257, 1, '奥美拉唑肠溶胶囊（彼司克）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101303', '6926953820288', 21.50, NULL, NULL, '盒', '20mg*21\'S', '广东彼迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023977', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (258, 1, '脑心清胶囊', NULL, '活血及抗凝用药', '101304', '6928757900517', 16.50, NULL, NULL, '盒', '0.25g*24\'S', '西安秦巴药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (259, 1, '阿莫西林胶囊（基）', NULL, '青霉素类', '101305', '6932650101018', 7.50, NULL, NULL, '盒', '0.25g*20\'S', '吉林显锋科技制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20073235', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (260, 1, '通滞苏润江胶囊', NULL, '抗炎、解热镇痛药', '101306', NULL, 32.00, NULL, NULL, '盒', '0.3g*24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20083003', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (261, 1, '盐酸雷尼替丁胶囊（康麦尔）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101307', '6936343300221', 5.50, NULL, NULL, '盒', '0.15g*30\'S', '上海皇象铁力蓝天制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H23023162', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (262, 1, '胃康灵胶囊', NULL, '清热燥湿止痛用药', '101308', '6936343300412', 12.50, NULL, NULL, '盒', '0.4g*24\'S', '上海皇象铁力蓝天制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021219', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (263, 1, '虫草清肺胶囊', NULL, '祛痰止咳平喘中药', '101309', '6931803203012', 85.00, NULL, NULL, '盒', '0.3g*24\'S*3小盒', '青海普兰特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (264, 1, '颈腰康胶囊', NULL, '舒筋活络用药', '101311', '6925614223222', 29.00, NULL, NULL, '盒', '30\'S', '修正药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025230', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (265, 1, '升血小板胶囊', NULL, '清热解毒用药', '101312', NULL, 53.00, NULL, NULL, '盒', '0.45g*24\'S', '陕西郝其军制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025029', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (266, 1, '葛兰心宁软胶囊', NULL, '活血及抗凝用药', '101313', NULL, 33.00, NULL, NULL, '盒', '0.58g*24\'S', '西安千禾药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025490', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (267, 1, '天麻醒脑胶囊', NULL, '壮阳补肾用药', '101314', '6933427720203', 22.00, NULL, NULL, '盒', '0.4g*12\'S', '云南永孜堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027062', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (268, 1, '清火胶囊（仁和中方）', NULL, '清热解毒用药', '101316', '6930397801901', 20.00, NULL, NULL, '盒', '0.5g*24\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080476', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (269, 1, '灯盏生脉胶囊', NULL, '活血及抗凝用药', '101317', '6920587420210', 42.50, NULL, NULL, '盒', '0.18g*18\'S', '云南生物谷灯盏花药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026439', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (270, 1, '莱多菲（盐酸非索非那定片）', NULL, '鼻腔用药', '101318', NULL, 25.00, NULL, NULL, '盒', '30mg*28\'S', '浙江万晟药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060150', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (271, 1, '丹桂香胶囊', NULL, '清热燥湿止痛用药', '101319', '6936838910126', 24.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050552', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (272, 1, '参蛇偏瘫胶囊', NULL, '活血及抗凝用药', '101320', '6934627720086', 138.00, NULL, NULL, '盒', '0.4g*36\'S', '河南润弘制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20040027', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (273, 1, '乳癖舒胶囊', NULL, '活血散结用药', '101321', '6921850539011', 58.00, NULL, NULL, '盒', '0.4g*45\'S', '西安千禾药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025163', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (274, 1, '步长前列舒通胶囊', NULL, '前列腺用药', '101322', '6932453000099', 53.00, NULL, NULL, '盒', '0.4g*36\'S', '保定步长天浩制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027140', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (275, 1, '步长清热解毒胶囊', NULL, '清热解毒用药', '101323', '6921012200438', 22.00, NULL, NULL, '盒', '36\'S', '咸阳步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980046', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (276, 1, '步长消乳散结胶囊', NULL, '活血散结用药', '101324', '6937611700149', 47.50, NULL, NULL, '盒', '0.4g*60\'S', '山东步长神州制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20055636', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (277, 1, '复方消化酶胶囊', NULL, '促进胃动力、助消化用药', '101325', '6953333800127', 25.00, NULL, NULL, '盒', '10\'S', '广东星昊药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20064646', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (278, 1, '强力枇杷胶囊', NULL, '祛痰止咳平喘中药', '101326', '6937800702145', 25.00, NULL, NULL, '盒', '0.3g*24\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000117', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (279, 1, '延迪诺（阿法骨化醇软胶囊）（基）', NULL, '骨质疏松用药', '101327', NULL, 47.00, NULL, NULL, '盒', '0.5ug*20\'S', '沪信谊延安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010619', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (280, 1, '布洛芬缓释胶囊（缓士芬）（基）', NULL, '解热镇痛用药', '101328', '6943297600314', 9.80, NULL, NULL, '盒', '0.3g*12\'S', '珠海联邦制药有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19983137', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (281, 1, '舒洛地特软胶囊（伟素）', NULL, '活血及抗凝用药', '101330', NULL, 132.00, NULL, NULL, '盒', '250LSU*12\'S', '意大利阿尔法韦曼制药公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20140119', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (282, 1, '健延龄胶囊', NULL, '补气养血用药', '101331', '6920032870263', 168.00, NULL, NULL, '盒', '40\'S（1*6）', '雷允上药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (283, 1, '马来酸依那普利胶囊（福天乐胶囊）', NULL, '高血压用药', '101332', NULL, 20.00, NULL, NULL, '盒', '30\'S', '阿特维斯（佛山）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (284, 1, '天麻胶囊', NULL, '风湿用药', '101333', '6927544318849', 15.50, NULL, NULL, '盒', '48\'S', '四平市吉特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22023833', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (285, 1, '冠心苏合胶囊（基）', NULL, '心脏病用药', '101334', NULL, 7.80, NULL, NULL, '盒', '0.35g*30\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020937', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (286, 1, '心神宁胶囊（金秘宁）', NULL, '安神助眠用药', '101335', '6941210200535', 26.00, NULL, NULL, '盒', '0.25g*48\'S', '山西亨瑞达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090340', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (287, 1, '安多霖胶囊', NULL, '其它类', '101336', NULL, 98.00, NULL, NULL, '盒', '0.32g*24\'S', '福建众安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970016', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (288, 1, '冠心丹参胶囊', NULL, '活血及抗凝用药', '101337', '6923009803028', 22.00, NULL, NULL, '盒', '0.3g*40\'S', '陕西摩美得制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980161', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (289, 1, '宫炎平胶囊（基）', NULL, '消炎利湿止带用药', '101341', '6926285813637', 24.80, NULL, NULL, '盒', '24\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060034', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (290, 1, '辛伐他汀胶囊（旨清）', NULL, '调节血脂用药', '101343', '6933900020127', 25.00, NULL, NULL, '盒', '20mg*10\'S', '河北长天药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20068077', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (291, 1, '妇科养荣胶囊', NULL, '活血调经止痛用药', '101344', NULL, 36.00, NULL, NULL, '盒', '0.35g*36\'S', '西安阿房宫药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050381', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (292, 1, '安琪坦（黄体酮软胶囊）', NULL, '其它类', '101345', NULL, 99.00, NULL, NULL, '盒', '0.1g*30\'S', '法国Capsugel', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20130336', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (293, 1, '蒲地蓝消炎胶囊', NULL, '清热解毒用药', '101347', '6932484930846', 23.00, NULL, NULL, '盒', '0.4g*24\'S', '江苏颐海药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060459', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (294, 1, '六味地黄胶囊LH（基）', NULL, '滋阴补肾用药', '101348', '6925614224427', 46.00, NULL, NULL, '盒', '36\'S', '修正药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025122', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (295, 1, '乳癖康胶囊', NULL, '活血散结用药', '101349', '6933890700719', 38.00, NULL, NULL, '盒', '0.29g*45\'S', '广州诺金制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090226', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (296, 1, '美常安（枯草杆菌二联活菌肠溶胶囊）', NULL, '调节肠道功能用药', '101350', '6932721511425', 26.50, NULL, NULL, '盒', '250mg*20\'S', '北京韩美药品有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S20030087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (297, 1, '冠心丹参胶囊', NULL, '活血及抗凝用药', '101351', '6905039990046', 25.00, NULL, NULL, '瓶', '0.3g*60\'S', '国药集团致君（深圳）坪山制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970060', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (298, 1, '肺宁胶囊', NULL, '祛痰止咳平喘中药', '101353', '6928846601752', 17.00, NULL, NULL, '盒', '0.35*30\'S', '吉林益民堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060118', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (299, 1, '灵芝胶囊', NULL, '安神助眠用药', '101354', NULL, 23.50, NULL, NULL, '盒', '0.27g*24\'S', '贵州云峰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020476', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (300, 1, '参三七伤药胶囊', NULL, '跌打损伤用药', '101355', NULL, 38.00, NULL, NULL, '盒', '0.5g*36\'S', '广东康奇力药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050490', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (301, 1, '补肺活血胶囊', NULL, '补肺益气用药', '101357', '6953335100010', 41.20, NULL, NULL, '盒', '0.35g*40\'S', '广东雷允上药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030063', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (302, 1, '肠胃舒胶囊', NULL, '其它类', '101358', '6927961020141', 45.00, NULL, NULL, '盒', '0.4g*36\'S', '云南优克制药公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026659', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (303, 1, '得生胶囊（吉春）', NULL, '活血调经止痛用药', '101359', '6924959489928', 48.00, NULL, NULL, '盒', '0.4g*36\'S', '吉林吉春制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060025', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (304, 1, '妇科止带胶囊（白马）', NULL, '消炎利湿止带用药', '101361', '6918440050674', 35.00, NULL, NULL, '盒', '0.3g*48\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050298', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (305, 1, '妇炎康复胶囊（白马）', NULL, '消炎利湿止带用药', '101362', '6918440050186', 38.00, NULL, NULL, '瓶', '0.4g(相当于饮片1.02g)*48\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20033208', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (306, 1, '宫炎康胶囊（白马）', NULL, '消炎利湿止带用药', '101363', '6918440050704', 35.00, NULL, NULL, '盒', '0.4g*48\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050073', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (307, 1, '血平胶囊（致康）', NULL, '妇科止血药用药', '101364', '6921850539004', 38.00, NULL, NULL, '盒', '0.3g*36\'S', '西安千禾药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025330', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (308, 1, '前列平胶囊（致康）', NULL, '前列腺用药', '101365', '6921850500288', 50.00, NULL, NULL, '盒', '0.4g*45\'S', '西安千禾药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025651', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (309, 1, '清热消炎宁胶囊', NULL, '清热解毒用药', '101366', '6901616270570', 22.50, NULL, NULL, '盒', '18\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022708', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (310, 1, '布洛芬缓释胶囊（协新舒）（基）', NULL, '解热镇痛用药', '101367', '6920688181010', 13.00, NULL, NULL, '盒', '0.3g*20\'S', '协和药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20023191', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (311, 1, '尼美舒利胶囊（圆星得欣）', NULL, '解热镇痛用药', '101368', '6902401043546', 12.50, NULL, NULL, '盒', '0.1g*10\'S', '广州白云山制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19991147', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (312, 1, '方希（阿维胶囊）', NULL, '痤疮用药', '101369', NULL, 58.00, NULL, NULL, '盒', '10mg*30\'S', '重庆华邦制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010126', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (313, 1, '和血胶囊', NULL, '补气养血用药', '101370', '6926893501148', 23.50, NULL, NULL, '盒', '0.25g*36\'S', '通化正和药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063567', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (314, 1, '美常安（枯草杆菌二联活菌肠溶胶囊）', NULL, '调节肠道功能用药', '101371', '6932721511104', 17.50, NULL, NULL, '盒', '0.25g*10\'S', '北京韩美药品有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S20030087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (315, 1, '抗宫炎胶囊(仁和中方)', NULL, '消炎利湿止带用药', '101372', '6900210050564', 25.00, NULL, NULL, '盒', '0.5g*24\'S', '江西心正药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040083', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (316, 1, '一正血栓心脉宁胶囊（基）', NULL, '活血及抗凝用药', '101373', NULL, 21.50, NULL, NULL, '盒', '0.5g*40\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022536', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (317, 1, '盐酸吡格列酮胶囊（贝唐宁）', NULL, '噻唑烷二酮类胰岛素增敏剂', '101374', '6933599000158', 32.50, NULL, NULL, '盒', '30mg*7\'S', '四川绿叶制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050137', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (318, 1, '孕三烯酮胶囊', NULL, '避孕用药', '101375', NULL, 176.00, NULL, NULL, '盒', '2.5mg*8\'S', '华润紫竹药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19980020', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (319, 1, '田七痛经胶囊', NULL, '活血调经止痛用药', '101377', '6933890700474', 15.00, NULL, NULL, '盒', '24\'S', '清远东方之子制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022522', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (320, 1, '黄豆苷元胶囊', NULL, '高血压用药', '101378', '6924264610628', 18.50, NULL, NULL, '盒', '50mg*24\'S', '陕西功达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H61023321', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (321, 1, '别嘌醇缓释胶囊（奥迈必利）', NULL, '调节尿酸用药', '101379', NULL, 38.00, NULL, NULL, '盒', '0.25g*10\'S', '黑龙江澳利达奈德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20041338', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (322, 1, '复方益肝灵软胶囊', NULL, '肝类用药', '101380', '6917640100554', 52.00, NULL, NULL, '盒', '36\'S', '西安大唐制药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080311', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (323, 1, '口炎清胶囊', NULL, '清热利咽用药', '101381', '6923528198384', 13.00, NULL, NULL, '盒', '12\'S', '成都倍特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090786', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (324, 1, '一清软胶囊(仁和中方)', NULL, '清热解毒用药', '101382', '6934403279364', 26.00, NULL, NULL, '盒', '0.65g*24\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050017', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (325, 1, '骨刺消痛胶囊（中大）', NULL, '骨质增生用药', '101383', '6938651001180', 20.00, NULL, NULL, '盒', '0.3g*60\'S', '山西天星制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z14021849', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (326, 1, '胃炎康胶囊', NULL, '清热燥湿止痛用药', '101384', '6903281003675', 14.00, NULL, NULL, '盒', '0.3g*48\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20055182', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (327, 1, '参芪五味子胶囊', NULL, '安神助眠用药', '101385', '6932092703320', 19.50, NULL, NULL, '盒', '0.2g*36\'S', '吉林省大峻药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050348', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (328, 1, '妇炎康复胶囊', NULL, '消炎利湿止带用药', '101387', '6924959489362', 38.00, NULL, NULL, '盒', '36\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10940061', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (329, 1, '心脑康胶囊(仁和中方)', NULL, '活血及抗凝用药', '101388', '6931452806558', 30.00, NULL, NULL, '盒', '48\'S', '江西新赣江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044183', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (330, 1, '肝得治胶囊', NULL, '肝类用药', '101389', '6901616270228', 17.80, NULL, NULL, '瓶', '0.45g*36\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044072', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (331, 1, '天麻胶囊', NULL, '风湿用药', '101390', '6924959490825', 17.50, NULL, NULL, '盒', '0.25g*36\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022472', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (332, 1, '盐酸曲美他嗪胶囊', NULL, '心脏病用药', '101391', '6934076601134', 27.00, NULL, NULL, '盒', '20mg*24\'S', '山西华元医药生物技术有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100145', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (333, 1, '咳特灵胶囊（）', NULL, '祛痰止咳平喘中药', '101392', '6926285819493', 3.80, NULL, NULL, '瓶', '30\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022354', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (334, 1, '银杏叶胶囊（基）', NULL, '活血及抗凝用药', '101393', NULL, 34.00, NULL, NULL, '盒', '9.6mg:2.4mg*24\'S', '杭州康恩贝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063069', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (335, 1, '结石康胶囊', NULL, '排石用药', '101394', '6920568421458', 59.00, NULL, NULL, '瓶', '0.38g*36\'S', '河南羚锐制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20033289', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (336, 1, '心脑联通胶囊', NULL, '活血及抗凝用药', '101395', '6923674600106', 130.00, NULL, NULL, '盒', '0.4g*96\'S', '贵州太和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025034', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (337, 1, '妇炎康胶囊', NULL, '消炎利湿止带用药', '101399', '6920390100583', 30.00, NULL, NULL, '盒', '36\'S', '广西桂西制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020019', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (338, 1, '维尔康胶囊', NULL, '其它类', '101401', '6959394700406', 38.00, NULL, NULL, '盒', '30\'S', '广州粤华制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022658', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (339, 1, '勒马回胶囊', NULL, '祛痰止咳平喘中药', '101402', NULL, 38.00, NULL, NULL, '盒', '0.3g*36\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060197', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (340, 1, '阿莫西林胶囊（阿莫能）（基）', NULL, '青霉素类', '101403', '6941548900046', 7.50, NULL, NULL, '盒', '0.25g*20\'S', '四川制药制剂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51021734', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (341, 1, '龙骨颈椎胶囊', NULL, '抗炎、解热镇痛药', '101404', '6914316851871', 58.00, NULL, NULL, '盒', '60\'S', '通化神源药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20059004', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (342, 1, '莲芝消炎胶囊', NULL, '清热解毒用药', '101406', '6921392205016', 8.00, NULL, NULL, '盒', '12\'S', '惠州市九惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020431', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (343, 1, '氨咖黄敏胶囊禾穗速校', NULL, '西药感冒药', '101407', '6900372250895', 3.20, NULL, NULL, '盒', '10\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024290', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (344, 1, '龙血竭胶囊', NULL, '跌打损伤用药', '101409', '6921264527888', 11.30, NULL, NULL, '盒', '0.3g*24\'S', '云南云河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020999', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (345, 1, '维生素E软胶囊(压丸)　', NULL, '维生素类', '101410', '6901334110288', 18.80, NULL, NULL, '瓶', '100mg*60\'S', '广州白云山星群(药业)股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023177', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (346, 1, '斯达舒（维颠茄铝胶囊）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101411', '6925614224076', 26.00, NULL, NULL, '盒', '16\'S', '辽宁新高制药有限公司（原修正药业集团股份有限公司）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22026232', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (347, 1, '立加利仙（苯溴马隆片）', NULL, '调节尿酸用药', '101412', NULL, 32.00, NULL, NULL, '盒', '50mg*10\'S', 'ExcellaGmbH（昆山龙灯瑞迪制药有限公司)', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20130141', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (348, 1, '感冒清胶囊（）', NULL, '风热感冒用药', '101413', '6926285819479', 3.80, NULL, NULL, '瓶', '30\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021412', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (349, 1, '斯皮仁诺胶囊', NULL, '抗真菌类', '101414', '6922154606713', 38.00, NULL, NULL, '盒', '0.1g*4\'S(1*10)', '西安杨森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020367', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (350, 1, '替米沙坦胶囊', NULL, '高血压用药', '101415', '6918440050971', 36.00, NULL, NULL, '盒', '14\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070134', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (351, 1, '肝得治胶囊', NULL, '肝类用药', '101416', '6930321220211', 18.50, NULL, NULL, '盒', '0.45g*36\'S', '四川省通园制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19993203', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (352, 1, '银杏叶胶囊（基）', NULL, '活血及抗凝用药', '101419', '6928127320396', 18.00, NULL, NULL, '盒', '19.2mg*20\'S', '芜湖绿叶制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040097', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (353, 1, '参松养心胶囊（基）', NULL, '活血及抗凝用药', '101420', '6952378200039', 28.50, NULL, NULL, '盒', '0.4g*36\'S', '北京以岭药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20103032', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (354, 1, '盐酸二甲双胍肠溶胶囊（君力达）（）（基）', NULL, '双呱类胰岛素增敏剂', '101421', NULL, 14.00, NULL, NULL, '盒', '0.25g*24\'S', '北京圣永制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10980064', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (355, 1, '利舒康胶囊', NULL, '其它类', '101422', '6936316018016', 48.00, NULL, NULL, '盒', '0.5g*24\'S', '青海益欣药业责任有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025932', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (356, 1, '丹珍头痛胶囊（基）', NULL, '活血及抗凝用药', '101423', '6936316018047', 48.00, NULL, NULL, '盒', '0.5g*24\'S', '青海益欣药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025871', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (357, 1, '消瘀康胶囊', NULL, '活血及抗凝用药', '101424', '6936316018030', 49.00, NULL, NULL, '盒', '0.4g*24\'S', '青海益欣药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026074', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (358, 1, '胆香鼻炎胶囊', NULL, '鼻腔用药', '101425', '6924959489690', 27.00, NULL, NULL, '盒', '0.25g*24\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080460', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (359, 1, '祛风止痛胶囊', NULL, '风湿用药', '101426', '6950077609160', 45.00, NULL, NULL, '盒', '54\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970038', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (360, 1, '仙灵骨葆胶囊（基）', NULL, '骨质疏松用药', '101428', '6926786100021', 31.50, NULL, NULL, '盒', '0.5g*40\'S', '国药集团同济堂（贵州）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025337', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (361, 1, '参芪降糖胶囊（基）', NULL, '中药降糖药', '101430', '6920568421007', 36.00, NULL, NULL, '盒', '0.35g*36\'S', '河南羚锐制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970002', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (362, 1, '厄贝沙坦胶囊（普利宁）', NULL, '高血压用药', '101431', '6900572050653', 19.80, NULL, NULL, '盒', '75mg*12\'S', '哈药集团制药六厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010530', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (363, 1, '藿香正气胶囊（基）', NULL, '清热燥湿止痛用药', '101432', '6901070384745', 15.50, NULL, NULL, '盒', '24\'S', '云南白药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53021615', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (364, 1, '消炎灵胶囊', NULL, '清热解毒用药', '101433', '6936894900420', 15.00, NULL, NULL, '盒', '0.4g*24\'S', '江西普正制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073132', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (365, 1, '氯沙坦钾胶囊（得立坦）', NULL, '高血压用药', '101435', '6930652001046', 39.00, NULL, NULL, '盒', '50mg*7\'S', '四川成都恒瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100167', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (366, 1, '莲芝消炎滴丸', NULL, '清热解毒用药', '101436', '6936038835892', 19.50, NULL, NULL, '盒', '30\'S*12袋', '海南伊顺药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060402', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (367, 1, '十一味参芪胶囊', NULL, '补气养血用药', '101437', NULL, 37.50, NULL, NULL, '盒', '0.33g*45\'S', '大连汉方药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980107', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (368, 1, '千柏鼻炎胶囊', NULL, '鼻腔用药', '101438', '6934887406072', 35.00, NULL, NULL, '盒', '0.5g*24\'S', '陕西金象制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20053623', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (369, 1, '胃舒宁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101439', '6936838900042', 29.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (370, 1, '腰息痛胶囊（仁和中方）', NULL, '舒筋活络用药', '101440', '6930397802083', 28.00, NULL, NULL, '盒', '36\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043406', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (371, 1, '迭力（加巴喷丁胶囊）', NULL, '神经系统用药', '101441', '6914810104602', 49.00, NULL, NULL, '盒', '0.3g*24\'S', '江苏恩华药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051068', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (372, 1, '麝香风湿胶囊（仁和中方）', NULL, '风湿用药', '101442', '6930397802076', 25.00, NULL, NULL, '盒', '36\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043350', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (373, 1, '调经活血胶囊（仁和中方）', NULL, '活血调经止痛用药', '101443', '6932342100244', 25.00, NULL, NULL, '盒', '30\'S', '江西禹欣药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090925', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (374, 1, '强力天麻杜仲胶囊', NULL, '活血及抗凝用药', '101444', NULL, 12.50, NULL, NULL, '盒', '0.4g*24\'S', '贵州三力制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020007', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (375, 1, '野苏胶囊（白马）', NULL, '清热燥湿止痛用药', '101446', NULL, 32.00, NULL, NULL, '盒', '0.33g*24\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000135', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (376, 1, '胃康灵胶囊（汇仁）', NULL, '清热燥湿止痛用药', '101447', '6937999601441', 12.50, NULL, NULL, '盒', '24\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063655', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (377, 1, '葛酮通络胶囊', NULL, '活血及抗凝用药', '101449', NULL, 48.00, NULL, NULL, '盒', '0.25g*12\'S', '安徽九方制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060439', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (378, 1, '镇咳宁滴丸', NULL, '祛痰止咳平喘中药', '101450', '6921746900802', 15.80, NULL, NULL, '盒', '0.65g*6瓶', '贵州黄果树立爽药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050038', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (379, 1, '穿王消炎胶囊', NULL, '清热解毒用药', '101451', '6938237711212', 22.00, NULL, NULL, '盒', '0.22g*24\'S', '河南辅仁堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080283', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (380, 1, '六味安消胶囊（基）', NULL, '调和肝脾胃用药', '101452', NULL, 25.00, NULL, NULL, '盒', '0.5g*36\'S', '贵州信邦制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10950047', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (381, 1, '消炎止咳胶囊', NULL, '祛痰止咳平喘中药', '101453', '6930175206126', 28.50, NULL, NULL, '盒', '0.35g*24\'S', '贵州德良方药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050282', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (382, 1, '芬布芬胶囊', NULL, '抗炎、解热镇痛药', '101454', '6925614223833', 11.00, NULL, NULL, '盒', '12\'S', '修正药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22021065', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (383, 1, '千柏鼻炎胶囊', NULL, '鼻腔用药', '101455', '6922173702892', 26.50, NULL, NULL, '盒', '0.5g*24\'S', '重庆希尔安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19983087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (384, 1, '大败毒胶囊', NULL, '清热袪湿通淋用药', '101456', '6922173702229', 36.00, NULL, NULL, '盒', '0.5g*30\'S', '重庆希尔安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19993001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (385, 1, '止咳宁嗽胶囊', NULL, '祛痰止咳平喘中药', '101457', '6924959489386', 13.50, NULL, NULL, '盒', '36\'S', '吉林吉春制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021693', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (386, 1, '银翘伤风胶囊', NULL, '风热感冒用药', '101458', '6922867751472', 13.50, NULL, NULL, '盒', '0.3g*24\'S', '黑龙江葵花药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20083420', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (387, 1, '奥美拉唑肠溶胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101459', '6937999600246', 16.00, NULL, NULL, '盒', '14\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20034104', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (388, 1, '盐酸氟桂利嗪胶囊（基）', NULL, '改善脑功能（促智）与记忆障碍用药', '101460', '6937999600499', 12.00, NULL, NULL, '盒', '20\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20033514', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (389, 1, '雪山胃宝胶囊（仁和中方）', NULL, '促进胃动力、助消化用药', '101461', '6930397802489', 25.00, NULL, NULL, '盒', '0.34g*36\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080637', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (390, 1, '盆炎净胶囊', NULL, '消炎利湿止带用药', '101462', '6935132100202', 20.00, NULL, NULL, '盒', '20\'S', '遵义华卫制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060282', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (391, 1, '治伤胶囊', NULL, '跌打损伤用药', '101463', '6922880912768', 29.00, NULL, NULL, '盒', '0.25g*36\'S', '杭州朱养心药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10920013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (392, 1, '牛黄清感胶囊（基）', NULL, '风热感冒用药', '101464', '6934428600013', 15.00, NULL, NULL, '盒', '0.3g*24\'S', '黑龙江澳利达奈德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026054', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (393, 1, '氨苄西林胶囊（安必先）', NULL, '青霉素类', '101465', '6922153900263', 16.50, NULL, NULL, '盒', '24\'S', '贵州拜特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H52020542', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (394, 1, '羚羊感冒胶囊', NULL, '风热感冒用药', '101466', '6922153900676', 12.00, NULL, NULL, '盒', '24\'S', '贵州拜特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020240', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (395, 1, '哮喘胶囊', NULL, '祛痰止咳平喘中药', '101467', '6922153900430', 28.00, NULL, NULL, '盒', '24\'S', '贵州拜特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050168', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (396, 1, '罗红霉素缓释胶囊（逻施立）（基）', NULL, '大环内酯类', '101468', '6933279510090', 25.00, NULL, NULL, '盒', '0.15g*12\'S', '西安德天药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052711', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (397, 1, '坤复康胶囊', NULL, '消炎利湿止带用药', '101469', NULL, 31.00, NULL, NULL, '盒', '0.38g*48\'S', '陕西康惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025834', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (398, 1, '风湿圣药胶囊（德济）', NULL, '风湿用药', '101470', '6927544318986', 19.50, NULL, NULL, '盒', '0.3g*12\'S*4板', '四平市吉特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073110', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (399, 1, '穿龙骨刺胶囊（仁和中方）', NULL, '骨质增生用药', '101471', '6923776740038', 58.00, NULL, NULL, '盒', '72\'S', '烟台大洋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080104', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (400, 1, '健肝灵胶囊', NULL, '肝类用药', '101472', '6907705043056', 14.00, NULL, NULL, '盒', '0.5g*20\'S', '广东和平药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021212', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (401, 1, '金乌骨通胶囊', NULL, '壮阳补肾用药', '101473', '6922601800152', 48.00, NULL, NULL, '瓶', '0.35g*60\'S', '贵州盛世龙方制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043621', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (402, 1, '乐瑞卡（普瑞巴林胶囊）', NULL, '神经系统用药', '101474', NULL, 92.00, NULL, NULL, '盒', '75mg*8\'S', '辉瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20160021', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (403, 1, '布洛芬缓释胶囊（基）', NULL, '解热镇痛用药', '101475', '6926316888504', 18.00, NULL, NULL, '盒', '0.3g*28\'S', '珠海润都民彤制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066822', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (404, 1, '苍耳子鼻炎胶囊', NULL, '鼻腔用药', '101476', NULL, 13.50, NULL, NULL, '盒', '12\'S', '亚宝药业四川制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043826', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (405, 1, '腰痹通胶囊（基）', NULL, '风湿用药', '101477', NULL, 46.00, NULL, NULL, '盒', '0.42g*50\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010045', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (406, 1, '盐酸二甲双胍肠溶胶囊（基）', NULL, '双呱类胰岛素增敏剂', '101478', '6926316888429', 13.50, NULL, NULL, '盒', '0.25g*24\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060728', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (407, 1, '析清（包醛氧淀粉胶囊）', NULL, '其它类', '101479', NULL, 65.00, NULL, NULL, '盒', '0.625g*75\'S', '天津太平洋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000078', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (408, 1, '尼莫地平软胶囊', NULL, '改善脑功能（促智）与记忆障碍用药', '101480', '6938007000737', 12.80, NULL, NULL, '盒', '20mg*24\'S', '神威药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10970151', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (409, 1, '心脑清软胶囊', NULL, '活血及抗凝用药', '101481', '6938007000126', 25.00, NULL, NULL, '盒', '0.4g*36\'S', '神威药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026515', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (410, 1, '独一味胶囊', NULL, '风湿用药', '101482', NULL, 29.00, NULL, NULL, '盒', '0.3g*36\'S', '甘肃独一味生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970053', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (411, 1, '奥美拉唑肠溶胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101483', '6920587904666', 0.00, NULL, NULL, '盒', '20mg*14\'S', '四川科伦药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20065335', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (412, 1, '天丹通络胶囊', NULL, '活血及抗凝用药', '101484', '6924060401383', 42.00, NULL, NULL, '瓶', '0.4g*60\'S', '山东凤凰制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010029', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (413, 1, '清火栀麦胶囊', NULL, '清热解毒用药', '101485', '6924561800029', 12.00, NULL, NULL, '盒', '20\'S', '广西日田药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45021006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (414, 1, '奥美拉唑肠溶胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101486', '6916119040841', 28.00, NULL, NULL, '盒', '20mg*21\'S', '石药集团欧意药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20046430', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (415, 1, '翁沥通胶囊', NULL, '清热袪湿通淋用药', '101487', '6936838910188', 28.00, NULL, NULL, '盒', '24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20054027', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (416, 1, '排毒养颜胶囊', NULL, '润肠通便用药', '101488', '6920085822691', 73.50, NULL, NULL, '盒', '0.4g*70\'S', '云南盘龙云海药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020685', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (417, 1, '天晴甘平（甘草酸二铵肠溶胶囊）', NULL, '肝类用药', '101489', '6922096210580', 79.00, NULL, NULL, '盒', '50mg*63\'S', '正大天晴药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040628', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (418, 1, '六味地黄胶囊（仁和中方）（基）', NULL, '滋阴补肾用药', '101490', '6926344501161', 68.00, NULL, NULL, '盒', '0.3g*60\'S', '北京亚东生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19993295', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (419, 1, '阿司匹林肠溶胶囊', NULL, '活血及抗凝用药', '101491', '6924373920267', 20.50, NULL, NULL, '瓶', '100mg*30\'S', '永信药品工业(昆山)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19990212', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (420, 1, '尪痹胶囊', NULL, '风湿用药', '101492', '6902092001214', 62.50, NULL, NULL, '盒', '0.55g*60\'S', '辽宁华润本溪三药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080096', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (421, 1, '利福平胶囊（）（基）', NULL, '抗结核类', '101493', '6910942381522', 17.50, NULL, NULL, '瓶', '0.15g*100\'S (1*10)', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020771', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (422, 1, '苍耳子鼻炎胶囊', NULL, '鼻腔用药', '101494', '6931107701153', 17.50, NULL, NULL, '盒', '18\'S', '成都森科制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20064301', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (423, 1, '六味地黄胶囊（基）', NULL, '滋阴补肾用药', '101495', '6934033136075', 50.00, NULL, NULL, '盒', '0.3g*60\'S', '宝鸡必康嘉隆制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z61020322', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (424, 1, '氯雷他定胶囊（基）', NULL, '抗过敏用药', '101496', '6942414500148', 15.00, NULL, NULL, '盒', '5mg*24\'S', '石家庄宇惠制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080213', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (425, 1, '丁细牙痛胶囊', NULL, '口腔用药', '101497', '6934327100454', 18.50, NULL, NULL, '盒', '0.45*12\'S', '深圳市泰康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040050', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (426, 1, '金羚感冒胶囊（仁和中方）', NULL, '风热感冒用药', '101498', '6924525807200', 17.00, NULL, NULL, '盒', '36\'S', '山东润华药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20070066', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (427, 1, '复方苦木消炎胶囊（仁和中方）', NULL, '清热燥湿止痛用药', '101499', '6930948101184', 24.00, NULL, NULL, '盒', '0.2g*36\'S(1*12)', '武汉钧安制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050635', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (428, 1, '愈酚维林胶囊（仁和中方）', NULL, '祛痰止咳平喘西药', '101500', '6930397802755', 18.00, NULL, NULL, '盒', '24\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20110147', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (429, 1, '脑灵素胶囊（仁和中方）', NULL, '安神助眠用药', '101501', '6937800701001', 25.00, NULL, NULL, '瓶', '30\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021760', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (430, 1, '双氯芬酸钠缓释胶囊（基）', NULL, '抗炎、解热镇痛药', '101502', '6926316888511', 6.50, NULL, NULL, '盒', '50mg*10\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066984', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (431, 1, '癃闭舒胶囊（基）', NULL, '清热袪湿通淋用药', '101503', NULL, 38.00, NULL, NULL, '盒', '0.3g*36\'S', '石家庄科迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960007', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (432, 1, '银丹心脑通软胶囊（基）', NULL, '活血及抗凝用药', '101504', '6924168200192', 32.50, NULL, NULL, '盒', '0.4g*30\'S', '贵州百灵企业集团制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (433, 1, '西咪替丁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101505', '6911641002237', 7.50, NULL, NULL, '盒', '0.2g*36\'S', '西南药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H50020054', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (434, 1, '半枝莲胶囊', NULL, '清热解毒用药', '101507', '6930175201046', 28.50, NULL, NULL, '盒', '0.31g*30\'S', '贵州德良方药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090760', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (435, 1, '消炎止咳胶囊', NULL, '祛痰止咳平喘中药', '101508', '6930175206119', 15.00, NULL, NULL, '盒', '12\'S', '贵州德良方佰仕特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050282', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (436, 1, '银黄胶囊（基）', NULL, '清热解毒用药', '101509', '6920050900607', 13.80, NULL, NULL, '盒', '24\'S', '福建省泉州恒达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063449', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (437, 1, '加替沙星胶囊（宜爽沙）', NULL, '奎诺酮类', '101510', '6921619504885', 15.00, NULL, NULL, '盒', '100mg*16\'S', '湖北百科亨迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052429', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (438, 1, '黄柏胶囊', NULL, '清热解毒用药', '101511', NULL, 10.00, NULL, NULL, '瓶', '36\'S', '广东九连山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021472', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (439, 1, '神曲胃痛胶囊', NULL, '清热燥湿止痛用药', '101512', '6921166581438', 15.80, NULL, NULL, '盒', '30\'S', '广东九连山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021699', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (440, 1, '仙茸护肾胶囊', NULL, '壮阳补肾用药', '101513', '6936838941441', 35.00, NULL, NULL, '盒', '8\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020631', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (441, 1, '牛黄解毒胶囊（基）', NULL, '清热解毒用药', '101514', '6936838941090', 21.00, NULL, NULL, '盒', '48\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980091', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (442, 1, '心可宁胶囊', NULL, '活血及抗凝用药', '101515', '6936838941458', 30.00, NULL, NULL, '盒', '32\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19993301', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (443, 1, '步长宫瘤消胶囊（基）', NULL, '活血散结用药', '101516', '6937611700132', 68.00, NULL, NULL, '盒', '0.5g*60\'S', '山东步长神州制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20055635', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (444, 1, '盐酸二甲双胍肠溶胶囊（君力达）（基）', NULL, '双呱类胰岛素增敏剂', '101517', NULL, 28.50, NULL, NULL, '盒', '0.5g*48\'S', '北京圣永制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20058567', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (445, 1, '脑心清胶囊', NULL, '活血及抗凝用药', '101518', '6928757900609', 20.00, NULL, NULL, '盒', '0.25*36\'S', '西安秦巴药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (446, 1, '律康（枸橼酸坦度螺酮胶囊）', NULL, '抗精神病药', '101519', '6939234900067', 33.00, NULL, NULL, '盒', '5mg*24\'S', '四川科瑞德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052328', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (447, 1, '妇科止血灵胶囊', NULL, '妇科止血药用药', '101520', '6926322400639', 12.50, NULL, NULL, '盒', '24\'S', '广西万山红药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090244', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (448, 1, '复方甘草酸苷胶囊（凯因甘乐）', NULL, '肝类用药', '101521', '6947574841117', 36.00, NULL, NULL, '盒', '25mg*40\'S', '北京凯因科技股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (449, 1, '特维丝（异维酸软胶囊）', NULL, '痤疮用药', '101522', NULL, 33.00, NULL, NULL, '盒', '10mg*15\'S', '上海东海制药股份有限公司东海制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20055201', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (450, 1, '消渴降糖胶囊', NULL, '中药降糖药', '101523', '6930175203118', 15.00, NULL, NULL, '盒', '0.3g*24\'S', '贵州德良方佰仕药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20055407', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (451, 1, '新赛斯平（环孢素软胶囊）（基）', NULL, '其它类', '101524', NULL, 550.00, NULL, NULL, '盒', '50mg*50\'S', '杭州中美华东制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960123', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (452, 1, '丹栀逍遥胶囊', NULL, '肝类用药', '101525', NULL, 37.00, NULL, NULL, '盒', '0.45g*24\'S', '陕西方舟制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060255', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (453, 1, '肾安胶囊', NULL, '清热袪湿通淋用药', '101528', NULL, 48.00, NULL, NULL, '盒', '0.4g*36\'S', '云南保元堂药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025529', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (454, 1, '润肠胶囊（仁和中方）', NULL, '润肠通便用药', '101529', '6934403205394', 18.00, NULL, NULL, '盒', '0.3g*12\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050531', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (455, 1, '阿莫西林胶囊（基）', NULL, '青霉素类', '101530', NULL, 11.00, NULL, NULL, '盒', '0.25g*50\'S', '广州白云山医药集团股份有限公司白云山制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021518', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (456, 1, '美唯宁（枸橼酸莫沙必利胶囊）', NULL, '促进胃动力、助消化用药', '101531', NULL, 24.40, NULL, NULL, '盒', '5mg*24\'S', '上海信谊药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051719', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (457, 1, '乌灵胶囊', NULL, '壮阳补肾用药', '101532', '6920257499010', 52.00, NULL, NULL, '盒', '0.33g*36\'S', '浙江佐力药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (458, 1, '心脑欣胶囊', NULL, '活血及抗凝用药', '101533', NULL, 24.00, NULL, NULL, '盒', '0.5g*20\'S', '三普药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025866', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (459, 1, '脂必泰胶囊', NULL, '调节血脂用药', '101534', NULL, 21.00, NULL, NULL, '盒', '0.24g*10\'S', '成都地奥九泓制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z51022196', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (460, 1, '天晴甘平（甘草酸二铵肠溶胶囊）', NULL, '肝类用药', '101535', NULL, 33.00, NULL, NULL, '盒', '50mg*24\'S', '正大天晴药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040628', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (461, 1, '西洋参黄芪胶囊YYJ', NULL, '补气养血用药', '101536', '6901301337472', 38.00, NULL, NULL, '盒', '0.5g*12\'S', '广州奇星药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020687', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (462, 1, '盐酸左氧氟沙星胶囊（基）', NULL, '奎诺酮类', '101537', '6926973113445', 17.50, NULL, NULL, '盒', '0.2g*12\'S', '海口奇力制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20055533', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (463, 1, '维生素软胶囊', NULL, '维生素类', '101538', '6942656500234', 68.00, NULL, NULL, '瓶', '160\'S', '吉林万通药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027782', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (464, 1, '氯雷他定胶囊（基）', NULL, '抗过敏用药', '101539', '6924924320676', 0.00, NULL, NULL, '盒', '10mg*10\'S', '湖北丝宝药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20041044', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (465, 1, '阿莫西林胶囊（阿莫仙）（基）', NULL, '青霉素类', '101540', '6943297600567', 29.50, NULL, NULL, '盒', '0.25g*36\'S', '珠海联邦制药股份有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021351', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (466, 1, '阿莫西林胶囊（基）', NULL, '青霉素类', '101541', NULL, 6.20, NULL, NULL, '盒', '0.25g*25\'S', '广州白云山制药股份有限公司广州白云山制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021518', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (467, 1, '胶体果胶铋胶囊（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101542', '6935455300228', 19.00, NULL, NULL, '盒', '0.1g*24\'S', '山西振兴安特有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20058476', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (468, 1, '感愈胶囊', NULL, '风热感冒用药', '101543', '6928982603238', 16.00, NULL, NULL, '盒', '10\'S', '通药制药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025488', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (469, 1, '盐酸雷尼替丁胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101544', '6922072560722', 5.50, NULL, NULL, '盒', '150mg*30\'S', '辅仁药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20073332', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (470, 1, '糖尿乐胶囊', NULL, '中药降糖药', '101545', '6938237700032', 26.00, NULL, NULL, '盒', '0.3g*20\'S', '河南辅仁堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10983076', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (471, 1, '天麻醒脑胶囊', NULL, '补肝健脾益肾用药', '101546', '6933427720470', 39.00, NULL, NULL, '盒', '0.4g*36\'S', '云南永孜堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027062', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (472, 1, '喉疾灵胶囊（）', NULL, '口腔用药', '101547', '6934050603437', 6.50, NULL, NULL, '盒', '0.25g*24\'S', '广东一片天医药集团制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020651', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (473, 1, '氟康唑胶囊（基）', NULL, '抗真菌类', '101548', NULL, 13.00, NULL, NULL, '盒', '50mg*6\'S', '宜昌长江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20045719', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (474, 1, '坤泰胶囊（基）', NULL, '更年期用药', '101549', NULL, 28.50, NULL, NULL, '盒', '0.5g*36\'S', '贵阳新天药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000083', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (475, 1, '强力天麻杜仲胶囊', NULL, '舒筋活络用药', '101550', NULL, 6.80, NULL, NULL, '盒', '0.4g*12\'S', '贵州三力制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020007', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (476, 1, '黄葵胶囊', NULL, '肾炎用药', '101551', '6919624168727', 36.00, NULL, NULL, '盒', '0.5g*30\'S', '江苏苏中药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990040', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (477, 1, '四季感冒胶囊（仁和中方）', NULL, '风寒感冒用药', '101552', '6933562689359', 19.50, NULL, NULL, '盒', '0.35g*30\'S', '深圳市佳泰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20168001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (478, 1, '兰索拉唑胶囊（南国春）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101553', '6937955266851', 36.00, NULL, NULL, '盒', '30mg*7\'S', '湖北华世通潜龙药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066197', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (479, 1, '惠血生胶囊', NULL, '补气养血用药', '101554', '6924570922118', 39.00, NULL, NULL, '盒', '0.3g*36\'S', '云南通用善美制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025066', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (480, 1, '心脑健胶囊', NULL, '清心、安神、开窍', '101555', '6970745022312', 35.50, NULL, NULL, '盒', '36\'S', '杭州苏泊尔南洋药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z33020443', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (481, 1, '氟康唑胶囊（基）', NULL, '抗真菌类', '101556', '6930237431091', 18.50, NULL, NULL, '盒', '50mg*12\'S', '浙江南洋药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066086', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (482, 1, '克痢痧胶囊', NULL, '止吐、止泻用药', '101557', '6941693911096', 16.00, NULL, NULL, '盒', '0.28g*8\'S', '浙江南洋药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063980', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (483, 1, '益脑胶囊（神济）', NULL, '补气养血用药', '101558', '6921208600226', 14.00, NULL, NULL, '盒', '0.3g*30\'S', '中美华医（河北）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z13020391', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (484, 1, '虎力散胶囊', NULL, '风湿用药', '101560', '6921264528885', 28.00, NULL, NULL, '盒', '0.3g*8\'S', '云南云河药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020808', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (485, 1, '丹参舒心胶囊', NULL, '活血及抗凝用药', '101561', '6938237714015', 13.50, NULL, NULL, '盒', '0.3g*24\'S', '河南辅仁堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10983122', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (486, 1, '氟康唑胶囊（基）', NULL, '抗真菌类', '101562', '6922072599999', 18.00, NULL, NULL, '盒', '0.15g*3\'S', '辅仁药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20034050', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (487, 1, '肿痛安胶囊', NULL, '口腔用药', '101563', '6941084401526', 35.00, NULL, NULL, '盒', '0.28g*36\'S', '河北奥星集团药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z13021496', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (488, 1, '追风透骨胶囊', NULL, '风湿用药', '101564', '6936056100729', 26.00, NULL, NULL, '盒', '0.26g*24\'S', '湖南德康制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20083219', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (489, 1, '得生胶囊', NULL, '活血调经止痛用药', '101565', '6936838940970', 26.00, NULL, NULL, '盒', '16\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050106', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (490, 1, '单硝酸异山梨酯缓释胶囊', NULL, '心脏病用药', '101566', '6902148100168', 18.00, NULL, NULL, '盒', '40mg*10\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20073915', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (491, 1, '黄精赞育胶囊', NULL, '壮阳补肾用药', '101567', '6938742100082', 46.00, NULL, NULL, '瓶', '0.31g*45\'S', '上海新亚药业邗江有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050267', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (492, 1, '裸花紫珠胶囊（仁和）', NULL, '肝类用药', '101568', '6930397802656', 29.80, NULL, NULL, '盒', '36\'S', '江西仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080270', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (493, 1, '复方益母胶囊', NULL, '活血调经止痛用药', '101569', '6910787800370', 39.50, NULL, NULL, '盒', '0.42g*45\'S', '翔宇药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (494, 1, '咳克平胶囊', NULL, '祛痰止咳平喘中药', '101570', '6903281004573', 24.50, NULL, NULL, '盒', '20\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20059017', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (495, 1, '益康胶囊', NULL, '心脏病用药', '101571', '6925670601736', 58.00, NULL, NULL, '盒', '36\'S', '陕西省中医药研究院汉唐制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20053354', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (496, 1, '甲硝唑芬布芬胶囊', NULL, '口腔用药', '101572', '6931435344633', 9.80, NULL, NULL, '盒', '30\'S', '哈药集团制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H23022663', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (497, 1, '阿莫西林胶囊（仁和中方）（基）', NULL, '青霉素类', '101573', '6940200200678', 23.00, NULL, NULL, '盒', '0.25g*40\'S', '安徽安科恒益药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H34023532', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (498, 1, '益脑胶囊', NULL, '安神助眠用药', '101574', '6924730818930', 33.00, NULL, NULL, '盒', '0.3g*63\'S', '福州闽海药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z35020169', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (499, 1, '维生素D滴剂（胶囊型）', NULL, '维生素类', '101575', '6912283509122', 33.00, NULL, NULL, '盒', '400单位*24\'S（胶囊型）', '国药控股星鲨制药(厦门)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H35021450', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (500, 1, '益血生胶囊', NULL, '壮阳补肾用药', '101576', '692362200005', 33.50, NULL, NULL, '盒', '0.25g*36\'S', '吉林三九金复康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19983056', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (501, 1, '岩鹿乳康胶囊', NULL, '活血散结用药', '101577', '6924284199011', 38.00, NULL, NULL, '盒', '0.4g*30\'S', '云南海沣药业有限公司（原云南龙海天然植物药业）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025379', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (502, 1, '麝香接骨胶囊', NULL, '跌打损伤用药', '101578', '6903426235688', 28.50, NULL, NULL, '盒', '0.3g*40\'S', '哈药集团世一堂制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23020261', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (503, 1, '柳氮磺吡啶结肠溶胶囊（长建宁）', NULL, '其它类', '101579', '6953695100019', 34.00, NULL, NULL, '瓶', '0.25g*24\'S', '广东强基药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051173', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (504, 1, '风湿骨痛胶囊（基）', NULL, '风湿用药', '101580', '6933807088121', 25.00, NULL, NULL, '盒', '0.3g*32\'S', '国药集团精方（安徽）药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z34020025', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (505, 1, '维生素E软胶囊（仁和中方）', NULL, '维生素类', '101581', '6934403200696', 138.00, NULL, NULL, '瓶', '0.1g*100\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20063681', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (506, 1, '盐酸坦洛新缓释胶囊（必坦）（基）', NULL, '清热袪湿通淋用药', '101582', '6938751000052', 43.00, NULL, NULL, '盒', '0.2mg*14\'S', '杭州康恩贝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050285', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (507, 1, '乌灵胶囊', NULL, '壮阳补肾用药', '101583', '6920257499027', 26.50, NULL, NULL, '盒', '0.33g*18\'S', '浙江佐力药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (508, 1, '来婷（黄体酮软胶囊）', NULL, '其它类', '101584', '6905806070735', 39.50, NULL, NULL, '盒', '0.1g*12\'S', '浙江医药股份有限公司新昌制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040982', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (509, 1, '人工牛黄甲硝唑胶囊', NULL, '口腔用药', '101585', '6920211781274', 0.00, NULL, NULL, '盒', '12\'S', '白山市长白山制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22024427', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (510, 1, '阿莫西林胶囊（抗之霸）（基）', NULL, '青霉素类', '101586', '6902401044451', 13.80, NULL, NULL, '盒', '0.5g*24\'S', '广州白云山医药集团股份有限公司白云山制药总厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20067450', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (511, 1, '通便灵胶囊（仁和中方）', NULL, '润肠通便用药', '101587', '6908410001881', 16.00, NULL, NULL, '盒', '0.25g*24\'S', '杨凌东科麦迪森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063349', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (512, 1, '前列安通胶囊（仁和中方）', NULL, '清热袪湿通淋用药', '101588', '6927764908363', 38.00, NULL, NULL, '盒', '0.28g*45\'S', '湖南华纳大药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090294', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (513, 1, '胃复宁胶囊（仁和中方）', NULL, '促进胃动力、助消化用药', '101589', '6908410001836', 28.00, NULL, NULL, '盒', '0.3g*48\'S', '杨凌东科麦迪森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z61020319', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (514, 1, '葡立（盐酸氨基葡萄糖胶囊）', NULL, '抗炎、解热镇痛药', '101590', '6920328980010', 39.00, NULL, NULL, '盒', '0.24g*24\'S', '山西中远威药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020306', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (515, 1, '脑栓康复胶囊', NULL, '活血及抗凝用药', '101591', NULL, 47.00, NULL, NULL, '盒', '0.3g*36\'S', '吉林长源药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025020', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (516, 1, '穿王消炎胶囊（仁和）', NULL, '清热解毒用药', '101592', '6932474202069', 0.00, NULL, NULL, '盒', '36\'S', '江西民济药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080276', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (517, 1, '思考林（胞磷胆碱钠胶囊）', NULL, '帕金森用药', '101593', NULL, 53.00, NULL, NULL, '盒', '0.1g*24\'S', '齐鲁制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020220', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (518, 1, '曲尼司特胶囊', NULL, '抗过敏用药', '101594', NULL, 26.00, NULL, NULL, '盒', '0.1g*24\'S', '中国药科大学制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930175', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (519, 1, '岩鹿乳康胶囊', NULL, '活血散结用药', '101595', '6924284120237', 36.00, NULL, NULL, '盒', '0.4g*40\'S', '云南龙海天然植物药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025379', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (520, 1, '盐酸二甲双胍肠溶胶囊（基）', NULL, '双呱类胰岛素增敏剂', '101596', '6936517200197', 10.50, NULL, NULL, '盒', '0.25g*24\'S', '北京协和药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103017', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (521, 1, '圣能（复方氨基酸胶囊）', NULL, '其它类', '101597', NULL, 42.00, NULL, NULL, '盒', '30\'S', '南京圣和药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040727', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (522, 1, '松龄血脉康胶囊（基）', NULL, '清心、安神、开窍', '101598', '6925500800131', 25.50, NULL, NULL, '盒', '0.5g*30\'S', '成都康弘药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960023', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (523, 1, '脑心清胶囊', NULL, '活血及抗凝用药', '101599', '6934242080152', 45.00, NULL, NULL, '盒', '0.15g*36\'S', '四川志远嘉宝药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080201', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (524, 1, '替米沙坦胶囊', NULL, '高血压用药', '101600', '6931620121520', 17.00, NULL, NULL, '盒', '40mg*14\'S', '广州白云山天心制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050041', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (525, 1, '昆仙胶囊', NULL, '风湿用药', '101601', '6910682001490', 89.00, NULL, NULL, '盒', '30\'S', '广州白云山陈李济药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060267', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (526, 1, '感速康胶囊（仁和）', NULL, '风热感冒用药', '101602', '6921237908232', 17.00, NULL, NULL, '盒', '0.3g*24\'S', '陕西华西制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063374', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (527, 1, '氟康唑胶囊', NULL, '抗真菌类', '101603', '6900191259963', 15.50, NULL, NULL, '盒', '0.15g*3\'S', '昆明积大制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103081', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (528, 1, '非诺贝特胶囊（II）（利旨平）', NULL, '调节血脂用药', '101604', NULL, 23.00, NULL, NULL, '盒', '0.1g*12\'S', '广东先强药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021454', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (529, 1, '尼美舒利胶囊（仁和中方）', NULL, '解热镇痛用药', '101605', '6926686603813', 15.00, NULL, NULL, '盒', '0.1g*12\'S', '天津和治药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010306', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (530, 1, '妇科再造胶囊', NULL, '活血调经止痛用药', '101607', '6941764301085', 35.50, NULL, NULL, '盒', '0.41g*36\'S', '贵州汉方药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050639', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (531, 1, '双金胃疡胶囊', NULL, '清热燥湿止痛用药', '101608', NULL, 22.00, NULL, NULL, '盒', '0.4g*24\'S', '贵州三仁堂药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025189', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (532, 1, '胆舒胶囊', NULL, '胆类用药', '101609', NULL, 24.50, NULL, NULL, '盒', '0.45*30\'S', '四川济生堂药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026078', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (533, 1, '舒秘胶囊', NULL, '润肠通便用药', '101610', NULL, 9.50, NULL, NULL, '盒', '0.3g*10\'S', '福州辰星药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20040016', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (534, 1, '云南红药胶囊', NULL, '其它类', '101611', NULL, 24.00, NULL, NULL, '盒', '0.25g*24\'S', '云南植物药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020129', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (535, 1, '西咪替丁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101612', '6920190330494', 7.80, NULL, NULL, '瓶', '0.2g*50\'S', '广东恒健制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020623', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (536, 1, '单硝酸异山梨酯缓释胶囊', NULL, '心脏病用药', '101613', NULL, 38.00, NULL, NULL, '盒', '50mg*20\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20073914', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (537, 1, '诺氟沙星胶囊（基）', NULL, '奎诺酮类', '101614', '6920587904345', 0.00, NULL, NULL, '盒', '0.1g*24\'S', '四川科伦药业股份有限公司安岳分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20053354', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (538, 1, '奥美拉唑肠溶胶囊（仁和中方）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101615', '6951608500802', 20.00, NULL, NULL, '盒', '20mg*14\'S', '河北山姆士药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093291', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (539, 1, '乌灵胶囊', NULL, '壮阳补肾用药', '101616', '6920257406018', 39.50, NULL, NULL, '盒', '0.33g*27\'S', '浙江佐力药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (540, 1, '一正血栓心脉宁胶囊（基）', NULL, '活血及抗凝用药', '101617', '6933276569701', 0.00, NULL, NULL, '盒', '0.5g*36\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022536', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (541, 1, '咳特灵胶囊（仁和中方）', NULL, '祛痰止咳平喘中药', '101618', '6930173600278', 13.00, NULL, NULL, '盒', '24\'S', '江西恒康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021177', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (542, 1, '六神胶囊', NULL, '清热解毒用药', '101619', '6920032881405', 36.80, NULL, NULL, '盒', '12\'S', '雷允上药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060207', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (543, 1, '盐酸氨溴索胶囊（基）', NULL, '祛痰止咳平喘西药', '101620', '6953780000217', 0.00, NULL, NULL, '盒', '30mg*36\'S', '安徽省先锋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103271', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (544, 1, '碳酸钙甘氨酸胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101621', NULL, 31.50, NULL, NULL, '盒', '210mg:90mg*24\'S', '天津金虹胜利药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H12021211', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (545, 1, '通心络胶囊（基）', NULL, '活血及抗凝用药', '101622', NULL, 28.00, NULL, NULL, '盒', '0.26g*40\'S', '石家庄以岭药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980015', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (546, 1, '海昆肾喜胶囊', NULL, '肾炎用药', '101623', NULL, 73.00, NULL, NULL, '盒', '0.22g*18\'S', '吉林省辉南长龙生化药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030052', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (547, 1, '养心定悸胶囊', NULL, '补气养血用药', '101624', '6924060911073', 39.00, NULL, NULL, '盒', '0.5g*36\'S', '石药集团河北永丰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19991082', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (548, 1, '银杏叶胶囊（基）', NULL, '活血及抗凝用药', '101625', '6911662636046', 0.00, NULL, NULL, '瓶', '0.25g*30\'S', '湖南麓山天然植物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026290', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (549, 1, '大株红景天胶囊（康缘）', NULL, '活血及抗凝用药', '101626', NULL, 33.50, NULL, NULL, '盒', '0.38g*30\'S', '江苏康缘药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040023', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (550, 1, '人工牛黄甲硝唑胶囊', NULL, '口腔用药', '101627', '6931048632400', 16.50, NULL, NULL, '盒', '30\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22025305', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (551, 1, '红花逍遥胶囊', NULL, '活血调经止痛用药', '101628', NULL, 36.00, NULL, NULL, '盒', '0.4g*24\'S', '云南楚雄天利药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026107', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (552, 1, '奥美拉唑肠溶胶囊（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101629', '6931048632486', 25.00, NULL, NULL, '盒', '28\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103717', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (553, 1, '布洛芬缓释胶囊（基）', NULL, '解热镇痛用药', '101630', '6931048632417', 23.00, NULL, NULL, '盒', '22\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22026099', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (554, 1, '氯雷他定胶囊(海王抒瑞)（基）', NULL, '抗过敏用药', '101631', '6937921901168', 24.00, NULL, NULL, '盒', '10mg*12\'S', '深圳海王药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020559', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (555, 1, '胃康灵胶囊', NULL, '调和肝脾胃用药', '101632', '6931048632387', 18.00, NULL, NULL, '盒', '36\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022596', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (556, 1, '醋酸钙胶囊', NULL, '骨质疏松用药', '101633', '6925958520469', 56.00, NULL, NULL, '盒', '0.6g*12\'S', '昆明邦宇制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100127', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (557, 1, '尼扎替丁胶囊（庆尼安）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101634', NULL, 27.00, NULL, NULL, '盒', '0.15g*14\'S', '苏州致君万庆药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20094123', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (558, 1, '肠康胶囊（仁和）', NULL, '清热燥湿止痛用药', '101635', '6943737821118', 19.50, NULL, NULL, '盒', '0.23g：0.05g*20\'S', '张家界康尔佳制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000131', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (559, 1, '强力定眩胶囊', NULL, '高血压用药', '101636', '6926885901260', 45.00, NULL, NULL, '盒', '0.4g*36\'S', '江西银涛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090189', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (560, 1, '复方独活吲哚美辛胶囊', NULL, '风湿用药', '101637', '6938093900010', 45.00, NULL, NULL, '盒', '10\'S', '海南博大制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H46020616', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (561, 1, '严力慷（参雄温阳胶囊）', NULL, '壮阳补肾用药', '101638', NULL, 19.50, NULL, NULL, '盒', '0.3g*24\'S', '吉林省银诺克药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026979', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (562, 1, '地衣芽孢杆菌活菌胶囊（基）', NULL, '调节肠道功能用药', '101639', NULL, 29.50, NULL, NULL, '盒', '0.25g*24\'S', '浙江京新药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S20083112', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (563, 1, '舒肝解郁胶囊', NULL, '肝类用药', '101640', NULL, 59.00, NULL, NULL, '盒', '0.36g*28\'S', '成都康弘药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080580', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (564, 1, '维U颠茄铝镁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101641', '6925809199400', 19.50, NULL, NULL, '盒', '24\'S', '吉林省辉南辉发制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22024580', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (565, 1, '替米沙坦胶囊（仁和中方）', NULL, '高血压用药', '101642', '6918440052050', 28.00, NULL, NULL, '盒', '40mg*21\'S', '江西杏林白马药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070134', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (566, 1, '生脉胶囊', NULL, '补气养血用药', '101644', '691990151045', 27.00, NULL, NULL, '瓶', '0.3g*45\'S', '正大青春宝药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z33021036', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (567, 1, '得每通（胰酶肠溶胶囊）', NULL, '促进胃动力、助消化用药', '101645', NULL, 46.00, NULL, NULL, '盒', '0.15g*20\'S', '德国AbbottLaboratoriesGmbH', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20160180', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (568, 1, '替硝唑胶囊（基）', NULL, '硝基呋喃类', '101646', NULL, 5.50, NULL, NULL, '盒', '0.5g*8\'S', '苏州中化药品工业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10970282', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (569, 1, '痹祺胶囊', NULL, '风湿用药', '101647', NULL, 33.50, NULL, NULL, '盒', '0.3g*24\'S', '天津达仁堂京万红药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10910026', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (570, 1, '六味地黄胶囊（仁和中方）（基）', NULL, '滋阴补肾用药', '101648', '66957471600557', 68.00, NULL, NULL, '盒', '0.3g*60\'S', '湖南康尔佳制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z43020326', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (571, 1, '二十五味珊瑚胶囊', NULL, '清心、安神、开窍', '101649', '6927721226622', 19.80, NULL, NULL, '盒', '0.5g*6\'S', '西藏金珠雅砻藏药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050736', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (572, 1, '缬沙坦胶囊（缬克)（基）', NULL, '高血压用药', '101650', '6902714042410', 19.80, NULL, NULL, '盒', '40mg*14\'S', '常州四药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010811', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (573, 1, '盐酸左氧氟沙星胶囊（）（基）', NULL, '奎诺酮类', '101651', '6931048632479', 18.00, NULL, NULL, '盒', '0.1g*24\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20084591', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (574, 1, '吲达帕胺胶囊（希尔达）（）', NULL, '高血压用药', '101652', '6922038705228', 25.00, NULL, NULL, '盒', '2.5mg*30\'S', '青岛黄海制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052625', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (575, 1, '腰息痛胶囊（）', NULL, '舒筋活络用药', '101653', '6923163610562', 25.00, NULL, NULL, '盒', '0.3g*36\'S', '河北万岁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10983030', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (576, 1, '六味地黄胶囊（）（基）', NULL, '滋阴补肾用药', '101654', '6931048632394', 45.00, NULL, NULL, '盒', '0.3g*50\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022594', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (577, 1, '辛芳鼻炎胶囊（）', NULL, '鼻腔用药', '101655', '6931048632455', 25.00, NULL, NULL, '盒', '0.25g*40\'S', '吉林道君药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022634', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (578, 1, '胶体果胶铋胶囊（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101656', '6922764900237', 26.00, NULL, NULL, '盒', '100mg*36\'S', '湖南华纳大药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20045248', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (579, 1, '根痛平胶囊（仁和中方）', NULL, '骨质增生用药', '101657', '6934218601503', 28.00, NULL, NULL, '盒', '0.5g*36\'S', '安徽仁和药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080323', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (580, 1, '正胃胶囊（仁和中方）', NULL, '调和肝脾胃用药', '101658', '6930397801833', 26.00, NULL, NULL, '盒', '0.35g*36\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090678', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (581, 1, '伤科跌打胶囊（仁和中方）', NULL, '跌打损伤用药', '101659', '6930948101245', 25.00, NULL, NULL, '盒', '36\'S', '武汉钧安制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090554', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (582, 1, '骨刺消痛胶囊（仁和中方）', NULL, '骨质增生用药', '101660', '6925780202304', 20.00, NULL, NULL, '盒', '0.3g*24\'S', '郑州韩都药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044544', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (583, 1, '银丹心脑通软胶囊（基）', NULL, '活血及抗凝用药', '101661', NULL, 30.00, NULL, NULL, '盒', '0.4g*36\'S', '贵州百灵企业集团制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (584, 1, '地奥心血康软胶囊（基）', NULL, '活血及抗凝用药', '101662', NULL, 19.80, NULL, NULL, '盒', '0.35g:100mg*30\'S', '成都地奥制药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050616', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (585, 1, '步长前列舒通胶囊', NULL, '清热袪湿通淋用药', '101663', '6932453000501', 39.00, NULL, NULL, '盒', '0.4g*24\'S', '保定步长天浩制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027140', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (586, 1, '复方风湿宁胶囊（基）', NULL, '风湿用药', '101664', NULL, 39.50, NULL, NULL, '盒', '0.3g*60\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060214', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (587, 1, '西沙必利胶囊（）', NULL, '促进胃动力、助消化用药', '101665', '6908260000072', 22.00, NULL, NULL, '盒', '5mg*24\'S', '山东淄博新达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020343', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (588, 1, '抗栓胶囊（亦通）', NULL, '活血及抗凝用药', '101666', '6925780200652', 19.50, NULL, NULL, '盒', '0.3g*48\'S', '郑州韩都药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043756', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (589, 1, '脉管复康胶囊（基）', NULL, '活血及抗凝用药', '101667', NULL, 26.00, NULL, NULL, '盒', '0.45g*24\'S', '陕西东泰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050719', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (590, 1, '百令胶囊', NULL, '补肺益气用药', '101668', '6900233783173', 73.00, NULL, NULL, '盒', '0.5g*42\'S', '杭州中美华东制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10910036', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (591, 1, '生脉胶囊', NULL, '补气养血用药', '101669', '6927632200179', 22.00, NULL, NULL, '瓶', '30\'S', '国药集团广东环球制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023258', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (592, 1, '葡立（盐酸氨基葡萄糖胶囊）', NULL, '抗炎、解热镇痛药', '101670', '6920328980041', 69.00, NULL, NULL, '瓶', '0.24g*42\'S', '山西中远威药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020306', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (593, 1, '枫蓼肠胃康胶囊', NULL, '清热燥湿止痛用药', '101671', NULL, 29.50, NULL, NULL, '盒', '0.37g*24\'S', '海口奇力制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980060', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (594, 1, '十七味填精胶囊', NULL, '壮阳补肾用药', '101672', NULL, 19.00, NULL, NULL, '盒', '0.32g*12\'S', '芜湖张恒春药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020563', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (595, 1, '复方石韦胶囊（步长）1', NULL, '清热袪湿通淋用药', '101673', '6924351829124', 33.00, NULL, NULL, '盒', '0.45g*36\'S', '陕西步长高新制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050507', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (596, 1, '黄芩苷胶囊', NULL, '肝类用药', '101674', NULL, 27.00, NULL, NULL, '盒', '0.25g*20\'S', '江西普众药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052651', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (597, 1, '复方斑蝥胶囊（方舟）', NULL, '肿瘤、癌症用药', '101675', '6925549061180', 42.00, NULL, NULL, '盒', '0.25g*60\'S', '陕西方舟制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20013152', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (598, 1, '咳特灵胶囊（）', NULL, '祛痰止咳平喘中药', '101676', '6932412901375', 15.00, NULL, NULL, '盒', '36\'S', '广西药用植物园制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45020107', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (599, 1, '泰尔丝(异维A酸软胶囊）', NULL, '痤疮用药', '101677', NULL, 33.00, NULL, NULL, '盒', '10mg*10\'S', '上海信谊延安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10930210', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (600, 1, '美唯宁（枸橼酸莫沙必利胶囊）', NULL, '促进胃动力、助消化用药', '101678', '6920257079182', 26.50, NULL, NULL, '盒', '5mg*28\'S', '上海新黄河制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20173152', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (601, 1, '盐酸坦洛新缓释胶囊（齐索）（基）', NULL, '利尿药', '101679', NULL, 39.00, NULL, NULL, '盒', '0.2mg*10\'S', '浙江海力生制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020623', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (602, 1, '阿奇霉素肠溶胶囊（微丸型）（基）', NULL, '大环内酯类', '101680', '6940854600121', 56.00, NULL, NULL, '盒', '0.25g*8\'S', '浙江众益制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090152', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (603, 1, '石黄抗菌胶囊（仁和）', NULL, '其它类', '101681', NULL, 23.00, NULL, NULL, '盒', '0.36g*45\'S', '河南省济源市济世药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090146', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (604, 1, '腰痹通胶囊（基）', NULL, '风湿用药', '101682', '6934918700339', 23.50, NULL, NULL, '盒', '0.42g*30\'S', '江苏康缘药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010045', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (605, 1, '金乌骨通胶囊', NULL, '壮阳补肾用药', '101683', NULL, 48.00, NULL, NULL, '瓶', '0.5g*60\'S', '贵州盛世龙方制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043621', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (606, 1, '薏辛除湿止痛胶囊（曹清华）', NULL, '风湿用药', '101684', '6931600255665', 1508.00, NULL, NULL, '盒', '720\'S(疗程装)', '西安阿房宫药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020225', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (607, 1, '骨力胶囊', NULL, '风湿用药', '101685', NULL, 39.00, NULL, NULL, '盒', '0.3g*24\'S', '贵州百灵集团制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027661', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (608, 1, '金骨莲胶囊', NULL, '风湿用药', '101686', NULL, 55.00, NULL, NULL, '盒', '0.25g*24\'S', '贵州益佰制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20123051', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (609, 1, '追风透骨胶囊', NULL, '风湿用药', '101687', NULL, 37.50, NULL, NULL, '盒', '0.26g*36\'S', '湖南德康制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20083219', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (610, 1, '平眩胶囊', NULL, '壮阳补肾用药', '101688', NULL, 34.00, NULL, NULL, '盒', '0.5g*30\'S', '云南佑生药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025826', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (611, 1, '舒眠胶囊', NULL, '安神助眠用药', '101689', '6925548580088', 29.00, NULL, NULL, '盒', '0.4g*24\'S', '贵州大隆药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000105', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (612, 1, '参茸三肾胶囊（仁和）', NULL, '壮阳补肾用药', '101690', '6925809199455', 48.00, NULL, NULL, '盒', '0.3g*30\'S', '吉林省辉南辉发制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020867', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (613, 1, '益肺胶囊', NULL, '祛痰止咳平喘中药', '101691', '6938651002781', 22.50, NULL, NULL, '盒', '0.3g*45\'S', '山西天星制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z14021863', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (614, 1, '熊去氧胆酸胶囊（优思弗）', NULL, '胆类用药', '101692', NULL, 258.00, NULL, NULL, '盒', '250mg*25\'S', '德国LosanPharmaGmbH', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20150365', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (615, 1, '百乐眠胶囊', NULL, '滋阴用药', '101693', NULL, 43.00, NULL, NULL, '瓶', '0.27g*24\'S', '扬子江药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020131', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (616, 1, '叶下珠胶囊(甘百迪)', NULL, '肝类用药', '101694', NULL, 29.00, NULL, NULL, '盒', '0.25g*36’S', '昆明本草制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027597', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (617, 1, '莲芝消炎胶囊', NULL, '清热解毒用药', '101695', '6900372201866', 17.80, NULL, NULL, '盒', '36\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020010', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (618, 1, '昆仙胶囊', NULL, '风湿用药', '101696', '6910682006693', 119.00, NULL, NULL, '盒', '0.3g*12\'S', '广州白云山陈李济药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060267', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (619, 1, '盐酸依匹斯汀胶囊（凯莱止）', NULL, '抗过敏用药', '101697', NULL, 29.00, NULL, NULL, '盒', '10mg*6\'S', '重庆药友制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20130054', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (620, 1, '复方氨维胶囊', NULL, '其它类', '101698', NULL, 29.00, NULL, NULL, '盒', '30\'S', '苏州云阳药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20057449', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (621, 1, '复方二甲双胍格列吡嗪胶囊（）', NULL, '双呱类胰岛素增敏剂', '101699', '6934805500080', 32.50, NULL, NULL, '盒', '0.3g*24\'S', '辽宁奇尔康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20059714', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (622, 1, '头孢地尼胶囊（世扶尼）', NULL, '头孢菌素类', '101700', NULL, 23.00, NULL, NULL, '盒', '0.1g*6\'S', '天津医药集团津康医药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20054035', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (623, 1, '益肺胶囊', NULL, '祛痰止咳平喘中药', '101701', '6938651002392', 11.00, NULL, NULL, '盒', '0.3g*20\'S', '山西天星制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z14021863', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (624, 1, '金骨莲胶囊', NULL, '风湿用药', '101702', NULL, 28.50, NULL, NULL, '盒', '0.25g*12\'S', '桂林益佰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20123051', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (625, 1, '辛伐他汀胶囊', NULL, '调节血脂用药', '101703', NULL, 26.00, NULL, NULL, '盒', '20mg*10\'S', '山东鲁抗医药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040618', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (626, 1, '舒胆胶囊（唐太医）', NULL, '胆类用药', '101704', NULL, 33.00, NULL, NULL, '盒', '0.3g*48\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044057', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (627, 1, '壮骨止痛胶囊（）', NULL, '骨质疏松用药', '101705', '6903708050039', 65.00, NULL, NULL, '盒', '0.45g*36\'S', '四川美大康药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050118', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (628, 1, '蜂皇胎胶囊', NULL, '其它类', '101706', '6933890700016', 35.00, NULL, NULL, '盒', '0.2g*24\'S', '广州诺金制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026814', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (629, 1, '降脂通脉胶囊', NULL, '调节血脂用药', '101707', NULL, 36.00, NULL, NULL, '盒', '0.5g*24\'S', '云南优克制药公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026429', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (630, 1, '甲硝唑芬布芬胶囊', NULL, '口腔用药', '101708', '6931317500201', 9.00, NULL, NULL, '盒', '0.1g：75mg*12\'S', '江苏黄河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32025606', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (631, 1, '痹祺胶囊', NULL, '风湿用药', '101709', NULL, 66.00, NULL, NULL, '盒', '0.3g*48\'S', '天津达仁堂京万红药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10910026', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (632, 1, '护肝宁胶囊（基）', NULL, '肝类用药', '101710', NULL, 0.00, NULL, NULL, '盒', '0.35g*48\'S', '湖南天济草堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20123004', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (633, 1, '头孢地尼胶囊（世扶尼）', NULL, '头孢菌素类', '101711', NULL, 16.00, NULL, NULL, '盒', '0.1g*4\'S', '天津医药集团津康医药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20054035', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (634, 1, '地衣芽孢杆菌活菌胶囊（基）', NULL, '调节肠道功能用药', '101712', NULL, 43.00, NULL, NULL, '盒', '0.25g*36\'S', '浙江京新药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字S20083112', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (635, 1, '蛤蚧大补胶囊', NULL, '补气养血用药', '101713', NULL, 9.80, NULL, NULL, '瓶', '0.5g*30\'S', '广州白云山敬修堂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020905', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (636, 1, '维颠茄铝胶囊III（）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101714', '6952738100368', 28.00, NULL, NULL, '盒', '12\'S', '山西康立生药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14024009', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (637, 1, '护肝宁胶囊（基）', NULL, '肝类用药', '101715', NULL, 0.00, NULL, NULL, '盒', '0.35g*36\'S', '江苏晨牌药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050804', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (638, 1, '龙血竭胶囊（云杉牌）', NULL, '跌打损伤用药', '101716', NULL, 0.00, NULL, NULL, '盒', '0.3g*36\'S', '云南云河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020999', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (639, 1, '生脉胶囊', NULL, '补气养血用药', '101717', NULL, 13.80, NULL, NULL, '盒', '0.3g*24\'S', '正大青春宝药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z33021036', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (640, 1, '炎热清胶囊', NULL, '清热解毒用药', '101718', '6902108000798', 19.50, NULL, NULL, '盒', '0.3g*24\'S', '广州白云山潘高寿药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (641, 1, '氟哌噻吨美利曲辛胶囊', NULL, '抗抑郁药', '101719', NULL, 59.00, NULL, NULL, '盒', '0.5mg:10mg*18\'S', '成都倍特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20150043', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (642, 1, '龟龄集', NULL, '壮阳补肾用药', '101720', '6907167103305', 389.00, NULL, NULL, '瓶', '0.3g*30\'S', '山西广誉远国药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z14020687', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (643, 1, '胶体果胶铋胶囊（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101721', '693874830066', 8.80, NULL, NULL, '盒', '100mg*12\'S', '桂林华信制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103187', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (644, 1, '通便灵胶囊', NULL, '润肠通便用药', '101722', '6908085000509', 12.00, NULL, NULL, '盒', '0.25g*12\'S', '南京同仁堂药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063213', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (645, 1, '心脑清软胶囊', NULL, '活血及抗凝用药', '101723', '6938007000638', 26.00, NULL, NULL, '瓶', '0.415g*100\'S', '神威药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026515', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (646, 1, '迭力（加巴喷丁胶囊）', NULL, '神经系统用药', '101724', '6914810104459', 30.00, NULL, NULL, '盒', '0.1g*48\'S', '江苏恩华药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040527', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (647, 1, '参芪肝康胶囊', NULL, '肝类用药', '101725', NULL, 0.00, NULL, NULL, '盒', '0.4g*60粒', '江苏仁寿药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20163009', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (648, 1, '金斯达舒（维颠茄铝胶囊）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101726', '6925614226193', 39.50, NULL, NULL, '盒', '18\'S', '修正药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22026232', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (649, 1, '小金胶囊（基）', NULL, '活血散结用药', '101727', '6920343431368', 46.00, NULL, NULL, '盒', '0.35g*12\'S', '健民药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970132', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (650, 1, '灵芝胶囊', NULL, '安神助眠用药', '101728', '6920883401036', 33.00, NULL, NULL, '盒', '0.27g*36\'S', '贵州圣济堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020044', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (651, 1, '手参肾宝胶囊（）', NULL, '滋阴补肾用药', '101729', '6914583920263', 498.00, NULL, NULL, '盒', '0.3g*30\'S', '金诃藏药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025759', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (652, 1, '头痛宁胶囊', NULL, '头部用药', '101730', '6950077609313', 29.80, NULL, NULL, '盒', '0.4g*36\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026851', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (653, 1, '苏黄止咳胶囊', NULL, '祛痰止咳平喘中药', '101731', '6939314900239', 39.80, NULL, NULL, '盒', '0.45g*9\'S', '扬子江药业集团北京海燕药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20103075', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (654, 1, '康婷（克拉霉素缓释胶囊）（基）', NULL, '大环内酯类', '101732', '6920813720787', 39.50, NULL, NULL, '盒', '0.25g*４\'s', '广州柏赛罗药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20051661', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (655, 1, '缬沙坦氢氯噻嗪胶囊（基）', NULL, '高血压用药', '101733', '6933515023933', 40.00, NULL, NULL, '盒', '10\'S', '重庆康刻尔制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080097', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (656, 1, '虎力散胶囊', NULL, '风湿用药', '101734', '6921264551135', 22.00, NULL, NULL, '盒', '0.3g*6\'S', '云南云河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020808', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (657, 1, '双氯芬酸钠缓释胶囊（英太青）（基）', NULL, '抗炎、解热镇痛药', '101735', '6920209688868', 29.50, NULL, NULL, '盒', '50mg*10\'S*3板', '先声药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20023856', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (658, 1, '手参肾宝胶囊', NULL, '滋阴补肾用药', '101736', '6914583920379', 1.00, NULL, NULL, '盒', '0.3g*10\'S', '金诃藏药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025759', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (659, 1, '熊胆舒肝利胆胶囊', NULL, '肝类用药', '101737', '6937951420042', 37.00, NULL, NULL, '盒', '0.5g*24\'S', '云南名扬药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025299', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (660, 1, '盐酸氟桂利嗪胶囊（基）', NULL, '改善脑功能（促智）与记忆障碍用药', '101738', '6921921600077', 3.30, NULL, NULL, '盒', '5mg*30\'S', '山西津华晖星制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14020126', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (661, 1, '天麻胶囊', NULL, '风湿用药', '101739', '6933276568292', 19.50, NULL, NULL, '盒', '0.25g*60\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22023234', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (662, 1, '碳酸钙甘氨酸胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101740', '6935821500726', 47.00, NULL, NULL, '盒', '210mg:90mg*36\'S', '天津金虹胜利药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H12021211', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (663, 1, '肾衰宁胶囊', NULL, '补肝健脾益肾用药', '101741', '6921074016886', 38.00, NULL, NULL, '盒', '0.35g*24\'S', '云南理想药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53021547', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (664, 1, '克癀胶囊', NULL, '清热解毒用药', '101742', '6903904000258', 39.50, NULL, NULL, '盒', '0.4g*24\'S', '深圳同安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960065', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (665, 1, '脑力静胶囊（久福康）', NULL, '安神助眠用药', '101743', '6920245500049', 36.00, NULL, NULL, '盒', '0.4g*24\'S', '安微众禾药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20054532', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (666, 1, '安利博（厄贝沙坦氢氯噻嗪胶囊）', NULL, '高血压用药', '101744', '6927785127026', 38.00, NULL, NULL, '盒', '150mg:12.5mg*10\'S', '元和药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060811', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (667, 1, '盐酸雷尼替丁胶囊（金雷立雅）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101745', '6916470411106', 14.80, NULL, NULL, '瓶', '0.15g*42\'S', '佛山手心制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021231', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (668, 1, '律康（枸橼酸坦度螺酮胶囊）', NULL, '抗精神病药', '101746', '6939234900555', 73.00, NULL, NULL, '盒', '5mg*48\'S', '四川科瑞德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052328', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (669, 1, '男宝胶囊', NULL, '壮阳补肾用药', '101747', '6927334585406', 68.00, NULL, NULL, '盒', '0.3g*24\'S', '华佗国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z34021071', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (670, 1, '羊藿三七胶囊', NULL, '活血及抗凝用药', '101748', '6923615800442', 46.00, NULL, NULL, '盒', '0.3g*24\'S', '重庆三峡云海药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090102', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (671, 1, '穿龙骨刺胶囊（佰年龄）', NULL, '骨质增生用药', '101749', '6921208609090', 29.50, NULL, NULL, '盒', '36\'S', '中美华医（河北）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080430', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (672, 1, '维生素C钙胶囊', NULL, '维生素类', '101750', '6910942381270', 19.50, NULL, NULL, '瓶', '0.426g*12\'S', '四川厚生天佐药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (673, 1, '奥美拉唑肠溶胶囊（奥克）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101751', '6902714012215', 47.00, NULL, NULL, '瓶', '20mg*14\'S', '常州四药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10950086', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (674, 1, '新赛斯平（环孢素软胶囊）（基）', NULL, '其它类', '101752', '6900233883583', 129.00, NULL, NULL, '盒', '10mg*50\'S', '杭州中美华东制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (675, 1, '十一味参芪胶囊', NULL, '补气养血用药', '101753', '6928235800209', 39.50, NULL, NULL, '盒', '0.33g*60\'S', '大连汉方药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10980107', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (676, 1, '复方伤痛胶囊', NULL, '跌打损伤用药', '101754', '6927306700288', 43.00, NULL, NULL, '盒', '0.3g*24\'S', '甘肃省西峰制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073054', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (677, 1, '通窍鼻炎胶囊', NULL, '鼻腔用药', '101755', '6937800700615', 28.50, NULL, NULL, '盒', '0.4g*45\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980098', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (678, 1, '磷酸奥司他韦胶囊', NULL, '西药感冒药', '101756', '6933346880309', 159.00, NULL, NULL, '盒', '75mg*10\'S', '宜昌东阳光长江药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20065415', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (679, 1, '缬沙坦胶囊（丽珠维可）（基）', NULL, '高血压用药', '101757', '6903286104407', 16.50, NULL, NULL, '盒', '80mg*7\'S', '丽珠集团丽珠制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000622', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (680, 1, '丽芝（托拉塞米胶囊）', NULL, '利尿药', '101758', '6920041312167', 27.00, NULL, NULL, '盒', '10mg*10\'S', '浙江诚意药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050526', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (681, 1, '诺氟沙星胶囊（仁和中方）（基）', NULL, '奎诺酮类', '101759', '6930173601121', 13.00, NULL, NULL, '盒', '0.1g*24\'S', '江西恒康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H36021734', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (682, 1, '复方甘草酸苷胶囊（康尔伴）', NULL, '肝类用药', '101760', NULL, 49.00, NULL, NULL, '盒', '25mg:40\'S', '瑞阳制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20110056', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (683, 1, '五苓胶囊（基）', NULL, '清热袪湿通淋用药', '101761', '6920858300630', 33.00, NULL, NULL, '盒', '0.45g*36\'S', '江西品信药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (684, 1, '妇可靖胶囊', NULL, '消炎利湿止带用药', '101762', '6927306700301', 46.00, NULL, NULL, '盒', '0.36g*36\'S', '甘肃省西峰制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040089', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (685, 1, '金甲排石胶囊', NULL, '排石用药', '101763', '6918038040872', 23.00, NULL, NULL, '盒', '0.3g*15\'S*3板', '吉林海通制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025831', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (686, 1, '感咳双清胶囊', NULL, '风热感冒用药', '101764', '6918828010610', 39.80, NULL, NULL, '盒', '0.3g*24\'S', '四川济生堂药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20040108', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (687, 1, '癃清胶囊（基）', NULL, '清热解毒用药', '101765', NULL, 24.50, NULL, NULL, '盒', '0.4g*36粒', '重庆科瑞南海制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050807', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (688, 1, '苍耳子鼻炎胶囊（顺通）', NULL, '鼻腔用药', '101766', '6924370486049', 26.00, NULL, NULL, '盒', '0.4g*30\'S', '海外制药长春海外制药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20054045', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (689, 1, '匹多莫德胶囊（林可妙）', NULL, '调节免疫用药', '101767', '6945629400098', 28.00, NULL, NULL, '盒', '0.4g*6\'S', '南京海辰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090359', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (690, 1, '吉春金甲排石胶囊', NULL, '排石用药', '101768', NULL, 28.00, NULL, NULL, '盒', '0.3g*45\'S', '吉林吉春制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025832', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (691, 1, '联邦安必先（氨苄西林胶囊）', NULL, '青霉素类', '101769', '6943297600536', 27.50, NULL, NULL, '盒', '0.25g*48\'S', '珠海联邦制药股份有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024353', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (692, 1, '三七伤药胶囊', NULL, '跌打损伤用药', '101770', '6901370016780', 9.80, NULL, NULL, '盒', '0.25g*24\'S', '广西玉林制药集团有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19980087', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (693, 1, '熊去氧胆酸软胶囊', NULL, '胆类用药', '101771', NULL, 169.00, NULL, NULL, '盒', '0.1g*30\'S', '韩国DaewoongPharmaceuticalCoLtd', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20130433', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (694, 1, '女金胶囊', NULL, '活血调经止痛用药', '101772', '6937999602721', 377.00, NULL, NULL, '盒', '96\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020022', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (695, 1, '胶体果胶铋胶囊（基）', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101773', '6938155712117', 23.00, NULL, NULL, '盒', '50mg*24\'S', '湖南迪博制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20063655', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (696, 1, '脑心通胶囊（基）', NULL, '活血及抗凝用药', '101774', '6950077609689', 49.00, NULL, NULL, '盒', '0.4g*72\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025001', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (697, 1, '鲜益母草胶囊（基）', NULL, '活血调经止痛用药', '101775', '6923435100593', 53.50, NULL, NULL, '盒', '0.4g*24\'S', '浙江大德药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080052', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (698, 1, '单硝酸异山梨酯缓释胶囊', NULL, '心脏病用药', '101776', '6902148100137', 19.00, NULL, NULL, '盒', '50mg*10\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20073914', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (699, 1, '牛黄上清胶囊（基）', NULL, '清热解毒用药', '101777', '6946572600023', 17.50, NULL, NULL, '盒', '0.3g*24\'S', '江西天施康弋阳制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (700, 1, '甘露消渴胶囊', NULL, '中药降糖药', '101778', '6925670600067', 39.80, NULL, NULL, '瓶', '0.3g*36\'S', '陕西省中医药研究院汉唐制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043399', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (701, 1, '谷参肠安胶囊（复方谷氨酰胺肠溶胶囊）', NULL, '调节肠道功能用药', '101779', '6928607404011', 42.50, NULL, NULL, '盒', '36\'S', '地奥集团成都药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51023598', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (702, 1, '胆胃康胶囊', NULL, '胆类用药', '101780', '6912885990151', 33.50, NULL, NULL, '盒', '0.3g*24\'S', '云南保元堂药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025134', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (703, 1, '增抗宁胶囊', NULL, '肝类用药', '101781', '6938270434611', 29.50, NULL, NULL, '盒', '0.44g*36\'S', '成都迪康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080060', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (704, 1, '咳速停胶囊', NULL, '祛痰止咳平喘中药', '101782', '6924168200116', 18.00, NULL, NULL, '瓶', '0.5g*24\'S', '贵州百灵企业集团制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025237', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (705, 1, '前列通瘀胶囊', NULL, '前列腺用药', '101783', '6938374605078', 33.50, NULL, NULL, '瓶', '0.4g*50\'S', '珠海星光制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990060', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (706, 1, '珍黄胶囊（珍黄丸）', NULL, '清热利咽用药', '101784', '6901370012362', 13.50, NULL, NULL, '盒', '0.2g*12\'S', '广西玉林制药集团有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45021626', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (707, 1, '盐酸左氧氟沙星胶囊（联邦左福康）（基）', NULL, '奎诺酮类', '101785', '6943297601403', 29.80, NULL, NULL, '盒', '0.1g*20\'S', '珠海联邦制药股份有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19990328', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (708, 1, '布洛芬缓释胶囊（缓士芬）（基）', NULL, '解热镇痛用药', '101786', '6943297600321', 29.50, NULL, NULL, '盒', '0.3g*24\'S', '珠海联邦制药股份有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19983137', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (709, 1, '罗红霉素胶囊（赛乐林）（基）', NULL, '大环内酯类', '101787', '6943297601410', 28.50, NULL, NULL, '盒', '0.15g*24\'S', '珠海联邦制药股份有限公司中山分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19990361', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (710, 1, '四季感冒胶囊', NULL, '风寒感冒用药', '101788', '6921665130038', 19.80, NULL, NULL, '盒', '0.41g*24\'S', '山东明仁福瑞达制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060146', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (711, 1, '丹青胶囊', NULL, '皮肤瘙痒用药', '101789', NULL, 0.00, NULL, NULL, '盒', '0.36g*24\'S', '陕西康惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080676', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (712, 1, '维尔固（盐酸氨基葡萄糖胶囊）', NULL, '抗炎、解热镇痛药', '101790', '6920041300270', 23.50, NULL, NULL, '盒', '0.24g*20\'S', '浙江诚意药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060748', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (713, 1, '贞芪扶正胶囊', NULL, '其它类', '101792', '6921044888888', 39.50, NULL, NULL, '瓶', '60\'S', '甘肃扶正药业科技股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z62020414', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (714, 1, '疏风解毒胶囊', NULL, '清热解毒用药', '101793', '6934927221016', 39.50, NULL, NULL, '盒', '0.52g*36\'S', '安微济人药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090047', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (715, 1, '天麻醒脑胶囊', NULL, '补肝健脾益肾用药', '101794', '6933427720012', 27.00, NULL, NULL, '盒', '0.4g*24\'S', '云南永孜堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027062', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (716, 1, '净石灵胶囊', NULL, '排石用药', '101795', '6937913300108', 25.50, NULL, NULL, '瓶', '0.3g*45\'S', '镇赉宝慷中药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020003', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (717, 1, '复方益母胶囊', NULL, '活血调经止痛用药', '101796', '6910787800035', 29.00, NULL, NULL, '盒', '0.42g*30\'S', '翔宇药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20030006', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (718, 1, '妇炎康软胶囊', NULL, '消炎利湿止带用药', '101797', '6933562619912', 32.00, NULL, NULL, '盒', '0.75g*18\'S', '深圳市佳泰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050571', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (719, 1, '复方消化酶胶囊', NULL, '促进胃动力、助消化用药', '101798', '6953333800134', 46.00, NULL, NULL, '盒', '20\'S', '广东星昊药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20064646', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (720, 1, '盐酸氨溴索胶囊', NULL, '祛痰止咳平喘西药', '101799', '6953780000019', 29.00, NULL, NULL, '盒', '30mg*30\'S', '安徽省先锋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20103271', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (721, 1, '奥美拉唑肠溶胶囊（金奥康）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101800', '6910835198343', 46.00, NULL, NULL, '盒', '20mg*7\'S', '浙江金华康恩贝生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19991118', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (722, 1, '普力得（盐酸氨基葡萄糖胶囊）', NULL, '抗炎、解热镇痛药', '101801', '6907486890801', 36.00, NULL, NULL, '盒', '0.24g*24\'S', '北京康必得药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070173', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (723, 1, '花蛇解痒胶囊', NULL, '皮肤瘙痒用药', '101802', '6933473400265', 25.50, NULL, NULL, '瓶', '0.35g*24\'S', '广西梧州三鹤药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025889', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (724, 1, '芪参胶囊', NULL, '活血及抗凝用药', '101803', '6904602109038', 33.00, NULL, NULL, '盒', '0.3g*18\'S', '上海凯宝新谊（新乡）药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044445', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (725, 1, '酮咯酸氨丁三醇胶囊', NULL, '解热镇痛用药', '101804', '6924440100332', 46.00, NULL, NULL, '盒', '10mg*24\'S', '山东新时代药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052633', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (726, 1, '全天麻胶囊', NULL, '风湿用药', '101805', '6918756011277', 23.50, NULL, NULL, '盒', '0.5g*36\'S', '上海世康特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003249', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (727, 1, '依帕司他胶囊（唐林）', NULL, '抗结核类', '101806', '6933253900046', 43.80, NULL, NULL, '盒', '50mg*10\'S', '扬子江药业集团南京海陵药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040840', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (728, 1, '枸橼酸氯米芬胶囊（克罗米芬）', NULL, '性激素及促性激素', '101807', '6921416617627', 26.50, NULL, NULL, '盒', '50mg*20\'S', '广州康和药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021970', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (729, 1, '心脑健胶囊', NULL, '清心、安神、开窍', '101808', '6914740100101', 16.50, NULL, NULL, '盒', '0.1g*24\'S', '杏辉天力（杭州）药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z33020261', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (730, 1, '氨咖黄敏胶囊禾穗速校', NULL, '西药感冒药', '101809', '6900372311626', 7.20, NULL, NULL, '盒', '20\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024290', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (731, 1, '骨刺胶囊', NULL, '骨质增生用药', '101810', '6950375812095', 39.50, NULL, NULL, '盒', '0.35g*48\'S', '陕西康惠制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050799', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (732, 1, '冠心舒通胶囊', NULL, '活血及抗凝用药', '101811', '6950077609078', 29.50, NULL, NULL, '瓶', '0.3g*36\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020055', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (733, 1, '香菊胶囊', NULL, '鼻腔用药', '101812', '6927762130247', 26.80, NULL, NULL, '瓶', '0.3g*48\'S', '山东步长制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19991040', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (734, 1, '双氯芬酸钠缓释胶囊', NULL, '抗炎、解热镇痛药', '101813', '6926316888542', 42.50, NULL, NULL, '盒', '100mg*20\'S', '珠海润都制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066985', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (735, 1, '金鸡胶囊', NULL, '消炎利湿止带用药', '101814', NULL, 167.00, NULL, NULL, '盒', '0.35g*48\'S*3盒', '广西灵峰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45020293', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (736, 1, '生精胶囊', NULL, '壮阳补肾用药', '101815', '6933839200058', 73.50, NULL, NULL, '盒', '0.4g*24\'S', '遵义廖元和堂药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027672', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (737, 1, '阿莫西林胶囊', NULL, '青霉素类', '101816', '6948095300138', 24.80, NULL, NULL, '盒', '0.25g*20\'S', '湖南尔康湘药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H43020265', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (738, 1, '复方甘草酸苷胶囊', NULL, '肝类用药', '101817', NULL, 47.00, NULL, NULL, '盒', '40\'S', '潍坊中狮制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080677', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (739, 1, '脑安胶囊', NULL, '活血及抗凝用药', '101818', '6921373191093', 45.50, NULL, NULL, '盒', '0.4g*30\'S', '上海祥鹤药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z31020420', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (740, 1, '盐酸雷尼替丁胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101819', '6948095300107', 24.00, NULL, NULL, '盒', '0.15g*20\'S', '湖南尔康湘药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H43021143', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (741, 1, '黄精赞育胶囊', NULL, '壮阳补肾用药', '101820', '6938742100037', 33.00, NULL, NULL, '盒', '0.31g*24\'S', '上海新亚药业邗江有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050267', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (742, 1, '黄柏胶囊', NULL, '清热解毒用药', '101821', '6923905536730', 9.50, NULL, NULL, '盒', '36\'S', '广东新峰药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021005', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (743, 1, '罗红霉素胶囊（仁苏）', NULL, '大环内酯类', '101822', '6927762516355', 32.00, NULL, NULL, '盒', '0.15g*12\'S', '扬子江药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10970292', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (744, 1, '妇宁胶囊', NULL, '活血调经止痛用药', '101823', '6940158600186', 35.00, NULL, NULL, '盒', '0.35g*24\'S', '杭州万邦天诚药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060272', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (745, 1, '氯雷他定胶囊(海王抒瑞)', NULL, '抗过敏用药', '101824', '6937921900987', 9.50, NULL, NULL, '盒', '10mg*6\'S', '深圳海王药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020559', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (746, 1, '阿奇霉素软胶囊', NULL, '大环内酯类', '101826', '6925558400994', 25.00, NULL, NULL, '盒', '0.125g*10\'S', '浙江维康药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070301', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (747, 1, '罗红霉素软胶囊', NULL, '大环内酯类', '101827', '6925558400901', 23.00, NULL, NULL, '盒', '0.15g*9\'S', '浙江维康药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070302', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (748, 1, '安康欣胶囊', NULL, '肿瘤、癌症用药', '101828', '6923560010866', 156.00, NULL, NULL, '盒', '0.5g*45\'S', '安徽高山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20023377', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (749, 1, '维参锌胶囊', NULL, '其它类', '101829', '6920771116332', 29.00, NULL, NULL, '盒', '0.38g*12\'S', '青岛国海生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19983029', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (750, 1, '沙巴棕果提取物软胶囊', NULL, NULL, '101830', NULL, 339.00, NULL, NULL, '盒', '0.42g*10\'S', '德国比奥基尔西股份公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'Z20150012', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (751, 1, '复方蚂蚁胶囊', NULL, '补肝健脾益肾用药', '101832', '6922952321139', 33.00, NULL, NULL, '盒', '0.25g*36\'S', '福建延年药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020024', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (752, 1, '龟龄集', NULL, '壮阳补肾用药', '101833', '6907167106870', 238.00, NULL, NULL, '盒', '0.3g*12\'S', '山西广誉远国药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z14020687', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (753, 1, '黄体酮软胶囊', NULL, '其它类', '101834', '6925799499160', 39.50, NULL, NULL, '盒', '0.1g*12\'S', '浙江爱生药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20031099', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (754, 1, '盐酸坦索罗辛缓释胶囊（必坦）', NULL, '前列腺用药', '101835', '6938751000052', 43.00, NULL, NULL, '盒', '0.2mg*14\'S', '杭州康恩贝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050285', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (755, 1, '双参龙胶囊', NULL, NULL, '101836', '6922036380465', 23.00, NULL, NULL, '盒', '0.3g*24\'S', '青海省格拉丹东药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025241', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (756, 1, '血宝胶囊', NULL, '补气养血用药', '101837', '6906733078481', 39.50, NULL, NULL, '盒', '0.3g*60\'S', '吉林白山正茂药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22024266', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (757, 1, '盐酸氟桂利嗪胶囊（仁和中方）', NULL, '改善脑功能（促智）与记忆障碍用药', '101838', '6935455300884', 15.00, NULL, NULL, '盒', '5mg*24\'S', '山西振东安特生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14020844', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (758, 1, '润肠胶囊（仁和中方）', NULL, '润肠通便用药', '101839', '6934403200900', 19.00, NULL, NULL, '盒', '0.3g*24\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050531', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (759, 1, '固本咳喘胶囊', NULL, '祛痰止咳平喘中药', '101840', '6926885900683', 9.00, NULL, NULL, '盒', '0.4g*24\'S', '江西银涛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20060073', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (760, 1, '参七心疏胶囊', NULL, '活血及抗凝用药', '101841', '6933427721538', 63.50, NULL, NULL, '盒', '0.3g*30\'S', '云南永孜堂制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025482', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (761, 1, '普力得（盐酸氨基葡萄糖胶囊）', NULL, '抗炎、解热镇痛药', '101842', '6907486890757', 65.50, NULL, NULL, '盒', '0.24g*42\'S', '北京康必得药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070173', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (762, 1, '心脑康胶囊', NULL, '活血及抗凝用药', '101843', '6930751101753', 16.50, NULL, NULL, '盒', '0.25G*36\'S', '长春银诺克药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020326', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (763, 1, '枣仁安神胶囊', NULL, '安神助眠用药', '101844', '6926786100090', 56.00, NULL, NULL, '瓶', '0.45g*50\'S', '国药集团同济堂(贵州)制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010033', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (764, 1, '祛痰止咳胶囊', NULL, '祛痰止咳平喘中药', '101845', '6932567400112', 23.00, NULL, NULL, '盒', '0.45g*16\'S', '广东一力罗定制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090641', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (765, 1, '独一味胶囊', NULL, '风湿用药', '101846', '6927245800179', 19.50, NULL, NULL, '盒', '0.3g*24\'S', '康县独一味生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970053', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (766, 1, '降酶灵胶囊', NULL, '肝类用药', '101847', '6926885900904', 13.20, NULL, NULL, '盒', '0.15g*30\'S', '江西银涛药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003415', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (767, 1, '加替沙星胶囊（百科沙）', NULL, '奎诺酮类', '101848', '6921619516888', 11.50, NULL, NULL, '盒', '0.1g*12\'S', '湖北百科亨迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052429', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (768, 1, '盐酸坦洛新缓释胶囊（齐索）', NULL, '利尿药', '101849', '6908457000427', 56.00, NULL, NULL, '盒', '0.2mg*20\'S', '浙江海力生制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020623', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (769, 1, '女金胶囊', NULL, '活血调经止痛用药', '101850', '6937999602882', 99.90, NULL, NULL, '盒', '6粒/板*4板', '江西汇仁药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20020022', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (770, 1, '盐酸多奈哌齐胶囊（赛灵斯）', NULL, '神经系统用药', '101851', '6926988900078', 39.50, NULL, NULL, '盒', '5mg*7\'S', '西安海欣制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030106', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (771, 1, '六味安神胶囊', NULL, '安神助眠用药', '101852', '6921041732849', 65.50, NULL, NULL, '盒', '0.45g*24\'S', '重庆华森制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20110037', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (772, 1, '盐酸文拉法辛胶囊（澤億）', NULL, '抗抑郁药', '101853', '6921162881006', 29.50, NULL, NULL, '盒', '25mg*24\'S', '苏州第四制药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20084496', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (773, 1, '维生素C钙胶囊', NULL, '维生素类', '101854', '6970419810023', 35.50, NULL, NULL, '瓶', '0.426g*24\'S', '四川厚生天佐药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (774, 1, '十一味维命胶囊', NULL, '安神助眠用药', '101855', '6923651590093', 68.50, NULL, NULL, '盒', '0.3g*60\'S', '青海久美藏药药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026343', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (775, 1, '黄豆苷元胶囊', NULL, '高血压用药', '101856', '6924264608014', 22.50, NULL, NULL, '盒', '25mg*48\'S', '陕西功达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H61023321', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (776, 1, '氯沙坦钾胶囊（东乐）', NULL, '高血压用药', '101857', '6921543013064', 26.50, NULL, NULL, '盒', '50mg*7\'S', '涿州东乐制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080814', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (777, 1, '风湿骨痛胶囊（基）', NULL, '风湿用药', '101858', '6933807088138', 56.00, NULL, NULL, '盒', '0.3g*80\'S', '国药集团精方（安徽）药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z34020025', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (778, 1, '柴芩清宁胶囊', NULL, '风寒感冒用药', '101859', '6927762518823', 86.00, NULL, NULL, '盒', '0.3g*24\'S', '扬子江药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20133030', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (779, 1, '前列回春胶囊', NULL, '前列腺用药', '101860', '6928601401030', 23.50, NULL, NULL, '盒', '0.3g*36\'S', '吉林双星药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020700', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (780, 1, '龙生蛭胶囊', NULL, '活血及抗凝用药', '101861', '6950077609122', 35.50, NULL, NULL, '盒', '0.4g*45\'S', '陕西步长制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20010059', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (781, 1, '硒酵母胶囊', NULL, '补钾、补硒', '101862', '6939435877182', 56.50, NULL, NULL, '瓶', '0.143g(100ug)*40\'S', '芜湖华信生物药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052532', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (782, 1, '拉呋替丁胶囊（诺非）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101863', '6920587904482', 42.50, NULL, NULL, '盒', '10mg*6\'S', '四川科伦药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060703', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (783, 1, '心脑健胶囊', NULL, '清心、安神、开窍', '101864', '6918756010843', 22.50, NULL, NULL, '盒', '（每粒含茶多酚100mg)*36\'S', '上海世康特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073113', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (784, 1, '裸花紫珠胶囊', NULL, '肝类用药', '101865', '6918440051268', 39.50, NULL, NULL, '盒', '0.4g*48\'S', '江西杏林白马制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063569', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (785, 1, '人参败毒胶囊', NULL, '风寒感冒用药', '101866', '6924155803115', 29.80, NULL, NULL, '盒', '0.3g*18\'S', '健康药业(中国)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20053379', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (786, 1, '热淋清胶囊', NULL, '清热袪湿通淋用药', '101867', '6923834900015', 35.50, NULL, NULL, '盒', '0.3g*60\'S', '贵州弘康药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020319', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (787, 1, '大活络胶囊', NULL, '活血及抗凝用药', '101868', '6937800700110', 27.50, NULL, NULL, '盒', '0.25g*24\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z19990044', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (788, 1, '维生素软胶囊（滴）', NULL, '维生素类', '101869', '6901334110677', 37.80, NULL, NULL, '瓶', '100mg*90\'S', '广州白云山星群(药业)股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023177', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (789, 1, '金水宝胶囊', NULL, '其它类', '101870', '6907919020171', 68.00, NULL, NULL, '盒', '0.33g*72\'S', '江西济民可信金水宝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10890003', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (790, 1, '奥美拉唑肠溶胶囊', NULL, '抗炎抗溃疡（抑制胃酸）用药', '101871', '6941914200060', 26.50, NULL, NULL, '盒', '40mg*14\'S', '海南葫芦娃药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066394', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (791, 1, '癃闭舒胶囊', NULL, '清热袪湿通淋用药', '101872', '6913942158699', 36.00, NULL, NULL, '盒', '0.45g*24\'S', '石家庄科迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20054549', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (792, 1, '苏黄止咳胶囊', NULL, '祛痰止咳平喘中药', '101874', '6939314900246', 78.00, NULL, NULL, '盒', '0.45g*18\'S', '扬子江药业集团北京海燕药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20103075', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (793, 1, '肾衰宁胶囊', NULL, '补肝健脾益肾用药', '101875', '6921074020012', 53.50, NULL, NULL, '盒', '0.35g*36\'S', '云南雷允上理想药业有限公司（原云南理想药业有限公司）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53021547', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (794, 1, '盐酸文拉法辛缓释胶囊', NULL, '抗抑郁药', '101876', '6942715311443', 106.00, NULL, NULL, '盒', '75mg*14\'S', '北京万生药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20143052', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (795, 1, '通窍鼻炎胶囊', NULL, '鼻腔用药', '101877', '6937495212011', 15.50, NULL, NULL, '盒', '0.4g*30\'S', '四川川大华西药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10970118', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (796, 1, '清热暗疮胶囊', NULL, '痤疮用药', '101878', '6939364000323', 36.50, NULL, NULL, '盒', '0.25g*36\'S', '吉林百琦药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080408', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (797, 1, '培元通脑胶囊', NULL, '其它类', '101879', '6920568422998', 37.50, NULL, NULL, '瓶', '0.6g*18\'S', '河南羚锐制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20000022', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (798, 1, '穿黄清热胶囊', NULL, '清热解毒用药', '101880', '6925389222031', 28.00, NULL, NULL, '盒', '0.36g*36\'S', '四川好医生药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080341', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (799, 1, '复方氯唑沙宗胶囊', NULL, '跌打损伤用药', '101881', '6925389221966', 29.00, NULL, NULL, '盒', '24\'S', '四川好医生药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20113550', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (800, 1, '新血宝胶囊', NULL, '补气养血用药', '101882', '6910682001261', 25.50, NULL, NULL, '盒', '0.25g*48\'S', '广州白云山陈李济药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023595', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (801, 1, '黄豆苷元胶囊', NULL, '高血压用药', '101883', '6934930001421', 29.50, NULL, NULL, '盒', '25mg*48\'S', '陕西海天制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066413', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (802, 1, '二甲双胍格列本脲胶囊()', NULL, '双呱类胰岛素增敏剂', '101884', '6921875003528', 39.80, NULL, NULL, '盒', '36\'S', '瑞阳制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20052111', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (803, 1, '适丽顺（卵磷脂络合碘胶囊）', NULL, '眼科用药', '101885', '6947954800123', 71.00, NULL, NULL, '盒', '0.1mg*30\'S', '西安汉丰药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100107', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (804, 1, '诺氟沙星胶囊（仁和中方）（基）', NULL, '奎诺酮类', '101886', '6930397803592', 13.00, NULL, NULL, '盒', '0.1g*24\'S', '江西药都仁和制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H36021062', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (805, 1, '牛黄上清胶囊', NULL, '清热解毒用药', '101887', '6946572600177', 33.50, NULL, NULL, '盒', '0.3g*48\'S', '江西天施康弋阳制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10960013', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (806, 1, '阿昔莫司胶囊（益平）', NULL, '调节血脂用药', '101888', NULL, 56.00, NULL, NULL, '盒', '0.25g*24\'S', '鲁南贝特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010769', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (807, 1, '龙金通淋胶囊', NULL, '清热袪湿通淋用药', '101889', '6924245120009', 62.00, NULL, NULL, '盒', '0.46g*24\'S', '云南希陶绿色药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025499', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (808, 1, '磷酸奥司他韦胶囊（可威）', NULL, '西药感冒药', '101890', '6933346880293', 45.00, NULL, NULL, '盒', '75mg*2\'S', '宜昌东阳光长江药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20065415', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (809, 1, '全天麻胶囊', NULL, '风湿用药', '101891', '6900968000217', 16.50, NULL, NULL, '盒', '0.5g*24\'S', '贵州益康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z52020063', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (810, 1, '金莲花软胶囊', NULL, '清热解毒用药', '101892', '6926285819356', 42.50, NULL, NULL, '盒', '0.7g*36\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20080130', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (811, 1, '庆大霉素普鲁卡因维胶囊', NULL, '抗炎抗溃疡（胃黏膜保护）用药', '101893', '6926973112790', 8.50, NULL, NULL, '盒', '0.27g*12\'S', '海口奇力制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20045188', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (812, 1, '盐酸坦洛新缓释胶囊', NULL, '清热袪湿通淋用药', '101894', NULL, 28.50, NULL, NULL, '盒', '0.2mg*12\'S', '鲁南贝特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080063', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (813, 1, '盐酸特拉唑嗪胶囊', NULL, '高血压用药', '101895', '6932878500136', 9.50, NULL, NULL, '盒', '2mg*12\'S', '世贸天阶制药(江苏)有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19990108', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (814, 1, '肺力咳胶囊', NULL, '祛痰止咳平喘西药', '101896', '6921751300079', 29.50, NULL, NULL, '瓶', '0.3g*30\'S', '贵州健兴药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025240', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (815, 1, '花红胶囊', NULL, '消炎利湿止带用药', '101897', '6920390001590', 0.00, NULL, NULL, '盒', '0.25g*63\'S*1瓶', '广西壮族自治区花红药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025194', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (816, 1, '维达抽取式面巾', NULL, NULL, '102', '6901236382042', 0.00, NULL, NULL, '提', '1*3 （1*16）', NULL, '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '6901236382042', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (817, 1, '健胃消食片（儿童）（）', NULL, '促进胃动力、助消化用药', '1020001', '6903757998061', 10.50, NULL, NULL, '盒', '0.5g*36\'S', '江中药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021464', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (818, 1, '钙糖片（葡萄糖酸钙含片）（基）', NULL, '补钙、补锌', '1020002', '6953460806771', 8.80, NULL, NULL, '瓶', '0.15g*110\'S', '广东三才医药集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020676', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (819, 1, '倍特巴沙片（司帕沙星片）', NULL, '奎诺酮类', '1020003', '6923528102022', 27.00, NULL, NULL, '盒', '100mg*6\'S', '成都倍特药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10980055', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (820, 1, '秋水仙碱片（基）', NULL, '调节尿酸用药', '1020004', '6934150020035', 5.70, NULL, NULL, '盒', '0.5mg*20\'S', '西双版纳版纳药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H53021369', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (821, 1, '地巴唑片（）', NULL, '高血压用药', '1020005', NULL, 6.70, NULL, NULL, '瓶', '10mg*100\'S', '山西云鹏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14023929', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (822, 1, '格列齐特缓释片（达美康）', NULL, '磺脲类', '1020006', NULL, 45.50, NULL, NULL, '盒', '30mg*30\'S', '施维雅（天津）制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20044694', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (823, 1, '维生素C片（）', NULL, '维生素类', '1020007', '6910942381270', 2.70, NULL, NULL, '瓶', '0.1g*100\'S', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020774', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (824, 1, '格华止片（盐酸二甲双胍片）', NULL, '双呱类胰岛素增敏剂', '1020008', '6902182393106', 33.00, NULL, NULL, '盒', '0.85g*20\'S', '中美上海施贵宝制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20023371', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (825, 1, '万通筋骨片', NULL, '风湿用药', '1020009', '6903281000353', 19.50, NULL, NULL, '盒', '0.28*36\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025183', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (826, 1, '维生素B6片（）（基）', NULL, '维生素类', '102001', '69028151', 4.00, NULL, NULL, '瓶', '10mg*100\'S(1*15)', '广东恒健制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020622', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (827, 1, '力加寿片', NULL, '补肝健脾益肾用药', '1020010', NULL, 43.00, NULL, NULL, '瓶', '0.34g*48\'S', '广州白云山光华制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020199', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (828, 1, '曲克芦丁片', NULL, '（微血管）止血用药', '1020011', NULL, 5.50, NULL, NULL, '瓶', '60mg*100\'S', '亚宝药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14022940', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (829, 1, '法莫替丁片（）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020012', '6926953810029', 6.50, NULL, NULL, '盒', '20mg*24\'S(1*10)', '广东彼迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021617', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (830, 1, '康乃馨(抗宫炎片)', NULL, '消炎利湿止带用药', '1020013', '6924436000240', 36.80, NULL, NULL, '盒', '0.32g*120\'S', '江西海尔思药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20023099', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (831, 1, '沐舒坦片（盐酸氨溴索片）（基）', NULL, '祛痰止咳平喘西药', '1020014', '6939901400029', 49.50, NULL, NULL, '盒', '30mg*20\'S(1*12)', '上海勃林格殷格翰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030360', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (832, 1, '护肝片（基）', NULL, '肝类用药', '1020015', '6922867752028', 26.50, NULL, NULL, '瓶', '0.35g*120\'S 糖衣', '黑龙江葵花药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003336', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (833, 1, '马来酸依那普利片（彼压洛）（基）', NULL, '高血压用药', '1020016', '6926953810128', 8.00, NULL, NULL, '盒', '10mg*20\'S（1*10）', '广东彼迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024933', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (834, 1, '阿德福韦酯片（丁贺）', NULL, '肝类用药', '1020017', '6937861350224', 86.00, NULL, NULL, '瓶', '10mg*14\'S', '辰欣药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080034', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (835, 1, '多索茶碱片（安赛玛）', NULL, '支气管扩张用药', '1020018', '6920781912160', 21.00, NULL, NULL, '盒', '0.2g*12\'S', '黑龙江福和华星制药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19991048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (836, 1, '地巴唑片', NULL, '高血压用药', '1020019', NULL, 2.80, NULL, NULL, '瓶', '10mg*100\'s', '世贸天阶制药（江苏）有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32024134', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (837, 1, '维生素B2片（基）', NULL, '维生素类', '102002', NULL, 2.20, NULL, NULL, '瓶', '5mg*100\'S', '北京中新制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H11020354', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (838, 1, '喉痛灵片', NULL, '清热解毒用药', '1020020', '6921317400601', 2.90, NULL, NULL, '盒', '36\'S 糖衣', '广东省惠州市中药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021876', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (839, 1, '盐酸异丙嗪片（基）', NULL, '抗过敏用药', '1020021', '6923970500032', 5.50, NULL, NULL, '瓶', '12.5mg*100\'S', '常州康普药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32025989', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (840, 1, '厄贝沙坦分散片', NULL, '高血压用药', '1020022', '6920855012079', 27.00, NULL, NULL, '盒', '75mg*20\'S(1*10)', '石家庄以岭药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060794', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (841, 1, '盐酸吡格列酮分散片（万苏敏）', NULL, '噻唑烷二酮类胰岛素增敏剂', '1020023', '6939863707099', 52.50, NULL, NULL, '瓶', '15mg*30\'S（1*10）', '江苏万邦生化医药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060178', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (842, 1, '步长盐酸特比萘芬片（）', NULL, '抗真菌类', '1020024', '6932453000051', 38.00, NULL, NULL, '盒', '0.125g*6\'S（1*10）', '保定天浩制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19980206', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (843, 1, '感冒清片', NULL, '风热感冒用药', '1020025', '6903281000285', 9.00, NULL, NULL, '盒', '30\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020949', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (844, 1, '先奎莎（加替沙星片）', NULL, '奎诺酮类', '1020026', '6922321788983', 16.50, NULL, NULL, '盒', '0.2g*8\'S', '四川百利药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050795', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (845, 1, '潘生丁片（双嘧达莫）（基）', NULL, '心脏病用药', '1020027', '6916107517188', 9.90, NULL, NULL, '瓶', '25mg*100\'S', '亚宝药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14020968', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (846, 1, '排毒养颜片', NULL, '润肠通便用药', '1020028', '6920085820642', 39.50, NULL, NULL, '盒', '0.46g*30\'S', '云南盘龙云海药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090905', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (847, 1, '珍菊降压片', NULL, '高血压用药', '1020029', '6901804081223', 9.50, NULL, NULL, '瓶', '90\'S', '浙江得恩德制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20053674', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (848, 1, '复合维生素片（维生素什片）（）', NULL, '维生素类', '102003', '69028083', 6.50, NULL, NULL, '瓶', '100\'S(1*10)', '广东恒健制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021164', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (849, 1, '雷贝拉唑钠肠溶片（波利特）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020030', NULL, 118.00, NULL, NULL, '盒', '10mg*7\'S', '卫材（中国）药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090091', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (850, 1, '瑞彤（盐酸吡格列酮片）', NULL, '酶抑制剂', '1020031', '6945898600380', 35.00, NULL, NULL, '盒', '30mg*7\'S(1*10)', '江苏德源药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20110048', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (851, 1, '伊迈格（托拉塞米片）（）', NULL, '利尿药', '1020032', NULL, 21.00, NULL, NULL, '盒', '5mg*14\'S', '湖北百科亨迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040075', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (852, 1, '万艾可（枸椽酸西地那非片）', NULL, '性功能用药', '1020033', NULL, 495.00, NULL, NULL, '盒', '100mg*5\'S', '辉瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20020528', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (853, 1, '益适纯（依折麦布片）', NULL, '调节血脂用药', '1020034', NULL, 48.00, NULL, NULL, '盒', '10mg*5\'S', '新加坡MSDInternationalGmbH', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20160181', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (854, 1, '富马酸酮替芬片', NULL, '抗过敏用药', '1020035', '6930237432067', 3.00, NULL, NULL, '瓶', '1.38mg*60\'S（1*10）', '杭州苏泊尔南洋药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H33020917', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (855, 1, '暖胃舒乐片', NULL, '调和肝脾胃用药', '1020036', '6907911100444', 15.00, NULL, NULL, '盒', '45\'S', '昆明中药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020764', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (856, 1, '复方感冒灵片', NULL, '风热感冒用药', '1020037', '6927749302117', 9.50, NULL, NULL, '盒', '12\'s*2板', '南京同仁堂（赣州）九连山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021110', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (857, 1, '得舒特片（匹维溴铵片）', NULL, '其它类', '1020038', NULL, 36.00, NULL, NULL, '盒', '50mg*15\'S', '法国苏威制药', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20160396', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (858, 1, '消咳喘片', NULL, '祛痰止咳平喘中药', '1020039', '6900572061253', 19.00, NULL, NULL, '盒', '0.31g*48\'S(薄膜衣)', '哈药集团制药六厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021362', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (859, 1, '安立泽（沙格列汀片）', NULL, '酶抑制剂', '102004', '6902182395100', 67.00, NULL, NULL, '盒', '5mg*7\'S', '阿斯利康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20160069', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (860, 1, '金果饮咽喉片', NULL, '清咽润喉类', '1020040', '6933515400499', 12.00, NULL, NULL, '盒', '12\'S', '山东绿因药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043264', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (861, 1, '呋塞米片（速尿片）（）（基）', NULL, '利尿药', '1020042', '6953460832428', 9.80, NULL, NULL, '瓶', '20mg*100\'S', '三才石歧制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023242', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (862, 1, '钙尔奇D（碳酸钙D3咀嚼片（II））', NULL, '补钙、补锌', '1020043', '6921361255356', 31.50, NULL, NULL, '瓶', '300mg*60\'S', '惠氏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10950030', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (863, 1, '苯磺酸氨氯地平片（彼洛平）（基）', NULL, '高血压用药', '1020045', '6926953810319', 9.00, NULL, NULL, '盒', '5mg*14\'S', '广东彼迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20057316', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (864, 1, '兰美抒（盐酸特比萘芬片）', NULL, '抗真菌类', '1020046', NULL, 117.00, NULL, NULL, '盒', '0.25g*7\'S', '北京诺华制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20000251', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (865, 1, '健民咽喉片', NULL, '清热利咽用药', '1020047', '6920343431382', 19.50, NULL, NULL, '盒', '0.292g*24\'S', '健民药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z42021799', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (866, 1, '颈痛片（薄膜衣）', NULL, '骨质增生用药', '1020048', '6921665140013', 15.00, NULL, NULL, '盒', '0.67g*24\'S', '山东明仁福瑞达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050294', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (867, 1, '降脂减肥片', NULL, '其它类', '1020049', '6920343430880', 278.00, NULL, NULL, '盒', '0.57g*60\'S*3瓶', '健民药业集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20043068', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (868, 1, '维生素B12片', NULL, '维生素类', '102005', NULL, 1.50, NULL, NULL, '瓶', '25mg*100\'S', '山西亨瑞达制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14022815', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (869, 1, '圣通平（硝苯地平缓释片）（基）', NULL, '高血压用药', '1020050', '6927632203217', 15.00, NULL, NULL, '盒', '10mg*45\'S', '国药集团广东环球制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44024160', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (870, 1, '银杏叶片（基）', NULL, '活血及抗凝用药', '1020051', '6937999602370', 15.50, NULL, NULL, '盒', '36\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20033245', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (871, 1, '单硝酸异山梨酯片（欣康）', NULL, '心脏病用药', '1020052', NULL, 49.00, NULL, NULL, '盒', '20mg*48\'S', '鲁南贝特制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10940039', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (872, 1, '珮夫人铝碳酸镁咀嚼片', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020053', '6938033200071', 22.00, NULL, NULL, '盒', '0.5g*30\'S', '江苏万高药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20067319', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (873, 1, '大黄什片（大黄碳酸氢钠片）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020054', NULL, 5.00, NULL, NULL, '瓶', '1000\'S', '四川德元药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51021045', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (874, 1, '格列美脲片（基）', NULL, '磺脲类', '1020055', '6907354937393', 21.00, NULL, NULL, '盒', '2mg*14\'S', '上海天赐福生物工程有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010565', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (875, 1, '格列齐特缓释片', NULL, '磺脲类', '1020056', '6941155710427', 33.00, NULL, NULL, '盒', '30mg*40\'S', '天津中新药业集团股份有限公司新新制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20065582', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (876, 1, '蚝贝钙咀嚼片', NULL, '补钙、补锌', '1020057', '6920050900669', 29.00, NULL, NULL, '瓶', '300mg*62\'S', '葵花药业集团', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020203', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (877, 1, '安胃片', NULL, '调和肝脾胃用药', '1020058', '6928684100301', 18.00, NULL, NULL, '瓶', '0.5g*100\'S', '葵花药业集团', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23022099', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (878, 1, '铋镁碳酸氢钠片（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020059', '6900191393940', 29.00, NULL, NULL, '盒', '30\'S', '昆明积大制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H53021731', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (879, 1, '法莫替丁片（薄膜衣）（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020060', '6937999600604', 8.50, NULL, NULL, '盒', '24\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20045495', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (880, 1, '多潘立酮分散片', NULL, '促进胃动力、助消化用药', '1020061', '6937999601434', 9.50, NULL, NULL, '盒', '12\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20031268', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (881, 1, '维银翘片', NULL, '风热感冒用药', '1020062', '6935128600105', 3.80, NULL, NULL, '盒', '24\'S', '广西鸿博药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z45020630', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (882, 1, '双黄消炎片', NULL, '清热解毒用药', '1020063', '6903281003026', 14.00, NULL, NULL, '盒', '36\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22020952', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (883, 1, '化痰平喘片', NULL, '祛痰止咳平喘中药', '1020064', '6903281003040', 16.00, NULL, NULL, '盒', '36\'S', '通化万通药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22021270', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (884, 1, '复方延胡索氢氧化铝片', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020065', '6922508425014', 23.00, NULL, NULL, '盒', '0.5g*24\'S', '通化兴华药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22025462', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (885, 1, '健胃消食片（儿童）（仁和中方）', NULL, '促进胃动力、助消化用药', '1020066', '6924080901023', 10.00, NULL, NULL, '盒', '0.5g*30\'S', '河南蓝天药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z41020253', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (886, 1, '阿咖片（仁和中方）', NULL, '解热镇痛用药', '1020067', '6903919184448', 15.00, NULL, NULL, '盒', '24\'S', '江西制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H36021870', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (887, 1, '湿毒清片', NULL, '皮肤瘙痒用药', '1020068', '6933890700344', 18.00, NULL, NULL, '盒', '0.5g*36\'S', '广州诺金制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050218', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (888, 1, '百合固金片', NULL, '祛痰止咳平喘中药', '1020069', '6933890700146', 15.00, NULL, NULL, '盒', '0.4g*30\'S', '广州诺金制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050219', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (889, 1, '双氢克尿塞片（氢氯噻嗪片）（基）', NULL, '利尿药', '102007', '6953460832350', 2.20, NULL, NULL, '瓶', '25mg*100\'S', '三才石歧制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023235', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (890, 1, '连蒲双清片', NULL, '清热燥湿止痛用药', '1020070', NULL, 5.50, NULL, NULL, '瓶', '0.25g*100\'S(薄膜衣)', '河南中杰药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073082', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (891, 1, '盐酸氨溴索分散片（仁和中方）（基）', NULL, '祛痰止咳平喘西药', '1020071', '6923776707055', 19.80, NULL, NULL, '盒', '30mg*20\'S', '烟台东诚大洋制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20100188', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (892, 1, '银杏叶分散片（仁和中方）（基）', NULL, '活血及抗凝用药', '1020072', '6927764908240', 45.00, NULL, NULL, '盒', '0.4g*30\'S', '湖南华纳大药厂股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20050569', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (893, 1, '杜仲平压片', NULL, '高血压用药', '1020073', '6923935900082', 19.50, NULL, NULL, '瓶', '36\'S', '贵州天安药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20003266', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (894, 1, '百赛诺（双环醇片）', NULL, '肝类用药', '1020074', NULL, 82.00, NULL, NULL, '盒', '25mg*18\'S', '北京协和药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040467', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (895, 1, '灯盏花素分散片', NULL, '活血及抗凝用药', '1020075', '6938618610530', 35.50, NULL, NULL, '盒', '0.137g*24\'S', '漯河南街村全威制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20090066', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (896, 1, '盐酸阿米替林片（）（基）', NULL, '抗抑郁药', '1020076', NULL, 23.00, NULL, NULL, '瓶', '25mg*100\'S', '常州四药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32023764', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (897, 1, '安理申（盐酸多奈哌齐片）', NULL, '神经系统用药', '1020077', NULL, 156.00, NULL, NULL, '盒', '5mg*7\'S', '卫材(中国)药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050978', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (898, 1, '葛根芩连片', NULL, '止吐、止泻用药', '1020078', '6932067402203', 22.00, NULL, NULL, '盒', '24\'S', '吉林万通药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22026018', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (899, 1, '乐喜林（尼麦角林片）', NULL, '改善脑功能（促智）与记忆障碍用药', '1020079', NULL, 40.00, NULL, NULL, '盒', '10mg*24\'S', '昆山龙灯瑞迪制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20031073', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (900, 1, '他巴唑片（甲巯咪唑片）（基）', NULL, '甲状腺激素药及抗甲状腺药', '102008', NULL, 16.00, NULL, NULL, '瓶', '5mg*100\'S', '北京市燕京药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H11020440', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (901, 1, '羟基脲片（基）', NULL, '肿瘤、癌症用药', '1020080', NULL, 55.00, NULL, NULL, '瓶', '0.5g*100\'S', '北京嘉林药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20013389', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (902, 1, '地屈孕酮片（达芙通）', NULL, '其它类', '1020081', NULL, 128.00, NULL, NULL, '盒', '10mg*20\'S', 'AbbottHealthcareProductsBV', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20170221', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (903, 1, '苯磺酸氨氯地平片（仁和中方）（基）', NULL, '高血压用药', '1020082', '6903919184455', 25.00, NULL, NULL, '盒', '5mg*21\'S', '江西制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20083949', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (904, 1, '利巴韦林片（基）', NULL, '抗病毒类', '1020083', '6937999600512', 9.80, NULL, NULL, '盒', '0.1g*24\'S', '江西汇仁药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20033538', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (905, 1, '氟康唑分散片', NULL, '抗真菌类', '1020084', '6940540400462', 39.50, NULL, NULL, '盒', '0.1g*6\'S', '南昌弘益药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066939', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (906, 1, '曲匹布通片', NULL, '胆类用药', '1020085', NULL, 0.00, NULL, NULL, '瓶', '40mg*50\'S', '江苏四环生物股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32025540', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (907, 1, '盐酸哌唑嗪片（基）', NULL, '高血压用药', '1020086', NULL, 25.50, NULL, NULL, '盒', '1mg*100\'S', '上海上药信谊药厂有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H31021539', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (908, 1, '地红霉素肠溶片（乐夫泰）（基）', NULL, '大环内酯类', '1020087', '6924924321031', 19.50, NULL, NULL, '盒', '0.25g*4\'s', '湖北舒邦药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090281', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (909, 1, '天麻素片（天眩清）', NULL, '神经系统用药', '1020088', NULL, 13.00, NULL, NULL, '瓶', '25mg*100\'S', '昆药集团股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20013043', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (910, 1, '复方冬凌草含片', NULL, '清热利咽用药', '1020089', '6927752322911', 13.50, NULL, NULL, '盒', '0.6g*48\'S', '河南省济源市济世药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字B20020070', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (911, 1, '复方川贝精片（）', NULL, '祛痰止咳平喘中药', '102009', '6927771401130', 2.30, NULL, NULL, '瓶', '24\'S', '广州市花城制药厂', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020127', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (912, 1, '枸地氯雷他定片（贝雪）', NULL, '抗过敏用药', '1020090', NULL, 85.00, NULL, NULL, '盒', '8.8mg*6\'S', '扬子江药业集团广州海瑞药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20090138', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (913, 1, '复方丹参片（基）', NULL, '活血及抗凝用药', '1020091', '6933743793684', 19.50, NULL, NULL, '瓶', '200\'S', '广东南国药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20073184', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (914, 1, '感冒清片', NULL, '风热感冒用药', '1020092', '6933743791574', 2.80, NULL, NULL, '盒', '24\'S', '广东南国药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023356', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (915, 1, '咳特灵片', NULL, '祛痰止咳平喘西药', '1020093', '6933743791550', 4.80, NULL, NULL, '盒', '24\'S', '广东南国药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20093183', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (916, 1, '复方感冒灵片', NULL, '风热感冒用药', '1020094', '6933743793820', 2.70, NULL, NULL, '盒', '24\'S（1*10）', '广东南国药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021280', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (917, 1, '格列美脲片（万苏平)（基）', NULL, '磺脲类', '1020095', '6939863707044', 19.80, NULL, NULL, '盒', '1mg*24\'S', '江苏万邦生化医药集团有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20031079', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (918, 1, '格列齐特缓释片（仁和中方）', NULL, '磺脲类', '1020096', '6903919184424', 32.00, NULL, NULL, '盒', '30mg*36\'S', '江西制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20065489', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (919, 1, '五酯片', NULL, '肝类用药', '1020098', NULL, 39.00, NULL, NULL, '盒', '0.31g：7.5mg*45\'S', '广西方略药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025766', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (920, 1, '捷诺维（磷酸西格列汀片）', NULL, '酶抑制剂', '1020100', NULL, 126.00, NULL, NULL, '盒', '100mg*14\'S', 'MercKSharp', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H20090834', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (921, 1, '咳必清片（枸椽酸喷托维林片）（基）', NULL, '祛痰止咳平喘西药', '1020101', NULL, 8.00, NULL, NULL, '瓶', '25mg*100\'S*15', '辅仁药业集团开封制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H41022443', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (922, 1, '腹可安片', NULL, '清热燥湿止痛用药', '1020102', '6920594302400', 2.50, NULL, NULL, '盒', '24\'S 糖衣', '广东一力罗定制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020716', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (923, 1, '黄芩片', NULL, '清热解毒用药', '1020103', '6931314721401', 5.00, NULL, NULL, '瓶', '60\'S', '广东在田药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020623', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (924, 1, '苯磺酸氨氯地平片（压氏达）（基）', NULL, '高血压用药', '1020104', '6950435000011', 12.80, NULL, NULL, '盒', '5mg*7\'S', '华润赛科药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010700', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (925, 1, '复方牛胎肝提取物片', NULL, '肝类用药', '1020105', NULL, 75.00, NULL, NULL, '瓶', '40mg*36\'S', '北京第一生物化学药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H11022251', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (926, 1, '阿仑膦酸钠片（固邦）', NULL, '骨质疏松用药', '1020106', '6916119030484', 26.00, NULL, NULL, '盒', '10mg*6\'S', '石药集团欧意药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10980109', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (927, 1, '千柏鼻炎片YYJ', NULL, '鼻腔用药', '1020107', '6901301337281', 13.50, NULL, NULL, '盒', '36\'S', '广州白云山奇星药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020750', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (928, 1, '硝呋太尔片', NULL, '硝基呋喃类', '1020108', NULL, 33.00, NULL, NULL, '盒', '0.2g*14\'S', '南京厚生药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20057301', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (929, 1, '宜利治（醋酸甲地孕酮分散片）', NULL, '肿瘤、癌症用药', '1020109', NULL, 305.00, NULL, NULL, '盒', '160mg*30\'S', '青岛国海生物制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20010074', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (930, 1, '氨茶碱片（基）', NULL, '祛痰止咳平喘西药', '102011', NULL, 5.90, NULL, NULL, '瓶', '0.1g*100\'S', '山西太原药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14020283', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (931, 1, '来士普（草酸艾司西酞普兰片）', NULL, '抗抑郁药', '1020110', NULL, 113.00, NULL, NULL, '盒', '10mg*7\'S', '西安杨森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20150119', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (932, 1, '尼可地尔片', NULL, '心脏病用药', '1020111', NULL, 43.50, NULL, NULL, '盒', '5mg*30\'S', '西安汉丰药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', 'H61022860', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (933, 1, '奥可安（甲硝唑口颊片）', NULL, '口腔用药', '1020112', '6901592452281', 20.00, NULL, NULL, '盒', '3mg*20\'S', '远大医药(中国)有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20066651', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (934, 1, '盐酸贝那普利片', NULL, '高血压用药', '1020113', NULL, 28.00, NULL, NULL, '盒', '10mg*14\'S', '上海新亚药业闵行有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20044840', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (935, 1, '复方丙谷胺西咪替丁片', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020114', '6905227005439', 31.00, NULL, NULL, '盒', '24\'S', '东北制药集团沈阳第一制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H21024156', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (936, 1, '京制牛黄解毒片（基）', NULL, '清热解毒用药', '1020115', '6938706209110', 25.00, NULL, NULL, '盒', '8\'S*10瓶', '北京同仁堂科技发展股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z11020472', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (937, 1, '京制牛黄解毒片', NULL, '清热解毒用药', '1020115-1', '6938706209110', 2.50, NULL, NULL, '盒', '8\'S*10瓶', '北京同仁堂科技发展股份', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z11020472', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (938, 1, '鼻康片', NULL, '鼻腔用药', '1020116', NULL, 29.00, NULL, NULL, '盒', '0.35g*45\'S', '贵州安康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027541', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (939, 1, '鼻舒适片', NULL, '鼻腔用药', '1020117', '6933517600064', 13.00, NULL, NULL, '盒', '48\'S', '广东国医堂制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023271', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (940, 1, '骨仙片', NULL, '骨质增生用药', '1020118', '6938200750422', 12.00, NULL, NULL, '瓶', '72\'S', '广州白云山和记黄埔中药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022112', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (941, 1, '补脑安神片（仁和中方）', NULL, '安神助眠用药', '1020119', '6930948101139', 18.00, NULL, NULL, '盒', '36\'S', '武汉长江巨龙药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z42021747', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (942, 1, '野木瓜片', NULL, '风湿用药', '102012', NULL, 6.20, NULL, NULL, '瓶', '100\'S(1*6)', '贵港市冠峰制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063830', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (943, 1, '氨咖黄敏片（仁和中方）', NULL, '西药感冒药', '1020120', '6903919184318', 12.50, NULL, NULL, '盒', '24\'S', '江西制药有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H36021871', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (944, 1, '清火栀麦片（仁和中方）', NULL, '清热解毒用药', '1020121', '6937800702886', 12.00, NULL, NULL, '盒', '24\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021804', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (945, 1, '精制银翘解毒片（仁和中方）（基）', NULL, '风热感冒用药', '1020122', '6937800702350', 12.00, NULL, NULL, '盒', '24\'S', '江西药都樟树制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z36021788', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (946, 1, '金羚感冒片（仁和中方）', NULL, '风热感冒用药', '1020123', '6924525807255', 16.00, NULL, NULL, '盒', '18\'S', '山东润华药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z37021121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (947, 1, '尔同舒（苯溴马隆片）', NULL, '调节尿酸用药', '1020124', '6933346880026', 28.00, NULL, NULL, '盒', '50mg*10\'S', '宜昌长江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20040348', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (948, 1, '缬沙坦分散片（易达乐）', NULL, '高血压用药', '1020125', '6926423192549', 17.50, NULL, NULL, '盒', '80mg*10\'S', '海南皇隆制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050508', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (949, 1, '曲坦（舍雷肽酶肠溶片）', NULL, '其它类', '1020126', NULL, 20.00, NULL, NULL, '盒', '5mg*28\'S', '苏州中化药品工业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070182', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (950, 1, '活络消痛片', NULL, '风湿用药', '1020127', '6924577830645', 25.50, NULL, NULL, '盒', '0.35g*48\'S', '葵花药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z23021007', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (951, 1, '硫酸亚铁片（基）', NULL, '补铁', '1020128', NULL, 3.50, NULL, NULL, '瓶', '0.3g*100\'S', '济南永宁制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H37020689', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (952, 1, '盐酸环丙沙星片（基）', NULL, '奎诺酮类', '1020129', '6933346880651', 8.00, NULL, NULL, '盒', '0.25g*20\'S', '宜昌长江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20058144', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (953, 1, '妇炎康片', NULL, '消炎利湿止带用药', '102013', '6938562105014', 7.30, NULL, NULL, '瓶', '0.25g*100\'S', '广东德鑫制药有限公司(原珠海)', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44023648', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (954, 1, '归龙筋骨宁片', NULL, '风湿用药', '1020130', '6933276568254', 24.50, NULL, NULL, '盒', '24\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026142', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (955, 1, '麻杏止咳片', NULL, '祛痰止咳平喘中药', '1020131', '6933276568599', 12.00, NULL, NULL, '盒', '24\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20027232', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (956, 1, '复方桔梗止咳片', NULL, '祛痰止咳平喘中药', '1020132', '6933276568780', 15.50, NULL, NULL, '盒', '0.25g*36\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22022525', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (957, 1, '复方颠茄氢氧化铝片（基）', NULL, '抗炎抗溃疡（抑制胃酸）用药', '1020133', '6933276568391', 12.50, NULL, NULL, '盒', '18\'S', '吉林一正药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H22024192', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (958, 1, '齐墩果酸片', NULL, '肝类用药', '1020134', NULL, 4.00, NULL, NULL, '瓶', '20mg*100\'S', '山西云鹏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H14023932', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (959, 1, '阿莫西林分散片（基）', NULL, '青霉素类', '1020135', '6911641002244', 8.00, NULL, NULL, '盒', '0.125g*12\'S', '西南药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20054506', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (960, 1, '通窍鼻炎片', NULL, '鼻腔用药', '1020136', '6928768920214', 15.80, NULL, NULL, '盒', '60\'S', '云南金柯制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20064329', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (961, 1, '替米沙坦片（贝士克）', NULL, '高血压用药', '1020137', '6943750066664', 19.80, NULL, NULL, '盒', '40mg*14\'S', '郑州复升药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070121', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (962, 1, '复方鱼腥草片', NULL, '清热解毒用药', '1020138', '6921166581162', 9.80, NULL, NULL, '盒', '36\'S', '广东九连山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022981', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (963, 1, '防芷鼻炎片', NULL, '鼻腔用药', '1020139', '6921166581483', 16.50, NULL, NULL, '盒', '48\'S', '广东九连山药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44021571', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (964, 1, '鼻咽灵片(薄膜衣片)　', NULL, '鼻腔用药', '102014', '6901591130128', 13.20, NULL, NULL, '瓶', '0.39g*45\'S', '广州白云山中一药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020991', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (965, 1, '叶酸片（基）', NULL, '补充叶酸', '1020140', '6927830890066', 9.00, NULL, NULL, '盒', '0.4mg*31\'S', '福建明华药业', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19993229', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (966, 1, '甲钴胺分散片（卓和）', NULL, '神经系统用药', '1020141', '6956859100085', 46.50, NULL, NULL, '盒', '0.5mg*36\'S', '江苏四环生物股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080290', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (967, 1, '决明降脂片', NULL, '调节血脂用药', '1020142', '6953036111285', 22.00, NULL, NULL, '盒', '50\'S', '宁夏紫荆花制药有限公司(陕西东泰)', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063304', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (968, 1, '三七总甙片（血塞通片）', NULL, '活血及抗凝用药', '1020143', '6915760218883', 7.50, NULL, NULL, '盒', '25mg*20\'S', '云南特安呐制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z53020181', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (969, 1, '五酯片', NULL, '肝类用药', '1020144', '6927693100111', 27.50, NULL, NULL, '盒', '0.31g：7.5mg*30\'S', '广西方略药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20025766', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (970, 1, '罗红霉素分散片（仁和中方）（基）', NULL, '大环内酯类', '1020145', '6934403200719', 11.00, NULL, NULL, '盒', '6\'S', '海南海神同洲制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20093868', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (971, 1, '坎地沙坦酯分散片（奥必欣）', NULL, '高血压用药', '1020146', '6923293798529', 33.00, NULL, NULL, '盒', '4mg*14\'S', '昆明源瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20060174', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (972, 1, '硝呋太尔片', NULL, '硝基呋喃类', '1020147', '6922175988041', 48.00, NULL, NULL, '盒', '0.2g*20\'S', '南京厚生药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20057301', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (973, 1, '希舒美（阿奇霉素片）（基）', NULL, '大环内酯类', '1020148', NULL, 45.50, NULL, NULL, '盒', '0.25g*4\'S', '辉瑞制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10960167', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (974, 1, '水飞蓟宾葡甲胺片', NULL, '肝类用药', '1020149', '6931675701005', 43.00, NULL, NULL, '盒', '60\'S', '江苏中兴药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H32026145', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (975, 1, '瑞舒伐他汀钙片（托妥）', NULL, '调节血脂用药', '1020151', '6940194211056', 29.50, NULL, NULL, '盒', '10mg*7\'S', '南京正大天晴制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20080670', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (976, 1, '胆香鼻炎片', NULL, '鼻腔用药', '1020152', '6932067402098', 16.00, NULL, NULL, '盒', '24\'S', '吉林万通药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025160', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (977, 1, '妇科调经片', NULL, '活血调经止痛用药', '1020153', '6932067402227', 22.00, NULL, NULL, '盒', '48\'S', '吉林万通药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025195', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (978, 1, '抗骨增生片', NULL, '骨质增生用药', '1020154', '6932067401473', 18.00, NULL, NULL, '盒', '24\'S', '吉林万通药业集团梅河药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22025196', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (979, 1, '欧美宁（替米沙坦片）', NULL, '高血压用药', '1020156', '69333468800279', 46.00, NULL, NULL, '盒', '80mg*14\'S', '宜昌长江药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050934', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (980, 1, '果导片(酚酞含片)（基）', NULL, '润肠通便用药', '1020157', NULL, 8.80, NULL, NULL, '瓶', '0.1g*100\'S', '福州海王福药制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H35021566', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (981, 1, '甘露聚糖肽片', NULL, '调节免疫用药', '1020158', NULL, 19.00, NULL, NULL, '盒', '5mg*48\'S', '成都利尔药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20003316', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (982, 1, '小儿善存片', NULL, '维生素类', '1020159', '6921361281072', 26.50, NULL, NULL, '盒', '30\'S', '惠氏制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H10950027', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (983, 1, '优降糖片（格列本脲）（）（基）', NULL, '磺脲类', '102016', '6953460835108', 3.20, NULL, NULL, '瓶', '2.5mg*100\'S', '三才石歧制药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44021808', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (984, 1, '盐酸左氧氟沙星片（基）', NULL, '奎诺酮类', '1020160', '6926285814528', 7.50, NULL, NULL, '盒', '0.1g*12\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20067602', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (985, 1, '胆宁片', NULL, '胆类用药', '1020162', '6928986830241', 32.50, NULL, NULL, '盒', '0.36g*100\'S', '上海和黄药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10910040', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (986, 1, '维生素片', NULL, '维生素类', '1020163', '6910942381393', 4.20, NULL, NULL, '瓶', '10mg*100\'S', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44023349', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (987, 1, '彼妥（盐酸左氧氟沙星片）（基）', NULL, '奎诺酮类', '1020164', '6926953810098', 7.50, NULL, NULL, '瓶', '0.1g*10\'S', '广东彼迪药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H19990053', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (988, 1, '刺五加片', NULL, '其它类', '1020165', '6924517020068', 5.80, NULL, NULL, '瓶', '0.25g*100\'S', '通化爱心药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z22023404', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (989, 1, '裸花紫珠胶囊', NULL, '肝类用药', '1020166', '6918440050537', 33.00, NULL, NULL, '盒', '0.4g*36\'S', '江西杏林白马制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20063569', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (990, 1, '盐酸依匹斯汀片（亦殊）', NULL, '抗过敏用药', '1020167', '6941077700117', 32.00, NULL, NULL, '盒', '10mg*8\'S', '北京朗依制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20055057', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (991, 1, '爱芬（醋氯芬酸肠溶片）', NULL, '风湿用药', '1020168', NULL, 15.00, NULL, NULL, '盒', '50mg*16\'S', '江苏吉贝尔药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20050272', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (992, 1, '优思明（屈螺酮炔雌醇片）', NULL, '性激素及促性激素', '1020169', NULL, 125.00, NULL, NULL, '盒', '3mg:0.03mg*21\'S', '拜耳医药保健有限公司广州分公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字J20130120', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (993, 1, '复方鱼腥草片（）', NULL, '清热解毒用药', '102017', NULL, 3.90, NULL, NULL, '瓶', '100\'S', '广州巨虹药业有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44020759', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (994, 1, '丙硫氧嘧啶片（基）', NULL, '甲状腺激素药及抗甲状腺药', '1020170', '6910942381799', 13.50, NULL, NULL, '瓶', '50mg*100\'S', '广东华南药业集团有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H44020743', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (995, 1, '止咳宝片', NULL, '祛痰止咳平喘中药', '1020171', '6921793019649', 24.00, NULL, NULL, '盒', '350mg*24\'S', '特一药业集团股份有限公司（原广东台城有限公司）', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z10900030', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (996, 1, '甘桔冰梅片', NULL, '清热利咽用药', '1020172', NULL, 25.00, NULL, NULL, '盒', '0.2g*24\'S', '重庆华森制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20026258', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (997, 1, '异烟肼片', NULL, '抗结核类', '1020173', '6934859401067', 19.50, NULL, NULL, '瓶', '0.1g*100\'s', '成都锦华药业有限责任公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H51020788', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (998, 1, '橘红枇杷片（基）', NULL, '祛痰止咳平喘中药', '1020174', '6926285817123', 12.00, NULL, NULL, '盒', '24\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z20044605', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (999, 1, '天麻片(糖衣）', NULL, '风湿用药', '1020175', '6926285811886', 11.00, NULL, NULL, '盒', '36\'S', '广东罗浮山国药股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字Z44022334', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (1000, 1, '依姆多（单硝酸异山梨酯缓释片）', NULL, '心脏病用药', '1020176', '6923878310153', 23.00, NULL, NULL, '盒', '60mg*7\'S', '阿斯利康制药有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20030418', NULL, 1);
INSERT INTO `dsos_vot_drugrecord` VALUES (1001, 1, '氯沙坦钾片', NULL, '高血压用药', '1020177', NULL, 63.50, NULL, NULL, '盒', '50mg*14\'S', '浙江华海药业股份有限公司', '2019-01-01 00:00:00', '2018-12-31 00:00:00', '2020-01-01 00:00:00', '国药准字H20070264', NULL, 1);

-- ----------------------------
-- Table structure for dsos_vot_storerecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_vot_storerecord`;
CREATE TABLE `dsos_vot_storerecord`  (
  `storeId` int(10) NOT NULL,
  `linkedId` int(10) NOT NULL DEFAULT 0 COMMENT '所属连锁',
  `shopHolder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店负责人编号',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店地址',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `businessNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经营许可证',
  PRIMARY KEY (`storeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_vot_storerecord
-- ----------------------------
INSERT INTO `dsos_vot_storerecord` VALUES (1, 1, '竹根七', 'code001', '测试门店001', 'address001', '0734-999999', 'xkzh01');

-- ----------------------------
-- Procedure structure for login_admin
-- ----------------------------
DROP PROCEDURE IF EXISTS `login_admin`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_admin`(IN `account` varchar(19),IN `password` varchar(19))
BEGIN
	#管理员登录
	SELECT * from dsos_live_adminuser where adminAccount = account and `password` = `password`;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for login_chain
-- ----------------------------
DROP PROCEDURE IF EXISTS `login_chain`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_chain`(IN `account` varchar(19),IN `password` varchar(19))
BEGIN
	#连锁人员登录
	SELECT * from dsos_live_chainworkuser where chainAccount =account and `password` = `password`;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for login_member
-- ----------------------------
DROP PROCEDURE IF EXISTS `login_member`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login_member`(IN `account` varchar(19),IN `passwordz` varchar(19))
BEGIN
	#普通会员登录
	SELECT * from dsos_live_memberuser where cardNo = account and `password` = `passwordz`;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_add_member
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_add_member`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_add_member`(IN `name` varchar(19),IN `password` varchar(19),IN `mobilez` varchar(19),IN `sex` varchar(19))
BEGIN
	#member 注册
	DECLARE maxCardNo VARCHAR(19);
	set maxCardNo := (SELECT CONCAT('rsd',max(SUBSTRING(cardNo,4))+1)FROM dsos_live_memberuser);
	#select maxCardNo;
	
	if (SELECT count(*) from dsos_live_memberuser WHERE mobile = mobilez) = 0
	then
	
	INSERT into dsos_live_memberuser(cardNo,`password`,mobile)
					VALUES(maxCardNo,IF(`password`='','123456',`password`),mobilez);
					
	INSERT into dsos_live_memberinfo(cardNo,`name`,sex)
	        VALUES(maxCardNo,`name`,sex);
					
					SELECT maxCardNo;
	ELSE
				  SELECT '000';
	end if;
	
					

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_get_drugInList
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_get_drugInList`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_get_drugInList`(IN page integer,IN limitz integer,IN drugCodez VARCHAR(50),IN effectDatez VARCHAR(50),IN chainIdz VARCHAR(19),IN updownz VARCHAR(2))
BEGIN
DECLARE start integer;
set start = (page-1)*limitz;
set @sql = 'select * from dsos_vot_drugrecord where 1 = 1';

	#获取药品信息（最多一千条）

	if drugCodez <> '' then 
	  set @sql = CONCAT(@sql,' and drugCode= ',drugCodez);
	end if;
	
	if effectDatez <> '' then 
	  set @sql = CONCAT(@sql,' and effectDate <= ','''',effectDatez,'''');
	end if;
	
	if chainIdz <> '' then 
	  set @sql = CONCAT(@sql,' and chainId= ',chainIdz);
	end if;
	
	if updownz <> '' then 
	  set @sql = CONCAT(@sql,' and isAllowedTrade= ',updownz);
	end if;
	
	set @sql = CONCAT(@sql,' limit ',start,', ',limitz);
	
 	PREPARE distSQL FROM @SQL ;
     EXECUTE distSQL;
 	DEALLOCATE PREPARE distSQL ;

#select @sql;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_get_drugInListCount
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_get_drugInListCount`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_get_drugInListCount`(IN drugCodez VARCHAR(50),IN effectDatez VARCHAR(50),IN chainIdz VARCHAR(19),IN updownz VARCHAR(2))
BEGIN

set @sql = 'select count(*) from dsos_vot_drugrecord where 1 = 1';

	#获取药品信息（最多一千条）

	if drugCodez <> '' then 
	  set @sql = CONCAT(@sql,' and drugCode= ',drugCodez);
	end if;
	
	if effectDatez <> '' then 
	  set @sql = CONCAT(@sql,' and effectDate= ','''',effectDatez,'''');
	end if;
	
	if chainIdz <> '' then 
	  set @sql = CONCAT(@sql,' and chainId= ',chainIdz);
	end if;
	
	if updownz <> '' then 
	  set @sql = CONCAT(@sql,' and isAllowedTrade= ',updownz);
	end if;
	
 	PREPARE distSQL FROM @SQL ;
     EXECUTE distSQL;
 	DEALLOCATE PREPARE distSQL ;

#select @sql2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_get_drugOutList
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_get_drugOutList`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_get_drugOutList`(IN page integer,IN limitz integer)
BEGIN
DECLARE start integer;
set start = (page-1)*limitz;
	#获取药品信息（最多一千条）
	#select start,end;
	SELECT * from dsos_vot_drugrecord LIMIT start,limitz;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_get_memberInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_get_memberInfo`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_get_memberInfo`(IN `account` varchar(50))
BEGIN
	#Routine body goes here...
	SELECT a.`password`,b.*	from dsos_live_memberuser a left join dsos_live_memberinfo b
	on a.cardNo = b.cardNo
	where a.cardNo = account;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_get_role
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_get_role`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_get_role`(IN `roleNum` varchar(19))
BEGIN
	#以认证登录的账号进行角色查询；
	SELECT * from dsos_role where roleNo = roleNum;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pos_update_memberInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `pos_update_memberInfo`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pos_update_memberInfo`(IN `cardNoz` varchar(19),IN `mobilez` varchar(19),IN `emailz` varchar(19),IN `birthdayz` varchar(19),IN `oldPassword` varchar(19),IN `newPassword` varchar(19),IN `addressz` varchar(19),IN `sexz` varchar(19))
BEGIN
	#修改个人资料
	#Update dsos_live_memberinfo set ;
	if(select count(*) from dsos_live_memberuser where cardNo = `cardNoz` and `password` = oldPassword) > 0
	then
	
	update dsos_live_memberinfo set email = emailz , birthday = birthdayz ,address = addressz	, sex = sexz
	where cardNo = cardNoz;
	
	update dsos_live_memberuser set mobile = mobilez ,`password` = newPassword where cardNo = cardNo ;
	
-- 	else select '0' ;
	end if ;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
