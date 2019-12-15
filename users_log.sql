/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : chu

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 15/12/2019 23:45:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users_log
-- ----------------------------
DROP TABLE IF EXISTS `users_log`;
CREATE TABLE `users_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `log_date` datetime(0) DEFAULT NULL COMMENT '日志创建时间',
  `log_type` int(11) DEFAULT NULL COMMENT '日志操作类型(0:注册用户,1:修改用户密码)',
  `u_pwd_old` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户未操作前的密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_log
-- ----------------------------
INSERT INTO `users_log` VALUES (1, 2, '2019-12-15 23:00:26', 0, '');

SET FOREIGN_KEY_CHECKS = 1;
