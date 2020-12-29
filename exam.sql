/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50612
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50612
 File Encoding         : 65001

 Date: 23/12/2020 12:38:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buy_log
-- ----------------------------
DROP TABLE IF EXISTS `buy_log`;
CREATE TABLE `buy_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `spending` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `sys_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcssemg8jfxw0bm5wtl2mh5445`(`sys_modify_log_id`) USING BTREE,
  INDEX `FK12i6b6ltmyv3dngtu0dc10jwd`(`resource_id`) USING BTREE,
  INDEX `FKs9cdk2cmebx1j8pl9s2vkd5nn`(`sys_user_id`) USING BTREE,
  CONSTRAINT `FK12i6b6ltmyv3dngtu0dc10jwd` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKcssemg8jfxw0bm5wtl2mh5445` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs9cdk2cmebx1j8pl9s2vkd5nn` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `answer` bit(1) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKora5kxj5grea4n8xdk0uv40le`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKcaq6r76cswke5b9fk6fyx3y5w`(`question_id`) USING BTREE,
  CONSTRAINT `FKcaq6r76cswke5b9fk6fyx3y5w` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKora5kxj5grea4n8xdk0uv40le` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 219 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES (1, b'1', '当前运行系统121', NULL, 1);
INSERT INTO `choice` VALUES (2, b'0', '当前逻辑模型', NULL, 1);
INSERT INTO `choice` VALUES (3, b'0', '目标系统', NULL, 1);
INSERT INTO `choice` VALUES (4, b'0', '新系统', NULL, 1);
INSERT INTO `choice` VALUES (5, b'0', '逻辑系统', NULL, 2);
INSERT INTO `choice` VALUES (6, b'0', '程序系统', NULL, 2);
INSERT INTO `choice` VALUES (7, b'1', '体系结构', NULL, 2);
INSERT INTO `choice` VALUES (8, b'0', '物理系统', NULL, 2);
INSERT INTO `choice` VALUES (9, b'0', '判定表', NULL, 3);
INSERT INTO `choice` VALUES (10, b'0', 'IPO 图', NULL, 3);
INSERT INTO `choice` VALUES (11, b'0', 'PDL ', NULL, 3);
INSERT INTO `choice` VALUES (12, b'1', 'DFD 图', NULL, 3);
INSERT INTO `choice` VALUES (13, b'0', '过程、子程序和分程序', NULL, 4);
INSERT INTO `choice` VALUES (14, b'1', '顺序、选择和重复', NULL, 4);
INSERT INTO `choice` VALUES (15, b'0', '递归、堆栈和队列', NULL, 4);
INSERT INTO `choice` VALUES (16, b'0', '调用、返回和转移', NULL, 4);
INSERT INTO `choice` VALUES (17, b'0', '不能嵌套使用', NULL, 5);
INSERT INTO `choice` VALUES (18, b'0', '只能用来写简单程序', NULL, 5);
INSERT INTO `choice` VALUES (19, b'0', '已经用硬件实现', NULL, 5);
INSERT INTO `choice` VALUES (20, b'1', '只有一个入口和一个出口', NULL, 5);
INSERT INTO `choice` VALUES (21, b'0', '生存期', NULL, 6);
INSERT INTO `choice` VALUES (22, b'0', '面向对象设计', NULL, 6);
INSERT INTO `choice` VALUES (23, b'0', '面向对象程序设计', NULL, 6);
INSERT INTO `choice` VALUES (24, b'1', '面向对象分析', NULL, 6);
INSERT INTO `choice` VALUES (25, b'1', '需求不确定性高的', NULL, 7);
INSERT INTO `choice` VALUES (26, b'0', '需求确定的', NULL, 7);
INSERT INTO `choice` VALUES (27, b'0', '管理信息', NULL, 7);
INSERT INTO `choice` VALUES (28, b'0', '实时', NULL, 7);
INSERT INTO `choice` VALUES (29, b'1', '自外向内', NULL, 8);
INSERT INTO `choice` VALUES (30, b'0', '自顶向下', NULL, 8);
INSERT INTO `choice` VALUES (31, b'0', '自内向外', NULL, 8);
INSERT INTO `choice` VALUES (32, b'0', '自底向上', NULL, 8);
INSERT INTO `choice` VALUES (33, b'0', '数据流图', NULL, 9);
INSERT INTO `choice` VALUES (34, b'0', '判定表', NULL, 9);
INSERT INTO `choice` VALUES (35, b'1', 'PAD 图', NULL, 9);
INSERT INTO `choice` VALUES (36, b'0', '数据字典', NULL, 9);
INSERT INTO `choice` VALUES (37, b'0', '用户要求', NULL, 10);
INSERT INTO `choice` VALUES (38, b'0', '合理要求', NULL, 10);
INSERT INTO `choice` VALUES (39, b'1', '模糊要求', NULL, 10);
INSERT INTO `choice` VALUES (40, b'0', '对象', NULL, 11);
INSERT INTO `choice` VALUES (41, b'0', '解释', NULL, 11);
INSERT INTO `choice` VALUES (42, b'0', '符号', NULL, 11);
INSERT INTO `choice` VALUES (43, b'1', '描述', NULL, 11);
INSERT INTO `choice` VALUES (44, b'0', '控制流', NULL, 12);
INSERT INTO `choice` VALUES (45, b'0', '信息流', NULL, 12);
INSERT INTO `choice` VALUES (46, b'1', '数据流', NULL, 12);
INSERT INTO `choice` VALUES (47, b'0', '信号流', NULL, 12);
INSERT INTO `choice` VALUES (48, b'1', '数据流图', NULL, 13);
INSERT INTO `choice` VALUES (49, b'0', '数据词典', NULL, 13);
INSERT INTO `choice` VALUES (50, b'0', '结构化英语', NULL, 13);
INSERT INTO `choice` VALUES (51, b'0', '判定树与判定表', NULL, 13);
INSERT INTO `choice` VALUES (52, b'0', '数据流图', NULL, 14);
INSERT INTO `choice` VALUES (53, b'1', '数据词典', NULL, 14);
INSERT INTO `choice` VALUES (54, b'0', '结构化英语', NULL, 14);
INSERT INTO `choice` VALUES (55, b'0', '判定树与判定表', NULL, 14);
INSERT INTO `choice` VALUES (56, b'0', '一对象', NULL, 15);
INSERT INTO `choice` VALUES (57, b'0', '数据结构', NULL, 15);
INSERT INTO `choice` VALUES (58, b'1', '数据流', NULL, 15);
INSERT INTO `choice` VALUES (59, b'0', '控制流', NULL, 15);
INSERT INTO `choice` VALUES (60, b'0', '数据流图', NULL, 16);
INSERT INTO `choice` VALUES (61, b'1', '组织结构图', NULL, 16);
INSERT INTO `choice` VALUES (62, b'0', '数据词典', NULL, 16);
INSERT INTO `choice` VALUES (63, b'0', '结构化语言', NULL, 16);
INSERT INTO `choice` VALUES (64, b'0', '总结', NULL, 17);
INSERT INTO `choice` VALUES (65, b'0', '实践性报告', NULL, 17);
INSERT INTO `choice` VALUES (66, b'1', '需求分析评审', NULL, 17);
INSERT INTO `choice` VALUES (67, b'0', '以上答案都不正确', NULL, 17);
INSERT INTO `choice` VALUES (68, b'0', '结构化语言外层中的顺序结构是一组祈使语句、选择语句、重复语句的顺序排列', NULL, 18);
INSERT INTO `choice` VALUES (69, b'0', '结构化语言外层中的选择结构使用IF-THEN--ELSE-ENDIF 等关键字', NULL, 18);
INSERT INTO `choice` VALUES (70, b'0', '结构化语言的内层可以采用祈使语句的自然语言短语', NULL, 18);
INSERT INTO `choice` VALUES (71, b'1', '结构化语言外层中的重复结构使用CASE-OF-ENDCASE 等关键字', NULL, 18);
INSERT INTO `choice` VALUES (72, b'0', '数据流图', NULL, 19);
INSERT INTO `choice` VALUES (73, b'1', '数据字典', NULL, 19);
INSERT INTO `choice` VALUES (74, b'0', '判定表', NULL, 19);
INSERT INTO `choice` VALUES (75, b'0', '判定树', NULL, 19);
INSERT INTO `choice` VALUES (76, b'1', '数据流图', NULL, 20);
INSERT INTO `choice` VALUES (77, b'0', '数据字典', NULL, 20);
INSERT INTO `choice` VALUES (78, b'0', '判定表', NULL, 20);
INSERT INTO `choice` VALUES (79, b'0', '判定树', NULL, 20);
INSERT INTO `choice` VALUES (80, b'0', '对象', NULL, 21);
INSERT INTO `choice` VALUES (81, b'0', '数据结构', NULL, 21);
INSERT INTO `choice` VALUES (82, b'1', '数据流', NULL, 21);
INSERT INTO `choice` VALUES (83, b'0', '结构图', NULL, 21);
INSERT INTO `choice` VALUES (84, b'0', '层次图', NULL, 22);
INSERT INTO `choice` VALUES (85, b'1', '数据字典', NULL, 22);
INSERT INTO `choice` VALUES (86, b'0', '数据流图', NULL, 22);
INSERT INTO `choice` VALUES (87, b'0', 'IPO 图', NULL, 22);
INSERT INTO `choice` VALUES (88, b'0', 'IPO 图', NULL, 23);
INSERT INTO `choice` VALUES (89, b'1', 'PDL 图', NULL, 23);
INSERT INTO `choice` VALUES (90, b'0', '数据字典', NULL, 23);
INSERT INTO `choice` VALUES (91, b'0', '层次图', NULL, 23);
INSERT INTO `choice` VALUES (92, b'0', '问题分解', NULL, 24);
INSERT INTO `choice` VALUES (93, b'0', '可靠性与安全性要求', NULL, 24);
INSERT INTO `choice` VALUES (94, b'1', '结构化程序设计', NULL, 24);
INSERT INTO `choice` VALUES (95, b'0', '确定逻辑模型', NULL, 24);
INSERT INTO `choice` VALUES (96, b'1', '软件开发工作的基础', NULL, 25);
INSERT INTO `choice` VALUES (97, b'0', '软件生存周期的开始', NULL, 25);
INSERT INTO `choice` VALUES (98, b'0', '由系统分析员单独完成的', NULL, 25);
INSERT INTO `choice` VALUES (99, b'0', '由用户自己单独完成的', NULL, 25);
INSERT INTO `choice` VALUES (100, b'1', '控制流', NULL, 26);
INSERT INTO `choice` VALUES (101, b'0', '数据流', NULL, 26);
INSERT INTO `choice` VALUES (102, b'0', '程序流', NULL, 26);
INSERT INTO `choice` VALUES (103, b'0', '指令流', NULL, 26);
INSERT INTO `choice` VALUES (104, b'0', '互相排斥', NULL, 27);
INSERT INTO `choice` VALUES (105, b'1', '互相补充', NULL, 27);
INSERT INTO `choice` VALUES (106, b'0', '独立使用', NULL, 27);
INSERT INTO `choice` VALUES (107, b'0', '交替使用', NULL, 27);
INSERT INTO `choice` VALUES (108, b'0', '严格定义需求', NULL, 28);
INSERT INTO `choice` VALUES (109, b'0', '划分开发阶段', NULL, 28);
INSERT INTO `choice` VALUES (110, b'1', '提供运行模型', NULL, 28);
INSERT INTO `choice` VALUES (111, b'0', '制定规范文档', NULL, 28);
INSERT INTO `choice` VALUES (112, b'1', '自顶向下逐层分解的分析方法', NULL, 29);
INSERT INTO `choice` VALUES (113, b'0', '自底向上逐层分解的分析方法', NULL, 29);
INSERT INTO `choice` VALUES (114, b'0', '面向对象的分析方法', NULL, 29);
INSERT INTO `choice` VALUES (115, b'0', '以上都不是', NULL, 29);
INSERT INTO `choice` VALUES (116, b'0', '顺序结构', NULL, 30);
INSERT INTO `choice` VALUES (117, b'0', '条件结构', NULL, 30);
INSERT INTO `choice` VALUES (118, b'0', '选择结构', NULL, 30);
INSERT INTO `choice` VALUES (119, b'1', '嵌套结构', NULL, 30);
INSERT INTO `choice` VALUES (120, b'0', 'FD 图', NULL, 31);
INSERT INTO `choice` VALUES (121, b'0', 'PAD 图', NULL, 31);
INSERT INTO `choice` VALUES (122, b'0', 'IPO 图', NULL, 31);
INSERT INTO `choice` VALUES (123, b'1', '数据字典', NULL, 31);
INSERT INTO `choice` VALUES (124, b'0', 'FD 图', NULL, 32);
INSERT INTO `choice` VALUES (125, b'1', 'PAD 图', NULL, 32);
INSERT INTO `choice` VALUES (126, b'0', '结构化英语', NULL, 32);
INSERT INTO `choice` VALUES (127, b'0', '判定表', NULL, 32);
INSERT INTO `choice` VALUES (128, b'0', '对象', NULL, 33);
INSERT INTO `choice` VALUES (129, b'0', '数据流', NULL, 33);
INSERT INTO `choice` VALUES (130, b'1', '数据结构', NULL, 33);
INSERT INTO `choice` VALUES (131, b'0', '控制结构', NULL, 33);
INSERT INTO `choice` VALUES (132, b'0', '分支结构、选择结构和控制结构', NULL, 34);
INSERT INTO `choice` VALUES (133, b'1', '顺序结构、选择结构和循环结构', NULL, 34);
INSERT INTO `choice` VALUES (134, b'0', '顺序结构、分支结构和嵌套结构', NULL, 34);
INSERT INTO `choice` VALUES (135, b'0', '顺序结构、选择结构和重复结构', NULL, 34);
INSERT INTO `choice` VALUES (136, b'0', '原型化方法', NULL, 35);
INSERT INTO `choice` VALUES (137, b'1', '结构化方法', NULL, 35);
INSERT INTO `choice` VALUES (138, b'0', '面向对象方法', NULL, 35);
INSERT INTO `choice` VALUES (139, b'0', '功能分解方法', NULL, 35);
INSERT INTO `choice` VALUES (140, b'0', '功能需求', NULL, 36);
INSERT INTO `choice` VALUES (141, b'0', '非功能需求', NULL, 36);
INSERT INTO `choice` VALUES (142, b'0', '性能需求', NULL, 36);
INSERT INTO `choice` VALUES (143, b'1', '功能需求和非功能需求', NULL, 36);
INSERT INTO `choice` VALUES (144, b'1', '当前运行系统', NULL, 133);
INSERT INTO `choice` VALUES (145, b'0', '当前逻辑模型', NULL, 133);
INSERT INTO `choice` VALUES (146, b'0', '目标系统', NULL, 133);
INSERT INTO `choice` VALUES (147, b'0', '新系统', NULL, 133);
INSERT INTO `choice` VALUES (148, b'0', '逻辑系统', NULL, 134);
INSERT INTO `choice` VALUES (149, b'0', '程序系统', NULL, 134);
INSERT INTO `choice` VALUES (150, b'1', '体系结构', NULL, 134);
INSERT INTO `choice` VALUES (151, b'0', '物理系统', NULL, 134);
INSERT INTO `choice` VALUES (152, b'0', '判定表', NULL, 135);
INSERT INTO `choice` VALUES (153, b'0', 'IPO 图', NULL, 135);
INSERT INTO `choice` VALUES (154, b'0', 'PDL ', NULL, 135);
INSERT INTO `choice` VALUES (155, b'1', 'DFD 图', NULL, 135);
INSERT INTO `choice` VALUES (156, b'0', '过程、子程序和分程序', NULL, 136);
INSERT INTO `choice` VALUES (157, b'1', '顺序、选择和重复', NULL, 136);
INSERT INTO `choice` VALUES (158, b'0', '递归、堆栈和队列', NULL, 136);
INSERT INTO `choice` VALUES (159, b'0', '调用、返回和转移', NULL, 136);
INSERT INTO `choice` VALUES (160, b'0', '不能嵌套使用', NULL, 137);
INSERT INTO `choice` VALUES (161, b'0', '只能用来写简单程序', NULL, 137);
INSERT INTO `choice` VALUES (162, b'0', '已经用硬件实现', NULL, 137);
INSERT INTO `choice` VALUES (163, b'1', '只有一个入口和一个出口', NULL, 137);
INSERT INTO `choice` VALUES (164, b'0', '生存期', NULL, 138);
INSERT INTO `choice` VALUES (165, b'0', '面向对象设计', NULL, 138);
INSERT INTO `choice` VALUES (166, b'0', '面向对象程序设计', NULL, 138);
INSERT INTO `choice` VALUES (167, b'1', '面向对象分析', NULL, 138);
INSERT INTO `choice` VALUES (168, b'1', '需求不确定性高的', NULL, 139);
INSERT INTO `choice` VALUES (169, b'0', '需求确定的', NULL, 139);
INSERT INTO `choice` VALUES (170, b'0', '管理信息', NULL, 139);
INSERT INTO `choice` VALUES (171, b'0', '实时', NULL, 139);
INSERT INTO `choice` VALUES (172, b'1', '自外向内', NULL, 140);
INSERT INTO `choice` VALUES (173, b'0', '自顶向下', NULL, 140);
INSERT INTO `choice` VALUES (174, b'0', '自内向外', NULL, 140);
INSERT INTO `choice` VALUES (175, b'0', '自底向上', NULL, 140);
INSERT INTO `choice` VALUES (176, b'0', '数据流图', NULL, 141);
INSERT INTO `choice` VALUES (177, b'0', '判定表', NULL, 141);
INSERT INTO `choice` VALUES (178, b'1', 'PAD 图', NULL, 141);
INSERT INTO `choice` VALUES (179, b'0', '数据字典', NULL, 141);
INSERT INTO `choice` VALUES (180, b'0', '用户要求', NULL, 142);
INSERT INTO `choice` VALUES (181, b'0', '合理要求', NULL, 142);
INSERT INTO `choice` VALUES (182, b'1', '模糊要求', NULL, 142);
INSERT INTO `choice` VALUES (183, b'0', '对象', NULL, 143);
INSERT INTO `choice` VALUES (184, b'0', '解释', NULL, 143);
INSERT INTO `choice` VALUES (185, b'0', '符号', NULL, 143);
INSERT INTO `choice` VALUES (186, b'1', '描述', NULL, 143);
INSERT INTO `choice` VALUES (187, b'0', '控制流', NULL, 144);
INSERT INTO `choice` VALUES (188, b'0', '信息流', NULL, 144);
INSERT INTO `choice` VALUES (189, b'1', '数据流', NULL, 144);
INSERT INTO `choice` VALUES (190, b'0', '信号流', NULL, 144);
INSERT INTO `choice` VALUES (191, b'1', '数据流图', NULL, 145);
INSERT INTO `choice` VALUES (192, b'0', '数据词典', NULL, 145);
INSERT INTO `choice` VALUES (193, b'0', '结构化英语', NULL, 145);
INSERT INTO `choice` VALUES (194, b'0', '判定树与判定表', NULL, 145);
INSERT INTO `choice` VALUES (195, b'0', '数据流图', NULL, 146);
INSERT INTO `choice` VALUES (196, b'1', '数据词典', NULL, 146);
INSERT INTO `choice` VALUES (197, b'0', '结构化英语', NULL, 146);
INSERT INTO `choice` VALUES (198, b'0', '判定树与判定表', NULL, 146);
INSERT INTO `choice` VALUES (199, b'0', '一对象', NULL, 147);
INSERT INTO `choice` VALUES (200, b'0', '数据结构', NULL, 147);
INSERT INTO `choice` VALUES (201, b'1', '数据流', NULL, 147);
INSERT INTO `choice` VALUES (202, b'0', '控制流', NULL, 147);
INSERT INTO `choice` VALUES (203, b'0', '数据流图', NULL, 148);
INSERT INTO `choice` VALUES (204, b'1', '组织结构图', NULL, 148);
INSERT INTO `choice` VALUES (205, b'0', '数据词典', NULL, 148);
INSERT INTO `choice` VALUES (206, b'0', '结构化语言', NULL, 148);
INSERT INTO `choice` VALUES (207, b'0', '总结', NULL, 149);
INSERT INTO `choice` VALUES (208, b'0', '实践性报告', NULL, 149);
INSERT INTO `choice` VALUES (209, b'1', '需求分析评审', NULL, 149);
INSERT INTO `choice` VALUES (210, b'0', '以上答案都不正确', NULL, 149);
INSERT INTO `choice` VALUES (211, b'0', '结构化语言外层中的顺序结构是一组祈使语句、选择语句、重复语句的顺序排列', NULL, 150);
INSERT INTO `choice` VALUES (212, b'0', '结构化语言外层中的选择结构使用IF-THEN--ELSE-ENDIF 等关键字', NULL, 150);
INSERT INTO `choice` VALUES (213, b'0', '结构化语言的内层可以采用祈使语句的自然语言短语', NULL, 150);
INSERT INTO `choice` VALUES (214, b'1', '结构化语言外层中的重复结构使用CASE-OF-ENDCASE 等关键字', NULL, 150);
INSERT INTO `choice` VALUES (215, b'0', '数据流图', NULL, 151);
INSERT INTO `choice` VALUES (216, b'1', '数据字典', NULL, 151);
INSERT INTO `choice` VALUES (217, b'0', '判定表', NULL, 151);
INSERT INTO `choice` VALUES (218, b'0', '判定树', NULL, 151);

