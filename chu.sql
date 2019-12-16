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

 Date: 17/12/2019 07:32:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123', 'user:add');
INSERT INTO `users` VALUES (2, 'test', '123', 'user:update');
INSERT INTO `users` VALUES (3, 'chu', '123', NULL);
INSERT INTO `users` VALUES (5, 'chu1', '123', NULL);

-- ----------------------------
-- Table structure for users_log
-- ----------------------------
DROP TABLE IF EXISTS `users_log`;
CREATE TABLE `users_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `log_type` int(11) DEFAULT NULL COMMENT '日志类型(0:注册用户;1:修改用户密码)',
  `log_date` datetime(0) DEFAULT NULL COMMENT '日志时间',
  `u_pwd_old` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '旧密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_log
-- ----------------------------
INSERT INTO `users_log` VALUES (1, 3, 0, '2019-12-16 23:32:28', NULL);
INSERT INTO `users_log` VALUES (2, 5, 0, '2019-12-17 07:30:53', NULL);

SET FOREIGN_KEY_CHECKS = 1;
