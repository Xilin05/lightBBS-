/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : lightbbs

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 15/12/2020 11:45:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bbs_category
-- ----------------------------
DROP TABLE IF EXISTS `bbs_category`;
CREATE TABLE `bbs_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_category
-- ----------------------------
INSERT INTO `bbs_category` VALUES (5, '笔记', 2, '2020-12-15 00:15:47', '2020-12-15 00:55:01');
INSERT INTO `bbs_category` VALUES (6, '日常', 1, '2020-12-15 00:23:23', '2020-12-15 00:54:50');

-- ----------------------------
-- Table structure for bbs_like
-- ----------------------------
DROP TABLE IF EXISTS `bbs_like`;
CREATE TABLE `bbs_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_like
-- ----------------------------

-- ----------------------------
-- Table structure for bbs_migrations
-- ----------------------------
DROP TABLE IF EXISTS `bbs_migrations`;
CREATE TABLE `bbs_migrations`  (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `end_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_migrations
-- ----------------------------
INSERT INTO `bbs_migrations` VALUES (20201214095433, 'User', '2020-12-14 18:01:35', '2020-12-14 18:01:35', 0);
INSERT INTO `bbs_migrations` VALUES (20201214155157, 'Category', '2020-12-15 00:00:43', '2020-12-15 00:00:43', 0);
INSERT INTO `bbs_migrations` VALUES (20201214162337, 'Topic', '2020-12-15 00:24:04', '2020-12-15 00:24:04', 0);
INSERT INTO `bbs_migrations` VALUES (20201214171143, 'Like', '2020-12-15 01:12:06', '2020-12-15 01:12:07', 0);
INSERT INTO `bbs_migrations` VALUES (20201214172210, 'Reply', '2020-12-15 01:22:29', '2020-12-15 01:22:29', 0);

-- ----------------------------
-- Table structure for bbs_reply
-- ----------------------------
DROP TABLE IF EXISTS `bbs_reply`;
CREATE TABLE `bbs_reply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回复内容',
  `is_show` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_reply
-- ----------------------------
INSERT INTO `bbs_reply` VALUES (1, 4, 1, '哇真的可以欸', 1, '2020-12-15 01:26:20', '2020-12-15 01:26:20');
INSERT INTO `bbs_reply` VALUES (2, 4, 1, '芜湖!', 1, '2020-12-15 01:31:36', '2020-12-15 01:31:36');
INSERT INTO `bbs_reply` VALUES (3, 4, 1, 'hhhh', 0, '2020-12-15 01:36:32', '2020-12-15 01:36:33');
INSERT INTO `bbs_reply` VALUES (4, 8, 1, 'shenmdongxi a ', 0, '2020-12-15 01:37:39', '2020-12-15 01:37:39');

-- ----------------------------
-- Table structure for bbs_topic
-- ----------------------------
DROP TABLE IF EXISTS `bbs_topic`;
CREATE TABLE `bbs_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `category_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类id',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主题内容',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `is_show` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示',
  `hits` int(11) NOT NULL DEFAULT 0 COMMENT '点击量',
  `likenum` int(11) NOT NULL DEFAULT 0 COMMENT '点赞量',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_topic
-- ----------------------------
INSERT INTO `bbs_topic` VALUES (1, '第一条主题哦！', 5, '这是我测试的第一条主题！记编辑器和主题发布功能成功！', 1, 1, 1, 0, '2020-12-15 00:31:07', '2020-12-15 00:31:07');
INSERT INTO `bbs_topic` VALUES (2, '第二条测试', 5, '这条是第二条测试主题哦~', 1, 1, 3, 0, '2020-12-15 00:58:14', '2020-12-15 00:58:14');
INSERT INTO `bbs_topic` VALUES (3, 'MarkDown测试', 5, '这个是**MarkDown**语法测试哦!', 1, 1, 3, 0, '2020-12-15 01:02:54', '2020-12-15 01:02:54');
INSERT INTO `bbs_topic` VALUES (4, '语法高亮测试', 5, '这条是代码测试哦~\n```javascript\nvar test = \"代码高亮测试成功~\"\nalert(test);\n```', 1, 1, 14, 0, '2020-12-15 01:05:14', '2020-12-15 01:05:14');
INSERT INTO `bbs_topic` VALUES (5, 'shance', 5, '三处测试', 1, 0, 1, 0, '2020-12-15 01:09:45', '2020-12-15 01:09:49');
INSERT INTO `bbs_topic` VALUES (6, '删除测试', 5, '删除测试', 1, 0, 2, 0, '2020-12-15 01:10:19', '2020-12-15 01:10:23');
INSERT INTO `bbs_topic` VALUES (7, '123', 5, '125165', 1, 0, 1, 0, '2020-12-15 01:11:18', '2020-12-15 01:11:22');
INSERT INTO `bbs_topic` VALUES (8, 'h', 5, '1561', 1, 0, 1, 0, '2020-12-15 01:37:34', '2020-12-15 01:37:44');

-- ----------------------------
-- Table structure for bbs_user
-- ----------------------------
DROP TABLE IF EXISTS `bbs_user`;
CREATE TABLE `bbs_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码salt',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_active` tinyint(1) NOT NULL DEFAULT 0 COMMENT '邮箱是否激活',
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user' COMMENT '用户角色',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像地址',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`, `email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_user
-- ----------------------------
INSERT INTO `bbs_user` VALUES (1, 'admin', 'e92224f8f29b6d50f52db12b69b7626f', '6bc3d9d3161a355758bf967ed5a5e97e', 'admin@localhost', 1, 'admin', '', '2020-12-14 18:02:07', NULL);
INSERT INTO `bbs_user` VALUES (2, 'abcd', '6539421f545e97ff4ea7094d3cfe407c', '4fc8147b4ed782cb88065527d3761563', 'abcd@qq.com', 0, 'user', '', '2020-12-14 18:53:04', '2020-12-14 18:53:04');
INSERT INTO `bbs_user` VALUES (3, 'test_01', 'e6776d72bd09464d748a3b78c879cfdc', 'd846980127fe3cc4295c4cdcf74be77d', '123456789@qq.com', 0, 'user', '', '2020-12-14 22:15:19', '2020-12-15 10:56:10');
INSERT INTO `bbs_user` VALUES (4, 'test_02', '992235db4810320f1c5ea57548f370e6', '24ec20cb1d0a6bc71f2978879909f7ca', '273332529@qq.com', 1, 'user', '', '2020-12-15 10:56:32', '2020-12-15 11:05:13');

SET FOREIGN_KEY_CHECKS = 1;