-- ----------------------------
-- Table structure for choose_log
-- ----------------------------
DROP TABLE IF EXISTS `choose_log`;
CREATE TABLE `choose_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `correct` bit(1) DEFAULT NULL,
  `display` bit(1) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `sys_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbe3wr5xs2u1tlm340f8faq7u4`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKd9jkdpbxb4yrg6dyyeryq6qkn`(`exam_id`) USING BTREE,
  INDEX `FKrwjgh2rt4n3o0l78kpmbr9sea`(`question_id`) USING BTREE,
  INDEX `FKko69awy3aglnjb63lqa6gdpgx`(`sys_user_id`) USING BTREE,
  CONSTRAINT `FKbe3wr5xs2u1tlm340f8faq7u4` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKd9jkdpbxb4yrg6dyyeryq6qkn` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKko69awy3aglnjb63lqa6gdpgx` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrwjgh2rt4n3o0l78kpmbr9sea` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of choose_log
-- ----------------------------
INSERT INTO `choose_log` VALUES (1, b'0', b'0', '8ac4d3d7758b89dc01758b9198230005', 1, 18, 1);
INSERT INTO `choose_log` VALUES (2, b'1', b'0', '8ac4d3d7758b89dc01758b9198340006', 1, 1, 1);
INSERT INTO `choose_log` VALUES (3, b'0', b'1', '8ac4d3d7758b89dc01758b91986a0007', 1, 16, 1);
INSERT INTO `choose_log` VALUES (4, b'0', b'1', '8ac4d3d7758b89dc01758b91987a0008', 1, 14, 1);
INSERT INTO `choose_log` VALUES (5, b'0', b'1', '8ac4d3d7758b89dc01758b9198880009', 1, 12, 1);
INSERT INTO `choose_log` VALUES (6, b'0', b'1', '8ac4d3d7758b89dc01758b919899000a', 1, 10, 1);
INSERT INTO `choose_log` VALUES (7, b'0', b'1', '8ac4d3d7758b89dc01758b9198a8000b', 1, 8, 1);
INSERT INTO `choose_log` VALUES (8, b'0', b'1', '8ac4d3d7758b89dc01758b9198b7000c', 1, 6, 1);
INSERT INTO `choose_log` VALUES (9, b'1', b'0', '8ac4d3d7758b89dc01758b9198c6000d', 1, 4, 1);
INSERT INTO `choose_log` VALUES (10, b'0', b'1', '8ac4d3d7758b89dc01758b9198d6000e', 1, 19, 1);
INSERT INTO `choose_log` VALUES (11, b'0', b'1', '8ac4d3d7758b89dc01758b9198f8000f', 1, 2, 1);
INSERT INTO `choose_log` VALUES (12, b'0', b'1', '8ac4d3d7758b89dc01758b9199040010', 1, 17, 1);
INSERT INTO `choose_log` VALUES (13, b'0', b'1', '8ac4d3d7758b89dc01758b9199120011', 1, 15, 1);
INSERT INTO `choose_log` VALUES (14, b'0', b'1', '8ac4d3d7758b89dc01758b9199230012', 1, 13, 1);
INSERT INTO `choose_log` VALUES (15, b'0', b'1', '8ac4d3d7758b89dc01758b9199480013', 1, 11, 1);
INSERT INTO `choose_log` VALUES (16, b'0', b'1', '8ac4d3d7758b89dc01758b91995b0014', 1, 9, 1);
INSERT INTO `choose_log` VALUES (17, b'0', b'1', '8ac4d3d7758b89dc01758b91996f0015', 1, 7, 1);
INSERT INTO `choose_log` VALUES (18, b'0', b'1', '8ac4d3d7758b89dc01758b9199ab0016', 1, 5, 1);
INSERT INTO `choose_log` VALUES (19, b'0', b'1', '8ac4d3d7758b89dc01758b9199b90017', 1, 3, 1);
INSERT INTO `choose_log` VALUES (20, b'0', b'1', '40283f83758c3af801758c3c66c30000', 1, 11, 2);
INSERT INTO `choose_log` VALUES (21, b'0', b'1', '40283f83758c3af801758c3c67220001', 1, 9, 2);
INSERT INTO `choose_log` VALUES (22, b'0', b'1', '40283f83758c3af801758c3c67360002', 1, 7, 2);
INSERT INTO `choose_log` VALUES (23, b'0', b'1', '40283f83758c3af801758c3c675c0003', 1, 5, 2);
INSERT INTO `choose_log` VALUES (24, b'0', b'1', '40283f83758c3af801758c3c67770004', 1, 3, 2);
INSERT INTO `choose_log` VALUES (25, b'0', b'1', '40283f83758c3af801758c3c67a50005', 1, 18, 2);
INSERT INTO `choose_log` VALUES (26, b'0', b'1', '40283f83758c3af801758c3c67c10006', 1, 1, 2);
INSERT INTO `choose_log` VALUES (27, b'0', b'1', '4028abb4759207300175920a4a8d0000', 1, 5, 2);
INSERT INTO `choose_log` VALUES (28, b'0', b'1', '4028abb4759207300175920a4add0001', 1, 3, 2);
INSERT INTO `choose_log` VALUES (29, b'0', b'1', '4028abb4759207300175920a4af00002', 1, 18, 2);
INSERT INTO `choose_log` VALUES (30, b'0', b'1', '4028abb4759207300175920a4b060003', 1, 1, 2);
INSERT INTO `choose_log` VALUES (31, b'0', b'1', '4028abb4759207300175920a4b190004', 1, 16, 2);
INSERT INTO `choose_log` VALUES (32, b'0', b'1', '4028abb4759207300175920a4b2c0005', 1, 14, 2);
INSERT INTO `choose_log` VALUES (33, b'0', b'1', '4028abb4759207300175920a4bc10006', 1, 12, 2);
INSERT INTO `choose_log` VALUES (34, b'0', b'1', '4028abb4759207300175920a4bd40007', 1, 10, 2);
INSERT INTO `choose_log` VALUES (35, b'0', b'1', '4028abb4759207300175920a4be60008', 1, 8, 2);
INSERT INTO `choose_log` VALUES (36, b'0', b'1', '4028abb4759207300175920a4c030009', 1, 6, 2);
INSERT INTO `choose_log` VALUES (37, b'0', b'1', '4028abb4759207300175920a4c17000a', 1, 4, 2);
INSERT INTO `choose_log` VALUES (38, b'0', b'1', '4028abb4759207300175920a4c2e000b', 1, 19, 2);
INSERT INTO `choose_log` VALUES (39, b'0', b'1', '4028abb4759207300175920a4c40000c', 1, 2, 2);
INSERT INTO `choose_log` VALUES (40, b'0', b'1', '4028abb4759207300175920a4cbd000d', 1, 17, 2);
INSERT INTO `choose_log` VALUES (41, b'0', b'1', '4028abb4759207300175920a4cd3000e', 1, 15, 2);
INSERT INTO `choose_log` VALUES (42, b'0', b'1', '4028abb4759207300175920a4ce5000f', 1, 13, 2);
INSERT INTO `choose_log` VALUES (43, b'0', b'1', '4028abb4759207300175920a4d190010', 1, 11, 2);
INSERT INTO `choose_log` VALUES (44, b'0', b'1', '4028abb4759207300175920a4d290011', 1, 9, 2);
INSERT INTO `choose_log` VALUES (45, b'1', b'0', '4028abb4759207300175920a4d570012', 1, 7, 2);
INSERT INTO `choose_log` VALUES (46, b'0', b'1', '40283f85759322f10175932464460000', 1, 14, 1);
INSERT INTO `choose_log` VALUES (47, b'0', b'1', '40283f85759322f10175932464940001', 1, 12, 1);
INSERT INTO `choose_log` VALUES (48, b'0', b'1', '2c948a82759adc9601759aefef880000', 1, 12, 1);
INSERT INTO `choose_log` VALUES (49, b'0', b'1', '2c948a82759adc9601759aefefbb0001', 1, 10, 1);

-- ----------------------------
-- Table structure for choose_log_choice
-- ----------------------------
DROP TABLE IF EXISTS `choose_log_choice`;
CREATE TABLE `choose_log_choice`  (
  `choose_log_id` bigint(20) NOT NULL,
  `choice_id` bigint(20) NOT NULL,
  INDEX `FK3jq1w97cl4h1aypyf3foe550j`(`choice_id`) USING BTREE,
  INDEX `FKa6kso8x0i6pue0am6fx2xu4n`(`choose_log_id`) USING BTREE,
  CONSTRAINT `FK3jq1w97cl4h1aypyf3foe550j` FOREIGN KEY (`choice_id`) REFERENCES `choice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa6kso8x0i6pue0am6fx2xu4n` FOREIGN KEY (`choose_log_id`) REFERENCES `choose_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of choose_log_choice
