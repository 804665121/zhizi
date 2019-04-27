/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : fastadmin1

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 11/04/2019 09:15:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', '栀子', 'b56ca2b730324f64f44dd83e855babc4', 'vTKHok', '/uploads/20190126/790e208b4a4e098df41313bb72f519df.jpg', '804665121@qq.com', 0, 1549880747, 1492186163, 1549880748, 'fda791cb-bdba-4683-9144-671ed64921e1', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 245 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 1, 'admin', '/1.0.0.20190111_full/public/admin/index/login.html', '登录', '{\"__token__\":\"55518f18cd036e765a15f6ff7ed180ce\",\"username\":\"admin\",\"captcha\":\"E8U8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547886084);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/1.0.0.20190111_full/public/admin/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"table\",\"title\":\"\\u8868\\u683c\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547886187);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/1.0.0.20190111_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547886187);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/1.0.0.20190111_full/public/admin/name/add?dialog=1', '名称表 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5c0f\\u660e\",\"password\":\"123456\",\"title\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u540d\\u79f0\\u8868\",\"gender\":\"\\u7537\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547887656);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/1.0.0.20190111_full/public/admin/category/selectpage', '', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"12\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"12\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547888379);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/1.0.0.20190111_full/public/admin/category/selectpage', '', '{\"searchTable\":\"tbl\",\"searchKey\":\"id\",\"searchValue\":\"12,13\",\"orderBy\":[[\"name\",\"ASC\"]],\"showField\":\"name\",\"keyField\":\"id\",\"keyValue\":\"12,13\",\"searchField\":[\"name\"]}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547888380);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/1.0.0.20190111_full/public/admin/count/edit/ids/1?dialog=1', '测试表 编辑', '{\"dialog\":\"1\",\"row\":{\"category_id\":\"12\",\"category_ids\":\"12,13\",\"week\":\"monday\",\"flag\":[\"hot\",\"index\"],\"genderdata\":\"male\",\"hobbydata\":[\"music\",\"reading\"],\"title\":\"\\u6211\\u662f\\u4e00\\u7bc7\\u6d4b\\u8bd5\\u6587\\u7ae0\",\"content\":\"<p>\\u6211\\u662f\\u6d4b\\u8bd5\\u5185\\u5bb9<\\/p>\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"images\":\"\\/assets\\/img\\/qrcode.png\",\"attachfile\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\\u5173\\u952e\\u5b57\",\"description\":\"\\u63cf\\u8ff0\",\"city\":\"\\u5e7f\\u897f\\u58ee\\u65cf\\u81ea\\u6cbb\\u533a\\/\\u767e\\u8272\\u5e02\\/\\u5e73\\u679c\\u53bf\",\"price\":\"0\",\"views\":\"0\",\"startdate\":\"2017-07-10\",\"activitytime\":\"2017-07-10 18:24:45\",\"year\":\"2017\",\"times\":\"18:24:45\",\"refreshtime\":\"2017-07-10 18:24:45\",\"weigh\":\"0\",\"switch\":\"1\",\"status\":\"normal\",\"state\":\"1\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547888411);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/1.0.0.20190111_full/public/admin/name/edit/ids/1?dialog=1', '名称表 编辑', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u5c0f\\u660e\",\"password\":\"123456\",\"title\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u540d\\u79f0\\u8868\",\"gender\":\"\\u7537\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1547888428);
INSERT INTO `fa_admin_log` VALUES (9, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"25f4fa1466ba2c5df33aa74302d60e87\",\"username\":\"admin\",\"captcha\":\"UIUV\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225365);
INSERT INTO `fa_admin_log` VALUES (10, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"edd85319624cd374892c22cf58ff1190\",\"username\":\"admin\",\"captcha\":\"K5aE\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225373);
INSERT INTO `fa_admin_log` VALUES (11, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"f634c597eaf16debfd2d059ca37601b3\",\"username\":\"zhizi\",\"captcha\":\"K5aE\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225411);
INSERT INTO `fa_admin_log` VALUES (12, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"e281d8be72579e19711296eff6a6dbad\",\"username\":\"zhizi\",\"captcha\":\"3TAt\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225424);
INSERT INTO `fa_admin_log` VALUES (13, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"721fdb734680374d58cc1c2cd1520d2e\",\"username\":\"admin\",\"captcha\":\"3TAt\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225443);
INSERT INTO `fa_admin_log` VALUES (14, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"0eda3a369b5a239292722f16218151a6\",\"username\":\"admin\",\"captcha\":\"rdja\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225449);
INSERT INTO `fa_admin_log` VALUES (15, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"e41ea4cd43ad46b203215e39e80c0fc3\",\"username\":\"admin\",\"captcha\":\"rdja\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225467);
INSERT INTO `fa_admin_log` VALUES (16, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"3c14c1ae7fa428901dc53e7483526430\",\"username\":\"admin\",\"captcha\":\"rdja\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225474);
INSERT INTO `fa_admin_log` VALUES (17, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"e2179dc5412ef20bce0c8ff85c8f8017\",\"username\":\"admin\",\"captcha\":\"Vr6m\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225482);
INSERT INTO `fa_admin_log` VALUES (18, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"f0a4cc32a3b0552bca637de94bb27694\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225500);
INSERT INTO `fa_admin_log` VALUES (19, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"9139d1e187ec5af40a54795b42c06d64\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225511);
INSERT INTO `fa_admin_log` VALUES (20, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"66c18b8e279df81aa26d6d21cb0c7c17\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225512);
INSERT INTO `fa_admin_log` VALUES (21, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"17be790fd11feff2a01c0fcfc0e0920c\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225512);
INSERT INTO `fa_admin_log` VALUES (22, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"7cb18d59964e7d5c6c7af0af16f1b3d0\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225512);
INSERT INTO `fa_admin_log` VALUES (23, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"6e8bd293ac6cfed8f4054fc3ce35cbc8\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225513);
INSERT INTO `fa_admin_log` VALUES (24, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"b773406f3c5913e577bdd490a994681e\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225513);
INSERT INTO `fa_admin_log` VALUES (25, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"8d58d3df9301ae0f42d4da50db18d563\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225513);
INSERT INTO `fa_admin_log` VALUES (26, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"93e0163ca9cacd90a9e3c4fc2f984237\",\"username\":\"admin\",\"captcha\":\"Co57\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225514);
INSERT INTO `fa_admin_log` VALUES (27, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"e1e90b4be120c13ef5efc355357ecd69\",\"username\":\"admin\",\"captcha\":\"WURL\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548225527);
INSERT INTO `fa_admin_log` VALUES (28, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"63aef1863e9b06bf1df5fb4bfd907c59\",\"username\":\"admin\",\"captcha\":\"K8F6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235366);
INSERT INTO `fa_admin_log` VALUES (29, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"b7488ad79b1d712c280281c4286d172a\",\"username\":\"admin\",\"captcha\":\"K8F6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235373);
INSERT INTO `fa_admin_log` VALUES (30, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"bc24851e14b1e5c25f98230406448467\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235501);
INSERT INTO `fa_admin_log` VALUES (31, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"8b70202c4accaecc074ef9f79dd84034\",\"username\":\"zhizhi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235522);
INSERT INTO `fa_admin_log` VALUES (32, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"01e4468f4a629cea3b75ef28089f22d1\",\"username\":\"zhizi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235528);
INSERT INTO `fa_admin_log` VALUES (33, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"7a85aafc7651b4b5bc1ba4a4f321e06c\",\"username\":\"zhizi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235560);
INSERT INTO `fa_admin_log` VALUES (34, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"7aefad48cf0a528fd8895810a1577b11\",\"username\":\"zhizi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548235562);
INSERT INTO `fa_admin_log` VALUES (35, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"acf9ce94ba56ad0191e576b5e4e7fb38\",\"username\":\"zhizi\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548237795);
INSERT INTO `fa_admin_log` VALUES (36, 0, 'Unknown', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"1da730cf1e245ee4bb07362915380706\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548237817);
INSERT INTO `fa_admin_log` VALUES (37, 1, 'admin', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"dca61483de14db9af89e0b6e20632a63\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548237823);
INSERT INTO `fa_admin_log` VALUES (38, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/116', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"116\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238636);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238637);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/85', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"85\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238642);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238642);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/92', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"92\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238667);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238667);
INSERT INTO `fa_admin_log` VALUES (44, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/86', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"86\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238687);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238688);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/FastAdmin/public/admin/classify/add?dialog=1', '分类表 添加', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"php\",\"ccontent\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238707);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/79?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"66\",\"name\":\"user\\/rule\",\"title\":\"\\u4f1a\\u5458\\u89c4\\u5219\",\"icon\":\"fa fa-align-right\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"79\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238724);
INSERT INTO `fa_admin_log` VALUES (48, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238725);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/110?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"classify\",\"title\":\"\\u5206\\u7c7b\\u8868\",\"icon\":\"fa fa-bar-chart-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"110\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238733);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238734);
INSERT INTO `fa_admin_log` VALUES (51, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/122?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"indexuser\",\"title\":\"\\u7528\\u6237\\u8868\",\"icon\":\"fa fa-user\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"122\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238746);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238747);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/98?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"message\",\"title\":\"\\u7559\\u8a00\\u8868\",\"icon\":\"fa fa-calendar-check-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"98\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238760);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548238761);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"6f229d5e944b27ba53f6e799bf536edd\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548292585);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/FastAdmin/public/admin/classify/add?dialog=1', '分类表 添加', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"javascript\",\"ccontent\":\"javascript\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548292632);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/FastAdmin/public/admin/message/add?dialog=1', '留言表 添加', '{\"dialog\":\"1\",\"row\":{\"mtitle\":\"\\u5c0f\\u660e\\u540c\\u5b66\",\"minfo\":\"19\\u65e5\\uff0c\\u4e2d\\u56fd\\u7b2c35\\u6b21\\u5357\\u6781\\u8003\\u5bdf\\u961f\\u642d\\u8f7d\\u201c\\u96ea\\u9f99\\u201d\\u8239\\u5728\\u963f\\u8499\\u68ee\\u6d77\\u5bc6\\u96c6\\u51b0\\u533a\\u822a\\u884c\\u65f6\\uff0c\\u53d7\\u6d77\\u4e0a\\u7a81\\u8d77\\u6d53\\u96fe\\u5f71\\u54cd\\uff0c\\u610f\\u5916\\u4e0e\\u51b0\\u5c71\\u76f8\\u78b0\\u3002\\u592e\\u89c6\\u968f\\u8239\\u8bb0\\u8005\\u83b7\\u5f97\\u72ec\\u5bb6\\u6388\\u6743\\uff0c\\u62ab\\u9732\\u78b0\\u649e\\u77ac\\u95f4\\u7684\\u76d1\\u63a7\\u89c6\\u9891\\u3002\\u753b\\u9762\\u663e\\u793a\\uff0c\\u201c\\u96ea\\u9f99\\u201d\\u8239\\u5728\\u51b0\\u533a\\u5185\\u822a\\u884c\\uff0c\\u524d\\u65b9\\u6d53\\u96fe\\u906e\\u6321\\uff0c\\u80fd\\u89c1\\u5ea6\\u6781\\u4f4e\\uff0c\\u76f4\\u5230\\u8fce\\u9762\\u78b0\\u4e0a\\u51b0\\u5c71\\u7684\\u77ac\\u95f4\\uff0c\\u51b0\\u5c71\\u624d\\u9732\\u51fa\\u771f\\u5bb9\\u3002\\u5de8\\u5927\\u7684\\u51b2\\u51fb\\u529b\\u4f7f\\u5f97\\u8239\\u5934\\u6845\\u6746\\u77ac\\u95f4\\u65ad\\u88c2\\u3002\\uff08\\u592e\\u89c6\\u8bb0\\u8005 \\u738b\\u5584\\u6d9b \\u8d75\\u66d9\\u5149 \\u8881\\u5e05 \\u7f16\\u8f91 \\u738b\\u5b50\\u5143 \\u5b8b\\u946b\\u73a5\\uff09\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548293689);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"78059d3f145d5dd1f3259954c0690d61\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548381185);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/FastAdmin/public/admin/article/add?dialog=1', '文章信息 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"dhlkejhdf;o\\uff1b\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548385190);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/128?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"article\",\"title\":\"\\u6587\\u7ae0\\u4fe1\\u606f\",\"icon\":\"fa fa-book\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"128\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548385219);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548385220);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"https:\\/\\/www.google.com\\/search?q=%E5%9B%BE%E7%89%87&tbm=isch&source=univ&sa=X&ved=2ahUKEwjQ_8en-YfgAhWHM48KHfjiDIsQsAR6BAgEEAE&biw=1920&bih=938#imgrc=uVhapiQQywcN6M:\",\"atitle\":\"zheshi \",\"acontent\":\"dhlkejhdf;o\\uff1b\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548385469);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"https:\\/\\/www.google.com\\/search?q=%E5%9B%BE%E7%89%87&tbm=isch&source=univ&sa=X&ved=2ahUKEwjQ_8en-YfgAhWHM48KHfjiDIsQsAR6BAgEEAE&biw=1920&bih=938#imgrc=uVhapiQQywcN6M:\",\"atitle\":\"zheshi \",\"acontent\":\"dhlkejhdf;o\\uff1b\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548385508);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"https:\\/\\/www.google.com\\/search?q=%E5%9B%BE%E7%89%87&tbm=isch&source=univ&sa=X&ved=2ahUKEwjQ_8en-YfgAhWHM48KHfjiDIsQsAR6BAgEEAE&biw=1920&bih=938#imgrc=uVhapiQQywcN6M:\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548396252);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"https:\\/\\/www.google.com\\/search?q=%E5%9B%BE%E7%89%87&tbm=isch&source=univ&sa=X&ved=2ahUKEwjQ_8en-YfgAhWHM48KHfjiDIsQsAR6BAgEEAE&biw=1920&bih=938#imgrc=uVhapiQQywcN6M:\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398072);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"markdown\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398391);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398392);
INSERT INTO `fa_admin_log` VALUES (68, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"\",\"atitle\":\"zheshi \"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398502);
INSERT INTO `fa_admin_log` VALUES (69, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"markdown\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398522);
INSERT INTO `fa_admin_log` VALUES (70, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398523);
INSERT INTO `fa_admin_log` VALUES (71, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"markdown\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398530);
INSERT INTO `fa_admin_log` VALUES (72, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398531);
INSERT INTO `fa_admin_log` VALUES (73, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"wangeditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398538);
INSERT INTO `fa_admin_log` VALUES (74, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398539);
INSERT INTO `fa_admin_log` VALUES (75, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"img\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398559);
INSERT INTO `fa_admin_log` VALUES (76, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wangeditor\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398812);
INSERT INTO `fa_admin_log` VALUES (77, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398813);
INSERT INTO `fa_admin_log` VALUES (78, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"wangeditor\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398815);
INSERT INTO `fa_admin_log` VALUES (79, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398816);
INSERT INTO `fa_admin_log` VALUES (80, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"wangeditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398822);
INSERT INTO `fa_admin_log` VALUES (81, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548398822);
INSERT INTO `fa_admin_log` VALUES (82, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<p>\\ud83d\\ude43<br><\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399036);
INSERT INTO `fa_admin_log` VALUES (83, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a\\ud83d\\ude18\\ud83d\\ude1d<p><\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399082);
INSERT INTO `fa_admin_log` VALUES (84, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"bj_city.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399226);
INSERT INTO `fa_admin_log` VALUES (85, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\\u6492\\u800c\\u975e\\u560e\\u65af\\u5927\\u9505\\u996d\",\"image\":\"\\/uploads\\/20190125\\/2ce6f4bba8a4e871e997ae15c7d8b7ea.jpg\",\"icon\":\"\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399229);
INSERT INTO `fa_admin_log` VALUES (86, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"tinymce\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399299);
INSERT INTO `fa_admin_log` VALUES (87, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399300);
INSERT INTO `fa_admin_log` VALUES (88, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\\u6492\\u800c\\u975e\\u560e\\u65af\\u5927\\u9505\\u996d\",\"image\":\"\\/uploads\\/20190125\\/2ce6f4bba8a4e871e997ae15c7d8b7ea.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399366);
INSERT INTO `fa_admin_log` VALUES (89, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"gz_city.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399398);
INSERT INTO `fa_admin_log` VALUES (90, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"cq_city.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399398);
INSERT INTO `fa_admin_log` VALUES (91, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"cs_city.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399399);
INSERT INTO `fa_admin_log` VALUES (92, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399399);
INSERT INTO `fa_admin_log` VALUES (93, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399636);
INSERT INTO `fa_admin_log` VALUES (94, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399735);
INSERT INTO `fa_admin_log` VALUES (95, 1, 'admin', '/FastAdmin/public/admin/article/edit/ids/1?dialog=1', '文章信息 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548399849);
INSERT INTO `fa_admin_log` VALUES (96, 1, 'admin', '/FastAdmin/public/admin/articlelist/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400051);
INSERT INTO `fa_admin_log` VALUES (97, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/134', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"134\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400119);
INSERT INTO `fa_admin_log` VALUES (98, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400120);
INSERT INTO `fa_admin_log` VALUES (99, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/128', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"128\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400298);
INSERT INTO `fa_admin_log` VALUES (100, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400299);
INSERT INTO `fa_admin_log` VALUES (101, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400368);
INSERT INTO `fa_admin_log` VALUES (102, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400425);
INSERT INTO `fa_admin_log` VALUES (103, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400494);
INSERT INTO `fa_admin_log` VALUES (104, 1, 'admin', '/FastAdmin/public/admin/classify/add?dialog=1', '分类表 添加', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"11\",\"ccontent\":\"2222\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400510);
INSERT INTO `fa_admin_log` VALUES (105, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"big.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400522);
INSERT INTO `fa_admin_log` VALUES (106, 1, 'admin', '/FastAdmin/public/admin/articlelists/add?dialog=1', '文章信息列表 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/6f2db11f89249e406a63b6796b158c22.png\",\"atitle\":\"435435\",\"acontent\":\"435435\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400528);
INSERT INTO `fa_admin_log` VALUES (107, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/6f2db11f89249e406a63b6796b158c22.png\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400601);
INSERT INTO `fa_admin_log` VALUES (108, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service6.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400735);
INSERT INTO `fa_admin_log` VALUES (109, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400736);
INSERT INTO `fa_admin_log` VALUES (110, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400749);
INSERT INTO `fa_admin_log` VALUES (111, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400766);
INSERT INTO `fa_admin_log` VALUES (112, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400942);
INSERT INTO `fa_admin_log` VALUES (113, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"435435\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400958);
INSERT INTO `fa_admin_log` VALUES (114, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548400967);
INSERT INTO `fa_admin_log` VALUES (115, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401036);
INSERT INTO `fa_admin_log` VALUES (116, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401044);
INSERT INTO `fa_admin_log` VALUES (117, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"agentLogo.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401447);
INSERT INTO `fa_admin_log` VALUES (118, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401449);
INSERT INTO `fa_admin_log` VALUES (119, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401483);
INSERT INTO `fa_admin_log` VALUES (120, 1, 'admin', '/FastAdmin/public/admin/classify/edit/ids/2?dialog=1', '分类表 编辑', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"javascript\",\"ccontent\":\"js\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401737);
INSERT INTO `fa_admin_log` VALUES (121, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>435435<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401756);
INSERT INTO `fa_admin_log` VALUES (122, 1, 'admin', '/FastAdmin/public/admin/articlelists/add?dialog=1', '文章信息列表 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401783);
INSERT INTO `fa_admin_log` VALUES (123, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401791);
INSERT INTO `fa_admin_log` VALUES (124, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401800);
INSERT INTO `fa_admin_log` VALUES (125, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"\\u8fd9\\u662f\\u4ec0\\u4e48\\u52a8\\u753b\\u65b0\\u55ef\\u54e6\\u623f\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401917);
INSERT INTO `fa_admin_log` VALUES (126, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"\\u6539\\u53d8\\u4ec0\\u4e48\\u4e1c\\u90aa\\u554a\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401934);
INSERT INTO `fa_admin_log` VALUES (127, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"zheshi \",\"acontent\":\"1\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548401938);
INSERT INTO `fa_admin_log` VALUES (128, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6539\\u53d8\\u4ec0\\u4e48\\u4e1c\\u90aa\\u554a<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548402120);
INSERT INTO `fa_admin_log` VALUES (129, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6539\\u53d8\\u4ec0\\u4e48\\u4e1c\\u90aa\\u554a<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548402192);
INSERT INTO `fa_admin_log` VALUES (130, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\\u592a\\u5bb9\\u6613\\u7a81\\u7136\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"<p>\\u8fd9\\u662f\\u4ec0\\u4e48\\u52a8\\u753b\\u65b0\\u55ef\\u54e6\\u623f<\\/p>\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548402203);
INSERT INTO `fa_admin_log` VALUES (131, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\\u592a\\u5bb9\\u6613\\u7a81\\u7136\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"<p>\\u8fd9\\u662f\\u4ec0\\u4e48\\u52a8\\u753b\\u65b0\\u55ef\\u54e6\\u623f<\\/p>\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548402223);
INSERT INTO `fa_admin_log` VALUES (132, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6539\\u53d8\\u4ec0\\u4e48\\u4e1c\\u90aa\\u554a<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548402440);
INSERT INTO `fa_admin_log` VALUES (133, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\\u592a\\u5bb9\\u6613\\u7a81\\u7136\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"<p>\\u8fd9\\u662f\\u4ec0\\u4e48\\u52a8\\u753b\\u65b0\\u55ef\\u54e6\\u623f<\\/p>\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548403274);
INSERT INTO `fa_admin_log` VALUES (134, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"tinymce\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404002);
INSERT INTO `fa_admin_log` VALUES (135, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404003);
INSERT INTO `fa_admin_log` VALUES (136, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\\u592a\\u5bb9\\u6613\\u7a81\\u7136\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"<p>\\u8fd9\\u662f\\u4ec0<\\/p>\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404143);
INSERT INTO `fa_admin_log` VALUES (137, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6253\\u5f00\\u7535\\u89c6\\u673a<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404157);
INSERT INTO `fa_admin_log` VALUES (138, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6253\\u5f00\\u7535\\u89c6\\u673a<\\/p>\\ud83d\\ude0b\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404171);
INSERT INTO `fa_admin_log` VALUES (139, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>\\u6253\\u5f00\\u7535\\u89c6\\u673a<\\/p>\\ud83d\\ude09\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404180);
INSERT INTO `fa_admin_log` VALUES (140, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>&nbsp;<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404189);
INSERT INTO `fa_admin_log` VALUES (141, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>&nbsp;232423<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404195);
INSERT INTO `fa_admin_log` VALUES (142, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>&nbsp;<\\/p>\\ud83d\\ude01\\ud83d\\ude0a\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404205);
INSERT INTO `fa_admin_log` VALUES (143, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"896beb70-d81a-11e7-b6e7-9da891414b0f.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404226);
INSERT INTO `fa_admin_log` VALUES (144, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565<\\/p><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/3fecb728430ce5e0af3c04007ea61557.png\\\" style=\\\"max-width:100%;\\\">\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404228);
INSERT INTO `fa_admin_log` VALUES (145, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<p>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404254);
INSERT INTO `fa_admin_log` VALUES (146, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>...22<\\/li><li>2323<\\/li><li>2323<\\/li><li>232<\\/li><\\/ol><p><br><\\/p><p><br><\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404275);
INSERT INTO `fa_admin_log` VALUES (147, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>...22\\ud83d\\ude06<\\/li><li>2323<\\/li><li>2323<\\/li><li>232<\\/li><\\/ol><p><br><\\/p><p>\\u200b<br><\\/p>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404293);
INSERT INTO `fa_admin_log` VALUES (148, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>...22<\\/li><li>324234<\\/li><li>234234<\\/li><li>23423<\\/li><li>234234<\\/li><\\/ol>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404303);
INSERT INTO `fa_admin_log` VALUES (149, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>...22\\ud83d\\ude05<\\/li><li>324234<\\/li><li>234234<\\/li><li>23423<\\/li><li>234234<\\/li><\\/ol>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404310);
INSERT INTO `fa_admin_log` VALUES (150, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>\\u5b89\\u88c5\\u4e86\\u4e24\\u4e2a\\u63d2\\ud83d\\ude0a\\u4ef6\\u5378\\u8f7d\\u4e86\\u4e00\\u4e2a\\u628aphp\\u91cc\\u9762\\u7684\\u5185\\u5bb9\\u6ce8\\u91ca\\u4e86...22&nbsp; \\u53d1\\u73b0\\u4ec0\\u4e48\\u4e86\\u5417<\\/li><li>\\u8868\\u60c5\\u4e0b\\u9762\\u7684\\u6ca1\\u4e86&nbsp; \\u4f60\\u521a\\u521a\\u6539\\u7684\\u662f\\u54ea\\u91cc&nbsp;\\u6211\\u770b\\u770b\\u6211<\\/li><\\/ol>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404389);
INSERT INTO `fa_admin_log` VALUES (151, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/2?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"3454 \",\"image\":\"\\/uploads\\/20190125\\/155963507d0fa17104bd37eb32c894fe.jpg\",\"atitle\":\"\\u8fd9\\u662fiwuedhiw\",\"acontent\":\"<ol><li>&nbsp;\\u4e0d\\u80fd\\u5b58\\u8868\\u60c5&nbsp;\\u5bf9\\u4e3a\\u5565&nbsp; \\u56fe\\u7247\\u4e5f\\u4e0d\\u80fd\\u5b58&nbsp; \\u8fd9\\u8fd8\\u591a\\u4e86\\u4e00\\u4e2a\\u6807\\u7b7e<br><\\/li><li>\\u5b89\\u88c5\\ud83d\\ude04\\u4e86\\u4e24\\u4e2a\\u63d2<\\/li><\\/ol>\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404397);
INSERT INTO `fa_admin_log` VALUES (152, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"close.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404434);
INSERT INTO `fa_admin_log` VALUES (153, 1, 'admin', '/FastAdmin/public/admin/articlelists/add?dialog=1', '文章信息列表 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/c4532528008c64550652ad033fb8c794.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>\\ud83d\\ude01&nbsp; &nbsp;<br><\\/p>\\ud83d\\ude05\\ud83d\\ude0d\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404446);
INSERT INTO `fa_admin_log` VALUES (154, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wangeditor\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404708);
INSERT INTO `fa_admin_log` VALUES (155, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404709);
INSERT INTO `fa_admin_log` VALUES (156, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"wangeditor\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404711);
INSERT INTO `fa_admin_log` VALUES (157, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404711);
INSERT INTO `fa_admin_log` VALUES (158, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"markdown\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.1\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404717);
INSERT INTO `fa_admin_log` VALUES (159, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404717);
INSERT INTO `fa_admin_log` VALUES (160, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"markdown\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404751);
INSERT INTO `fa_admin_log` VALUES (161, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404751);
INSERT INTO `fa_admin_log` VALUES (162, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"markdown\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404753);
INSERT INTO `fa_admin_log` VALUES (163, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404754);
INSERT INTO `fa_admin_log` VALUES (164, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"tinymce\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404782);
INSERT INTO `fa_admin_log` VALUES (165, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404783);
INSERT INTO `fa_admin_log` VALUES (166, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"summernote\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.3\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404788);
INSERT INTO `fa_admin_log` VALUES (167, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404789);
INSERT INTO `fa_admin_log` VALUES (168, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"big.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404808);
INSERT INTO `fa_admin_log` VALUES (169, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/4?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/c4532528008c64550652ad033fb8c794.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/6f2db11f89249e406a63b6796b158c22.png\\\" data-filename=\\\"filename\\\" style=\\\"width: 200px;\\\"><br><\\/p>\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404813);
INSERT INTO `fa_admin_log` VALUES (170, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service1.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404847);
INSERT INTO `fa_admin_log` VALUES (171, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service4.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404848);
INSERT INTO `fa_admin_log` VALUES (172, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service5.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404848);
INSERT INTO `fa_admin_log` VALUES (173, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service3.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404848);
INSERT INTO `fa_admin_log` VALUES (174, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/3?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"\",\"classify\":\"\\u592a\\u5bb9\\u6613\\u7a81\\u7136\",\"image\":\"\",\"atitle\":\"\",\"acontent\":\"<p><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/34789b5ec01c93ac77d9302a718c9718.jpg\\\" data-filename=\\\"filename\\\" style=\\\"width: 112px;\\\"><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/e66077af0796168dd65861e3e4206edd.jpg\\\" data-filename=\\\"filename\\\" style=\\\"width: 112px;\\\"><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/4c49cdf3968fb2b4be7ac9d8e221bd34.jpg\\\" data-filename=\\\"filename\\\" style=\\\"width: 112px;\\\"><img src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190125\\/ee22751f3d8afef1f4ce87dfbb6cb370.jpg\\\" data-filename=\\\"filename\\\" style=\\\"width: 112px;\\\"><br><\\/p>\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404850);
INSERT INTO `fa_admin_log` VALUES (175, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"service2.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404850);
INSERT INTO `fa_admin_log` VALUES (176, 1, 'admin', '/FastAdmin/public/admin/articlelists/del/ids/3', '文章信息列表 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404888);
INSERT INTO `fa_admin_log` VALUES (177, 1, 'admin', '/FastAdmin/public/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"summernote\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404908);
INSERT INTO `fa_admin_log` VALUES (178, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404909);
INSERT INTO `fa_admin_log` VALUES (179, 1, 'admin', '/FastAdmin/public/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"summernote\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404911);
INSERT INTO `fa_admin_log` VALUES (180, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404912);
INSERT INTO `fa_admin_log` VALUES (181, 1, 'admin', '/FastAdmin/public/admin/addon/install', '插件管理 安装', '{\"name\":\"simditor\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\",\"version\":\"1.0.4\",\"faversion\":\"1.0.0.20190111_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404915);
INSERT INTO `fa_admin_log` VALUES (182, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404916);
INSERT INTO `fa_admin_log` VALUES (183, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/4?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/c4532528008c64550652ad033fb8c794.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p><img src=\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404934);
INSERT INTO `fa_admin_log` VALUES (184, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/4?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/c4532528008c64550652ad033fb8c794.png\",\"atitle\":\"zheshi \",\"acontent\":\"\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548404943);
INSERT INTO `fa_admin_log` VALUES (185, 1, 'admin', '/FastAdmin/public/admin/articlelists/edit/ids/1?dialog=1', '文章信息列表 编辑', '{\"dialog\":\"1\",\"row\":{\"user\":\"zhizi\",\"classify\":\"php\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"zheshi \",\"acontent\":\"<p>1\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p><p>\\u5355\\u8eab\\u5feb\\u4e50\\u808c\\u80a4\\u7c7b\\u4f3c\\u7684\\u7a7a\\u95f4\\u5206\\u5f00\\u4e86\\u65f6\\u523b\\u5230\\u4e86\\u623f\\u95f4\\u91cc\\u8bf4\\u7684\\u7c7b\\u4f3c\\u7684\\u770b\\u6cd5\\u5c31\\u662f\\u6253\\u5f00<\\/p><p>\\u96f6\\u552e\\u5e97\\u5c06\\u53d1\\u751f\\u4e86\\u8d37\\u6b3e<\\/p><p>\\u5c71\\u4e1c\\u9f99\\u53e3\\u808c\\u80a4\\uff1b\\u6309\\u7406\\u8bf4<\\/p><p>\\uff1b\\u5965\\u65af\\u9646\\u4f1a\\u8ba1\\u6cd5\\u5f8b\\u7684\\u65f6\\u523b<\\/p><p>\\u9001\\u798f\\u5229\\u662f\\u6253\\u5f00\\u770b\\u770b\\u5417<\\/p><p>\\uff1b\\u7f57\\u65af\\u798f\\u5c31\\u662f\\u4eba\\u5206\\u4e3a\\u514d\\u8d39<\\/p><p>\\uff1b\\u9001\\u996d\\u5bbd\\u677e<\\/p>\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548405210);
INSERT INTO `fa_admin_log` VALUES (186, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"7.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548405242);
INSERT INTO `fa_admin_log` VALUES (187, 1, 'admin', '/FastAdmin/public/admin/articlelists/add?dialog=1', '文章信息列表 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"111\",\"classify\":\"222\",\"image\":\"\\/uploads\\/20190125\\/1870844382544dba37a57ab05297d4bf.jpg\",\"atitle\":\"\\u5361\\u5c3c\",\"acontent\":\"<p>1\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p><p>\\u5355\\u8eab\\u5feb\\u4e50\\u808c\\u80a4\\u7c7b\\u4f3c\\u7684\\u7a7a\\u95f4\\u5206\\u5f00\\u4e86\\u65f6\\u523b\\u5230\\u4e86\\u623f\\u95f4\\u91cc\\u8bf4\\u7684\\u7c7b\\u4f3c\\u7684\\u770b\\u6cd5\\u5c31\\u662f\\u6253\\u5f00<\\/p><p>\\u96f6\\u552e\\u5e97\\u5c06\\u53d1\\u751f\\u4e86\\u8d37<\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548405249);
INSERT INTO `fa_admin_log` VALUES (188, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"agentLogo.png\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548405276);
INSERT INTO `fa_admin_log` VALUES (189, 1, 'admin', '/FastAdmin/public/admin/articlelists/add?dialog=1', '文章信息列表 添加', '{\"dialog\":\"1\",\"row\":{\"user\":\"3262\",\"classify\":\"365465\",\"image\":\"\\/uploads\\/20190125\\/2c7d1599d85aa49cfd85482d545e46b3.png\",\"atitle\":\"\\u6709\\u673a\",\"acontent\":\"<p>1\\u8fd9\\u901a\\u5e38\\u60c5\\u51b5\\u4e0b\\u90fd\\u662f\\u56e0\\u4e3a\\u670d\\u52a1\\u7aef\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u975eJSON\\u6570\\u636e\\u5bfc\\u81f4\\u7684\\uff0c\\u6211\\u4eec\\u53ef\\u80fd\\u901a\\u8fc7Chrome\\u8c37\\u6b4c\\u6d4f\\u89c8\\u5668\\u7684\\u5f00\\u53d1\\u8005\\u5de5\\u5177\\u6765\\u67e5\\u770b\\u5177\\u4f53\\u8fd4\\u56de\\u7684\\u6570\\u636e\\u6765\\u770b\\u662f\\u7c89\\u8272\\u4e4c\\u514b\\u5170\\u89d2\\u5ea6\\u770b\\u672a\\u7ecf\\u8089i\\u738b\\u79d1\\u5609\\u75af\\u72c2\\u8fdd\\u6cd5\\uff1b \\u5feb\\u6377\\u7684\\u65b9\\u5f0f\\u8003\\u8651\\u5230\\u808c\\u80a4\\u770b\\u6765\\u5c31\\u662f\\u5730\\u65b9\\u5f00\\u59cb\\u5c06\\u5bf9\\u65b9\\u51ef\\u6492\\u4eac\\u4e1c\\u65b9\\u62c9\\u8428\\u9644\\u8fd1\\u6df1\\u523b\\u7684\\u623f\\u95f4\\u7d22\\u79d1\\u6d1b\\u592b\\u805a\\u5c11\\u79bb\\u591a\\u8985\\u5c31\\u8fd9\\u4e48\\u5185\\u5b58\\u5361\\u7edd\\u5bf9\\u662f\\u63a5\\u53e3\\u662f\\u5426\\u53ef\\u5c31\\u662f\\u5927\\u5bb6\\u53d1\\u6325\\u5eb7\\u5e08\\u5085\\u5f00\\u59cb\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u6280\\u672f\\u7684\\u4f1a\\u8ba1\\u5e08\\u7b26\\u5408\\uff1biwjskdj\\uff1b\\u6536\\u8d39\\u65b9\\u5f0f\\u5bf9\\u7b26\\u5408\\u8003\\u751f\\u7684\\u56de\\u590d\\u808c\\u80a4\\u5feb\\u901f\\u51cf\\u80a5\\u534e\\u4e3a<\\/p><p>\\u5355\\u8eab\\u5feb\\u4e50\\u808c\\u80a4\\u7c7b\\u4f3c\\u7684\\u7a7a\\u95f4\\u5206\\u5f00\\u4e86\\u65f6\\u523b\\u5230\\u4e86\\u623f\\u95f4\\u91cc\\u8bf4\\u7684\\u7c7b\\u4f3c\\u7684\\u770b\\u6cd5\\u5c31\\u662f\\u6253\\u5f00<\\/p><p>\\u96f6\\u552e\\u5e97\\u5c06\\u53d1\\u751f\\u4e86\\u8d37<\\/p>\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548405283);
INSERT INTO `fa_admin_log` VALUES (190, 1, 'admin', '/FastAdmin/public/admin/indexuser/edit/ids/1?dialog=1', '用户表 编辑', '{\"dialog\":\"1\",\"row\":{\"username\":\"admin\",\"password\":\"12345678\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548407773);
INSERT INTO `fa_admin_log` VALUES (191, 1, 'admin', '/FastAdmin/public/admin/indexuser/del/ids/2', '用户表 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548407778);
INSERT INTO `fa_admin_log` VALUES (192, 1, 'admin', '/FastAdmin/public/admin/indexuser/del/ids/3', '用户表 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548407780);
INSERT INTO `fa_admin_log` VALUES (193, 1, 'admin', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\",\"__token__\":\"d4d70bc2a1093fd09dca527d54877dfa\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548464662);
INSERT INTO `fa_admin_log` VALUES (194, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/140?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"articlelists\",\"title\":\"\\u6587\\u7ae0\\u4fe1\\u606f\\u5217\\u8868\",\"icon\":\"fa fa-calendar\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"140\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548464980);
INSERT INTO `fa_admin_log` VALUES (195, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548464980);
INSERT INTO `fa_admin_log` VALUES (196, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/146?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"leftinfo\",\"title\":\"\\u4fa7\\u8fb9\\u680f\\u4fe1\\u606f\",\"icon\":\"fa fa-server\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"146\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548465391);
INSERT INTO `fa_admin_log` VALUES (197, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548465391);
INSERT INTO `fa_admin_log` VALUES (198, 1, 'admin', '/FastAdmin/public/admin/auth/rule/del/ids/146', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"146\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466054);
INSERT INTO `fa_admin_log` VALUES (199, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466055);
INSERT INTO `fa_admin_log` VALUES (200, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"adaf2edda3cc7cd9f00aee403401213fb80e9100.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466128);
INSERT INTO `fa_admin_log` VALUES (201, 1, 'admin', '/FastAdmin/public/admin/leftlist/add?dialog=1', '侧边栏信息 添加', '{\"dialog\":\"1\",\"row\":{\"nameid\":\"48546646854\",\"intro\":\"..........\",\"classify\":\"js\",\"article\":\"\",\"image\":\"\\/uploads\\/20190126\\/22a7d4518732db35a01a0f278dfc6e13.jpg\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466166);
INSERT INTO `fa_admin_log` VALUES (202, 1, 'admin', '/FastAdmin/public/admin/leftlist/edit/ids/1?dialog=1', '侧边栏信息 编辑', '{\"dialog\":\"1\",\"row\":{\"nameid\":\"Fastadmin\",\"intro\":\"..........\",\"classify\":\"js\",\"article\":\"\",\"image\":\"\\/uploads\\/20190126\\/22a7d4518732db35a01a0f278dfc6e13.jpg\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466368);
INSERT INTO `fa_admin_log` VALUES (203, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"touxiang.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466408);
INSERT INTO `fa_admin_log` VALUES (204, 1, 'admin', '/FastAdmin/public/admin/leftlist/add?dialog=1', '侧边栏信息 添加', '{\"dialog\":\"1\",\"row\":{\"nameid\":\"ZhiziBlog\",\"intro\":\"blog......\",\"classify\":\"js\",\"article\":\"thinkphp\",\"image\":\"\\/uploads\\/20190126\\/790e208b4a4e098df41313bb72f519df.jpg\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466410);
INSERT INTO `fa_admin_log` VALUES (205, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\\u6492\\u800c\\u975e\\u560e\\u65af\\u5927\\u9505\\u996d\\u4efb\\u5929\\u91ce\\u8ba4\\u540c\\u4ed6\\u4e0e\\u4f53\\u80b2\\u4f53\\u80b2\\u4e1a\\u4e3a\\u4ee3\\u4ef7\\u7acb\\u523b\\u5c06\\u5730\\u65b9\\u5f88\\u5c11\\u770b\\u5230\\u7d22\\u79d1\\u6d1b\\u592b\\u8fd8\\u662f\\u7a7a\\u95f4\\u7684\\u8bdd\\u662f\\u5426\\u96f7\\u514b\\u8428\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u5c31\\u662f\\u70e7\\u70e4\\u67b6\\u5730\\u65b9\\u8fd8\\u662f\\u89c9\\u5f97\\u5f88\\u601d\\u8003\\u808c\\u80a4\\u5408\\u9002\\u7684\\u673a\\u4f1a\",\"image\":\"\\/uploads\\/20190125\\/2ce6f4bba8a4e871e997ae15c7d8b7ea.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466677);
INSERT INTO `fa_admin_log` VALUES (206, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"09fa513d269759ee0a42ba52bffb43166d22df1d.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466865);
INSERT INTO `fa_admin_log` VALUES (207, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8033\\u673a\\u7136\\u540e\\u4ed6\\u95ee\\u54e6iurheoo \\u54e6ietoeirtuoer \\u6b27\\u4fc4\\u65e5\\u5fd2\\u8ba9\\u8bf6\\u8089\\u4f53\\u800c\\u8bf6\\u5982\\u9898\\u8033\\u5154\\u55ef\\u54e6iruterituierute\\u732b\\u79d1\\u52a8\\u7269\\u8fdb\\u800c\\u5bf9\\u4f5b\\u80fd\\u5462\\u73a9\\u73a9\\u5462\\u70e6\\u5462\\u7684\\u7a7a\\u95f4\\u6587\\u4ef6\\u770b\\u4e86\\u6211\\u5065\\u5eb7\\u7f51\\u91d1\\u989d\\u5747\\u4e3a\\uff1b\\u5076\\u7136\\u6211iejrowejr\\u800c\\u4eca\\u4eba \\u4e3a\\u501f\\u53e3\\u5f00\\u59cb\\u5bf9\\u65b9\\u5bb6\\u91cc\\u8bf4\\u62c9\\u6587\\u7a7a\\u8bb0\\u5206\\u5361\\u4e3a\\u8003\\u8651\\u5347\\u7ea7\\u670d\\u52a1\\u8d39\\u6211\\u4e86\\u89e3\\u4e07\\u79d1\\u6211\\u79bb\\u5f00\\u6587\\u5e93\\u53e3\\u5473\\u53ef\\uff1b \\u5f00\\u653e\\u5c31\\u5f00\\u59cb\\u65e0\\u6cd5\\u7f51\\u5ba2\\u670d\\u5373\\u53ef\\u5f00\\u53d1\\u5efa\\u8bbe\\uff1b\\u9644\\u8fd1\\u5965\\u65af\\u5361\\u9644\\u8fd1\\u554a\\uff1b\\u5362\\u5361\\u798f\\u8428\\u8482\\uff1b\\u6309\\u7406\\u8bf4\\u798f\\u5efa\\u7701\\uff1b\\u7684\\u7d22\\u7f57\\u79d1\\u592b\\u65af\\u5361iejfwjslk\\u3002\\u6697\\u793a\\u6cd5\\u5c31\\u662f\\uff1b\\u53d1\\u9759\\u5b89\\u5bfa\\u662f\\u5426\\u4f60\\u5403\\u51e1\\u4e86\\u6606\\u660e\\u4ec0\\u4e48iwijd\\u4f60\\u662f\\u4e0d\\u662fisha\\u81ea\\u7231\\u7684\\u4f60\\u540e\\u5e02\\u55f2\\u662f\\u62c9\\u8428\\u5927\\u5bb6\\u6309\\u65f6\\uff1b\\u6b27\\u5965\\u8fea\\u6b7b\\u7f51\\u7edc\\u79d1\\u6280\\u55ef\\u54e6\\u8f83\\u4e3aiwqljqwopjdopiwqej\\u6279\\u65e0\\u60c5\\u800c\\u60e7<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466867);
INSERT INTO `fa_admin_log` VALUES (208, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8033\\u673a\\u7136\\u540e\\u4ed6\\u95ee\\u54e6iurheoo \\u54e6ietoeirtuoer \\u6b27\\u4fc4\\u65e5\\u5fd2\\u8ba9\\u8bf6\\u8089\\u4f53\\u800c\\u8bf6\\u5982\\u9898\\u8033\\u5154\\u55ef\\u54e6iruterituierute\\u732b\\u79d1\\u52a8\\u7269\\u8fdb\\u800c\\u5bf9\\u4f5b\\u80fd\\u5462\\u73a9\\u73a9\\u5462\\u70e6\\u5462\\u7684\\u7a7a\\u95f4\\u6587\\u4ef6\\u770b\\u4e86\\u6211\\u5065\\u5eb7\\u7f51\\u91d1\\u989d\\u5747\\u4e3a\\uff1b\\u5076\\u7136\\u6211iejrowejr\\u800c\\u4eca\\u4eba \\u4e3a\\u501f\\u53e3\\u5f00\\u59cb\\u5bf9\\u65b9\\u5bb6\\u91cc\\u8bf4\\u62c9\\u6587\\u7a7a\\u8bb0\\u5206\\u5361\\u4e3a\\u8003\\u8651\\u5347\\u7ea7\\u670d\\u52a1\\u8d39\\u6211\\u4e86\\u89e3\\u4e07\\u79d1\\u6211\\u79bb\\u5f00\\u6587\\u5e93\\u53e3\\u5473\\u53ef\\uff1b \\u5f00\\u653e\\u5c31\\u5f00\\u59cb\\u65e0\\u6cd5\\u7f51\\u5ba2\\u670d\\u5373\\u53ef\\u5f00\\u53d1\\u5efa\\u8bbe\\uff1b\\u9644\\u8fd1\\u5965\\u65af\\u5361\\u9644\\u8fd1\\u554a\\uff1b\\u5362\\u5361\\u798f\\u8428\\u8482\\uff1b\\u6309\\u7406\\u8bf4\\u798f\\u5efa\\u7701\\uff1b\\u7684\\u7d22\\u7f57\\u79d1\\u592b\\u65af\\u5361iejfwjslk\\u3002\\u6697\\u793a\\u6cd5\\u5c31\\u662f\\uff1b\\u53d1\\u9759\\u5b89\\u5bfa\\u662f\\u5426\\u4f60\\u5403\\u51e1\\u4e86\\u6606\\u660e\\u4ec0\\u4e48iwijd\\u4f60\\u662f\\u4e0d\\u662fisha\\u81ea\\u7231\\u7684\\u4f60\\u540e\\u5e02\\u55f2\\u662f\\u62c9\\u8428\\u5927\\u5bb6\\u6309\\u65f6\\uff1b\\u6b27\\u5965\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466879);
INSERT INTO `fa_admin_log` VALUES (209, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8033\\u673a\\u7136\\u540e\\u4ed6\\u95ee\\u54e6iurheoo \\u54e6ietoeirtuoer \\u6b27\\u4fc4\\u65e5\\u5fd2\\u8ba9\\u8bf6\\u8089\\u4f53\\u800c\\u8bf6\\u5982\\u9898\\u8033\\u5154\\u55ef\\u54e6iruterituierute\\u732b\\u79d1\\u52a8\\u7269\\u8fdb\\u800c\\u5bf9\\u4f5b\\u80fd\\u5462\\u73a9\\u73a9\\u5462\\u70e6\\u5462\\u7684\\u7a7a\\u95f4\\u6587\\u4ef6\\u770b\\u4e86\\u6211\\u5065\\u5eb7\\u7f51\\u91d1\\u989d\\u5747\\u4e3a\\uff1b\\u5076\\u7136\\u6211iejrowejr\\u800c\\u4eca\\u4eba \\u4e3a\\u501f\\u53e3\\u5f00\\u59cb\\u5bf9\\u65b9\\u5bb6\\u91cc\\u8bf4\\u62c9\\u6587\\u7a7a\\u8bb0\\u5206\\u5361\\u4e3a\\u8003\\u8651\\u5347\\u7ea7\\u670d\\u52a1\\u8d39\\u6211\\u4e86\\u89e3\\u4e07\\u79d1\\u6211\\u79bb\\u5f00\\u6587\\u5e93\\u53e3\\u5473\\u53ef\\uff1b \\u5f00\\u653e\\u5c31\\u5f00\\u59cb\\u65e0\\u6cd5\\u7f51\\u5ba2\\u670d\\u5373\\u53ef\\u5f00\\u53d1\\u5efa\\u8bbe\\uff1b\\u9644\\u8fd1\\u5965\\u65af\\u5361\\u9644\\u8fd1\\u554a\\uff1b\\u5362\\u5361\\u798f\\u8428\\u8482\\uff1b\\u6309\\u7406\\u8bf4\\u798f\\u5efa\\u7701\\uff1b\\u7684\\u7d22\\u7f57\\u79d1\\u592b\\u65af\\u5361iejfwjslk\\u3002\\u6697\\u793a\\u6cd5\\u5c31\\u662f\\uff1b\\u53d1\\u9759\\u5b89\\u5bfa\\u662f\\u5426\\u4f60\\u5403\\u51e1\\u4e86\\u6606\\u660e\\u4ec0\\u4e48iwijd\\u4f60\\u662f\\u4e0d\\u662fisha\\u81ea\\u7231\\u7684\\u4f60\\u540e\\u5e02\\u55f2\\u662f\\u62c9\\u8428\\u5927\\u5bb6\\u6309\\u65f6\\uff1b\\u6b27\\u596511111<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548466939);
INSERT INTO `fa_admin_log` VALUES (210, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"55e736d12f2eb9383c7180bbd8628535e5dd6f5f.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548467033);
INSERT INTO `fa_admin_log` VALUES (211, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/1?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u5e2e\\u52a9\",\"intro\":\"\\u5927\\u5bb6\\u597d\",\"content\":\"<p>\\u5b8c\\u5168\\u513f\\u7ae5\\u5165\\u5473\\u513f\\u4ed6\\u513f\\u7ae5\\u70ed 1111<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/8e1b46f663b635032e401008ef7d2a80.jpg\",\"icon\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548467034);
INSERT INTO `fa_admin_log` VALUES (212, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"32fa828ba61ea8d32b478e4d9a0a304e251f5816.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548467045);
INSERT INTO `fa_admin_log` VALUES (213, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\\u6492\\u800c\\u975e\\u560e\\u65af\\u5927\\u9505\\u996d\\u4efb\\u5929\\u91ce\\u8ba4\\u540c\\u4ed6\\u4e0e\\u4f53\\u80b2\\u4f53\\u80b2\\u4e1a\\u4e3a\\u4ee3\\u4ef7\\u7acb\\u523b\\u5c06\\u5730\\u65b9\\u5f88\\u5c11\\u770b\\u5230\\u7d22\\u79d1\\u6d1b\\u592b\\u8fd8\\u662f\\u7a7a\\u95f4\\u7684\\u8bdd\\u662f\\u5426\\u96f7\\u514b\\u8428\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u5c31\\u662f\\u70e7\\u70e4\\u67b6\\u5730\\u65b9\\u8fd8\\u662f\\u89c9\\u5f97\\u5f88\\u601d\\u8003\\u808c\\u80a4\\u5408\\u9002\\u7684\\u673a\\u4f1a\",\"image\":\"\\/uploads\\/20190126\\/b48316ac0c5f04206ce018b83b49840d.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548467047);
INSERT INTO `fa_admin_log` VALUES (214, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\\u6492\\u800c\\u975e\\u560e\\u65af\\u5927\\u9505\\u996d\\u4efb\\u5929\\u91ce\\u8ba4\\u540c\\u4ed6\\u4e0e\\u4f53\\u80b2\\u4f53\\u80b2\\u4e1a\\u4e3a\\u4ee3\\u4ef7\\u7acb\\u523b\\u5c06\\u5730\\u65b9\\u5f88\\u5c11\\u770b\\u5230\\u7d22\\u79d1\\u6d1b\\u592b\\u8fd8\\u662f\\u7a7a\\u95f4\\u7684\\u8bdd\\u662f\\u5426\\u96f7\\u514b\\u8428\\u89c9\\u5f97\\u5f88\\u75af\\u72c2\\u5c31\\u662f\\u70e7\\u70e4\\u67b6\\u5730\\u65b9\\u8fd8\\u662f\\u89c9\\u5f97\\u5f88\\u601d\\u8003\\u808c\\u80a4\\u5408\\u9002\\u7684\\u673a\\u4f1a\",\"image\":\"\\/uploads\\/20190126\\/b48316ac0c5f04206ce018b83b49840d.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548467160);
INSERT INTO `fa_admin_log` VALUES (215, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"09fa513d269759ee0a42ba52bffb43166d22df1d.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469810);
INSERT INTO `fa_admin_log` VALUES (216, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8033\\u673a\\u7136\\u540e\\u4ed6\\u95ee\\u54e6iurheoo \\u54e6ietoeirtuoer \\u6b27\\u4fc4\\u65e5\\u5fd2\\u8ba9\\u8bf6\\u8089\\u4f53\\u800c\\u8bf6\\u5982\\u9898\\u8033\\u5154\\u55ef\\u54e6iruterituierute\\u732b\\u79d1\\u52a8\\u7269\\u8fdb\\u800c\\u5bf9\\u4f5b\\u80fd\\u5462\\u73a9\\u73a9\\u5462\\u70e6\\u5462\\u7684\\u7a7a\\u95f4\\u6587\\u4ef6\\u770b\\u4e86\\u6211\\u5065\\u5eb7\\u7f51\\u91d1\\u989d\\u5747\\u4e3a\\uff1b\\u5076\\u7136\\u6211iejrowejr\\u800c\\u4eca\\u4eba \\u4e3a\\u501f\\u53e3\\u5f00\\u59cb\\u5bf9\\u65b9\\u5bb6\\u91cc\\u8bf4\\u62c9\\u6587\\u7a7a\\u8bb0\\u5206\\u5361\\u4e3a\\u8003\\u8651\\u5347\\u7ea7\\u670d\\u52a1\\u8d39\\u6211\\u4e86\\u89e3\\u4e07\\u79d1\\u6211\\u79bb\\u5f00\\u6587\\u5e93\\u53e3\\u5473\\u53ef\\uff1b \\u5f00\\u653e\\u5c31\\u5f00\\u59cb\\u65e0\\u6cd5\\u7f51\\u5ba2\\u670d\\u5373\\u53ef\\u5f00\\u53d1\\u5efa\\u8bbe\\uff1b\\u9644\\u8fd1\\u5965\\u65af\\u5361\\u9644\\u8fd1\\u554a\\uff1b\\u5362\\u5361\\u798f\\u8428\\u8482\\uff1b\\u6309\\u7406\\u8bf4\\u798f\\u5efa\\u7701\\uff1b\\u7684\\u7d22\\u7f57\\u79d1\\u592b\\u65af\\u5361iejfwjslk\\u3002\\u6697\\u793a\\u6cd5\\u5c31\\u662f\\uff1b\\u53d1\\u9759\\u5b89\\u5bfa\\u662f\\u5426\\u4f60\\u5403\\u51e1\\u4e86\\u6606\\u660e\\u4ec0\\u4e48iwijd\\u4f60\\u662f\\u4e0d\\u662fisha\\u81ea\\u7231\\u7684\\u4f60\\u540e\\u5e02\\u55f2\\u662f\\u62c9\\u8428\\u5927\\u5bb6\\u6309\\u65f6\\uff1b\\u6b27\\u5965<img alt=\\\"09fa513d269759ee0a42ba52bffb43166d22df1d.jpg\\\" src=\\\"\\/FastAdmin\\/public\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\\\" width=\\\"580\\\" height=\\\"573\\\"><\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469813);
INSERT INTO `fa_admin_log` VALUES (217, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8033\\u673a\\u7136\\u540e\\u4ed6\\u95ee\\u54e6iurheoo \\u54e6ietoeirtuoer \\u6b27\\u4fc4\\u65e5\\u5fd2\\u8ba9\\u8bf6\\u8089\\u4f53\\u800c\\u8bf6\\u5982\\u9898\\u8033\\u5154\\u55ef\\u54e6iruterituierute\\u732b\\u79d1\\u52a8\\u7269\\u8fdb\\u800c\\u5bf9\\u4f5b\\u80fd\\u5462\\u73a9\\u73a9\\u5462\\u70e6\\u5462\\u7684\\u7a7a\\u95f4\\u6587\\u4ef6\\u770b\\u4e86\\u6211\\u5065\\u5eb7\\u7f51\\u91d1\\u989d\\u5747\\u4e3a\\uff1b\\u5076\\u7136\\u6211iejrowejr\\u800c\\u4eca\\u4eba \\u4e3a\\u501f\\u53e3\\u5f00\\u59cb\\u5bf9\\u65b9\\u5bb6\\u91cc\\u8bf4\\u62c9\\u6587\\u7a7a\\u8bb0\\u5206\\u5361\\u4e3a\\u8003\\u8651\\u5347\\u7ea7\\u670d\\u52a1\\u8d39\\u6211\\u4e86\\u89e3\\u4e07\\u79d1\\u6211\\u79bb\\u5f00\\u6587\\u5e93\\u53e3\\u5473\\u53ef\\uff1b \\u5f00\\u653e\\u5c31\\u5f00\\u59cb\\u65e0\\u6cd5\\u7f51\\u5ba2\\u670d\\u5373\\u53ef\\u5f00\\u53d1\\u5efa\\u8bbe\\uff1b\\u9644\\u8fd1\\u5965\\u65af\\u5361\\u9644\\u8fd1\\u554a\\uff1b\\u5362\\u5361\\u798f\\u8428\\u8482\\uff1b\\u6309\\u7406\\u8bf4\\u798f\\u5efa\\u7701\\uff1b\\u7684\\u7d22\\u7f57\\u79d1\\u592b\\u65af\\u5361iejfwjslk\\u3002\\u6697\\u793a\\u6cd5\\u5c31\\u662f\\uff1b\\u53d1\\u9759\\u5b89\\u5bfa\\u662f\\u5426\\u4f60\\u5403\\u51e1\\u4e86\\u6606\\u660e\\u4ec0\\u4e48iwijd\\u4f60\\u662f\\u4e0d\\u662fisha\\u81ea\\u7231\\u7684\\u4f60\\u540e\\u5e02\\u55f2\\u662f\\u62c9\\u8428\\u5927\\u5bb6\\u6309\\u65f6\\uff1b\\u6211\\u5bb6\\u90fd\\uff1b\\u770b\\u4e86\\uff1b\\u70e7\\u70e4\\u67b6\\u7684\\u65b9\\u5f0f\\u770b\\u4e86\\u5c31\\u53d1\\u4e86\\uff1b\\u554a<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469829);
INSERT INTO `fa_admin_log` VALUES (218, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/1?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u5e2e\\u52a9\",\"intro\":\"\\u5927\\u5bb6\\u597d\",\"content\":\"<p style=\\\"margin-left: 40px;\\\">\\u5b8c\\u524d\\u5f80\\u524d\\u5f80\\u8f7b\\u6b66\\u5668&nbsp;\\u8f7b\\u6b66\\u5668\\u5168\\u513f\\u7ae5\\u5165\\u5473\\u513f\\u4ed6\\u513f\\u7ae5\\u70ed 1111<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/8e1b46f663b635032e401008ef7d2a80.jpg\",\"icon\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469854);
INSERT INTO `fa_admin_log` VALUES (219, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469864);
INSERT INTO `fa_admin_log` VALUES (220, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\\u4f60\\u597d\\u554a\",\"content\":\"\",\"image\":\"\\/uploads\\/20190126\\/b48316ac0c5f04206ce018b83b49840d.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469869);
INSERT INTO `fa_admin_log` VALUES (221, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/1?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u5e2e\\u52a9\",\"intro\":\"\\u5927\\u5bb6\\u597d\",\"content\":\"\",\"image\":\"\\/uploads\\/20190126\\/8e1b46f663b635032e401008ef7d2a80.jpg\",\"icon\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469880);
INSERT INTO `fa_admin_log` VALUES (222, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\\u8fd9\\u662f\\u4e00\\u4e2a\\u9996\\u9875\\u4fe1\\u606f\",\"content\":\"<p>\\u8fd9\\u662f\\u4e00\\u4e2a\\u535a\\u5ba2~<br><br><\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469947);
INSERT INTO `fa_admin_log` VALUES (223, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/3?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4fe1\\u606f\\u8bf4\\u660e\",\"intro\":\"\",\"content\":\"<p>\\u8fd9\\u662f\\u4e00\\u4e2a\\u535a\\u5ba2~<br><br><\\/p>\",\"image\":\"\\/uploads\\/20190126\\/5abea8d7980b294d753812804b19dc32.jpg\",\"icon\":\"\"},\"ids\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469968);
INSERT INTO `fa_admin_log` VALUES (224, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/2?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u4ecb\\u7ecd\",\"intro\":\"\",\"content\":\"<p>\\u8fd9\\u662f\\u4e00\\u4e2a\\u535a\\u5ba2~<br><br><\\/p>\",\"image\":\"\\/uploads\\/20190126\\/b48316ac0c5f04206ce018b83b49840d.jpg\",\"icon\":\"fa fa-align-center\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469987);
INSERT INTO `fa_admin_log` VALUES (225, 1, 'admin', '/FastAdmin/public/admin/home/edit/ids/1?dialog=1', '首页表信息 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u5e2e\\u52a9\",\"intro\":\"\\u5927\\u5bb6\\u597d\",\"content\":\"<p>\\u8fd9\\u662f\\u4e00\\u4e2a\\u535a\\u5ba2~<\\/p>\",\"image\":\"\\/uploads\\/20190126\\/8e1b46f663b635032e401008ef7d2a80.jpg\",\"icon\":\"\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548469995);
INSERT INTO `fa_admin_log` VALUES (226, 1, 'admin', '/FastAdmin/public/admin/classify/del/ids/3', '分类表 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548470015);
INSERT INTO `fa_admin_log` VALUES (227, 1, 'admin', '/FastAdmin/public/admin/classify/edit/ids/1?dialog=1', '分类表 编辑', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"php\",\"ccontent\":\"thinkphp\"},\"ids\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548470023);
INSERT INTO `fa_admin_log` VALUES (228, 1, 'admin', '/FastAdmin/public/admin/classify/edit/ids/2?dialog=1', '分类表 编辑', '{\"dialog\":\"1\",\"row\":{\"ctitle\":\"js\",\"ccontent\":\"javascript\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548470044);
INSERT INTO `fa_admin_log` VALUES (229, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"touxiang.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490584);
INSERT INTO `fa_admin_log` VALUES (230, 1, 'admin', '/FastAdmin/public/admin/ajax/upload', '', '{\"name\":\"touxiang.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490610);
INSERT INTO `fa_admin_log` VALUES (231, 1, 'admin', '/FastAdmin/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20190126\\/790e208b4a4e098df41313bb72f519df.jpg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490611);
INSERT INTO `fa_admin_log` VALUES (232, 1, 'admin', '/FastAdmin/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20190126\\/790e208b4a4e098df41313bb72f519df.jpg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490613);
INSERT INTO `fa_admin_log` VALUES (233, 1, 'admin', '/FastAdmin/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20190126\\/790e208b4a4e098df41313bb72f519df.jpg\",\"email\":\"804665121@qq.com\",\"nickname\":\"\\u6800\\u5b50\",\"password\":\"zhizi12345678\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490684);
INSERT INTO `fa_admin_log` VALUES (234, 1, 'admin', '/FastAdmin/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20190126\\/790e208b4a4e098df41313bb72f519df.jpg\",\"email\":\"804665121@qq.com\",\"nickname\":\"\\u6800\\u5b50\",\"password\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490689);
INSERT INTO `fa_admin_log` VALUES (235, 1, 'admin', '/FastAdmin/public/admin/index/login', '登录', '{\"__token__\":\"c349ae75c2a9463992fbc9996f9a0ac4\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490703);
INSERT INTO `fa_admin_log` VALUES (236, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/152?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"leftlist\",\"title\":\"\\u4fa7\\u8fb9\\u680f\\u7528\\u6237\\u4fe1\\u606f\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"152\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490830);
INSERT INTO `fa_admin_log` VALUES (237, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490830);
INSERT INTO `fa_admin_log` VALUES (238, 1, 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/152?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"leftlist\",\"title\":\"\\u4fa7\\u8fb9\\u680f\\u7528\\u6237\\u4fe1\\u606f\",\"icon\":\"fa fa-hand-peace-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"152\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490857);
INSERT INTO `fa_admin_log` VALUES (239, 1, 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', 1548490858);
INSERT INTO `fa_admin_log` VALUES (240, 0, 'Unknown', '/blog/public/admin/index/login?url=%2Fblog%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/blog\\/public\\/admin\",\"__token__\":\"f2c29c17a3162c34cbcc1bf769792a3a\",\"username\":\"root\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3679.0 Safari/537.36', 1549880604);
INSERT INTO `fa_admin_log` VALUES (241, 0, 'Unknown', '/blog/public/admin/index/login?url=%2Fblog%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/blog\\/public\\/admin\",\"__token__\":\"c9ab16b0b3f9aa8a928fe161260a05b6\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3679.0 Safari/537.36', 1549880631);
INSERT INTO `fa_admin_log` VALUES (242, 0, 'Unknown', '/blog/public/admin/index/login?url=%2Fblog%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/blog\\/public\\/admin\",\"__token__\":\"b822ed816fb631643d4dc326a3e06521\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3679.0 Safari/537.36', 1549880643);
INSERT INTO `fa_admin_log` VALUES (243, 0, 'Unknown', '/blog/public/admin/index/login?url=%2Fblog%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/blog\\/public\\/admin\",\"__token__\":\"40ee16e1ca80da3ae07756c2f86d30fa\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3679.0 Safari/537.36', 1549880726);
INSERT INTO `fa_admin_log` VALUES (244, 1, 'admin', '/blog/public/admin/index/login?url=%2Fblog%2Fpublic%2Fadmin', '登录', '{\"url\":\"\\/blog\\/public\\/admin\",\"__token__\":\"2aad9ce85ab0b7aac047ae33544e88fe\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3679.0 Safari/537.36', 1549880748);

-- ----------------------------
-- Table structure for fa_articlelists
-- ----------------------------
DROP TABLE IF EXISTS `fa_articlelists`;
CREATE TABLE `fa_articlelists`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `createtime` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章图片',
  `atitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `acontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页展示内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章信息列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_articlelists
-- ----------------------------
INSERT INTO `fa_articlelists` VALUES (1, 'zhizi', 'php', 1548385190, '/uploads/20190125/2c7d1599d85aa49cfd85482d545e46b3.png', 'zheshi ', '<p>1这通常情况下都是因为服务端返回的数据非JSON数据导致的，我们可能通过Chrome谷歌浏览器的开发者工具来查看具体返回的数据来看是粉色乌克兰角度看未经肉i王科嘉疯狂违法； 快捷的方式考虑到肌肤看来就是地方开始将对方凯撒京东方拉萨附近深刻的房间索科洛夫聚少离多覅就这么内存卡绝对是接口是否可就是大家发挥康师傅开始觉得很疯狂技术的会计师符合；iwjskdj；收费方式对符合考生的回复肌肤快速减肥华为</p><p>单身快乐肌肤类似的空间分开了时刻到了房间里说的类似的看法就是打开</p><p>零售店将发生了贷');
INSERT INTO `fa_articlelists` VALUES (2, 'zhizi', '3454 ', 1548400528, '/uploads/20190125/155963507d0fa17104bd37eb32c894fe.jpg', '这是iwuedhiw', '<ol><li>&nbsp;不能存表情&nbsp;对为啥&nbsp; 图片也不能存&nbsp; 这还多了一个标签<br></li><li>安装');
INSERT INTO `fa_articlelists` VALUES (4, 'zhizi', 'php', 1548404446, '/uploads/20190125/c4532528008c64550652ad033fb8c794.png', 'zheshi ', '');
INSERT INTO `fa_articlelists` VALUES (5, '111', '222', 1548405249, '/uploads/20190125/1870844382544dba37a57ab05297d4bf.jpg', '卡尼', '<p>1这通常情况下都是因为服务端返回的数据非JSON数据导致的，我们可能通过Chrome谷歌浏览器的开发者工具来查看具体返回的数据来看是粉色乌克兰角度看未经肉i王科嘉疯狂违法； 快捷的方式考虑到肌肤看来就是地方开始将对方凯撒京东方拉萨附近深刻的房间索科洛夫聚少离多覅就这么内存卡绝对是接口是否可就是大家发挥康师傅开始觉得很疯狂技术的会计师符合；iwjskdj；收费方式对符合考生的回复肌肤快速减肥华为</p><p>单身快乐肌肤类似的空间分开了时刻到了房间里说的类似的看法就是打开</p><p>零售店将发生了贷');
INSERT INTO `fa_articlelists` VALUES (6, '3262', '365465', 1548405283, '/uploads/20190125/2c7d1599d85aa49cfd85482d545e46b3.png', '有机', '<p>1这通常情况下都是因为服务端返回的数据非JSON数据导致的，我们可能通过Chrome谷歌浏览器的开发者工具来查看具体返回的数据来看是粉色乌克兰角度看未经肉i王科嘉疯狂违法； 快捷的方式考虑到肌肤看来就是地方开始将对方凯撒京东方拉萨附近深刻的房间索科洛夫聚少离多覅就这么内存卡绝对是接口是否可就是大家发挥康师傅开始觉得很疯狂技术的会计师符合；iwjskdj；收费方式对符合考生的回复肌肤快速减肥华为</p><p>单身快乐肌肤类似的空间分开了时刻到了房间里说的类似的看法就是打开</p><p>零售店将发生了贷');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建日期',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES (2, 1, 0, '/uploads/20190125/2ce6f4bba8a4e871e997ae15c7d8b7ea.jpg', '73', '30', 'jpg', 0, 4380, 'image/jpeg', '', 1548399226, 1548399226, 1548399226, 'local', 'c7372822d99d6cef3e636ea27409f396befbea92');
INSERT INTO `fa_attachment` VALUES (3, 1, 0, '/uploads/20190125/0a1faedbfeb32a0ac3044ece08b8be89.jpg', '62', '36', 'jpg', 0, 3938, 'image/jpeg', '', 1548399398, 1548399398, 1548399398, 'local', '34bab4a3937739ede851057b2a0c7bce01c2ed0b');
INSERT INTO `fa_attachment` VALUES (4, 1, 0, '/uploads/20190125/4c83b1dd717ea611d296bb5c285bf63c.jpg', '61', '37', 'jpg', 0, 3936, 'image/jpeg', '', 1548399398, 1548399398, 1548399398, 'local', 'cad45cf110a00891a014d80b80eb17cd9609b714');
INSERT INTO `fa_attachment` VALUES (5, 1, 0, '/uploads/20190125/322f420a7d526628ee93f9a5b22d30ad.jpg', '55', '34', 'jpg', 0, 3013, 'image/jpeg', '', 1548399399, 1548399399, 1548399399, 'local', 'af7835fb6c18d521f440c98c93df3a0ded3013da');
INSERT INTO `fa_attachment` VALUES (6, 1, 0, '/uploads/20190125/6f2db11f89249e406a63b6796b158c22.png', '200', '200', 'png', 0, 1747, 'image/png', '', 1548400522, 1548400522, 1548400522, 'local', '5fb57f59e3f183f0718ecb7b802f868069ad8a28');
INSERT INTO `fa_attachment` VALUES (7, 1, 0, '/uploads/20190125/155963507d0fa17104bd37eb32c894fe.jpg', '112', '111', 'jpg', 0, 9237, 'image/jpeg', '', 1548400735, 1548400735, 1548400735, 'local', 'e7ccb08de354a2a2576b81f7ed12c4a9637ca1b7');
INSERT INTO `fa_attachment` VALUES (8, 1, 0, '/uploads/20190125/2c7d1599d85aa49cfd85482d545e46b3.png', '84', '84', 'png', 0, 3293, 'image/png', '', 1548401446, 1548401446, 1548401446, 'local', 'f7a725883d4707737481121f6bedc075327150fe');
INSERT INTO `fa_attachment` VALUES (9, 1, 0, '/uploads/20190125/3fecb728430ce5e0af3c04007ea61557.png', '140', '168', 'png', 0, 42310, 'image/png', '', 1548404226, 1548404226, 1548404226, 'local', 'c746e525176b9fc3662f4cbf856713420d12cd20');
INSERT INTO `fa_attachment` VALUES (10, 1, 0, '/uploads/20190125/c4532528008c64550652ad033fb8c794.png', '200', '200', 'png', 0, 5135, 'image/png', '', 1548404434, 1548404434, 1548404434, 'local', 'ab6c8bfabe552b92593f00a297ab8bd5826b421e');
INSERT INTO `fa_attachment` VALUES (11, 1, 0, '/uploads/20190125/6f2db11f89249e406a63b6796b158c22.png', '200', '200', 'png', 0, 1747, 'image/png', '', 1548404808, 1548404808, 1548404808, 'local', '5fb57f59e3f183f0718ecb7b802f868069ad8a28');
INSERT INTO `fa_attachment` VALUES (12, 1, 0, '/uploads/20190125/34789b5ec01c93ac77d9302a718c9718.jpg', '112', '111', 'jpg', 0, 5611, 'image/jpeg', '', 1548404847, 1548404847, 1548404847, 'local', '182a6cfb77b815a205458c3d7a53f832f60096e5');
INSERT INTO `fa_attachment` VALUES (13, 1, 0, '/uploads/20190125/e66077af0796168dd65861e3e4206edd.jpg', '112', '111', 'jpg', 0, 8596, 'image/jpeg', '', 1548404848, 1548404848, 1548404848, 'local', 'be4a7c9f030d26362e9323a73e841fbc7522486d');
INSERT INTO `fa_attachment` VALUES (14, 1, 0, '/uploads/20190125/4c49cdf3968fb2b4be7ac9d8e221bd34.jpg', '112', '111', 'jpg', 0, 7805, 'image/jpeg', '', 1548404848, 1548404848, 1548404848, 'local', '4ce7607f1485538e445cb5e6dd714806ade74e84');
INSERT INTO `fa_attachment` VALUES (15, 1, 0, '/uploads/20190125/ee22751f3d8afef1f4ce87dfbb6cb370.jpg', '112', '111', 'jpg', 0, 6712, 'image/jpeg', '', 1548404848, 1548404848, 1548404848, 'local', 'cba37a083558c1f8263b4dfc35989814e00403df');
INSERT INTO `fa_attachment` VALUES (16, 1, 0, '/uploads/20190125/1af8105e25a885a5dc9f45c6d4250c4c.jpg', '112', '111', 'jpg', 0, 7780, 'image/jpeg', '', 1548404850, 1548404850, 1548404850, 'local', 'aee93c3ec1b02accca90ddaee974262b791f4faf');
INSERT INTO `fa_attachment` VALUES (17, 1, 0, '/uploads/20190125/1870844382544dba37a57ab05297d4bf.jpg', '600', '400', 'jpg', 0, 81075, 'image/jpeg', '', 1548405242, 1548405242, 1548405242, 'local', 'b39d2a248b207cf34b9f1cdecc92211e78af6ee1');
INSERT INTO `fa_attachment` VALUES (18, 1, 0, '/uploads/20190125/2c7d1599d85aa49cfd85482d545e46b3.png', '84', '84', 'png', 0, 3293, 'image/png', '', 1548405276, 1548405276, 1548405276, 'local', 'f7a725883d4707737481121f6bedc075327150fe');
INSERT INTO `fa_attachment` VALUES (19, 1, 0, '/uploads/20190126/22a7d4518732db35a01a0f278dfc6e13.jpg', '580', '580', 'jpg', 0, 65404, 'image/jpeg', '', 1548466128, 1548466128, 1548466128, 'local', 'b8c3ef3c47952d551c5bee6b02059da9948d0a70');
INSERT INTO `fa_attachment` VALUES (20, 1, 0, '/uploads/20190126/790e208b4a4e098df41313bb72f519df.jpg', '580', '580', 'jpg', 0, 39850, 'image/jpeg', '', 1548466408, 1548466408, 1548466408, 'local', 'a7f98751408fb32fe80a16a797413a70e81f8c20');
INSERT INTO `fa_attachment` VALUES (21, 1, 0, '/uploads/20190126/5abea8d7980b294d753812804b19dc32.jpg', '580', '573', 'jpg', 0, 38030, 'image/jpeg', '', 1548466865, 1548466865, 1548466865, 'local', '9202487d6db2d42bfa6251983cea7944be7dd912');
INSERT INTO `fa_attachment` VALUES (22, 1, 0, '/uploads/20190126/8e1b46f663b635032e401008ef7d2a80.jpg', '362', '362', 'jpg', 0, 15129, 'image/jpeg', '', 1548467033, 1548467033, 1548467033, 'local', '0388802bea661bf4fc41dd27bece33cb7cab4f22');
INSERT INTO `fa_attachment` VALUES (23, 1, 0, '/uploads/20190126/b48316ac0c5f04206ce018b83b49840d.jpg', '580', '712', 'jpg', 0, 13454, 'image/jpeg', '', 1548467045, 1548467045, 1548467045, 'local', '7e24a3a87cb7dcaedbc144c9c6b9778dcc0e516d');
INSERT INTO `fa_attachment` VALUES (24, 1, 0, '/uploads/20190126/5abea8d7980b294d753812804b19dc32.jpg', '580', '573', 'jpg', 0, 38030, 'image/jpeg', '', 1548469810, 1548469810, 1548469810, 'local', '9202487d6db2d42bfa6251983cea7944be7dd912');
INSERT INTO `fa_attachment` VALUES (25, 1, 0, '/uploads/20190126/790e208b4a4e098df41313bb72f519df.jpg', '580', '580', 'jpg', 0, 39850, 'image/jpeg', '', 1548490584, 1548490584, 1548490584, 'local', 'a7f98751408fb32fe80a16a797413a70e81f8c20');
INSERT INTO `fa_attachment` VALUES (26, 1, 0, '/uploads/20190126/790e208b4a4e098df41313bb72f519df.jpg', '580', '580', 'jpg', 0, 39850, 'image/jpeg', '', 1548490610, 1548490610, 1548490610, 'local', 'a7f98751408fb32fe80a16a797413a70e81f8c20');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-list', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', '会员规则', 'fa fa-align-right', '', '', 1, 1516374729, 1548238724, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (98, 'file', 0, 'message', '留言表', 'fa fa-calendar-check-o', '', '', 1, 1548238298, 1548238760, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (99, 'file', 98, 'message/index', '查看', 'fa fa-circle-o', '', '', 0, 1548238298, 1548238298, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (100, 'file', 98, 'message/add', '添加', 'fa fa-circle-o', '', '', 0, 1548238298, 1548238298, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (101, 'file', 98, 'message/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548238298, 1548238298, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (102, 'file', 98, 'message/del', '删除', 'fa fa-circle-o', '', '', 0, 1548238298, 1548238298, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (103, 'file', 98, 'message/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548238298, 1548238298, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (104, 'file', 0, 'home', '首页表信息', 'fa fa-home', '', '', 1, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (105, 'file', 104, 'home/index', '查看', 'fa fa-circle-o', '', '', 0, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (106, 'file', 104, 'home/add', '添加', 'fa fa-circle-o', '', '', 0, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (107, 'file', 104, 'home/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (108, 'file', 104, 'home/del', '删除', 'fa fa-circle-o', '', '', 0, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (109, 'file', 104, 'home/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548238364, 1548238364, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (110, 'file', 0, 'classify', '分类表', 'fa fa-bar-chart-o', '', '', 1, 1548238403, 1548238733, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (111, 'file', 110, 'classify/index', '查看', 'fa fa-circle-o', '', '', 0, 1548238403, 1548238403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (112, 'file', 110, 'classify/add', '添加', 'fa fa-circle-o', '', '', 0, 1548238403, 1548238403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (113, 'file', 110, 'classify/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548238403, 1548238403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (114, 'file', 110, 'classify/del', '删除', 'fa fa-circle-o', '', '', 0, 1548238403, 1548238403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (115, 'file', 110, 'classify/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548238403, 1548238403, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (122, 'file', 0, 'indexuser', '用户表', 'fa fa-user', '', '', 1, 1548238589, 1548238746, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (123, 'file', 122, 'indexuser/index', '查看', 'fa fa-circle-o', '', '', 0, 1548238589, 1548238589, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (124, 'file', 122, 'indexuser/add', '添加', 'fa fa-circle-o', '', '', 0, 1548238589, 1548238589, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (125, 'file', 122, 'indexuser/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548238589, 1548238589, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (126, 'file', 122, 'indexuser/del', '删除', 'fa fa-circle-o', '', '', 0, 1548238589, 1548238589, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (127, 'file', 122, 'indexuser/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548238589, 1548238589, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (140, 'file', 0, 'articlelists', '文章信息列表', 'fa fa-calendar', '', '', 1, 1548400355, 1548464980, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (141, 'file', 140, 'articlelists/index', '查看', 'fa fa-circle-o', '', '', 0, 1548400355, 1548400355, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (142, 'file', 140, 'articlelists/add', '添加', 'fa fa-circle-o', '', '', 0, 1548400355, 1548400355, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (143, 'file', 140, 'articlelists/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548400355, 1548400355, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (144, 'file', 140, 'articlelists/del', '删除', 'fa fa-circle-o', '', '', 0, 1548400355, 1548400355, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (145, 'file', 140, 'articlelists/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548400355, 1548400355, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (152, 'file', 0, 'leftlist', '侧边栏用户信息', 'fa fa-hand-peace-o', '', '', 1, 1548466024, 1548490857, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (153, 'file', 152, 'leftlist/index', '查看', 'fa fa-circle-o', '', '', 0, 1548466024, 1548466024, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (154, 'file', 152, 'leftlist/add', '添加', 'fa fa-circle-o', '', '', 0, 1548466024, 1548466024, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (155, 'file', 152, 'leftlist/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548466024, 1548466024, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (156, 'file', 152, 'leftlist/del', '删除', 'fa fa-circle-o', '', '', 0, 1548466024, 1548466024, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (157, 'file', 152, 'leftlist/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548466024, 1548466024, 0, 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- ----------------------------
-- Table structure for fa_classify
-- ----------------------------
DROP TABLE IF EXISTS `fa_classify`;
CREATE TABLE `fa_classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ctitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类标题',
  `ccontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_classify
-- ----------------------------
INSERT INTO `fa_classify` VALUES (1, 'php', 'thinkphp');
INSERT INTO `fa_classify` VALUES (2, 'js', 'javascript');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_count
-- ----------------------------
DROP TABLE IF EXISTS `fa_count`;
CREATE TABLE `fa_count`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) NULL DEFAULT NULL COMMENT '年',
  `times` time NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '刷新时间(int)',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_count
-- ----------------------------
INSERT INTO `fa_count` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/qrcode.png', '/assets/img/qrcode.png', '/assets/img/qrcode.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1547888411, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_home
-- ----------------------------
DROP TABLE IF EXISTS `fa_home`;
CREATE TABLE `fa_home`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `intro` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `createtime` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页表信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_home
-- ----------------------------
INSERT INTO `fa_home` VALUES (1, '帮助', '大家好', '<p>这是一个博客~</p>', '/uploads/20190126/8e1b46f663b635032e401008ef7d2a80.jpg', 2019, 1548469995, '');
INSERT INTO `fa_home` VALUES (2, '介绍', '', '<p>这是一个博客~<br><br></p>', '/uploads/20190126/b48316ac0c5f04206ce018b83b49840d.jpg', 2019, 1548469987, 'fa fa-align-center');
INSERT INTO `fa_home` VALUES (3, '信息说明', '', '<p>这是一个博客~<br><br></p>', '/uploads/20190126/5abea8d7980b294d753812804b19dc32.jpg', NULL, 1548469968, '');

-- ----------------------------
-- Table structure for fa_indexuser
-- ----------------------------
DROP TABLE IF EXISTS `fa_indexuser`;
CREATE TABLE `fa_indexuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_indexuser
-- ----------------------------
INSERT INTO `fa_indexuser` VALUES (1, 'admin', '12345678');

-- ----------------------------
-- Table structure for fa_informal
-- ----------------------------
DROP TABLE IF EXISTS `fa_informal`;
CREATE TABLE `fa_informal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `createtime` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_informal
-- ----------------------------
INSERT INTO `fa_informal` VALUES (1, '这是一个秋天', 1549888481, '这里的稻草软绵绵~');
INSERT INTO `fa_informal` VALUES (2, '这是一个秋天', 1549888484, '这里的稻草软绵绵~');
INSERT INTO `fa_informal` VALUES (3, '这是一个秋天', 1549888489, '这里的稻草软绵绵~');
INSERT INTO `fa_informal` VALUES (4, '这是一个秋天', 1549888489, '这里的稻草软绵绵~');
INSERT INTO `fa_informal` VALUES (5, '这是一个秋天', 1549888489, '这里的稻草软绵绵~');
INSERT INTO `fa_informal` VALUES (6, 'www', 1549888510, '王企鹅群无');
INSERT INTO `fa_informal` VALUES (7, 'www', 1549888511, '王企鹅群无');
INSERT INTO `fa_informal` VALUES (8, '儿童', 1549888538, '我');

-- ----------------------------
-- Table structure for fa_leftlist
-- ----------------------------
DROP TABLE IF EXISTS `fa_leftlist`;
CREATE TABLE `fa_leftlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `nameid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户简介',
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `article` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '侧边栏信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_leftlist
-- ----------------------------
INSERT INTO `fa_leftlist` VALUES (1, '/uploads/20190126/22a7d4518732db35a01a0f278dfc6e13.jpg', 'Fastadmin', '..........', 'js', '');
INSERT INTO `fa_leftlist` VALUES (2, '/uploads/20190126/790e208b4a4e098df41313bb72f519df.jpg', 'ZhiziBlog', 'blog......', 'js', 'thinkphp');

-- ----------------------------
-- Table structure for fa_message
-- ----------------------------
DROP TABLE IF EXISTS `fa_message`;
CREATE TABLE `fa_message`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `mtitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言标题',
  `minfo` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言信息',
  `createtime` int(100) NULL DEFAULT NULL COMMENT '头像图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_message
-- ----------------------------
INSERT INTO `fa_message` VALUES (00000000013, '1111', '我们都知道后台/admin是我们最常用的登录入口，方便的同时也留下了隐患，如果你刚好使用了admin/123456这种账号密码的方式，会导致我们的后台完全暴露在外。\n因此我们建议修改后台的登录入口，达', 1548386868);
INSERT INTO `fa_message` VALUES (00000000014, '1111', 'usage: git config [<options>]\n\nConfig file location\n    --global              use global config file', 1548386887);
INSERT INTO `fa_message` VALUES (00000000015, '2222', '我们都知道后台/admin是我们最常用的登录入口，方便的同时也留下了隐患，如果你刚好使用了admin/123456这种账号密码的方式，会导致我们的后台完全暴露在外。\n因此我们建议修改后台的登录入口，达', 1548386913);
INSERT INTO `fa_message` VALUES (00000000016, '222', '我们都知道后台/admin是我们最常用的登录入口，方便的同时也留下了隐患，如果你刚好使用了admin/123456这种账号密码的方式，会导致我们的后台完全暴露在外。\n因此我们建议修改后台的登录入口，达', 1548386949);
INSERT INTO `fa_message` VALUES (00000000017, '4444', '我们都知道后台/admin是我们最常用的登录入口，方便的同时也留下了隐患，如果你刚好使用了admin/123456这种账号密码的方式，会导致我们的后台完全暴露在外。\n因此我们建议修改后台的登录入口，达到隐藏后台登录入口的效果。					', 1548387007);
INSERT INTO `fa_message` VALUES (00000000018, '23234324', 'GUANYU JSAKSFHDSDFHKSNXDFNSDJkjdfhksajd开始就到福建省看到可视对讲法律上的开发建设力度看开始的福建省看到减肥路上的看法家里的可视对讲福克斯大家疯狂的数据反馈可视对讲疯狂的房间看克里斯蒂房间的空间疯狂的房间地方开始的佛教的看法家里的看法可视对讲放得开鲁迅，空心菜，门口看看到底靠肯定是罚款决定是否健康都是深刻的疯狂的房间肯定是附近看到警方立刻开始的附近看到附近开速度快警方当时开发建设的看了房深刻的房间都开始了飞机', 1548387050);
INSERT INTO `fa_message` VALUES (00000000019, '2324234', '		32423343423		', 1548395615);
INSERT INTO `fa_message` VALUES (00000000020, '之治时代开始', '完全的客户完全靠乌克兰多年来我去看奥克兰市难道卢萨卡年历卡受到了卡手机\n了；速度快哈市；来得及案例开始加大了；skdj阿克苏绝对不能；aklsd了卡杰诗的；askd爱上；路况好地方；爱丽丝开发哈里；思考肌肤；绿卡时间；两地分居爱上；lfk考虑撒娇部分卡萨帝警方还不、适当放宽世界的回复；\n路上看到积分榜；sdkifhnksldfhnsnkd斯卡洛南方；撒但考虑发卡量双方的卡就是卡手机能否尽快萨芬娜凯撒就\n卡手机发表凯撒肌肤电脑LKSFNSKLDJN', 1548411002);
INSERT INTO `fa_message` VALUES (00000000021, '123213123', '2311243243434435					', 1548468016);
INSERT INTO `fa_message` VALUES (00000000022, '2134123423', '	23423423432432的份儿				', 1548468025);
INSERT INTO `fa_message` VALUES (00000000023, '展示', '拉萨扩大双方都是手动阀手动阀色让风儿分为人非人打发打发士大夫大师傅的士大夫大师傅					', 1548489051);
INSERT INTO `fa_message` VALUES (00000000024, 'AS', '	我去				', 1549886165);

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) NULL DEFAULT NULL COMMENT '年',
  `times` time NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '刷新时间(int)',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '加入时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', '12345678', 'rpR6Bv', 'admin@163.com', '13888888888', '/assets/img/avatar.png', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');
INSERT INTO `fa_user` VALUES (2, 0, 'zhizi', 'zhizi', '12345678', 'dmAESD', '804665121@qq.com', '17707355692', '', 1, 0, NULL, '', 0.00, 0, 1, 1, 1547889394, 1547889394, '127.0.0.1', 0, '127.0.0.1', 1547889394, 1547889394, 1547889394, '', 'normal', '');
INSERT INTO `fa_user` VALUES (3, 0, 'admin', '', '123456', '', '', '', '', 0, 0, NULL, '', 0.00, 0, 1, 1, 0, 0, '', 0, '', 0, 0, 0, '', '', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `expiretime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------
INSERT INTO `fa_user_token` VALUES ('95576567d68134eabcbda4f9e41e682db3936c13', 2, 1547889394, 1550481394);

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '版本表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES (1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

SET FOREIGN_KEY_CHECKS = 1;
