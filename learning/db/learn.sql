/*
Navicat MySQL Data Transfer

Source Server         : ll
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : learn

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2019-09-04 10:46:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrators`
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_pwd` varchar(20) DEFAULT NULL,
  `ad_role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', '123', null);

-- ----------------------------
-- Table structure for `attend`
-- ----------------------------
DROP TABLE IF EXISTS `attend`;
CREATE TABLE `attend` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `att_cus_id` int(11) DEFAULT NULL,
  `att_class_id` int(11) DEFAULT NULL,
  `att_date` date DEFAULT NULL,
  `att_check` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attend
-- ----------------------------
INSERT INTO `attend` VALUES ('1', '1', '1', '2019-08-27', '已到');

-- ----------------------------
-- Table structure for `complaint`
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_cus_id` int(11) DEFAULT NULL,
  `com_class_id` int(11) DEFAULT NULL,
  `com_reason` varchar(255) DEFAULT NULL,
  `ad_request` varchar(255) DEFAULT NULL,
  `com_time` date DEFAULT NULL,
  `req_time` date DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES ('1', '1', '1', '上课太小声', '已处理', '2019-08-27', '2019-08-27');

-- ----------------------------
-- Table structure for `customs_message`
-- ----------------------------
DROP TABLE IF EXISTS `customs_message`;
CREATE TABLE `customs_message` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(50) DEFAULT NULL,
  `cus_pwd` varchar(20) DEFAULT NULL,
  `cus_tel` varchar(30) DEFAULT NULL,
  `cus_photo` varchar(20) DEFAULT NULL,
  `cus_sex` varchar(5) DEFAULT NULL,
  `cus_grade` varchar(20) DEFAULT NULL,
  `cus_school` varchar(25) DEFAULT NULL,
  `cus_birthday` date DEFAULT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customs_message
-- ----------------------------
INSERT INTO `customs_message` VALUES ('1', '任豪', '123', '13022229999', null, '男', '高三', '春风中学', '2000-07-17');
INSERT INTO `customs_message` VALUES ('2', '99', '219', '130222222', null, '男', '高二', '名扬中学', '2001-05-01');
INSERT INTO `customs_message` VALUES ('3', 'aa', '123', '1221231', null, '男', '高一', 'mm', '2000-09-03');

-- ----------------------------
-- Table structure for `enroll`
-- ----------------------------
DROP TABLE IF EXISTS `enroll`;
CREATE TABLE `enroll` (
  `enr_id` int(11) NOT NULL AUTO_INCREMENT,
  `enr_cus_id` int(11) DEFAULT NULL,
  `enr_class_id` int(20) DEFAULT NULL,
  `enr_statu` varchar(20) DEFAULT NULL,
  `reg_time` date DEFAULT NULL,
  `w_pay` float DEFAULT NULL,
  `d_pay` float DEFAULT NULL,
  PRIMARY KEY (`enr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enroll
-- ----------------------------
INSERT INTO `enroll` VALUES ('1', '1', '1', '已报名', '2019-08-27', '2000', '2000');

-- ----------------------------
-- Table structure for `evaluates`
-- ----------------------------
DROP TABLE IF EXISTS `evaluates`;
CREATE TABLE `evaluates` (
  `eva_id` int(20) NOT NULL AUTO_INCREMENT,
  `eva_cus_id` int(11) NOT NULL,
  `eva_class_id` int(11) DEFAULT NULL,
  `eva_evaluate` varchar(300) DEFAULT NULL,
  `eva_time` date DEFAULT NULL,
  PRIMARY KEY (`eva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluates
-- ----------------------------
INSERT INTO `evaluates` VALUES ('2', '1', '1', '还行吧', '2019-08-27');

-- ----------------------------
-- Table structure for `leave`
-- ----------------------------
DROP TABLE IF EXISTS `leave`;
CREATE TABLE `leave` (
  `lea_id` int(20) NOT NULL,
  `lea_cus_id` int(11) NOT NULL,
  `lea_class_id` int(11) DEFAULT NULL,
  `lea_date` date DEFAULT NULL,
  `lea_reason` varchar(255) DEFAULT NULL,
  `lea_desire` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave
-- ----------------------------

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `sub_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_class_name` varchar(50) DEFAULT NULL,
  `sub_subjects` varchar(50) DEFAULT NULL,
  `sub_tuition` varchar(50) DEFAULT NULL,
  `sub_tea_id` int(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_hours` int(11) DEFAULT NULL,
  `class_statu` varchar(50) DEFAULT NULL,
  `appr_time` date DEFAULT NULL,
  PRIMARY KEY (`sub_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'X5-0508', '数学（高中三年级）', '800', '1', '2019-08-31', '2019-10-30', '120', null, null);
INSERT INTO `subject` VALUES ('2', 'X5-Y0602', '数学（高中三年级）', '800', '1', '2019-10-30', '2019-12-31', '120', null, null);
INSERT INTO `subject` VALUES ('3', 'X5-1221', '数学', '1000.0', '1', '2019-11-11', '2019-12-12', '120', null, null);
INSERT INTO `subject` VALUES ('4', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('5', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('6', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('7', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('8', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('9', null, null, null, '1', null, null, '0', null, null);
INSERT INTO `subject` VALUES ('10', null, null, null, '1', null, null, '0', null, null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_name` varchar(50) DEFAULT NULL,
  `tea_tel` varchar(50) DEFAULT NULL,
  `tea_information` varchar(255) DEFAULT NULL,
  `tea_pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'Lawson', '13888888', '厉害！', '980818');
INSERT INTO `teacher` VALUES ('2', 'POI', '12999999', '还行', '970717');
INSERT INTO `teacher` VALUES ('3', 'KiKi', '13555555', '物理专项很强', '990919');