-- ----------------------------
INSERT INTO `choose_log_choice` VALUES (1, 68);
INSERT INTO `choose_log_choice` VALUES (2, 1);
INSERT INTO `choose_log_choice` VALUES (4, 52);
INSERT INTO `choose_log_choice` VALUES (5, 47);
INSERT INTO `choose_log_choice` VALUES (7, 32);
INSERT INTO `choose_log_choice` VALUES (9, 14);
INSERT INTO `choose_log_choice` VALUES (19, 11);
INSERT INTO `choose_log_choice` VALUES (20, 40);
INSERT INTO `choose_log_choice` VALUES (21, 33);
INSERT INTO `choose_log_choice` VALUES (23, 18);
INSERT INTO `choose_log_choice` VALUES (26, 3);
INSERT INTO `choose_log_choice` VALUES (45, 25);
INSERT INTO `choose_log_choice` VALUES (46, 54);
INSERT INTO `choose_log_choice` VALUES (47, 45);
INSERT INTO `choose_log_choice` VALUES (48, 44);
INSERT INTO `choose_log_choice` VALUES (49, 37);

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exampaper_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKs3w89u0r6161aug3e3pl8me5a`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKgu1g55r10ta31rggduoc93wk7`(`exampaper_id`) USING BTREE,
  CONSTRAINT `FKgu1g55r10ta31rggduoc93wk7` FOREIGN KEY (`exampaper_id`) REFERENCES `exampaper` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs3w89u0r6161aug3e3pl8me5a` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, 'Java期末考试', 'Java期末考试', 90, '8ac4d3d7758b89dc01758b8f493c0003', 2);
INSERT INTO `exam` VALUES (2, '111', '期末考试', 111, '8ac4dca375e08c280175e091e5f20001', 2);
INSERT INTO `exam` VALUES (3, '666', '666期末考试', 66, '8ac4dca375e08c280175e0939d670003', 3);

-- ----------------------------
-- Table structure for exam_result
-- ----------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `all_count` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `wrong_count` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `sys_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKghw4hm4y8vnuyr3ntglja896h`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKmblvyjlk9x7rrm7mvqtbedycc`(`exam_id`) USING BTREE,
  INDEX `FKsfc96jri4p4ukkdaitjt5rk13`(`sys_user_id`) USING BTREE,
  CONSTRAINT `FKghw4hm4y8vnuyr3ntglja896h` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmblvyjlk9x7rrm7mvqtbedycc` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsfc96jri4p4ukkdaitjt5rk13` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exam_result
