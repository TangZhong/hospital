/*
 Navicat Premium Data Transfer

 Source Server         : donald
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 25/07/2019 00:03:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for case
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `case_code` int(255) NOT NULL DEFAULT 0 COMMENT '病例code',
  `zhushu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主诉',
  `xianbingshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '现病史',
  `xianbingzhiliao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '现病治疗情况',
  `jiwangshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '既往史',
  `guominshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '过敏史',
  `tigejiancha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '体格检查',
  `jianchajianyi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查建议',
  `warning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注意事项',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '诊断结果',
  `register_id` int(10) DEFAULT NULL COMMENT '挂号id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of case
-- ----------------------------
INSERT INTO `case` VALUES (1, 600601, '半月前受凉后开始咳嗽，呈阵发性，无畏冷发热，无咯血及胸痛，伴有少量的白色黏稠痰。曾服止咳糖浆等3天，效果不好。', '阵发性咳嗽半月', '曾服止咳糖浆等3天，效果不好', '既往有10年余慢性咳嗽史，曾诊断为“慢性支气管炎”，不吸烟。否认肺结核病史。', '无', 'BP 128/80mmHg,无呼吸困难，唇不发绀，双肺有散在干性啰音，未闻及湿啰性啰音，心率90次/min，律齐，无杂音，腹平软无压痛，肝脾未触及，双下肢无浮肿。', '血常规，胸片', '无', NULL, 3);
INSERT INTO `case` VALUES (2, 600607, '转移性右下腹痛伴恶心、呕吐8小时。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '血常规', '无', NULL, 4);
INSERT INTO `case` VALUES (3, 600605, '间断性右上腹疼痛2年。', '该患缘于2年前无明显诱因开始出现右上腹部隐痛，伴右胸背部放散痛，无肩部放散痛，腹痛呈间断性发作，曾予以抗感染治疗（具体药名及剂量不详）后腹痛可缓解。', '于2010年1月14日在四平市爱龄齐医院行超声检查提示：胆囊多发结石，但未经治疗，今为进一步治疗来我院，门诊以胆囊结石收入院。病程中无寒战、高热，无反酸、嗳气，无恶心、呕吐，无呕血、黑便，无黄染。患病以来，睡眠不良，食欲欠佳，大小便正常。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '腹部彩超（2008-06-11）', '低脂饮食', NULL, 6);
INSERT INTO `case` VALUES (4, 600606, '右下腹痛伴恶心。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', '无', '无', '血常规', '无', NULL, 9);
INSERT INTO `case` VALUES (5, 600609, '111', '222', '333', '444', '555', '666', '777', '888', NULL, 25);
INSERT INTO `case` VALUES (6, 600607, '11', '22', '33', '44', '55', '66', 'ww', 'gggg', NULL, 26);
INSERT INTO `case` VALUES (7, 600608, '苏二强苏二强苏二强苏二强苏二强啊啊', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强', '苏二强苏二强苏二强苏二强苏二强', '苏二强', '苏二强', NULL, 27);
INSERT INTO `case` VALUES (8, 600610, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', NULL, 29);
INSERT INTO `case` VALUES (9, 600611, '3', '3', '3', '3', '3', '3', '3', '3', NULL, 30);
INSERT INTO `case` VALUES (10, 600609, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', NULL, 28);
INSERT INTO `case` VALUES (11, 600612, '', '', '', '', '', '', '', '', NULL, 31);
INSERT INTO `case` VALUES (12, 600613, '', '', '', '', '', '', '', '', NULL, 32);
INSERT INTO `case` VALUES (13, 600614, '', '', '', '', '', '', '', '', NULL, 33);
INSERT INTO `case` VALUES (14, 600615, '', '', '', '', '', '', '', '', NULL, 34);
INSERT INTO `case` VALUES (15, 600618, 'qq', '', '', '', '', '', '', '', NULL, 37);
INSERT INTO `case` VALUES (16, 600620, '头痛', '感冒', '吃了头孢', '发烧', '无', '体温偏高', '', '', NULL, 40);

-- ----------------------------
-- Table structure for constant
-- ----------------------------
DROP TABLE IF EXISTS `constant`;
CREATE TABLE `constant`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of constant
-- ----------------------------
INSERT INTO `constant` VALUES (1, 1, 'NK', '内科');
INSERT INTO `constant` VALUES (2, 1, 'WK', '外科');
INSERT INTO `constant` VALUES (3, 1, 'EK', '儿科');
INSERT INTO `constant` VALUES (4, 1, 'CRBK', '传染病科');
INSERT INTO `constant` VALUES (5, 1, 'FCK', '妇产科');
INSERT INTO `constant` VALUES (6, 1, 'NK', '男科');
INSERT INTO `constant` VALUES (7, 1, 'JSXLK', '精神心理科');
INSERT INTO `constant` VALUES (8, 1, 'PFXBK', '皮肤性病科');
INSERT INTO `constant` VALUES (9, 1, 'ZYK', '中医科');
INSERT INTO `constant` VALUES (10, 1, 'ZLK', '肿瘤科');
INSERT INTO `constant` VALUES (11, 1, 'GK', '骨科');
INSERT INTO `constant` VALUES (12, 1, 'WGK', '五官科');
INSERT INTO `constant` VALUES (13, 1, 'KFYXK', '康复医学科');
INSERT INTO `constant` VALUES (14, 1, 'MZYXK', '麻醉医学科');
INSERT INTO `constant` VALUES (15, 1, 'YYK', '营养科');
INSERT INTO `constant` VALUES (16, 1, 'YJK', '医技科');
INSERT INTO `constant` VALUES (17, 1, 'YXYXX', '医学影像学');
INSERT INTO `constant` VALUES (18, 1, 'QTKS', '其他科室');
INSERT INTO `constant` VALUES (19, 5, 'XJ', '现金');
INSERT INTO `constant` VALUES (20, 5, 'YBK', '医保卡');
INSERT INTO `constant` VALUES (21, 5, 'YHK', '银行卡');
INSERT INTO `constant` VALUES (22, 5, 'XYK', '信用卡');
INSERT INTO `constant` VALUES (23, 5, 'WX', '微信');
INSERT INTO `constant` VALUES (24, 5, 'ZFB', '支付宝');
INSERT INTO `constant` VALUES (25, 5, 'YSF', '云闪付');
INSERT INTO `constant` VALUES (26, 5, 'QT', '其它');
INSERT INTO `constant` VALUES (27, 7, 'NAN', '男');
INSERT INTO `constant` VALUES (28, 7, 'NV', '女');
INSERT INTO `constant` VALUES (29, 8, 'ZRYS', '主任医师');
INSERT INTO `constant` VALUES (30, 8, 'FZRYS', '副主任医师');
INSERT INTO `constant` VALUES (31, 8, 'ZZYS', '主治医师');
INSERT INTO `constant` VALUES (32, 8, 'ZYYS', '住院医师');
INSERT INTO `constant` VALUES (33, 10, 'XY', '西药');
INSERT INTO `constant` VALUES (34, 10, 'ZCY', '中成药');
INSERT INTO `constant` VALUES (35, 10, 'ZCY', '中草药');
INSERT INTO `constant` VALUES (36, 11, 'ZJ', '针剂');
INSERT INTO `constant` VALUES (37, 11, 'PJ', '片剂');
INSERT INTO `constant` VALUES (38, 11, 'ZYYP', '中药饮片');
INSERT INTO `constant` VALUES (39, 11, 'SJ', '散剂');
INSERT INTO `constant` VALUES (40, 11, 'JN', '胶囊');
INSERT INTO `constant` VALUES (41, 11, 'KLJ', '颗粒剂');
INSERT INTO `constant` VALUES (42, 11, 'FJ', '粉剂');
INSERT INTO `constant` VALUES (43, 11, 'BMP', '簿膜片');
INSERT INTO `constant` VALUES (44, 11, 'RJ', '乳剂');
INSERT INTO `constant` VALUES (45, 11, 'YJ', '液剂');
INSERT INTO `constant` VALUES (46, 11, 'NJ', '凝胶');
INSERT INTO `constant` VALUES (47, 11, 'RGJ', '软膏剂');
INSERT INTO `constant` VALUES (48, 11, 'QWJ', '气雾剂');
INSERT INTO `constant` VALUES (49, 11, 'FSP', '分散片');
INSERT INTO `constant` VALUES (50, 11, 'YPQX', '药品器械');
INSERT INTO `constant` VALUES (51, 11, 'SJ', '栓剂');
INSERT INTO `constant` VALUES (52, 11, 'NFSJ', '内服水剂');
INSERT INTO `constant` VALUES (53, 11, 'PJ', '喷剂');
INSERT INTO `constant` VALUES (54, 11, 'JJ', '胶剂');
INSERT INTO `constant` VALUES (55, 11, 'TJ', '酊剂');
INSERT INTO `constant` VALUES (56, 11, 'DJ', '滴剂');
INSERT INTO `constant` VALUES (57, 11, 'HSP', '缓释片');
INSERT INTO `constant` VALUES (58, 11, 'YGZJ', '眼膏制剂');
INSERT INTO `constant` VALUES (59, 11, 'CRP', '肠溶片');
INSERT INTO `constant` VALUES (60, 11, 'SJ', '霜剂');
INSERT INTO `constant` VALUES (61, 11, 'DEJ', '滴耳剂');
INSERT INTO `constant` VALUES (62, 11, 'HXJ', '混悬剂');
INSERT INTO `constant` VALUES (63, 11, 'HSJN', '缓释胶囊');
INSERT INTO `constant` VALUES (64, 11, 'NJJN', '凝胶胶囊');
INSERT INTO `constant` VALUES (65, 11, 'CJ', '擦剂');
INSERT INTO `constant` VALUES (66, 11, 'HP', '含片');
INSERT INTO `constant` VALUES (67, 11, 'GHJ', '干混剂');
INSERT INTO `constant` VALUES (68, 11, 'XJ', '洗剂');
INSERT INTO `constant` VALUES (69, 11, 'BPJ', '鼻喷剂');
INSERT INTO `constant` VALUES (70, 11, 'MJ', '膜剂');
INSERT INTO `constant` VALUES (71, 11, 'TG', '贴膏');
INSERT INTO `constant` VALUES (72, 11, 'TJ', '贴剂');
INSERT INTO `constant` VALUES (73, 11, 'HJ', '合剂');
INSERT INTO `constant` VALUES (74, 11, 'SJ', '湿巾');
INSERT INTO `constant` VALUES (75, 11, 'KPJ', '口喷剂');
INSERT INTO `constant` VALUES (76, 11, 'DSY', '大输液');
INSERT INTO `constant` VALUES (77, 11, 'YPCL', '药品材料');
INSERT INTO `constant` VALUES (78, 11, 'KSP', '控释片');
INSERT INTO `constant` VALUES (79, 11, 'DBJ', '滴鼻剂');
INSERT INTO `constant` VALUES (80, 11, 'DW', '滴丸');
INSERT INTO `constant` VALUES (81, 11, 'GTJJ', '干糖浆剂');
INSERT INTO `constant` VALUES (82, 11, 'WHXRJ', '雾化吸入剂');
INSERT INTO `constant` VALUES (83, 11, 'YLY', '原料药');
INSERT INTO `constant` VALUES (84, 11, 'TJJ', '糖浆剂');
INSERT INTO `constant` VALUES (85, 11, 'RJN', '软胶囊');
INSERT INTO `constant` VALUES (86, 11, 'DYJ', '滴眼剂');
INSERT INTO `constant` VALUES (87, 11, 'DGFZ', '冻干粉针');
INSERT INTO `constant` VALUES (88, 11, 'CJ', '冲剂');
INSERT INTO `constant` VALUES (89, 11, 'WJ', '丸剂');
INSERT INTO `constant` VALUES (90, 11, 'KFYL', '口服液类');

-- ----------------------------
-- Table structure for constant_category
-- ----------------------------
DROP TABLE IF EXISTS `constant_category`;
CREATE TABLE `constant_category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of constant_category
-- ----------------------------
INSERT INTO `constant_category` VALUES (1, 'DeptCategory', '科室分类');
INSERT INTO `constant_category` VALUES (2, 'FeeType', '收费方式');
INSERT INTO `constant_category` VALUES (3, 'Gender', '性别类型');
INSERT INTO `constant_category` VALUES (4, 'DocTitle', '医生职称');
INSERT INTO `constant_category` VALUES (5, 'Drugs_Type', '药品类型');
INSERT INTO `constant_category` VALUES (6, 'Drugs_Dosage', '药品剂型');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title_id` int(10) DEFAULT NULL COMMENT '职称id',
  `clinic_id` int(10) DEFAULT NULL COMMENT '所在科室id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES (1, '扁鹊', 'bianque', 'bianque123', 29, 1);
INSERT INTO `doctor` VALUES (2, '张仲景', 'fwb', 'fwb123', 30, 1);
INSERT INTO `doctor` VALUES (3, '皇甫谧', 'hqb', 'hqb123', 31, 1);
INSERT INTO `doctor` VALUES (4, '华佗', 'huatuo', 'huatuo123', 32, 2);
INSERT INTO `doctor` VALUES (5, '葛洪', 'xll', 'xll123', 29, 2);
INSERT INTO `doctor` VALUES (6, '孙思邈', 'adq', 'adq123', 30, 2);
INSERT INTO `doctor` VALUES (7, '钱乙', 'dd', 'iop888', 31, 9);
INSERT INTO `doctor` VALUES (8, '李时珍', 'root', 'root', 32, 1);
INSERT INTO `doctor` VALUES (9, '挂号收费员', 'ghy', 'ghy123', 31, 1);

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` int(10) NOT NULL DEFAULT 0 COMMENT '发票号',
  `money` decimal(10, 2) DEFAULT NULL COMMENT '发票金额',
  `paytype` int(10) DEFAULT NULL COMMENT '支付方式 - 常量',
  `create_time` datetime(0) DEFAULT NULL,
  `operator_id` int(10) DEFAULT NULL COMMENT '操作人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for meta_clinic
-- ----------------------------
DROP TABLE IF EXISTS `meta_clinic`;
CREATE TABLE `meta_clinic`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '诊室编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '诊室名称',
  `category_id` int(10) DEFAULT NULL COMMENT '诊室分类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of meta_clinic
-- ----------------------------
INSERT INTO `meta_clinic` VALUES (1, 'XXGNK', '心血管内科', 11);
INSERT INTO `meta_clinic` VALUES (2, 'SJNK', '神经内科', 11);
INSERT INTO `meta_clinic` VALUES (3, 'PTNK', '普通内科', 11);
INSERT INTO `meta_clinic` VALUES (4, 'XHNK', '消化内科', 11);
INSERT INTO `meta_clinic` VALUES (5, 'HXNK', '呼吸内科', 11);
INSERT INTO `meta_clinic` VALUES (6, 'NFMK', '内分泌科', 11);
INSERT INTO `meta_clinic` VALUES (7, 'SBNK', '肾病内科', 11);
INSERT INTO `meta_clinic` VALUES (8, 'XYNK', '血液内科', 11);
INSERT INTO `meta_clinic` VALUES (9, 'GRNK', '感染内科', 11);
INSERT INTO `meta_clinic` VALUES (10, 'LNBNK', '老年病内科', 11);
INSERT INTO `meta_clinic` VALUES (11, 'FSMYNK', '风湿免疫内科', 11);
INSERT INTO `meta_clinic` VALUES (12, 'TXK', '透析科', 11);
INSERT INTO `meta_clinic` VALUES (13, 'BTFYK', '变态反应科', 11);
INSERT INTO `meta_clinic` VALUES (14, 'PTWK', '普通外科', 12);
INSERT INTO `meta_clinic` VALUES (15, 'MNWK', '泌尿外科', 12);
INSERT INTO `meta_clinic` VALUES (16, 'SJWK', '神经外科', 12);
INSERT INTO `meta_clinic` VALUES (17, 'XWK', '胸外科', 12);
INSERT INTO `meta_clinic` VALUES (18, 'ZXWK', '整形外科', 12);
INSERT INTO `meta_clinic` VALUES (19, 'GCWK', '肛肠外科', 12);
INSERT INTO `meta_clinic` VALUES (20, 'GDWK', '肝胆外科', 12);
INSERT INTO `meta_clinic` VALUES (21, 'RXWK', '乳腺外科', 12);
INSERT INTO `meta_clinic` VALUES (22, 'XXGWK', '心血管外科', 12);
INSERT INTO `meta_clinic` VALUES (23, 'XZWK', '心脏外科', 12);
INSERT INTO `meta_clinic` VALUES (24, 'QGYZ', '器官移植', 12);
INSERT INTO `meta_clinic` VALUES (25, 'WCWK', '微创外科', 12);
INSERT INTO `meta_clinic` VALUES (26, 'GNSJWK', '功能神经外科', 12);
INSERT INTO `meta_clinic` VALUES (27, 'XTWK', '腺体外科', 12);
INSERT INTO `meta_clinic` VALUES (28, 'EKZH', '儿科综合', 14);
INSERT INTO `meta_clinic` VALUES (29, 'XEWK', '小儿外科', 14);
INSERT INTO `meta_clinic` VALUES (30, 'ETBJK', '儿童保健科', 14);
INSERT INTO `meta_clinic` VALUES (31, 'XSEK', '新生儿科', 14);
INSERT INTO `meta_clinic` VALUES (32, 'XEGK', '小儿骨科', 14);
INSERT INTO `meta_clinic` VALUES (33, 'XESJNK', '小儿神经内科', 14);
INSERT INTO `meta_clinic` VALUES (34, 'XEHXK', '小儿呼吸科', 14);
INSERT INTO `meta_clinic` VALUES (35, 'XEXYK', '小儿血液科', 14);
INSERT INTO `meta_clinic` VALUES (36, 'XEEBHK', '小儿耳鼻喉科', 14);
INSERT INTO `meta_clinic` VALUES (37, 'XEXNK', '小儿心内科', 14);
INSERT INTO `meta_clinic` VALUES (38, 'XEKFK', '小儿康复科', 14);
INSERT INTO `meta_clinic` VALUES (39, 'XEJSK', '小儿精神科', 14);
INSERT INTO `meta_clinic` VALUES (40, 'XESNK', '小儿肾内科', 14);
INSERT INTO `meta_clinic` VALUES (41, 'XEXHK', '小儿消化科', 14);
INSERT INTO `meta_clinic` VALUES (42, 'XEPFK', '小儿皮肤科', 14);
INSERT INTO `meta_clinic` VALUES (43, 'XEJZK', '小儿急诊科', 14);
INSERT INTO `meta_clinic` VALUES (44, 'XENFMK', '小儿内分泌科', 14);
INSERT INTO `meta_clinic` VALUES (45, 'XEMNWK', '小儿泌尿外科', 14);
INSERT INTO `meta_clinic` VALUES (46, 'XEGRK', '小儿感染科', 14);
INSERT INTO `meta_clinic` VALUES (47, 'XEXWK01', '小儿心外科', 14);
INSERT INTO `meta_clinic` VALUES (48, 'XEXWK02', '小儿胸外科', 14);
INSERT INTO `meta_clinic` VALUES (49, 'XESJWK', '小儿神经外科', 14);
INSERT INTO `meta_clinic` VALUES (50, 'XEZXK', '小儿整形科', 14);
INSERT INTO `meta_clinic` VALUES (51, 'XEFSMYK', '小儿风湿免疫科', 14);
INSERT INTO `meta_clinic` VALUES (52, 'XEFK', '小儿妇科', 14);
INSERT INTO `meta_clinic` VALUES (53, 'CRK', '传染科', 15);
INSERT INTO `meta_clinic` VALUES (54, 'GBK', '肝病科', 15);
INSERT INTO `meta_clinic` VALUES (55, 'AZBK', '艾滋病科', 15);
INSERT INTO `meta_clinic` VALUES (56, 'CRWZS', '传染危重室', 15);
INSERT INTO `meta_clinic` VALUES (57, 'FCKZH', '妇产科综合', 16);
INSERT INTO `meta_clinic` VALUES (58, 'FK', '妇科', 16);
INSERT INTO `meta_clinic` VALUES (59, 'CK', '产科', 16);
INSERT INTO `meta_clinic` VALUES (60, 'JHSYK', '计划生育科', 16);
INSERT INTO `meta_clinic` VALUES (61, 'FKNFM', '妇科内分泌', 16);
INSERT INTO `meta_clinic` VALUES (62, 'YCZYK', '遗传咨询科', 16);
INSERT INTO `meta_clinic` VALUES (63, 'CQJCK', '产前检查科', 16);
INSERT INTO `meta_clinic` VALUES (64, 'FMNK', '妇泌尿科', 16);
INSERT INTO `meta_clinic` VALUES (65, 'QLX', '前列腺', 17);
INSERT INTO `meta_clinic` VALUES (66, 'XGNZA', '性功能障碍', 17);
INSERT INTO `meta_clinic` VALUES (67, 'SZQGR', '生殖器感染', 17);
INSERT INTO `meta_clinic` VALUES (68, 'NXBY', '男性不育', 17);
INSERT INTO `meta_clinic` VALUES (69, 'SZZX', '生殖整形', 17);
INSERT INTO `meta_clinic` VALUES (70, 'JSK', '精神科', 18);
INSERT INTO `meta_clinic` VALUES (71, 'SFJDK', '司法鉴定科', 18);
INSERT INTO `meta_clinic` VALUES (72, 'YWYLK', '药物依赖科', 18);
INSERT INTO `meta_clinic` VALUES (73, 'ZYJSK', '中医精神科', 18);
INSERT INTO `meta_clinic` VALUES (74, 'SXZAK', '双相障碍科', 18);
INSERT INTO `meta_clinic` VALUES (75, 'PFK', '皮肤科', 19);
INSERT INTO `meta_clinic` VALUES (76, 'XBK', '性病科', 19);
INSERT INTO `meta_clinic` VALUES (77, 'ZYZHK', '中医综合科', 20);
INSERT INTO `meta_clinic` VALUES (78, 'ZJK', '针灸科', 20);
INSERT INTO `meta_clinic` VALUES (79, 'ZYGK', '中医骨科', 20);
INSERT INTO `meta_clinic` VALUES (80, 'ZYFCK', '中医妇产科', 20);
INSERT INTO `meta_clinic` VALUES (81, 'ZYWK', '中医外科', 20);
INSERT INTO `meta_clinic` VALUES (82, 'ZYEK', '中医儿科', 20);
INSERT INTO `meta_clinic` VALUES (83, 'ZYGCK', '中医肛肠科', 20);
INSERT INTO `meta_clinic` VALUES (84, 'ZYPFK', '中医皮肤科', 20);
INSERT INTO `meta_clinic` VALUES (85, 'ZYWGK', '中医五官科', 20);
INSERT INTO `meta_clinic` VALUES (86, 'ZYAMK', '中医按摩科', 20);
INSERT INTO `meta_clinic` VALUES (87, 'ZYXHK', '中医消化科', 20);
INSERT INTO `meta_clinic` VALUES (88, 'ZYZLK', '中医肿瘤科', 20);
INSERT INTO `meta_clinic` VALUES (89, 'ZYXNK', '中医心内科', 20);
INSERT INTO `meta_clinic` VALUES (90, 'ZYSJNK', '中医神经内科', 20);
INSERT INTO `meta_clinic` VALUES (91, 'ZYSBNK', '中医肾病内科', 20);
INSERT INTO `meta_clinic` VALUES (92, 'ZYNFM', '中医内分泌', 20);
INSERT INTO `meta_clinic` VALUES (93, 'ZYHXK', '中医呼吸科', 20);
INSERT INTO `meta_clinic` VALUES (94, 'ZYGBK', '中医肝病科', 20);
INSERT INTO `meta_clinic` VALUES (95, 'ZYNK', '中医男科', 20);
INSERT INTO `meta_clinic` VALUES (96, 'ZYFSMYNK', '中医风湿免疫内科', 20);
INSERT INTO `meta_clinic` VALUES (97, 'ZYXYK', '中医血液科', 20);
INSERT INTO `meta_clinic` VALUES (98, 'ZYRXWK', '中医乳腺外科', 20);
INSERT INTO `meta_clinic` VALUES (99, 'ZYLNBK', '中医老年病科', 20);
INSERT INTO `meta_clinic` VALUES (100, 'ZLZHK', '肿瘤综合科', 21);
INSERT INTO `meta_clinic` VALUES (101, 'ZLNK', '肿瘤内科', 21);
INSERT INTO `meta_clinic` VALUES (102, 'FLK', '放疗科', 21);
INSERT INTO `meta_clinic` VALUES (103, 'ZLWK', '肿瘤外科', 21);
INSERT INTO `meta_clinic` VALUES (104, 'ZLFK', '肿瘤妇科', 21);
INSERT INTO `meta_clinic` VALUES (105, 'GZLK', '骨肿瘤科', 21);
INSERT INTO `meta_clinic` VALUES (106, 'ZLKFK', '肿瘤康复科', 21);
INSERT INTO `meta_clinic` VALUES (107, 'GWK', '骨外科', 22);
INSERT INTO `meta_clinic` VALUES (108, 'SWK', '手外科', 22);
INSERT INTO `meta_clinic` VALUES (109, 'CSGK', '创伤骨科', 22);
INSERT INTO `meta_clinic` VALUES (110, 'JZWK', '脊柱外科', 22);
INSERT INTO `meta_clinic` VALUES (111, 'GGJK', '骨关节科', 22);
INSERT INTO `meta_clinic` VALUES (112, 'GZSSK', '骨质疏松科', 22);
INSERT INTO `meta_clinic` VALUES (113, 'JXGK', '矫形骨科', 22);
INSERT INTO `meta_clinic` VALUES (114, 'EBYHTJK', '耳鼻咽喉头颈科', 23);
INSERT INTO `meta_clinic` VALUES (115, 'KQK', '口腔科', 23);
INSERT INTO `meta_clinic` VALUES (116, 'YK', '眼科', 23);
INSERT INTO `meta_clinic` VALUES (117, 'KFK', '康复科', 24);
INSERT INTO `meta_clinic` VALUES (118, 'LLK', '理疗科', 24);
INSERT INTO `meta_clinic` VALUES (119, 'MZK', '麻醉科', 25);
INSERT INTO `meta_clinic` VALUES (120, 'TTK', '疼痛科', 25);
INSERT INTO `meta_clinic` VALUES (121, 'YYK', '营养科', 26);
INSERT INTO `meta_clinic` VALUES (122, 'GYYK', '高压氧科', 27);
INSERT INTO `meta_clinic` VALUES (123, 'GNJCK', '功能检查科', 27);
INSERT INTO `meta_clinic` VALUES (124, 'BLK', '病理科', 27);
INSERT INTO `meta_clinic` VALUES (125, 'JYK', '检验科', 27);
INSERT INTO `meta_clinic` VALUES (126, 'SYZX', '实验中心', 27);
INSERT INTO `meta_clinic` VALUES (127, 'XDTK', '心电图科', 27);
INSERT INTO `meta_clinic` VALUES (128, 'FSK', '放射科', 28);
INSERT INTO `meta_clinic` VALUES (129, 'CSZDK', '超声诊断科', 28);
INSERT INTO `meta_clinic` VALUES (130, 'YXYXK', '医学影像科', 28);
INSERT INTO `meta_clinic` VALUES (131, 'HYK', '核医学科', 28);
INSERT INTO `meta_clinic` VALUES (132, 'YJK', '药剂科', 29);
INSERT INTO `meta_clinic` VALUES (133, 'HLK', '护理科', 29);
INSERT INTO `meta_clinic` VALUES (134, 'TJK', '体检科', 29);
INSERT INTO `meta_clinic` VALUES (135, 'JZK', '急诊科', 29);
INSERT INTO `meta_clinic` VALUES (136, 'GGWSYYFK', '公共卫生与预防科', 29);
INSERT INTO `meta_clinic` VALUES (137, 'SBK', '设备科', 29);
INSERT INTO `meta_clinic` VALUES (138, 'CWK', '财务科', 29);

-- ----------------------------
-- Table structure for meta_drug
-- ----------------------------
DROP TABLE IF EXISTS `meta_drug`;
CREATE TABLE `meta_drug`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` bigint(20) DEFAULT NULL COMMENT '药品编码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '药品名称',
  `specification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '药品规格',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '包装单位',
  `producer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生产厂家',
  `price` decimal(10, 2) DEFAULT NULL COMMENT '药品剂型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of meta_drug
-- ----------------------------
INSERT INTO `meta_drug` VALUES (1, 86979474000208, '注射用甲氨喋呤', '1g×1支', '支', '江苏恒瑞医药股份有限公司', 15.73);
INSERT INTO `meta_drug` VALUES (2, 86979474000209, '氟康唑氯化钠注射液(大扶康)', '200mg×100ml/瓶', '瓶', '辉瑞制药有限公司', 7.01);
INSERT INTO `meta_drug` VALUES (3, 86979474000208, '50%葡萄糖注射液(塑瓶)', '10:20ml×1支', '支', '中国大冢制药有限公司', 25.16);
INSERT INTO `meta_drug` VALUES (4, 86979474000209, '盐酸特比萘芬泡腾片（丁克）', '50mg×7片/盒', '盒', '齐鲁制药有限公司', 40.62);
INSERT INTO `meta_drug` VALUES (5, 86979474000208, '红芪冲剂', '10g/袋', '袋', '南京药业股份有限公司药材分公司', 30.79);
INSERT INTO `meta_drug` VALUES (6, 86979474000208, '盐酸氨酮戊酸散（外用）', '118mg×1瓶', '瓶', '上海复旦张江生物医药股份有限公司', 19.51);
INSERT INTO `meta_drug` VALUES (7, 86979474000209, '盐酸美金刚片(易贝申)', '10mg×28片/盒', '盒', '丹麦灵北药厂', 22.05);
INSERT INTO `meta_drug` VALUES (8, 86979474000208, '磷酸奥司他韦胶囊(达菲)', '75mg×10粒/盒', '盒', '上海罗氏制药有限公司S', 60.96);
INSERT INTO `meta_drug` VALUES (9, 86979474000209, '泽泻颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 0.09);
INSERT INTO `meta_drug` VALUES (10, 86979474000208, '山药颗粒', '0.5g/10g/袋', '袋', '', 6.79);
INSERT INTO `meta_drug` VALUES (11, 86979474000208, '熟大黄颗粒', '1g/6g/袋', '袋', '江阴天江药业有限公司', 23.51);
INSERT INTO `meta_drug` VALUES (12, 86979474000209, '黄连颗粒', '0.5g/3g袋', '袋', '江阴天江药业有限公司', 1.07);
INSERT INTO `meta_drug` VALUES (13, 86979474000208, '黄芩颗粒(酒)', '2g/10g/袋', '袋', '江阴天江药业有限公司', 81.74);
INSERT INTO `meta_drug` VALUES (14, 86979474000209, '炒白芍颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 31.86);
INSERT INTO `meta_drug` VALUES (15, 86979474000208, '炒白术颗粒', '3g/10g/袋', '袋', '', 41.50);
INSERT INTO `meta_drug` VALUES (16, 86979474000208, '白芷颗粒', '1g/6g/袋', '袋', '江阴天江药业有限公司', 67.72);
INSERT INTO `meta_drug` VALUES (17, 86979474000209, '薤白颗粒', '2.5g/10g袋', '袋', '江阴天江药业有限公司', 17.95);
INSERT INTO `meta_drug` VALUES (18, 86979474000208, '川芎颗粒', '2g/6g/袋', '袋', '', 0.70);
INSERT INTO `meta_drug` VALUES (19, 86979474000209, '维生素K1注射液', '1ml:10mg×10支/盒', '盒', '芜湖康奇制药', 10.39);
INSERT INTO `meta_drug` VALUES (20, 86979474000208, '利培酮片（维思通）', '1mg×20片/盒', '盒', '西安杨森制药有限公司', 5.52);
INSERT INTO `meta_drug` VALUES (21, 86979474000208, '0.9%氯化钠注射液(塑瓶)', '2.25g:250ml×1瓶', '瓶', '中国大冢制药有限公司', 14.34);
INSERT INTO `meta_drug` VALUES (22, 86979474000209, '0.9%氯化钠注射液（百特）', '500ml×1袋', '瓶', '上海百特医疗用品有限公司', 46.91);
INSERT INTO `meta_drug` VALUES (23, 86979474000208, '0.9%氯化钠注射液(塑瓶)', '0.9g:100ml×1瓶', '瓶', '中国大冢制药有限公司', 6.34);
INSERT INTO `meta_drug` VALUES (24, 86979474000209, '10%葡萄糖注射液(塑瓶)', '50g:500ml×1瓶', '瓶', '中国大冢制药有限公司', 5.04);
INSERT INTO `meta_drug` VALUES (25, 86979474000208, '10%葡萄糖注射液(塑瓶)', '25g:250ml×1瓶', '袋', '中国大冢制药有限公司', 16.02);
INSERT INTO `meta_drug` VALUES (26, 86979474000208, '5%葡萄糖注射液(塑瓶)', '25g:500ml×1瓶', '瓶', '中国大冢制药有限公司', 47.78);
INSERT INTO `meta_drug` VALUES (27, 86979474000209, '5%葡萄糖注射液(塑瓶)', '12.5g:250ml×1瓶', '瓶', '中国大冢制药有限公司', 45.62);
INSERT INTO `meta_drug` VALUES (28, 86979474000208, '5%葡萄糖注射液(塑瓶)', '5g:100ml×1瓶', '瓶', '中国大冢制药有限公司', 17.53);
INSERT INTO `meta_drug` VALUES (29, 86979474000209, '胃苏颗粒', '5g*9袋/盒', '盒', '扬子江药业集团有限公司', 1.73);
INSERT INTO `meta_drug` VALUES (30, 86979474000208, '复方甘露醇注射液(伸宁)', '250ml×1袋', '袋', '南京正大天晴制药有限公司', 15.56);
INSERT INTO `meta_drug` VALUES (31, 86979474000208, '艾塞那肽注射液(百泌达)', '5ug:1.2ml×1支', '支', '礼来（美国）公司S', 23.71);
INSERT INTO `meta_drug` VALUES (32, 86979474000209, '艾塞那肽注射液(百泌达)', '10ug:2.4ml×1支', '支', '礼来（美国）公司', 91.92);
INSERT INTO `meta_drug` VALUES (33, 86979474000208, '丹参颗粒', '2g/10g/袋', '袋', '江阴天江药业有限公司', 11.61);
INSERT INTO `meta_drug` VALUES (34, 86979474000209, '亮菌甲素注射液', '10ml:5mg×1支', '支', '云南大理药业股份有限公司', 62.41);
INSERT INTO `meta_drug` VALUES (35, 86979474000208, '瞿麦', '1000mg/g', '克', '江苏', 43.84);
INSERT INTO `meta_drug` VALUES (36, 86979474000208, '肠内营养粉剂(安素)', '1000mg/g', '克', '雅培荷兰', 3.12);
INSERT INTO `meta_drug` VALUES (37, 86979474000209, '桉叶油', '1000g/瓶', '瓶', '吉水同仁', 3.40);
INSERT INTO `meta_drug` VALUES (38, 86979474000208, '肉苁蓉', '1000mg/g', '克', '内蒙', 51.82);
INSERT INTO `meta_drug` VALUES (39, 86979474000209, '番木鳖酊', '1000mg/g', '克', '', 16.84);
INSERT INTO `meta_drug` VALUES (40, 86979474000208, '枸橼酸芬太尼注射液', '0.1mg×1支', '支', '湖北宜昌人福药业', 19.42);
INSERT INTO `meta_drug` VALUES (41, 86979474000208, '枸橼酸芬太尼注射液', '0.5mg×1支', '支', '宜昌人福药业有限责任公司', 2.66);
INSERT INTO `meta_drug` VALUES (42, 86979474000209, '酚红(AR)', '25g×1瓶', '瓶', '江西济民可信药业有限公司', 13.43);
INSERT INTO `meta_drug` VALUES (43, 86979474000208, '酚红IND', '25g×1瓶', '瓶', '', 4.07);
INSERT INTO `meta_drug` VALUES (44, 86979474000209, '酚酞', '25g×1瓶', '瓶', '', 10.42);
INSERT INTO `meta_drug` VALUES (45, 86979474000208, '蜂蜡', '500g×1瓶', '瓶', '华申康复', 3.47);
INSERT INTO `meta_drug` VALUES (46, 86979474000208, '呋喃西林', '25g×1袋', '袋', '', 37.75);
INSERT INTO `meta_drug` VALUES (47, 86979474000209, '氯雷他定糖浆(开瑞坦)', '60ml：60mg×1瓶', '瓶', '上海先灵葆雅制药有限公司', 72.62);
INSERT INTO `meta_drug` VALUES (48, 86979474000208, '丙泊酚注射液(得普利麻)', '50ml：0.5g×1瓶', '瓶', '阿斯利康制药有限公司', 2.23);
INSERT INTO `meta_drug` VALUES (49, 86979474000209, 'BG维生素E软胶囊', '0.1g×30粒/盒', '盒', '浙江医药新昌制药厂', 11.03);
INSERT INTO `meta_drug` VALUES (50, 86979474000208, '贝前列素钠片', '20ug×10片/盒', '盒', '北京泰德制药股份有限公司', 30.09);
INSERT INTO `meta_drug` VALUES (51, 86979474000208, '盐酸伊立替康注射液(开普拓）', '5ml:100mg×1瓶', '瓶', '辉瑞制药', 7.42);
INSERT INTO `meta_drug` VALUES (52, 86979474000209, '磺胺(AR)', '100g×1瓶', '瓶', '', 1.72);
INSERT INTO `meta_drug` VALUES (53, 86979474000208, '白附子', '1000mg/g', '克', '', 31.83);
INSERT INTO `meta_drug` VALUES (54, 86979474000209, '白癫风胶囊', '1000mg/g', '克', '天津宏仁堂药业有限公司', 3.41);
INSERT INTO `meta_drug` VALUES (55, 86979474000208, '奋乃静片', '2mg×100片/瓶', '瓶', '上海朝晖药业有限公司', 0.54);
INSERT INTO `meta_drug` VALUES (56, 86979474000208, '注射用头孢他啶(复达欣)', '1g×1支', '支', '葛兰素史克制药(苏州)有限公司', 8.05);
INSERT INTO `meta_drug` VALUES (57, 86979474000209, '复方氨基酸(绿支安)18AA注射液', '10.3%200ml×1瓶', '瓶', '广州绿十字制药有限公司', 49.18);
INSERT INTO `meta_drug` VALUES (58, 86979474000208, '吡诺克辛滴眼液(卡林-U)', '5ml×1支', '支', '日本参天制药株式会社', 51.24);
INSERT INTO `meta_drug` VALUES (59, 86979474000209, '卡巴胆碱注射液（卡米可林）', '0.1mg×1支', '支', '山东正大福瑞达制药有限公司', 5.23);
INSERT INTO `meta_drug` VALUES (60, 86979474000208, '重组人粒细胞(特尔立)巨噬细胞集落冻干粉针', '150ug×1瓶', '瓶', '夏门特宝生物工程股份有限公司', 32.97);
INSERT INTO `meta_drug` VALUES (61, 86979474000208, '哌拉西林他唑巴坦钠(特治星)', '4.5g×1支', '支', '惠氏制药有限公司', 50.50);
INSERT INTO `meta_drug` VALUES (62, 86979474000209, '地黄颗粒', '3g/10g/袋', '袋', '江阴天江药业有限公司', 5.48);
INSERT INTO `meta_drug` VALUES (63, 86979474000208, '当归颗粒', '4g/10g/袋', '袋', '江阴天江药业有限公司', 68.19);
INSERT INTO `meta_drug` VALUES (64, 86979474000209, '维生素B1注射液', '2ml:100mg×10支/盒', '盒', '杭州民生药业有限公司', 12.70);
INSERT INTO `meta_drug` VALUES (65, 86979474000208, '芒硝颗粒', '10g/4g/袋', '袋', '江阴天江药业有限公司', 13.00);
INSERT INTO `meta_drug` VALUES (66, 86979474000208, '生大黄颗粒', '1g:3g/袋', '袋', '江阴天江药业有限公司', 30.87);
INSERT INTO `meta_drug` VALUES (67, 86979474000209, '虎杖颗粒', '1g/15g/袋', '袋', '江阴天江药业有限公司', 23.76);
INSERT INTO `meta_drug` VALUES (68, 86979474000208, '鱼腥草颗粒', '1g/15g/袋', '袋', '江阴天江药业有限公司', 14.89);
INSERT INTO `meta_drug` VALUES (69, 86979474000209, '苦参颗粒', '1g/10g/袋', '袋', '江阴天江药业有限公司', 1.39);
INSERT INTO `meta_drug` VALUES (70, 86979474000208, '硫酸镁注射液', '10ml:2.5g×5支/盒', '盒', '杭州民生药业有限公司', 42.29);
INSERT INTO `meta_drug` VALUES (71, 86979474000208, '胡黄连', '1000mg/g', '克', '进口', 37.20);
INSERT INTO `meta_drug` VALUES (72, 86979474000209, '虎杖', '1000mg/g', '克', '江苏', 16.01);
INSERT INTO `meta_drug` VALUES (73, 86979474000208, '聚桂醇注射液', '10ml:100mg×1支/盒', '盒', '陕西天宇制药有限公司S', 12.87);
INSERT INTO `meta_drug` VALUES (74, 86979474000209, '康肤冲剂(I)', '20g×10袋/盒', '盒', '南京市中西医结合医院', 33.74);
INSERT INTO `meta_drug` VALUES (75, 86979474000208, '注射用头孢哌酮舒巴坦(舒普深)', '1.5g×1瓶', '瓶', '辉瑞制药有限公司（大连）', 2.07);
INSERT INTO `meta_drug` VALUES (76, 86979474000208, '清热通淋片', '0.39g*48片/盒', '盒', '江西杏林白马药业有限公司', 19.18);
INSERT INTO `meta_drug` VALUES (77, 86979474000209, '康莱特注射液', '10g×100ml/瓶', '瓶', '浙江康莱特药业有限公司', 11.36);
INSERT INTO `meta_drug` VALUES (78, 86979474000208, '山茨菇', '1000mg/g', '克', '贵州', 70.02);
INSERT INTO `meta_drug` VALUES (79, 86979474000209, '马来酸桂哌齐特注射液(克林澳)', '80mg×1支', '支', '北京四环制药有限公司', 67.66);
INSERT INTO `meta_drug` VALUES (80, 86979474000208, '氯化镁', '500g×1瓶', '瓶', '北京', 6.25);
INSERT INTO `meta_drug` VALUES (81, 86979474000208, '呋塞米注射液(速尿)', '2ml:20mg×10支/盒', '盒', '上海禾丰制药有限公司', 5.63);
INSERT INTO `meta_drug` VALUES (82, 86979474000209, '注射用奈达铂（奥先达）', '10mg×1支', '支', '江苏奥赛康药业股份有限公司', 9.04);
INSERT INTO `meta_drug` VALUES (83, 86979474000208, '注射用夫西地酸钠', '0.125g×1支', '支', 'G成都天台山制药有限公司', 44.97);
INSERT INTO `meta_drug` VALUES (84, 86979474000209, '阳起石', '1000mg/g', '克', '', 25.38);
INSERT INTO `meta_drug` VALUES (85, 86979474000208, '铜绿假单胞菌注射液', '1ml×1支', '支', '北京万特尔生物制药有限公司', 37.76);
INSERT INTO `meta_drug` VALUES (86, 86979474000208, '盐酸氟西汀胶囊(百忧解)', '20mg×7粒/盒', '盒', '礼来苏州制药有限公司', 15.61);
INSERT INTO `meta_drug` VALUES (87, 86979474000209, '10%氯化钠注射液', '10ml:1g×5支/盒', '盒', '湖北天圣康迪制药有限公司', 4.50);
INSERT INTO `meta_drug` VALUES (88, 86979474000208, '注射用替考拉宁(他格适)', '200mg×1瓶', '瓶', '赛诺菲(北京)制药有限公司', 14.21);
INSERT INTO `meta_drug` VALUES (89, 86979474000209, '石决明', '1000mg/g', '克', '进口', 10.74);
INSERT INTO `meta_drug` VALUES (90, 86979474000208, '石榴皮', '1000mg/g', '克', '', 9.49);
INSERT INTO `meta_drug` VALUES (91, 86979474000208, '熟地', '1000mg/g', '克', '江苏', 55.10);
INSERT INTO `meta_drug` VALUES (92, 86979474000209, '水牛角片', '1000mg/g', '克', '江苏', 5.68);
INSERT INTO `meta_drug` VALUES (93, 86979474000208, '水蜈蚣', '1000mg/g', '克', '', 2.20);
INSERT INTO `meta_drug` VALUES (94, 86979474000209, '水蛭', '1000mg/g', '克', '江苏', 71.56);
INSERT INTO `meta_drug` VALUES (95, 86979474000208, '苏梗', '1000mg/g', '克', '江苏', 17.14);
INSERT INTO `meta_drug` VALUES (96, 86979474000208, '苏木', '1000mg/g', '克', '', 34.06);
INSERT INTO `meta_drug` VALUES (97, 86979474000209, '太子参', '1000mg/g', '克', '江苏', 28.50);
INSERT INTO `meta_drug` VALUES (98, 86979474000208, '檀香', '1000mg/g', '克', '20101116', 1.48);
INSERT INTO `meta_drug` VALUES (99, 86979474000209, '桃仁', '1000mg/g', '克', '陕西', 41.29);
INSERT INTO `meta_drug` VALUES (100, 86979474000208, '天冬', '1000mg/g', '克', '湖北', 38.04);

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `case_code` int(10) DEFAULT NULL COMMENT '病例号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `birthday` date DEFAULT NULL COMMENT '出生年月',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `age_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄类型 岁 月 天',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_detail`;
CREATE TABLE `pay_detail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `register_id` int(10) DEFAULT NULL COMMENT '挂号id',
  `invoice_id` int(10) DEFAULT NULL COMMENT '发票id',
  `pro_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '项目名称',
  `pro_price` decimal(10, 2) DEFAULT NULL COMMENT '项目单价',
  `pro_amount` int(10) DEFAULT NULL COMMENT '数量',
  `case_code` int(10) DEFAULT NULL COMMENT '病例号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pay_detail
-- ----------------------------
INSERT INTO `pay_detail` VALUES (1, 35, 134, '胃苏颗粒', 1.73, 5, NULL);
INSERT INTO `pay_detail` VALUES (2, 35, 134, '洗胃', 40.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (3, 35, 135, '胃苏颗粒', 1.73, -5, NULL);
INSERT INTO `pay_detail` VALUES (4, 35, 135, '洗胃', 40.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (5, 35, 136, '山药颗粒', 6.79, 10, NULL);
INSERT INTO `pay_detail` VALUES (6, 35, 136, '灌肠', 10.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (7, 35, 137, '山药颗粒', 6.79, -10, NULL);
INSERT INTO `pay_detail` VALUES (8, 35, 138, '灌肠', 10.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (9, 37, 139, '挂号费', 8.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (10, 37, 142, '蜂蜡', 3.47, 2, NULL);
INSERT INTO `pay_detail` VALUES (11, 37, 142, '胃苏颗粒', 1.73, 5, NULL);
INSERT INTO `pay_detail` VALUES (12, 37, 143, '洗胃', 40.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (13, 37, 143, '胃苏颗粒', 1.73, -5, NULL);
INSERT INTO `pay_detail` VALUES (14, 37, 144, '洗胃', 40.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (15, 37, 144, '山药颗粒', 6.79, 10, NULL);
INSERT INTO `pay_detail` VALUES (16, 37, 144, '灌肠', 10.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (17, 37, 144, '山药颗粒', 6.79, -10, NULL);
INSERT INTO `pay_detail` VALUES (18, 37, 145, '灌肠', 10.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (19, 37, 145, '挂号费', 8.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (20, 37, 145, '蜂蜡', 3.47, 2, NULL);
INSERT INTO `pay_detail` VALUES (21, 40, 0, '甲紫溶液', 41.00, 3, NULL);
INSERT INTO `pay_detail` VALUES (22, 40, 0, '蜂蜡', 3.47, -2, NULL);
INSERT INTO `pay_detail` VALUES (23, 40, 0, '甲紫溶液', 41.00, -3, NULL);
INSERT INTO `pay_detail` VALUES (24, 40, 0, '红芪冲剂', 30.79, 3, NULL);
INSERT INTO `pay_detail` VALUES (25, 40, 0, '脑室碘水造影', 60.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (26, 40, 0, '气脑造影', 80.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (27, 40, 800816, '食管钡餐透视', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (28, 40, 800816, '脑室碘水造影', 60.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (29, 40, 800817, '气脑造影', 80.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (30, 40, 800817, '食管钡餐透视', 15.00, -1, NULL);
INSERT INTO `pay_detail` VALUES (31, 40, 800818, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (32, 40, 800818, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (33, 40, 800819, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (34, 40, 800819, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (35, 40, 800820, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (36, 40, 800820, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);
INSERT INTO `pay_detail` VALUES (37, 40, 800821, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (38, 40, 800821, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);
INSERT INTO `pay_detail` VALUES (39, 40, 800822, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (40, 40, 800822, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);
INSERT INTO `pay_detail` VALUES (41, 40, 800824, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (42, 40, 800824, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);
INSERT INTO `pay_detail` VALUES (43, 40, 800827, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (44, 40, 800827, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);
INSERT INTO `pay_detail` VALUES (45, 40, 800828, '鱼腥草颗粒', 15.00, 1, NULL);
INSERT INTO `pay_detail` VALUES (46, 40, 800828, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, NULL);

-- ----------------------------
-- Table structure for prescription
-- ----------------------------
DROP TABLE IF EXISTS `prescription`;
CREATE TABLE `prescription`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `case_id` int(10) DEFAULT NULL COMMENT '病例id',
  `register_id` int(10) DEFAULT NULL COMMENT '挂号id',
  `doctor_id` int(10) DEFAULT NULL COMMENT '医生id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '处方名称',
  `create_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of prescription
-- ----------------------------
INSERT INTO `prescription` VALUES (1, 1, 35, 2, '小儿感冒', '2019-03-17 17:19:19');
INSERT INTO `prescription` VALUES (2, 2, 4, 5, '肠炎', '2019-03-17 17:59:19');
INSERT INTO `prescription` VALUES (3, 5, 9, 1, '模板：念珠菌性皮炎', '2019-03-28 10:27:28');
INSERT INTO `prescription` VALUES (4, 5, 9, 1, '新增处方1', '2019-03-28 10:38:57');
INSERT INTO `prescription` VALUES (5, 8, 27, 1, '新增处方1', '2019-03-28 11:00:14');
INSERT INTO `prescription` VALUES (6, 9, 29, 1, '新增处方1', '2019-03-28 13:46:47');
INSERT INTO `prescription` VALUES (7, 10, 30, 1, 'www', '2019-03-28 15:27:01');
INSERT INTO `prescription` VALUES (8, 10, 30, 1, '模板：病毒性胃肠炎', '2019-03-28 15:28:12');
INSERT INTO `prescription` VALUES (9, 15, 32, 1, 's1', '2019-03-29 09:27:12');
INSERT INTO `prescription` VALUES (10, 18, 33, 1, '模板：病毒性胃肠炎', '2019-03-29 14:47:46');
INSERT INTO `prescription` VALUES (11, 18, 33, 1, '模板：念珠菌性皮炎', '2019-03-29 14:47:52');
INSERT INTO `prescription` VALUES (12, 19, 34, 1, '模板：病毒性胃肠炎', '2019-03-29 15:20:15');
INSERT INTO `prescription` VALUES (13, 19, 34, 1, '模板：季节性常发哮喘', '2019-03-29 15:20:22');
INSERT INTO `prescription` VALUES (14, 7, 26, 1, '模板：季节性常发哮喘', '2019-03-29 15:42:04');
INSERT INTO `prescription` VALUES (15, 20, 37, 1, 'a1', '2019-04-01 13:27:53');
INSERT INTO `prescription` VALUES (16, 20, 37, 1, '模板：支气管哮喘', '2019-04-01 13:47:39');
INSERT INTO `prescription` VALUES (17, 600620, 40, 2, '感冒', '2019-06-25 00:46:50');
INSERT INTO `prescription` VALUES (18, 600620, 40, 2, '感冒', '2019-06-25 08:12:23');
INSERT INTO `prescription` VALUES (19, 600620, 40, 2, '感冒', '2019-06-25 08:14:36');
INSERT INTO `prescription` VALUES (20, 600620, 40, 2, '感冒', '2019-06-25 08:15:08');
INSERT INTO `prescription` VALUES (21, 600620, 40, 2, '感冒', '2019-06-25 08:16:03');
INSERT INTO `prescription` VALUES (22, 600620, 40, 2, '感冒', '2019-06-25 08:16:50');
INSERT INTO `prescription` VALUES (23, 600620, 40, 2, '感冒', '2019-06-25 08:18:10');
INSERT INTO `prescription` VALUES (24, 600620, 40, 2, '感冒', '2019-06-25 08:18:36');
INSERT INTO `prescription` VALUES (25, 600620, 40, 2, '感冒', '2019-06-25 08:19:38');
INSERT INTO `prescription` VALUES (26, 600620, 40, 2, '感冒', '2019-06-25 08:20:22');
INSERT INTO `prescription` VALUES (27, 600620, 40, 2, '感冒', '2019-06-25 08:21:14');
INSERT INTO `prescription` VALUES (28, 600620, 40, 2, '感冒', '2019-06-25 08:21:24');
INSERT INTO `prescription` VALUES (29, 600620, 40, 2, '感冒', '2019-06-25 08:28:55');
INSERT INTO `prescription` VALUES (30, 600620, 40, 2, '感冒', '2019-06-25 08:29:08');
INSERT INTO `prescription` VALUES (31, 600620, 40, 2, '感冒', '2019-06-25 09:26:28');
INSERT INTO `prescription` VALUES (32, 600620, 40, 2, '感冒', '2019-06-25 09:27:03');
INSERT INTO `prescription` VALUES (33, 600620, 40, 2, '感冒', '2019-06-25 09:39:46');
INSERT INTO `prescription` VALUES (34, 600620, 40, 2, '感冒', '2019-06-25 09:41:14');
INSERT INTO `prescription` VALUES (35, 600620, 40, 2, '感冒', '2019-06-25 09:41:29');
INSERT INTO `prescription` VALUES (36, 600620, 40, 2, '感冒', '2019-06-25 09:41:40');
INSERT INTO `prescription` VALUES (37, 600620, 40, 2, '感冒', '2019-06-25 09:42:18');
INSERT INTO `prescription` VALUES (38, 600620, 40, 2, '感冒', '2019-06-25 09:45:21');
INSERT INTO `prescription` VALUES (39, 600620, 40, 2, '感冒', '2019-06-25 09:45:37');
INSERT INTO `prescription` VALUES (40, 600620, 40, 2, '感冒', '2019-06-25 09:46:11');
INSERT INTO `prescription` VALUES (41, 600620, 40, 2, '感冒', '2019-06-25 09:50:49');
INSERT INTO `prescription` VALUES (42, 600620, 40, 2, '感冒', '2019-06-25 09:51:00');
INSERT INTO `prescription` VALUES (43, 600620, 40, 2, '感冒', '2019-06-25 09:51:24');
INSERT INTO `prescription` VALUES (44, 600620, 40, 2, '感冒', '2019-06-25 09:51:43');
INSERT INTO `prescription` VALUES (45, 600620, 40, 2, '感冒', '2019-06-25 09:52:19');
INSERT INTO `prescription` VALUES (46, 600620, 40, 2, '感冒', '2019-06-25 09:52:32');
INSERT INTO `prescription` VALUES (47, 600620, 40, 2, '感冒', '2019-06-25 09:53:22');
INSERT INTO `prescription` VALUES (48, 600620, 40, 2, '感冒', '2019-06-25 09:54:14');
INSERT INTO `prescription` VALUES (49, 600620, 40, 2, '感冒', '2019-06-25 09:56:49');
INSERT INTO `prescription` VALUES (50, 600620, 40, 2, '感冒', '2019-06-25 11:46:24');
INSERT INTO `prescription` VALUES (51, 600620, 40, 2, '感冒', '2019-06-25 11:49:17');
INSERT INTO `prescription` VALUES (52, 600620, 40, 2, '感冒', '2019-06-25 11:50:03');
INSERT INTO `prescription` VALUES (53, 600620, 40, 2, '感冒', '2019-06-25 11:51:14');
INSERT INTO `prescription` VALUES (54, 600620, 40, 2, '感冒', '2019-06-25 11:52:10');
INSERT INTO `prescription` VALUES (55, 600620, 40, 2, '感冒', '2019-06-25 11:55:19');
INSERT INTO `prescription` VALUES (56, 600620, 40, 2, '感冒', '2019-06-25 14:19:13');
INSERT INTO `prescription` VALUES (57, 600620, 40, 2, '感冒', '2019-06-25 14:19:38');
INSERT INTO `prescription` VALUES (58, 600620, 40, 2, '感冒', '2019-06-25 14:20:14');
INSERT INTO `prescription` VALUES (59, 600620, 40, 2, '感冒', '2019-06-25 14:20:33');

-- ----------------------------
-- Table structure for prescription_drug_detail
-- ----------------------------
DROP TABLE IF EXISTS `prescription_drug_detail`;
CREATE TABLE `prescription_drug_detail`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) DEFAULT NULL COMMENT '处方单id',
  `drug_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '药品名称',
  `drug_id` int(10) DEFAULT NULL COMMENT '药品id',
  `usage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用法',
  `dosage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用量',
  `frequent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '频次',
  `drug_amount` int(255) DEFAULT NULL COMMENT '药品数量',
  `pay_status` int(10) NOT NULL DEFAULT 0 COMMENT '缴费状态 0-未缴费 1-已缴费',
  `drug_status` int(255) NOT NULL DEFAULT 0 COMMENT '发药状态 0-未发药 1-已发药',
  `drug_price` decimal(10, 2) DEFAULT NULL COMMENT '药品价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of prescription_drug_detail
-- ----------------------------
INSERT INTO `prescription_drug_detail` VALUES (1, 1, NULL, 10, '口服', '30g', '一日二次', 10, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (2, 1, NULL, 29, '口服', '5g', '一日二次', 5, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (3, 51, NULL, 36, '1', '1', '1', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (4, 51, NULL, 39, '1', '1', '1', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (5, 51, NULL, 2, '', '', '', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (6, 52, NULL, 23, '静脉注射', '100ml', '一日一次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (7, 52, NULL, 30, '静脉注射', '200ml', '一日一次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (8, 53, NULL, 36, '1', '1', '1', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (9, 53, NULL, 39, '1', '1', '1', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (10, 53, NULL, 2, '', '', '', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (11, 54, NULL, 9, '口服', '1g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (12, 54, NULL, 33, '口服', '2g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (13, 54, NULL, 47, '口服', '适量', '多次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (14, 55, NULL, 9, '口服', '1g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (15, 55, NULL, 33, '口服', '2g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (16, 55, NULL, 47, '口服', '适量', '多次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (17, 56, NULL, 5, 'q', 'q', 'q', 3, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (18, 56, NULL, 45, 'w', 'w', 'w', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (19, 56, NULL, 2965, 'e', 'e', 'e', 3, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (20, 57, NULL, 44, '11', '11', '11', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (21, 57, NULL, 68, '22', '22', '22', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (22, 69, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (23, 69, NULL, 23, '', '', '', 23, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (24, 70, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (25, 70, NULL, 23, '', '', '', 23, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (26, 71, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (27, 71, NULL, 23, '', '', '', 23, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (28, 72, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (29, 72, NULL, 23, '', '', '', 23, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (30, 73, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (31, 73, NULL, 23, '', '', '', 23, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (32, 78, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (33, 78, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (34, 79, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (35, 79, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (36, 80, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (37, 80, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (38, 81, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (39, 81, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (40, 83, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (41, 83, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (42, 85, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (43, 85, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (44, 87, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (45, 87, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (46, 88, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (47, 88, NULL, 68, '', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (48, 89, NULL, 68, '口服', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (49, 89, NULL, 68, '口服', '', '', 68, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (50, 90, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (51, 90, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (52, 91, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (53, 91, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (54, 92, NULL, 0, '', '', '', 0, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (55, 92, NULL, 0, '', '', '', 0, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (56, 93, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (57, 93, NULL, 0, '', '', '', 0, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (58, 94, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (59, 94, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (60, 95, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (61, 95, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (62, 96, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (63, 96, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (64, 97, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (65, 97, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (66, 98, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (67, 98, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (68, 99, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (69, 99, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (70, 100, NULL, 68, '口服', '18g', '一日三次', 1, 0, 0, NULL);
INSERT INTO `prescription_drug_detail` VALUES (71, 100, NULL, 23, '静脉注射', '100ml', '一日一次', 2, 0, 0, NULL);

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `case_code` int(10) DEFAULT NULL COMMENT '病例号',
  `diagnose_time` date DEFAULT NULL COMMENT '看诊日期',
  `diagnose_period` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '看诊时间段 0 - 上午 1-下午',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '挂号状态 0-未就诊;1-已就诊;2-已退号',
  `clinic_id` int(10) DEFAULT NULL COMMENT '诊室id',
  `doctor_id` int(10) DEFAULT NULL COMMENT '医生id',
  `register_category_id` int(10) DEFAULT NULL COMMENT '挂号类别id',
  `paytype_id` int(10) DEFAULT NULL COMMENT '结算类别ID',
  `create_time` datetime(0) DEFAULT NULL COMMENT '挂号时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES (1, 600600, '2019-03-18', '上午', '2', 1, 1, 2, 1, '2019-03-18 09:20:34');
INSERT INTO `register` VALUES (2, 600601, '2019-03-19', '下午', '1', 2, 1, 1, 2, '2019-03-18 09:21:26');
INSERT INTO `register` VALUES (3, 600602, '2019-03-18', '上午', '1', 2, 1, 2, 1, '2019-03-18 09:22:24');
INSERT INTO `register` VALUES (4, 600603, '2019-03-19', '上午', '2', 1, 1, 1, 2, '2019-03-19 09:18:25');
INSERT INTO `register` VALUES (5, 600604, '2019-03-19', '上午', '1', 1, 1, 1, 2, '2019-03-19 10:08:51');
INSERT INTO `register` VALUES (6, 600605, '2019-03-19', '上午', '1', 1, 1, 1, 1, '2019-03-19 10:09:35');
INSERT INTO `register` VALUES (7, 600606, '2019-03-19', '下午', '2', 2, 1, 2, 1, '2019-03-19 10:10:44');
INSERT INTO `register` VALUES (8, 600607, '2019-03-26', '上午', '2', 1, 1, 1, 1, '2019-03-26 09:27:00');
INSERT INTO `register` VALUES (9, 600608, '2019-03-28', '上午', '3', 1, 1, 1, 1, '2019-03-28 10:55:20');
INSERT INTO `register` VALUES (10, 600609, '2019-03-28', '上午', '3', 1, 1, 1, 1, '2019-03-28 10:57:03');
INSERT INTO `register` VALUES (11, 600610, '2019-03-28', '下午', '3', 1, 1, 1, 1, '2019-03-28 13:45:25');
INSERT INTO `register` VALUES (12, 600611, '2019-03-28', '下午', '3', 1, 1, 1, 1, '2019-03-28 15:23:48');
INSERT INTO `register` VALUES (13, 600612, '2019-03-26', '上午', '3', 1, 1, 1, 1, '2019-03-28 16:53:35');
INSERT INTO `register` VALUES (14, 600613, '2019-03-29', '上午', '2', 1, 1, 1, 1, '2019-03-29 09:23:45');
INSERT INTO `register` VALUES (15, 600614, '2019-03-29', '上午', '3', 1, 1, 1, 1, '2019-03-29 14:41:00');
INSERT INTO `register` VALUES (16, 600615, '2019-03-29', '上午', '2', 1, 1, 1, 1, '2019-03-29 14:46:17');
INSERT INTO `register` VALUES (17, 600617, '2019-04-01', '下午', '1', 1, 1, 1, 1, '2019-04-01 10:36:40');
INSERT INTO `register` VALUES (18, 600618, '2019-04-01', '下午', '2', 1, 2, 2, 1, '2019-04-01 13:25:23');
INSERT INTO `register` VALUES (19, 600619, '2019-06-24', '上', '4', 1, 2, 2, 1, '2019-06-24 10:59:19');
INSERT INTO `register` VALUES (20, 600620, '2019-06-24', '上', '2', 1, 2, 2, 1, '2019-06-24 10:59:29');
INSERT INTO `register` VALUES (21, 600621, '2019-06-24', '下', '4', 1, 2, 2, 1, '2019-06-24 11:07:19');
INSERT INTO `register` VALUES (22, 600622, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:08');
INSERT INTO `register` VALUES (23, 600623, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:08');
INSERT INTO `register` VALUES (24, 600624, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:08');
INSERT INTO `register` VALUES (25, 600625, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:08');
INSERT INTO `register` VALUES (26, 600626, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (27, 600627, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (28, 600628, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (29, 600629, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (30, 600630, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (31, 600631, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (32, 600632, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (33, 600633, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (34, 600634, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (35, 600635, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (36, 600636, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (37, 600637, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (38, 600638, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (39, 600639, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (40, 600640, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (41, 600641, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (42, 600642, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (43, 600643, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (44, 600644, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (45, 600645, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (46, 600646, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (47, 600647, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (48, 600648, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (49, 600649, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (50, 600650, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (51, 600651, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (52, 600652, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (53, 600653, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (54, 600654, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (55, 600655, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (56, 600656, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (57, 600657, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (58, 600658, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (59, 600659, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (60, 600660, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (61, 600661, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (62, 600662, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (63, 600663, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (64, 600664, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (65, 600665, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (66, 600666, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (67, 600667, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (68, 600668, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (69, 600669, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (70, 600670, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (71, 600671, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (72, 600672, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (73, 600673, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (74, 600674, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (75, 600675, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (76, 600676, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (77, 600677, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (78, 600678, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (79, 600679, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (80, 600680, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (81, 600681, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (82, 600682, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (83, 600683, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (84, 600684, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (85, 600685, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (86, 600686, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (87, 600687, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (88, 600688, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (89, 600689, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (90, 600690, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (91, 600691, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (92, 600692, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (93, 600693, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (94, 600694, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (95, 600695, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (96, 600696, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (97, 600697, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (98, 600698, '2019-07-01', '下', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (99, 600699, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');
INSERT INTO `register` VALUES (100, 600700, '2019-07-01', '上', '3', 1, 1, 1, 1, '2019-07-02 04:30:09');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `schedule_date` date DEFAULT NULL COMMENT '排班日期',
  `clinic_id` int(10) DEFAULT NULL COMMENT '科室ID',
  `doctor_id` int(10) DEFAULT NULL COMMENT '医生ID',
  `period` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '午别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (1, '2019-04-01', 1, 1, '上午');
INSERT INTO `schedule` VALUES (2, '2019-04-01', 1, 2, '上午');
INSERT INTO `schedule` VALUES (3, '2019-04-01', 1, 3, '上午');
INSERT INTO `schedule` VALUES (4, '2019-04-01', 1, 2, '下午');
INSERT INTO `schedule` VALUES (5, '2019-04-01', 1, 3, '下午');
INSERT INTO `schedule` VALUES (6, '2019-04-02', 1, 2, '上午');
INSERT INTO `schedule` VALUES (7, '2019-04-02', 1, 3, '上午');
INSERT INTO `schedule` VALUES (8, '2019-04-02', 1, 2, '下午');
INSERT INTO `schedule` VALUES (9, '2019-04-02', 1, 3, '下午');
INSERT INTO `schedule` VALUES (10, '2019-04-03', 1, 2, '上午');
INSERT INTO `schedule` VALUES (11, '2019-04-01', 1, 1, '下午');
INSERT INTO `schedule` VALUES (12, '2019-04-03', 1, 3, '上午');
INSERT INTO `schedule` VALUES (13, '2019-04-03', 1, 2, '下午');
INSERT INTO `schedule` VALUES (14, '2019-04-02', 1, 1, '上午');
INSERT INTO `schedule` VALUES (15, '2019-04-03', 1, 3, '下午');
INSERT INTO `schedule` VALUES (16, '2019-04-02', 1, 1, '下午');
INSERT INTO `schedule` VALUES (17, '2019-04-04', 1, 3, '上午');
INSERT INTO `schedule` VALUES (18, '2019-04-03', 1, 1, '上午');
INSERT INTO `schedule` VALUES (19, '2019-04-04', 1, 3, '下午');
INSERT INTO `schedule` VALUES (20, '2019-04-03', 1, 1, '下午');
INSERT INTO `schedule` VALUES (21, '2019-04-05', 1, 3, '上午');
INSERT INTO `schedule` VALUES (22, '2019-04-04', 1, 1, '上午');
INSERT INTO `schedule` VALUES (23, '2019-04-04', 1, 1, '下午');
INSERT INTO `schedule` VALUES (24, '2019-04-05', 1, 1, '上午');
INSERT INTO `schedule` VALUES (25, '2019-03-25', 1, 1, '上午');
INSERT INTO `schedule` VALUES (26, '2019-03-25', 1, 1, '下午');
INSERT INTO `schedule` VALUES (27, '2019-03-26', 1, 1, '上午');
INSERT INTO `schedule` VALUES (28, '2019-03-26', 1, 1, '下午');
INSERT INTO `schedule` VALUES (29, '2019-03-27', 1, 1, '上午');
INSERT INTO `schedule` VALUES (30, '2019-03-27', 1, 1, '下午');
INSERT INTO `schedule` VALUES (31, '2019-03-28', 1, 1, '上午');
INSERT INTO `schedule` VALUES (32, '2019-03-28', 1, 1, '下午');
INSERT INTO `schedule` VALUES (33, '2019-03-29', 1, 1, '上午');

SET FOREIGN_KEY_CHECKS = 1;
