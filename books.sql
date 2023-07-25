/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : books

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 23/06/2022 14:17:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT 1,
  `lend_num` int(11) NULL DEFAULT NULL,
  `max_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (2, 'admin', '小红', '123', '1888@qq.com', '18866668888', 2, 99, 99);
INSERT INTO `admin` VALUES (16, '1002', 'xiaohong', '123', '126.qq.com', '150490150', 1, 7, 2);
INSERT INTO `admin` VALUES (14, '1001', 'xiaoming', '123', '177.qq.com', '123456', 1, 30, 5);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `autho` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `num` int(11) NOT NULL,
  `press` varchar(205) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE,
  UNIQUE INDEX `ISBN`(`card`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (11, 'javaweb', '1024', '未知', 1, '黑马程序员', '教育');
INSERT INTO `book` VALUES (15, '爷爷一定有办法', '1025', '菲比.吉尔曼', 10, '少年儿童出版社', '教育');
INSERT INTO `book` VALUES (16, '活了100万次的猫', '1027', '佐野洋子', 10, '接力出版社', '教育');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES (7, '名人传记');
INSERT INTO `booktype` VALUES (6, '科普');
INSERT INTO `booktype` VALUES (5, '世界名著');
INSERT INTO `booktype` VALUES (8, '历史');
INSERT INTO `booktype` VALUES (9, '教育');
INSERT INTO `booktype` VALUES (10, '小说');
INSERT INTO `booktype` VALUES (15, '玄幻');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NULL DEFAULT NULL,
  `bid` int(11) NULL DEFAULT NULL,
  `card` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminname` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `begintime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `endtime` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (25, 14, 11, '1024', 'javaweb', '1001', 'xiaoming', '2022-6-20', '2022-6-21', 0);
INSERT INTO `history` VALUES (27, 16, 16, '1027', '活了100万次的猫', '1002', 'xiaohong', '2022-6-23', '2022-7-23', 1);
INSERT INTO `history` VALUES (28, 16, 15, '1025', '爷爷一定有办法', '1002', 'xiaohong', '2022-6-23', '2022-6-23', 0);
INSERT INTO `history` VALUES (29, 16, 16, '1027', '活了100万次的猫', '1002', 'xiaohong', '2022-6-23', '2022-6-23', 0);
INSERT INTO `history` VALUES (26, 14, 11, '1024', 'javaweb', '1001', 'xiaoming', '2022-6-21', '2022-7-21', 1);

SET FOREIGN_KEY_CHECKS = 1;