-- ----------------------------
INSERT INTO `exam_result` VALUES (1, 2, 0, 2, '40283f85759322f10175932464ad0002', 1, 1);
INSERT INTO `exam_result` VALUES (2, 2, 0, 2, '2c948a82759adc9601759aefefc50002', 1, 1);

-- ----------------------------
-- Table structure for exampaper
-- ----------------------------
DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE `exampaper`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKng1xo9twgmle84dnro9ge6aha`(`sys_modify_log_id`) USING BTREE,
  CONSTRAINT `FKng1xo9twgmle84dnro9ge6aha` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exampaper
-- ----------------------------
INSERT INTO `exampaper` VALUES (1, 'Java期末考试', 'Java期末考试', '8ac4d3d7758b89dc01758b8f05700002');
INSERT INTO `exampaper` VALUES (2, '1212', '12', '2c948a82759adc9601759af318490005');
INSERT INTO `exampaper` VALUES (3, '222', '333', '8ac4dca375e08c280175e09368430002');

-- ----------------------------
-- Table structure for exampaper_question
-- ----------------------------
DROP TABLE IF EXISTS `exampaper_question`;
CREATE TABLE `exampaper_question`  (
  `exampaper_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  INDEX `FKk4b38m2m0ujfi5jlghbongivo`(`question_id`) USING BTREE,
  INDEX `FKk4wvkjt26iwlvlm2iswf7ojt5`(`exampaper_id`) USING BTREE,
  CONSTRAINT `FKk4b38m2m0ujfi5jlghbongivo` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKk4wvkjt26iwlvlm2iswf7ojt5` FOREIGN KEY (`exampaper_id`) REFERENCES `exampaper` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exampaper_question
-- ----------------------------
INSERT INTO `exampaper_question` VALUES (1, 78);
INSERT INTO `exampaper_question` VALUES (1, 79);
INSERT INTO `exampaper_question` VALUES (1, 80);
INSERT INTO `exampaper_question` VALUES (1, 81);
INSERT INTO `exampaper_question` VALUES (1, 82);
INSERT INTO `exampaper_question` VALUES (1, 83);
INSERT INTO `exampaper_question` VALUES (1, 84);
INSERT INTO `exampaper_question` VALUES (1, 85);
INSERT INTO `exampaper_question` VALUES (1, 86);
INSERT INTO `exampaper_question` VALUES (1, 87);
INSERT INTO `exampaper_question` VALUES (1, 88);
INSERT INTO `exampaper_question` VALUES (1, 89);
INSERT INTO `exampaper_question` VALUES (1, 90);
INSERT INTO `exampaper_question` VALUES (1, 91);
INSERT INTO `exampaper_question` VALUES (1, 92);
INSERT INTO `exampaper_question` VALUES (1, 93);
INSERT INTO `exampaper_question` VALUES (1, 94);
INSERT INTO `exampaper_question` VALUES (1, 95);
INSERT INTO `exampaper_question` VALUES (1, 96);
INSERT INTO `exampaper_question` VALUES (2, 116);
INSERT INTO `exampaper_question` VALUES (2, 117);
INSERT INTO `exampaper_question` VALUES (2, 118);
INSERT INTO `exampaper_question` VALUES (2, 119);
INSERT INTO `exampaper_question` VALUES (2, 120);
INSERT INTO `exampaper_question` VALUES (2, 121);
INSERT INTO `exampaper_question` VALUES (2, 122);
INSERT INTO `exampaper_question` VALUES (2, 123);
INSERT INTO `exampaper_question` VALUES (2, 124);
INSERT INTO `exampaper_question` VALUES (2, 125);
INSERT INTO `exampaper_question` VALUES (2, 126);
INSERT INTO `exampaper_question` VALUES (2, 127);
INSERT INTO `exampaper_question` VALUES (2, 128);
INSERT INTO `exampaper_question` VALUES (2, 129);
INSERT INTO `exampaper_question` VALUES (2, 130);
INSERT INTO `exampaper_question` VALUES (2, 131);
INSERT INTO `exampaper_question` VALUES (2, 132);
INSERT INTO `exampaper_question` VALUES (3, 133);
INSERT INTO `exampaper_question` VALUES (3, 134);
INSERT INTO `exampaper_question` VALUES (3, 135);
INSERT INTO `exampaper_question` VALUES (3, 136);
INSERT INTO `exampaper_question` VALUES (3, 137);
INSERT INTO `exampaper_question` VALUES (3, 138);
INSERT INTO `exampaper_question` VALUES (3, 139);
INSERT INTO `exampaper_question` VALUES (3, 140);
INSERT INTO `exampaper_question` VALUES (3, 141);
INSERT INTO `exampaper_question` VALUES (3, 142);
INSERT INTO `exampaper_question` VALUES (3, 143);
INSERT INTO `exampaper_question` VALUES (3, 144);
INSERT INTO `exampaper_question` VALUES (3, 145);
INSERT INTO `exampaper_question` VALUES (3, 146);
INSERT INTO `exampaper_question` VALUES (3, 147);
INSERT INTO `exampaper_question` VALUES (3, 148);
INSERT INTO `exampaper_question` VALUES (3, 149);
INSERT INTO `exampaper_question` VALUES (3, 150);
INSERT INTO `exampaper_question` VALUES (3, 151);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKay4vfw8w9sg4dqr9gd48nv7ey`(`sys_modify_log_id`) USING BTREE,
  CONSTRAINT `FKay4vfw8w9sg4dqr9gd48nv7ey` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '系统流程图用于可行性分析中的_____ 的描述。', '单选', '2c948a82759adc9601759af381cc0006');
