/*
 Navicat Premium Data Transfer

 Source Server         : mysqlTest
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : dsos_zgq

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 21/01/2019 16:51:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dsos_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `dsos_adminuser`;
CREATE TABLE `dsos_adminuser`  (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `amdinAcount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `mobile` int(255) NULL DEFAULT NULL COMMENT '手机号',
  `idCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `homeAt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `birthday` datetime(6) NULL DEFAULT NULL COMMENT '生日',
  `imgRoot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像存放地址',
  `md5Passowrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'md5加密的密码',
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_adminuser
-- ----------------------------
INSERT INTO `dsos_adminuser` VALUES (1, '竹根七', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dsos_drugrecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_drugrecord`;
CREATE TABLE `dsos_drugrecord`  (
  `drugId` int(50) NOT NULL,
  `chainId` int(50) NOT NULL COMMENT '所属连锁',
  `drugName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `drugKind` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '西药' COMMENT '药品种类',
  `drugCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `barCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品内码',
  `unitPrice` double(10, 2) NULL DEFAULT 0.00 COMMENT '连锁的单价',
  `storePrice` double(10, 2) NULL DEFAULT NULL COMMENT '门店的单价',
  `costPrice` double(10, 2) NULL DEFAULT NULL COMMENT '进价',
  `spec` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进货厂商',
  `purchaseDate` datetime(0) NULL DEFAULT NULL COMMENT '进货日期',
  `produceDate` datetime(0) NULL DEFAULT NULL COMMENT '生产日期',
  `effectDate` datetime(0) NULL DEFAULT NULL COMMENT '保质日期',
  `explaination` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`drugId`, `chainId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dsos_member
-- ----------------------------
DROP TABLE IF EXISTS `dsos_member`;
CREATE TABLE `dsos_member`  (
  `cardId` int(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户，也是卡号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storeId` int(50) NULL DEFAULT 0 COMMENT '所属门店标识',
  `md5Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'MD5加密的密码',
  PRIMARY KEY (`cardId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_member
-- ----------------------------
INSERT INTO `dsos_member` VALUES (1, '123456', '123456', NULL, 0, NULL);

-- ----------------------------
-- Table structure for dsos_memberinfo
-- ----------------------------
DROP TABLE IF EXISTS `dsos_memberinfo`;
CREATE TABLE `dsos_memberinfo`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_memberinfo
-- ----------------------------
INSERT INTO `dsos_memberinfo` VALUES (1, '123456', 'zgq', '男', '1997-07-07 00:00:00', '0', '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_memberinfo` VALUES (2, '444', 'fgf', '男', '1999-09-09 00:00:00', '0', '0', 0, 100, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for dsos_storerecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_storerecord`;
CREATE TABLE `dsos_storerecord`  (
  `storeId` int(10) NOT NULL,
  `linkedId` int(10) NOT NULL DEFAULT 0 COMMENT '所属连锁',
  `shopHolder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店负责人编号',
  `code` int(50) NULL DEFAULT NULL COMMENT '门店编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店地址',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `businessNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经营许可证',
  PRIMARY KEY (`storeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
