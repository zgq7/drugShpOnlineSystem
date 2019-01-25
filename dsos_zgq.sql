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

 Date: 25/01/2019 18:46:27
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
INSERT INTO `dsos_live_adminuser` VALUES (1, 'lsr001', '竹根七', '男', 'admin', 'admin', '15988887777', 'idcard001', 'homeat001', '1997-07-07 00:00:00.000000', NULL, NULL);

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
INSERT INTO `dsos_live_chainworkuser` VALUES (1, 'lsr003', '01', 'chainWk', '男', '123456', '123456', 156348596, '1354562154', NULL, NULL, NULL, NULL, 1, '店员');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_memberinfo
-- ----------------------------
INSERT INTO `dsos_live_memberinfo` VALUES (1, '123456', 'zgq', '男', '1997-07-07 00:00:00', '0', '0', 0, 100, NULL, NULL, 0, 1);
INSERT INTO `dsos_live_memberinfo` VALUES (2, '444', 'fgf', '男', '1999-09-09 00:00:00', '0', '0', 0, 100, NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for dsos_live_memberuser
-- ----------------------------
DROP TABLE IF EXISTS `dsos_live_memberuser`;
CREATE TABLE `dsos_live_memberuser`  (
  `cardId` int(50) UNSIGNED NOT NULL AUTO_INCREMENT,
  `roleNo` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'lsr002' COMMENT '角色编号',
  `cardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账户，也是卡号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `storeId` int(50) NULL DEFAULT 0 COMMENT '所属门店标识',
  `md5Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'MD5加密的密码',
  PRIMARY KEY (`cardId`, `cardNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_live_memberuser
-- ----------------------------
INSERT INTO `dsos_live_memberuser` VALUES (1, 'lsr002', '123456', '123456', NULL, 0, NULL);

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
INSERT INTO `dsos_perms` VALUES (1, 'nsm001', 'addDrug', '/addDrug', '添加药品');
INSERT INTO `dsos_perms` VALUES (2, 'nsm', 'getDrugList', '/getDrugList', '获取药品列表');

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
-- Table structure for dsos_role_perms
-- ----------------------------
DROP TABLE IF EXISTS `dsos_role_perms`;
CREATE TABLE `dsos_role_perms`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `roleNo` int(50) NOT NULL COMMENT '角色编号',
  `permNo` int(50) NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dsos_user_role
-- ----------------------------
DROP TABLE IF EXISTS `dsos_user_role`;
CREATE TABLE `dsos_user_role`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `cardNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `roleNo` int(50) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_user_role
-- ----------------------------
INSERT INTO `dsos_user_role` VALUES (1, 'admin', 1);
INSERT INTO `dsos_user_role` VALUES (2, 'membeR', 2);

-- ----------------------------
-- Table structure for dsos_vot_drugrecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_vot_drugrecord`;
CREATE TABLE `dsos_vot_drugrecord`  (
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
-- Table structure for dsos_vot_storerecord
-- ----------------------------
DROP TABLE IF EXISTS `dsos_vot_storerecord`;
CREATE TABLE `dsos_vot_storerecord`  (
  `storeId` int(10) NOT NULL,
  `linkedId` int(10) NOT NULL DEFAULT 0 COMMENT '所属连锁',
  `shopHolder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店负责人编号',
  `code` int(50) NULL DEFAULT NULL COMMENT '门店编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门店地址',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `businessNo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经营许可证',
  PRIMARY KEY (`storeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dsos_vot_storerecord
-- ----------------------------
INSERT INTO `dsos_vot_storerecord` VALUES (1, 0, '竹根七', 1, '测试门店001', 'address001', '0734-999999', 'xkzh01');

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

SET FOREIGN_KEY_CHECKS = 1;