INSERT INTO `question` VALUES (2, '系统流程图是描述_____ 的工具。', '单选', NULL);
INSERT INTO `question` VALUES (3, '_______ 工具在软件详细设计过程中不采用。', '单选', NULL);
INSERT INTO `question` VALUES (4, '程序的三种基本控制结构是', '单选', NULL);
INSERT INTO `question` VALUES (5, '程序的三种基本控制结构的共同特点是', '单选', NULL);
INSERT INTO `question` VALUES (6, '软件开发过程中，抽取和整理用户需求并建立问题域精确模型的过程叫', '单选', NULL);
INSERT INTO `question` VALUES (7, '原型化方法是用户和设计者之间执行的一种交互构成，适用于______ 系统。', '单选', NULL);
INSERT INTO `question` VALUES (8, '原型化方法是一种_______ 型的设计过程。', '单选', NULL);
INSERT INTO `question` VALUES (9, '进行需求分析可使用多种工具，但( ) 是不适用的。', '单选', NULL);
INSERT INTO `question` VALUES (10, '需求分析阶段研究的对象是软件项目的( )。', '单选', NULL);
INSERT INTO `question` VALUES (11, '数据字典的任务是对于数据流图中出现的所有被命名的数据元素，在数据字典中作为一个词条加以定义，使得每一个图形元素的名字都有一个确切的( ) 。', '单选', NULL);
INSERT INTO `question` VALUES (12, '在数据流图中，有名字及方向的成分是( )。', '单选', NULL);
INSERT INTO `question` VALUES (13, '在结构化分析方法中，用以表达系统内数据的运动情况的工具有( )', '单选', NULL);
INSERT INTO `question` VALUES (14, '在结构化分析方法中，用以表达系统内数据的运动情况的工具有( )', '单选', NULL);
INSERT INTO `question` VALUES (15, '结构化分析方法(SA) 是一种面向( ) 的需求分析方法。', '单选', NULL);
INSERT INTO `question` VALUES (16, '描述结构化系统分析方法的工具不包括( )', '单选', NULL);
INSERT INTO `question` VALUES (17, '软件需求分析阶段的工作，可以分成以下四个方面：对问题的识别、分析与综合、制定规格说明以及( )。', '单选', NULL);
INSERT INTO `question` VALUES (18, '以下说法错误的是( )。', '单选', NULL);
INSERT INTO `question` VALUES (19, '结构化分析方法使用的描述工具( )定义了数据流图中每一个图形元素。', '单选', NULL);
INSERT INTO `question` VALUES (20, '结构化分析方法使用的描述工具( )描述系统由哪几部分组成，各部分之间有什么联系等等。', '单选', NULL);
INSERT INTO `question` VALUES (21, '结构化分析方法(sA) 是一种面向( )需求分析方法。', '单选', NULL);
INSERT INTO `question` VALUES (22, '需求分析中，对算法的简单描述记录在( ) 中。', '单选', NULL);
INSERT INTO `question` VALUES (23, '数据流图和( )共同构成系统的逻辑模型。', '单选', NULL);
INSERT INTO `question` VALUES (24, '在下面的叙述中， ( )不是软件需求分析的任务。', '单选', NULL);
INSERT INTO `question` VALUES (25, '需求分析是( ) 。', '单选', NULL);
INSERT INTO `question` VALUES (26, '结构化分析方法是一种预先严格定义需求的方法，它在实施时强调的是分析对象的( )。', '单选', NULL);
INSERT INTO `question` VALUES (27, '软件开发常使用的两种基本方法是结构化和原型化方法，在实际应用中，它们之间的关系常表现为( )。', '单选', NULL);
INSERT INTO `question` VALUES (28, '结构化生命周期方法具有各种特征，下列各种叙述中， ( )不是结构化方法的特征。', '单选', NULL);
INSERT INTO `question` VALUES (29, 'SA 方法是一种( )。', '单选', NULL);
INSERT INTO `question` VALUES (30, '结构化程序流程图中一般包括三种基本结构，下述结构中( ) 不属于其基本结构。', '单选', NULL);
INSERT INTO `question` VALUES (31, '结构化分析方法以数据流图、()和加工说明等描述工具，即用直观的图和简洁语言来描述软件系统模型。', '单选', NULL);
INSERT INTO `question` VALUES (32, '结构化分析(SA) 是软件开发需求分析阶段所使用的方法， ( )不是SA 所使用的工具。', '单选', NULL);
INSERT INTO `question` VALUES (33, 'Jackson 设计方法是由英国的M ． Jackson 所提出的。它是一种面向( )的软件设计方法。', '单选', NULL);
INSERT INTO `question` VALUES (34, '软件设计中，Jackson方法是一种面向数据结构的设计方法，它将数据结构表示为三种基本结构，分别为( )。', '单选', NULL);
INSERT INTO `question` VALUES (35, '软件工程方法是在实践中不断发展的方法，而早期的软件工程方法是指( ) 。', '单选', NULL);
INSERT INTO `question` VALUES (36, '软件需求分析一般应确定的是用户对软件的( ) 。', '单选', NULL);
INSERT INTO `question` VALUES (37, NULL, NULL, NULL);
INSERT INTO `question` VALUES (38, NULL, NULL, NULL);
INSERT INTO `question` VALUES (39, NULL, NULL, NULL);
INSERT INTO `question` VALUES (40, NULL, NULL, NULL);
INSERT INTO `question` VALUES (41, NULL, NULL, NULL);
INSERT INTO `question` VALUES (42, NULL, NULL, NULL);
INSERT INTO `question` VALUES (43, NULL, NULL, NULL);
INSERT INTO `question` VALUES (44, NULL, NULL, NULL);
INSERT INTO `question` VALUES (45, NULL, NULL, NULL);
INSERT INTO `question` VALUES (46, NULL, NULL, NULL);
INSERT INTO `question` VALUES (47, NULL, NULL, NULL);
INSERT INTO `question` VALUES (48, NULL, NULL, NULL);
INSERT INTO `question` VALUES (49, NULL, NULL, NULL);
INSERT INTO `question` VALUES (50, NULL, NULL, NULL);
INSERT INTO `question` VALUES (51, NULL, NULL, NULL);
INSERT INTO `question` VALUES (52, NULL, NULL, NULL);
INSERT INTO `question` VALUES (53, NULL, NULL, NULL);
INSERT INTO `question` VALUES (54, NULL, NULL, NULL);
INSERT INTO `question` VALUES (55, NULL, NULL, NULL);
INSERT INTO `question` VALUES (56, NULL, NULL, NULL);
INSERT INTO `question` VALUES (57, NULL, NULL, NULL);
INSERT INTO `question` VALUES (58, NULL, NULL, NULL);
INSERT INTO `question` VALUES (59, NULL, NULL, NULL);
INSERT INTO `question` VALUES (60, NULL, NULL, NULL);
INSERT INTO `question` VALUES (61, NULL, NULL, NULL);
INSERT INTO `question` VALUES (62, NULL, NULL, NULL);
INSERT INTO `question` VALUES (63, NULL, NULL, NULL);
INSERT INTO `question` VALUES (64, NULL, NULL, NULL);
INSERT INTO `question` VALUES (65, NULL, NULL, NULL);
INSERT INTO `question` VALUES (66, NULL, NULL, NULL);
INSERT INTO `question` VALUES (67, NULL, NULL, NULL);
INSERT INTO `question` VALUES (68, NULL, NULL, NULL);
INSERT INTO `question` VALUES (69, NULL, NULL, NULL);
INSERT INTO `question` VALUES (70, NULL, NULL, NULL);
INSERT INTO `question` VALUES (71, NULL, NULL, NULL);
INSERT INTO `question` VALUES (72, NULL, NULL, NULL);
INSERT INTO `question` VALUES (73, NULL, NULL, NULL);
INSERT INTO `question` VALUES (74, NULL, NULL, NULL);
INSERT INTO `question` VALUES (75, NULL, NULL, NULL);
INSERT INTO `question` VALUES (76, NULL, NULL, NULL);
INSERT INTO `question` VALUES (77, NULL, NULL, NULL);
INSERT INTO `question` VALUES (78, NULL, NULL, NULL);
INSERT INTO `question` VALUES (79, NULL, NULL, NULL);
INSERT INTO `question` VALUES (80, NULL, NULL, NULL);
INSERT INTO `question` VALUES (81, NULL, NULL, NULL);
INSERT INTO `question` VALUES (82, NULL, NULL, NULL);
INSERT INTO `question` VALUES (83, NULL, NULL, NULL);
INSERT INTO `question` VALUES (84, NULL, NULL, NULL);
INSERT INTO `question` VALUES (85, NULL, NULL, NULL);
INSERT INTO `question` VALUES (86, NULL, NULL, NULL);
INSERT INTO `question` VALUES (87, NULL, NULL, NULL);
INSERT INTO `question` VALUES (88, NULL, NULL, NULL);
INSERT INTO `question` VALUES (89, NULL, NULL, NULL);
INSERT INTO `question` VALUES (90, NULL, NULL, NULL);
INSERT INTO `question` VALUES (91, NULL, NULL, NULL);
INSERT INTO `question` VALUES (92, NULL, NULL, NULL);
INSERT INTO `question` VALUES (93, NULL, NULL, NULL);
INSERT INTO `question` VALUES (94, NULL, NULL, NULL);
INSERT INTO `question` VALUES (95, NULL, NULL, NULL);
INSERT INTO `question` VALUES (96, NULL, NULL, NULL);
INSERT INTO `question` VALUES (97, NULL, NULL, NULL);
INSERT INTO `question` VALUES (98, NULL, NULL, NULL);
INSERT INTO `question` VALUES (99, NULL, NULL, NULL);
INSERT INTO `question` VALUES (100, NULL, NULL, NULL);
INSERT INTO `question` VALUES (101, NULL, NULL, NULL);
INSERT INTO `question` VALUES (102, NULL, NULL, NULL);
INSERT INTO `question` VALUES (103, NULL, NULL, NULL);
INSERT INTO `question` VALUES (104, NULL, NULL, NULL);
INSERT INTO `question` VALUES (105, NULL, NULL, NULL);
INSERT INTO `question` VALUES (106, NULL, NULL, NULL);
INSERT INTO `question` VALUES (107, NULL, NULL, NULL);
INSERT INTO `question` VALUES (108, NULL, NULL, NULL);
INSERT INTO `question` VALUES (109, NULL, NULL, NULL);
INSERT INTO `question` VALUES (110, NULL, NULL, NULL);
INSERT INTO `question` VALUES (111, NULL, NULL, NULL);
INSERT INTO `question` VALUES (112, NULL, NULL, NULL);
INSERT INTO `question` VALUES (113, NULL, NULL, NULL);
INSERT INTO `question` VALUES (114, NULL, NULL, NULL);
INSERT INTO `question` VALUES (115, NULL, NULL, NULL);
INSERT INTO `question` VALUES (116, NULL, NULL, NULL);
INSERT INTO `question` VALUES (117, NULL, NULL, NULL);
INSERT INTO `question` VALUES (118, NULL, NULL, NULL);
INSERT INTO `question` VALUES (119, NULL, NULL, NULL);
INSERT INTO `question` VALUES (120, NULL, NULL, NULL);
INSERT INTO `question` VALUES (121, NULL, NULL, NULL);
INSERT INTO `question` VALUES (122, NULL, NULL, NULL);
INSERT INTO `question` VALUES (123, NULL, NULL, NULL);
INSERT INTO `question` VALUES (124, NULL, NULL, NULL);
INSERT INTO `question` VALUES (125, NULL, NULL, NULL);
INSERT INTO `question` VALUES (126, NULL, NULL, NULL);
INSERT INTO `question` VALUES (127, NULL, NULL, NULL);
INSERT INTO `question` VALUES (128, NULL, NULL, NULL);
INSERT INTO `question` VALUES (129, NULL, NULL, NULL);
INSERT INTO `question` VALUES (130, NULL, NULL, NULL);
INSERT INTO `question` VALUES (131, NULL, NULL, NULL);
INSERT INTO `question` VALUES (132, NULL, NULL, NULL);
INSERT INTO `question` VALUES (133, '系统流程图用于可行性分析中的_____ 的描述。', '单选', NULL);
INSERT INTO `question` VALUES (134, '系统流程图是描述_____ 的工具。', '单选', NULL);
INSERT INTO `question` VALUES (135, '_______ 工具在软件详细设计过程中不采用。', '单选', NULL);
INSERT INTO `question` VALUES (136, '程序的三种基本控制结构是', '单选', NULL);
INSERT INTO `question` VALUES (137, '程序的三种基本控制结构的共同特点是', '单选', NULL);
INSERT INTO `question` VALUES (138, '软件开发过程中，抽取和整理用户需求并建立问题域精确模型的过程叫', '单选', NULL);
INSERT INTO `question` VALUES (139, '原型化方法是用户和设计者之间执行的一种交互构成，适用于______ 系统。', '单选', NULL);
INSERT INTO `question` VALUES (140, '原型化方法是一种_______ 型的设计过程。', '单选', NULL);
INSERT INTO `question` VALUES (141, '进行需求分析可使用多种工具，但( ) 是不适用的。', '单选', NULL);
INSERT INTO `question` VALUES (142, '需求分析阶段研究的对象是软件项目的( )。', '单选', NULL);
INSERT INTO `question` VALUES (143, '数据字典的任务是对于数据流图中出现的所有被命名的数据元素，在数据字典中作为一个词条加以定义，使得每一个图形元素的名字都有一个确切的( ) 。', '单选', NULL);
INSERT INTO `question` VALUES (144, '在数据流图中，有名字及方向的成分是( )。', '单选', NULL);
INSERT INTO `question` VALUES (145, '在结构化分析方法中，用以表达系统内数据的运动情况的工具有( )', '单选', NULL);
INSERT INTO `question` VALUES (146, '在结构化分析方法中，用以表达系统内数据的运动情况的工具有( )', '单选', NULL);
INSERT INTO `question` VALUES (147, '结构化分析方法(SA) 是一种面向( ) 的需求分析方法。', '单选', NULL);
INSERT INTO `question` VALUES (148, '描述结构化系统分析方法的工具不包括( )', '单选', NULL);
INSERT INTO `question` VALUES (149, '软件需求分析阶段的工作，可以分成以下四个方面：对问题的识别、分析与综合、制定规格说明以及( )。', '单选', NULL);
INSERT INTO `question` VALUES (150, '以下说法错误的是( )。', '单选', NULL);
INSERT INTO `question` VALUES (151, '结构化分析方法使用的描述工具( )定义了数据流图中每一个图形元素。', '单选', NULL);

