/*
 Navicat Premium Data Transfer

 Source Server         : lpdaohang
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3309
 Source Schema         : freelp

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 14/01/2021 22:40:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lable
-- ----------------------------
DROP TABLE IF EXISTS `lable`;
CREATE TABLE `lable`  (
  `userid` int(11) NOT NULL,
  `lablename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lableid` int(11) NOT NULL AUTO_INCREMENT,
  `isdel` int(1) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`lableid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for lableinfo
-- ----------------------------
DROP TABLE IF EXISTS `lableinfo`;
CREATE TABLE `lableinfo`  (
  `userid` int(11) NOT NULL,
  `lablename` int(255) NULL DEFAULT NULL,
  `webid` int(11) NOT NULL AUTO_INCREMENT,
  `weburl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isdel` int(1) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`webid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for page1
-- ----------------------------
DROP TABLE IF EXISTS `page1`;
CREATE TABLE `page1`  (
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weburl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `webtype` int(255) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for page3
-- ----------------------------
DROP TABLE IF EXISTS `page3`;
CREATE TABLE `page3`  (
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weburl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `webtype` int(255) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for text
-- ----------------------------
DROP TABLE IF EXISTS `text`;
CREATE TABLE `text`  (
  `userid` int(11) NOT NULL,
  `textinfo` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userinvitecode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inviteusercode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `useremail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `username`, `useremail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