-- ----------------------------
-- Table structure for question_comment
-- ----------------------------
DROP TABLE IF EXISTS `question_comment`;
CREATE TABLE `question_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `good` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_user_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKnbclmldxx1ekypdsx51yk5elj`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKpta4ftl7id85v2dh7dmgm92s1`(`sys_user_id`) USING BTREE,
  INDEX `FKgatho66t7ix04m6dothg6jaqh`(`question_id`) USING BTREE,
  CONSTRAINT `FKgatho66t7ix04m6dothg6jaqh` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnbclmldxx1ekypdsx51yk5elj` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpta4ftl7id85v2dh7dmgm92s1` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of question_comment
-- ----------------------------
INSERT INTO `question_comment` VALUES (1, '这题好难呀', 0, '8ac4d3d7758b89dc01758b91f6d50019', 1, 18);
INSERT INTO `question_comment` VALUES (2, '666', 0, '40283f83758c3af801758c3c9ec60008', 2, 11);
INSERT INTO `question_comment` VALUES (3, '666', 0, '2c948a82759adc9601759af07fd50003', 1, 16);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `download_times` int(11) DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsf89nrl55f0mv60lb0h3q5puo`(`sys_modify_log_id`) USING BTREE,
  CONSTRAINT `FKsf89nrl55f0mv60lb0h3q5puo` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES (1, '', 0, 'queen.txt', 'D:\\uploadFile\\2020-11-06\\c929344ce5ab44eb842b17f6dcd90e56.txt', 2122, '11', 1, '2c948a82759adc9601759af15b270004');

-- ----------------------------
-- Table structure for resource_comment
-- ----------------------------
DROP TABLE IF EXISTS `resource_comment`;
CREATE TABLE `resource_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `good` int(11) DEFAULT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sys_user_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKihw7oqex136l0tk6wgpf0d5m8`(`sys_modify_log_id`) USING BTREE,
  INDEX `FKs1pikn2qx5ynr061cxwpq8tja`(`sys_user_id`) USING BTREE,
  INDEX `FK1vlpq2ayslqal3gfec9pims09`(`resource_id`) USING BTREE,
  CONSTRAINT `FK1vlpq2ayslqal3gfec9pims09` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKihw7oqex136l0tk6wgpf0d5m8` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs1pikn2qx5ynr061cxwpq8tja` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority`  (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES (1, 'ROLE_USER');
INSERT INTO `sys_authority` VALUES (2, 'ROLE_ADMIN');

-- ----------------------------
-- Table structure for sys_modify_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_modify_log`;
CREATE TABLE `sys_modify_log`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime(0) DEFAULT NULL,
  `modified_date` datetime(0) DEFAULT NULL,
  `creator_user_id` bigint(20) DEFAULT NULL,
  `modifier_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbg0pwtscsj4egh12km766fj82`(`creator_user_id`) USING BTREE,
  INDEX `FK5b3q5jivjywq0heg9jruu8kpv`(`modifier_user_id`) USING BTREE,
  CONSTRAINT `FK5b3q5jivjywq0heg9jruu8kpv` FOREIGN KEY (`modifier_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKbg0pwtscsj4egh12km766fj82` FOREIGN KEY (`creator_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_modify_log
-- ----------------------------
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759aefef880000', '2020-11-06 08:23:37', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759aefefbb0001', '2020-11-06 08:23:37', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759aefefc50002', '2020-11-06 08:23:37', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759af07fd50003', '2020-11-06 08:24:14', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759af15b270004', '2020-11-06 08:25:10', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759af318490005', '2020-11-06 08:27:04', '2020-11-19 20:54:03', 1, 1);
INSERT INTO `sys_modify_log` VALUES ('2c948a82759adc9601759af381cc0006', '2020-11-06 08:27:31', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c66c30000', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c67220001', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c67360002', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c675c0003', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c67770004', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c67a50005', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c67c10006', '2020-11-03 11:52:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f83758c3af801758c3c9ec60008', '2020-11-03 11:53:04', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f85759322f10175932464460000', '2020-11-04 20:03:57', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f85759322f10175932464940001', '2020-11-04 20:03:57', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('40283f85759322f10175932464ad0002', '2020-11-04 20:03:57', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4a8d0000', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4add0001', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4af00002', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4b060003', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4b190004', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4b2c0005', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4bc10006', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4bd40007', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4be60008', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4c030009', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4c17000a', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4c2e000b', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4c40000c', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4cbd000d', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4cd3000e', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4ce5000f', '2020-11-04 14:55:49', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4d190010', '2020-11-04 14:55:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4d290011', '2020-11-04 14:55:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('4028abb4759207300175920a4d570012', '2020-11-04 14:55:50', NULL, 2, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b8a91810000', '2020-11-03 08:38:35', NULL, NULL, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b8e75710001', '2020-11-03 08:42:50', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b8f05700002', '2020-11-03 08:43:27', '2020-11-19 20:52:47', 1, 1);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b8f493c0003', '2020-11-03 08:43:44', '2020-11-19 20:53:22', 1, 1);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198230005', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198340006', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b91986a0007', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b91987a0008', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198880009', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b919899000a', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198a8000b', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198b7000c', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198c6000d', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198d6000e', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9198f8000f', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199040010', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199120011', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199230012', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199480013', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b91995b0014', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b91996f0015', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199ab0016', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b9199b90017', '2020-11-03 08:46:16', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4d3d7758b89dc01758b91f6d50019', '2020-11-03 08:46:40', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4dca375e08c280175e091e5f20001', '2020-11-19 20:54:19', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4dca375e08c280175e09368430002', '2020-11-19 20:55:58', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4dca375e08c280175e0939d670003', '2020-11-19 20:56:11', NULL, 1, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4edde76847a000176847b58cf0001', '2020-12-21 16:47:24', NULL, NULL, NULL);
INSERT INTO `sys_modify_log` VALUES ('8ac4edde768485d5017684862a3a0000', '2020-12-21 16:59:13', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` int(11) DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sys_modify_log_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_51bvuyvihefoh4kp5syh2jpi4`(`username`) USING BTREE,
  INDEX `FK1t8pwpc3yb6t82lxf8fuhg57v`(`sys_modify_log_id`) USING BTREE,
  CONSTRAINT `FK1t8pwpc3yb6t82lxf8fuhg57v` FOREIGN KEY (`sys_modify_log_id`) REFERENCES `sys_modify_log` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 10, '段宏飞', 'ceb4f32325eda6142bd65215f4c0f371', 'admin', '8ac4d3d7758b89dc01758b8a91810000');
INSERT INTO `sys_user` VALUES (2, 10, '段飞宏', '0e76cc904667062de903c8736e47ab86', 'Fly', '8ac4d3d7758b89dc01758b8e75710001');
INSERT INTO `sys_user` VALUES (5, 10, '111', 'f61b591a594cc0e3ffbc59a08bed4c3f', '111', '8ac4edde76847a000176847b58cf0001');
INSERT INTO `sys_user` VALUES (6, 10, '12', '0cde64e6ea3fb6b6f93836ade04fbc00', '12', '8ac4edde768485d5017684862a3a0000');

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority`  (
  `sys_user_id` bigint(20) NOT NULL,
  `sys_authority_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`sys_user_id`, `sys_authority_id`) USING BTREE,
  INDEX `FKirc9pj303j5m5dge3mc73qxwx`(`sys_authority_id`) USING BTREE,
  CONSTRAINT `FKirc9pj303j5m5dge3mc73qxwx` FOREIGN KEY (`sys_authority_id`) REFERENCES `sys_authority` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKltbltvkiwjdr7ctmpsd7srnm9` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
INSERT INTO `sys_user_authority` VALUES (1, 1);
INSERT INTO `sys_user_authority` VALUES (2, 1);
INSERT INTO `sys_user_authority` VALUES (5, 1);
INSERT INTO `sys_user_authority` VALUES (6, 1);
INSERT INTO `sys_user_authority` VALUES (1, 2);

SET FOREIGN_KEY_CHECKS = 1;
