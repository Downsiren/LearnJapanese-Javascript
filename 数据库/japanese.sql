/*
Navicat MySQL Data Transfer

Source Server         : zw
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : japanese

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-01-31 15:17:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `numeber` int(11) DEFAULT NULL,
  `coursename` varchar(10) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for c_comment
-- ----------------------------
DROP TABLE IF EXISTS `c_comment`;
CREATE TABLE `c_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseid` int(11) DEFAULT NULL,
  `usersid` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_comment
-- ----------------------------

-- ----------------------------
-- Table structure for c_reply
-- ----------------------------
DROP TABLE IF EXISTS `c_reply`;
CREATE TABLE `c_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentid` int(11) DEFAULT NULL,
  `usersid` int(11) DEFAULT NULL,
  `replyid` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_reply
-- ----------------------------

-- ----------------------------
-- Table structure for tb_analy
-- ----------------------------
DROP TABLE IF EXISTS `tb_analy`;
CREATE TABLE `tb_analy` (
  `analy_id` varchar(200) NOT NULL COMMENT '解析id',
  `word_id` varchar(200) NOT NULL COMMENT '单词id',
  `chinese` varchar(200) NOT NULL COMMENT '中文意思',
  `attribute` varchar(200) NOT NULL COMMENT '词性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_analy
-- ----------------------------
INSERT INTO `tb_analy` VALUES ('fSINYb9PCXVkjrqOorVWSb', 'drmUY6LEvcY15Okq5ayTRk', '他，她，那个人', '代词');
INSERT INTO `tb_analy` VALUES ('ctbAyKAbO10fYJSfiIz4O3', 'ftzg8hsi2Xac9T5IIUsBVO', '我', '代词');
INSERT INTO `tb_analy` VALUES ('ducip9vSZMFcI4YmjQ9dpH', 'dOQTpjQykIo5rther3Fjjx', '～先生，～小姐，～女士', '代词');
INSERT INTO `tb_analy` VALUES ('edMfF2VVY804biwim9v4mS', 'csN141VHuig6RKLWzBOZir', '公司职员', '代词');
INSERT INTO `tb_analy` VALUES ('dQUz9DnAxKu56sWwPSRmkl', 'cTf4fUdJKrZ5LwYYYQKo3p', '初次见面', '寒暄词');
INSERT INTO `tb_analy` VALUES ('eLM2bBltudt3hxH7PJOJzt', 'bgplSQO61ra1Xn5yVKLRqZ', '初次见面', '寒暄词');
INSERT INTO `tb_analy` VALUES ('bur1u3CFqgcbprlvG1Wx3z', 'fipsN8z07sVaRHgnsGUO2G', '旅行社', '名词');
INSERT INTO `tb_analy` VALUES ('b8rDQAOjbCc1N9YkmDmO0N', 'eSm0UZ4CQcN5HQ232AISCR', '东京大学', '专有词');

-- ----------------------------
-- Table structure for tb_announcement
-- ----------------------------
DROP TABLE IF EXISTS `tb_announcement`;
CREATE TABLE `tb_announcement` (
  `id` varchar(200) NOT NULL,
  `ann_title` varchar(200) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ann_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_announcement
-- ----------------------------
INSERT INTO `tb_announcement` VALUES ('cLghfWSN7pLgE8g3wYyryI', '关于春节假期延迟', '2020-01-28 23:21:49', '为加强新型冠状病毒感染的肺炎疫情防控工作，28日，临沂市委办公室、市政府办公室下发通知，延长2020年春节假期至2月2日（农历正月初九，星期日），2月3日（星期一）起正常上班。');
INSERT INTO `tb_announcement` VALUES ('fVPpR22j0UPbt0EC9CPKLT', '防控新型冠状病毒感染的肺炎', '2020-01-28 23:23:17', '近期，湖北省武汉市等多个地区发生新型冠状病毒感染的肺炎疫情。大连理工大学党委高度重视，于1月21日下午召开新型冠状病毒感染的肺炎防控工作会议，积极贯彻落实习近平总书记对新型冠状病毒感染的肺炎作出的重要指示精神，积极贯彻落实李克强总理批示要求，就认真做好学校防控工作进行安排。会议对下一步防控工作提出要求并作出具体部署：由责任部门积极与大连市卫生防疫部门沟通，明确工作任务，做好准备工作，做到了解信息到位，准备物资到位，上传下达到位。会议强调要高度重视、细化安排，科学指挥、科学防控，提高责任感、落实责任制，切实做好各项工作。');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `dtid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `plid` varchar(200) DEFAULT NULL,
  `hfid` varchar(200) DEFAULT NULL,
  `openid` varchar(100) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `zan_num` int(11) DEFAULT NULL,
  `comment_num` int(11) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('bUHkcb1c7WwfuE2REGVYzl', 'cJEU5eOTlC02n8WemS3PMX', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '好哦好哦', '0', '0', '2019-11-07 23:23:07');
INSERT INTO `tb_comment` VALUES ('dwQ3epuH2n06il2c1BDedE', 'doEdOkhgMZE05zEAGn5yh6', null, 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '???', '0', '0', '2019-11-07 23:23:47');
INSERT INTO `tb_comment` VALUES ('f9q4j2lixhwf2dMDntrmcp', 'dP4PKfnb4Dzg5CEstvON4p', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '还没有做删除', '0', '0', '2019-11-07 23:25:01');
INSERT INTO `tb_comment` VALUES ('cucMLvm0C5j8o1hXGpSYVk', 'b8i443fqfHrbuCLzaDfAij', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '傻逼', '0', '0', '2019-11-08 00:11:57');
INSERT INTO `tb_comment` VALUES ('cucMLvm0C5j8o1hXGpSYVk', 'eTj5vaaHlPHl9ONpAXI6RO', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '俺来了', '0', '0', '2019-11-08 13:24:24');
INSERT INTO `tb_comment` VALUES ('bUHkcb1c7WwfuE2REGVYzl', 'bMrKnb7rwPKfVbwxNtMpl2', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '看来图片要改成自适应? 我确实偷懒了', '0', '0', '2019-11-08 13:25:37');
INSERT INTO `tb_comment` VALUES ('b2hQJPHsi3JhRs5OmV75tP', 'bpGHnv3XXte21FGAls0XEq', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '加油', '0', '0', '2019-11-08 13:25:45');
INSERT INTO `tb_comment` VALUES ('b0DcAPgDIW5fqzHpQp8JNU', 'cp3uB5cFCsugcXCFdFjs8l', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '可以呀', '0', '0', '2019-11-08 13:47:26');
INSERT INTO `tb_comment` VALUES ('f7ULSA9E2zIjob2eweQsLf', 'e6toFqBnNOlelpK79jEQ81', null, 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '？', '0', '0', '2019-11-09 14:30:58');
INSERT INTO `tb_comment` VALUES ('f7ULSA9E2zIjob2eweQsLf', 'bqbPeFxftBKg6z5daka2DE', null, 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '？', '0', '0', '2019-11-09 14:30:59');
INSERT INTO `tb_comment` VALUES ('gquaRXWbn3w5slbwDS9o1z', 'bGbyHOF7HrRhivCVtjrTPV', null, 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '你真没用', '0', '0', '2019-11-09 22:14:04');
INSERT INTO `tb_comment` VALUES ('bMK9rQArT2BkSDoAO8ozpf', 'ccmvk4ij4rJh3cGHLPntxK', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '哈哈哈', '0', '0', '2019-11-10 20:40:18');
INSERT INTO `tb_comment` VALUES ('ePTehzPZgT0adgpd0NjE8p', 'blZEx23l1yw8bTbd3RQKwJ', null, 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '发的了图', '0', '0', '2019-11-14 20:45:09');
INSERT INTO `tb_comment` VALUES ('ePTehzPZgT0adgpd0NjE8p', 'd04Up0HipEx8qr27QZSAJn', null, 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '发的了图', '0', '0', '2019-11-14 20:45:11');
INSERT INTO `tb_comment` VALUES ('ePTehzPZgT0adgpd0NjE8p', 'b5MKoyEL7g4f84fjUhnADI', null, 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '发的了图', '0', '0', '2019-11-14 20:45:11');
INSERT INTO `tb_comment` VALUES ('dmcOQ0jQTFU1zMdNeEHvec', 'bvNgjAMxdiQ8Y8CvgfXgLZ', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '我忘了写发表就清除内容的函数', '0', '0', '2019-11-15 10:53:59');
INSERT INTO `tb_comment` VALUES ('dmcOQ0jQTFU1zMdNeEHvec', 'eVFUbncXkPUaeft3FxzJBA', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '我忘了写发表就清除内容的函数', '0', '0', '2019-11-15 10:54:00');
INSERT INTO `tb_comment` VALUES ('dmcOQ0jQTFU1zMdNeEHvec', 'fCMbiib6WmM06B0tRbE6am', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '我现在在写web端的后台', '0', '0', '2019-11-15 20:32:29');
INSERT INTO `tb_comment` VALUES ('f7ULSA9E2zIjob2eweQsLf', 'dkdHwwcgu3K9xOt7swdBwd', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '在吗?', '0', '0', '2019-11-20 08:07:45');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'bxDm3BnAzKedtOfJ8tMNW6', null, 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', 'test', '0', '0', '2019-12-05 12:05:02');
INSERT INTO `tb_comment` VALUES ('b4yXv6jIUPxlm4ANtMh7R1', 'ei93AizSpIbfNKjS27LFVh', null, 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', 'test', '0', '0', '2019-12-05 12:05:27');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'd6g19xXfoSc4q0LCsqDn1A', null, 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', 'testa', '0', '0', '2019-12-05 12:08:42');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'e8VMKZP5pY93SYyFysmyhM', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '你好', '0', '0', '2019-12-05 18:29:09');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'cLd1ZT3wDjEjQ8uTRBIPZR', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '你好', '0', '0', '2019-12-05 18:29:26');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'dvp5nbL1XTG18eNFbYNFhJ', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '你哈', '0', '0', '2019-12-05 18:30:26');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'bymVygucfP55lRDRuStK9x', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '0', '0', '2019-12-05 22:01:33');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'gcbkqG8YAyvbEYXCs06qV8', null, 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '0', '0', '2019-12-05 22:01:48');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'djMHlp3zUBR31Hgr13K1T4', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '测试', '0', '0', '2019-12-05 22:03:42');
INSERT INTO `tb_comment` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'fv1X6eFsbDAhUrDth4AbiH', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '写bug了，俺有罪', '0', '0', '2019-12-05 22:50:05');
INSERT INTO `tb_comment` VALUES ('cKvTHS0AtLP4Vx6kk679Mx', 'cKHRH6MYIyZlaDpgKKJbZJ', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '测试', '0', '0', '2019-12-05 22:52:21');
INSERT INTO `tb_comment` VALUES ('cKvTHS0AtLP4Vx6kk679Mx', 'bM3iKwzRTC2454VsOyhchu', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '噢耶但是这个头像上为什么有个h？点评论输入行跳起来。我要不要在发送上加一个隐藏？目前已知无法实现全局隐藏', '0', '0', '2019-12-05 22:53:38');
INSERT INTO `tb_comment` VALUES ('cKvTHS0AtLP4Vx6kk679Mx', 'chdKTD3paIQ6XxGesGpm0d', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '点删除有惊喜', '0', '0', '2019-12-05 22:54:05');
INSERT INTO `tb_comment` VALUES ('fGxvOLOPq7mffVqhBzlVXW', 'bsrd6j7L2pochTZQXQXVvD', null, 'oIFDc4vBILtejo6QIsNPzaITO83E', '我是bug本人？？？', '0', '0', '2019-12-05 23:10:38');

-- ----------------------------
-- Table structure for tb_content
-- ----------------------------
DROP TABLE IF EXISTS `tb_content`;
CREATE TABLE `tb_content` (
  `id` varchar(200) NOT NULL,
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `browse_num` int(11) DEFAULT NULL,
  `comment_num` int(11) DEFAULT NULL,
  `zan_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_content
-- ----------------------------
INSERT INTO `tb_content` VALUES ('b0DcAPgDIW5fqzHpQp8JNU', 'oIFDc4vBILtejo6QIsNPzaITO83E', '我为什么发不出来', '2019-11-08 13:26:47', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('b2hQJPHsi3JhRs5OmV75tP', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '还好多问题。明天开始调bug', '2019-11-07 23:26:02', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('b4yXv6jIUPxlm4ANtMh7R1', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '晚上好', '2019-12-04 01:00:09', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bde6ISG14dwh9wlllgGrKJ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '会持续更新的\n', '2019-11-07 23:26:32', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bMK9rQArT2BkSDoAO8ozpf', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '2019-11-10 20:05:11', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bnv0OQG5gphktbIfZd58JD', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '我爱余诗嘉', '2019-11-07 22:40:01', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bOy8W5qIHZ18T9n86ULJ95', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '可以发图片嘛', '2019-11-09 17:08:31', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bUHkcb1c7WwfuE2REGVYzl', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:56', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('bY0yyFeWR4jkq3Jr6ZMG18', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', 'test', '2019-12-05 22:54:36', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('c7bhsrlyXWC3F0RVVT1yjT', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '我爱淘宝', '2019-11-09 22:13:50', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('catdyB0cPCc5PtYRwLCLEU', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '排序好了', '2019-11-09 00:35:36', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cC7HZ7nL9Fzg1V50PXCZ4g', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '你好', '2019-11-04 21:32:25', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cEdDSBofNq21xF8mpYOMpl', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '傻逼余诗嘉', '2019-11-07 22:42:55', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cgzp9wP7dKf6oS8qAyYZCp', 'oIFDc4vBILtejo6QIsNPzaITO83E', '啊啊啊啊啊啊啊啊', '2019-12-05 22:50:15', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cIOsgrxM2N0kaT683RUp7B', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '你好呀', '2019-11-07 22:57:33', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cKvTHS0AtLP4Vx6kk679Mx', 'oIFDc4vBILtejo6QIsNPzaITO83E', '卧槽这不是bug这竟然好了', '2019-12-05 22:50:44', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('csgcWnGUZFHdQf2vBkzdMr', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:31', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('cucMLvm0C5j8o1hXGpSYVk', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '啦啦啦啦', '2019-11-07 23:07:46', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('curaKqjn9WF1IG3mmSsVS7', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '上班了', '2019-11-08 09:08:19', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dCFODJZoQwci4I8FaD3hUn', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '我是大傻逼', '2019-11-07 22:43:35', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dIBXV9ZtaA7lEYAxb0g7CL', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '早上好 起床了', '2019-11-08 07:26:09', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dlCd4glRiZgdOzVWWbyqpd', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:58', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dmcOQ0jQTFU1zMdNeEHvec', 'oIFDc4vBILtejo6QIsNPzaITO83E', '我又来了', '2019-11-15 10:53:23', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dpFxRUFzMcQ2M68AZUSFsh', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '余诗嘉在嘛', '2019-11-07 22:42:35', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dqv3w8M1n0daedxh2hnsKj', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '霹雳帕拉莫叽普利兹玛拉亚轰炸', '2019-11-07 23:08:24', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('dwQ3epuH2n06il2c1BDedE', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '傻逼张伟', '2019-11-07 22:38:47', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('e5i9cfrRPrKdMEMQ8QEISu', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '？', '2019-11-29 09:41:52', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('ecjqPtnAdAe6aYKnB5uWI7', 'oIFDc4vBILtejo6QIsNPzaITO83E', 'omg', '2019-12-05 00:32:30', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('egdLiJ929KkaBeqRh2GJgH', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '傻逼张伟', '2019-11-07 22:38:47', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('emhvZeems4nebrwx12cexn', 'oIFDc4vBILtejo6QIsNPzaITO83E', 'test', '2019-12-05 22:55:45', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('ePTehzPZgT0adgpd0NjE8p', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '我发不了图', '2019-11-09 14:30:24', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('ewlTwoXUe1HaUiXlQjhxeT', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '尚志强牛逼', '2019-11-07 23:02:27', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('eWXssulUzHneRYzgODWant', 'oIFDc4vBILtejo6QIsNPzaITO83E', '啊啊啊啊啊啊啊啊还有好多问题！！好多肉眼可见的bug！', '2019-11-08 13:21:49', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('eYztxxEx7ih5HF4C0fzsnd', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:39', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('f7ULSA9E2zIjob2eweQsLf', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '没人了嘛', '2019-11-09 10:37:53', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('f9q4j2lixhwf2dMDntrmcp', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '不能删嘛', '2019-11-07 23:03:41', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('faKqqXVJjZ42YN3VB52VDY', 'oIFDc4g1ClQnMNHX5LjR5t_8uRZE', '人人都是王境泽', '2019-11-07 23:02:28', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fBGbDt1yVWO70hN5zdxMyB', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '我太难了', '2019-11-09 22:11:59', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fdR5cT7dpz4gBcpsme7rAl', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:58', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fEyLLlMKifF5vRX6x8gEZU', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '睡觉了 晚安', '2019-11-08 00:04:11', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fGxvOLOPq7mffVqhBzlVXW', 'oIFDc4vBILtejo6QIsNPzaITO83E', 'test', '2019-12-05 23:09:40', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fmb0IpFL4ul0LhOyxp0zBS', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '尚志强牛逼', '2019-11-07 22:59:57', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fPFQ781JMXq2DbiC9BpyOe', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '我是大傻逼', '2019-11-07 22:43:39', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fucLPkPYKFN10YlgIi4oR5', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:27', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fVjGtlHLzwe68wLQUvlQUx', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '我太难了', '2019-11-07 23:05:18', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fVSKn7uw875kearOk10z4K', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', '淘宝没有❤', '2019-11-07 22:44:29', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fy9cwpkcaCfj1Pi9TeZbHT', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '2019-12-05 22:53:14', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('fzBE0oCMiQa9pQhEzQPnME', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '晚上好', '2019-11-04 22:16:17', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('g18z1xNolczae87ndTNNKS', 'oIFDc4rfqYw3-doDBXi5ZRxgYrkk', '好好学习天天向上', '2019-11-07 22:59:57', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('g2Re2442Zg3evorUXOQhMl', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', 'test', '2019-12-05 23:05:26', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('g386LDTIKWIdvQQdvJ7S2m', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '吃午饭了', '2019-11-08 12:12:12', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('gbG7Sk9u554hHgTRKAcnTQ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '卡米可林', '2019-12-04 00:38:33', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('gfRl69NC8uDl73ttP7OxAk', 'oIFDc4ta5j1MCwgOgE4jFzhwx1L4', 'test', '2019-12-05 23:07:37', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('gkmR6kczzd5h1u3NAoj5XS', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', 'test', '2020-01-31 11:46:23', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('gmcmPNaoP2YjYO74Q4X8B9', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '早上好', '2019-11-09 07:52:55', '0', '0', '0');
INSERT INTO `tb_content` VALUES ('gquaRXWbn3w5slbwDS9o1z', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '淘宝没有心', '2019-11-09 22:12:38', '0', '0', '0');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `id` varchar(200) NOT NULL,
  `course_url` varchar(200) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `browse_num` int(11) DEFAULT NULL,
  `course_type` int(2) DEFAULT NULL,
  `course_num` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES ('bHHjg7q5ZoM5tujdXLEjE3', 'http://47.98.233.215/learn/course/20191107/222316/CL_cVz6C7qmzsLbtQ5DG.pdf', '测试', '2019-11-07 22:23:16', '0', '0', '1');
INSERT INTO `tb_course` VALUES ('bKlIhd0OjAhbRLeLkh3m9d', 'https://zxu.ink/learn/course/20191107/230458/CL_bLk9gF0WEGC38NRDI.pdf', '测试', '2019-11-07 23:04:58', '0', '2', '1');

-- ----------------------------
-- Table structure for tb_dt
-- ----------------------------
DROP TABLE IF EXISTS `tb_dt`;
CREATE TABLE `tb_dt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(8) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `share_num` int(11) DEFAULT NULL,
  `comment_num` int(11) DEFAULT NULL,
  `zan_num` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of tb_dt
-- ----------------------------

-- ----------------------------
-- Table structure for tb_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE `tb_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_image
-- ----------------------------
INSERT INTO `tb_image` VALUES ('14', 'cIOsgrxM2N0kaT683RUp7B', 'https://zxu.ink/learn/image/20191107/225737/FL_bT0lNzc5uGyk5oxRa.jpg');
INSERT INTO `tb_image` VALUES ('15', 'fucLPkPYKFN10YlgIi4oR5', 'https://zxu.ink/learn/image/20191107/225929/FL_b03ZJXy6Fho1Ex9Bn.jpg');
INSERT INTO `tb_image` VALUES ('16', 'csgcWnGUZFHdQf2vBkzdMr', 'https://zxu.ink/learn/image/20191107/225933/FL_c0NWDfczff3dQ4BPH.jpg');
INSERT INTO `tb_image` VALUES ('17', 'eYztxxEx7ih5HF4C0fzsnd', 'https://zxu.ink/learn/image/20191107/225941/FL_dOuQuuAyOzT4SvFEi.jpg');
INSERT INTO `tb_image` VALUES ('18', 'bUHkcb1c7WwfuE2REGVYzl', 'https://zxu.ink/learn/image/20191107/225958/FL_fDD0k7RMFyOlzPIr5.png');
INSERT INTO `tb_image` VALUES ('19', 'bUHkcb1c7WwfuE2REGVYzl', 'https://zxu.ink/learn/image/20191107/225958/FL_fBgrFC2DyuF0X7aCs.jpg');
INSERT INTO `tb_image` VALUES ('20', 'g18z1xNolczae87ndTNNKS', 'https://zxu.ink/learn/image/20191107/225959/FL_b2ywePyekpQ5JodWr.jpg');
INSERT INTO `tb_image` VALUES ('21', 'fdR5cT7dpz4gBcpsme7rAl', 'https://zxu.ink/learn/image/20191107/225959/FL_cqyxwXTb9EkkirKfB.jpg');
INSERT INTO `tb_image` VALUES ('22', 'fdR5cT7dpz4gBcpsme7rAl', 'https://zxu.ink/learn/image/20191107/225959/FL_cF8ZqAb2Blc1Jsbb5.jpg');
INSERT INTO `tb_image` VALUES ('23', 'faKqqXVJjZ42YN3VB52VDY', 'https://zxu.ink/learn/image/20191107/230229/FL_cLKZgKXqNPNdbjOXO.png');
INSERT INTO `tb_image` VALUES ('24', 'fVjGtlHLzwe68wLQUvlQUx', 'https://zxu.ink/learn/image/20191107/230521/FL_bTzFeSCZQVd3twnrg.jpg');
INSERT INTO `tb_image` VALUES ('25', 'dqv3w8M1n0daedxh2hnsKj', 'https://zxu.ink/learn/image/20191107/230827/FL_bc1ggLCDM4u100w1t.jpg');
INSERT INTO `tb_image` VALUES ('26', 'b2hQJPHsi3JhRs5OmV75tP', 'https://zxu.ink/learn/image/20191107/232603/FL_bwS9sFZMQ0W30D57y.jpg');
INSERT INTO `tb_image` VALUES ('27', 'ffj73uJhURblaXHXTysqBp', 'https://zxu.ink/learn/image/20191108/000200/FL_dTQCMaywy7U60azyz.jpg');
INSERT INTO `tb_image` VALUES ('28', 'ffj73uJhURblaXHXTysqBp', 'https://zxu.ink/learn/image/20191108/000200/FL_c4g47YjmHiCfdvwX5.jpg');
INSERT INTO `tb_image` VALUES ('29', 'bAODYJPEx9f9LtlOjLDG6L', 'https://zxu.ink/learn/image/20191108/000340/FL_dHKCt0cJD147SZfo8.jpg');
INSERT INTO `tb_image` VALUES ('30', 'fEyLLlMKifF5vRX6x8gEZU', 'https://zxu.ink/learn/image/20191108/000412/FL_c2SW0sAxScubzPjtp.jpg');
INSERT INTO `tb_image` VALUES ('31', 'curaKqjn9WF1IG3mmSsVS7', 'https://zxu.ink/learn/image/20191108/090823/FL_cETfG8sCmn76D9Xza.jpg');
INSERT INTO `tb_image` VALUES ('32', 'eOhnbxN1J8f7ok2AX6Ui35', 'https://zxu.ink/learn/image/20191108/132027/FL_cyG51YHxKYHhdayvW.jpg');
INSERT INTO `tb_image` VALUES ('33', 'eWXssulUzHneRYzgODWant', 'https://zxu.ink/learn/image/20191108/132149/FL_gsYXA2t29ov5LFcQb.jpg');
INSERT INTO `tb_image` VALUES ('34', 'bOy8W5qIHZ18T9n86ULJ95', 'https://zxu.ink/learn/image/20191109/170833/FL_ca4013A0L6TdfbxKi.jpg');
INSERT INTO `tb_image` VALUES ('35', 'fBGbDt1yVWO70hN5zdxMyB', 'https://zxu.ink/learn/image/20191109/221217/FL_aZCPOBtTNq64uhnGo.png');
INSERT INTO `tb_image` VALUES ('36', 'gquaRXWbn3w5slbwDS9o1z', 'https://zxu.ink/learn/image/20191109/221240/FL_c4estoQVz1r74XcZk.jpg');
INSERT INTO `tb_image` VALUES ('37', 'c7bhsrlyXWC3F0RVVT1yjT', 'https://zxu.ink/learn/image/20191109/221354/FL_fkeeKSbAvisbgranB.jpg');
INSERT INTO `tb_image` VALUES ('38', 'dmcOQ0jQTFU1zMdNeEHvec', 'https://zxu.ink/learn/image/20191115/105326/FL_deIx1y2JkaggOzhtA.jpg');
INSERT INTO `tb_image` VALUES ('39', 'e5i9cfrRPrKdMEMQ8QEISu', 'https://zxu.ink/learn/image/20191203/223746/FL_fTHH3XnfzDTdcOJMm.jpg');
INSERT INTO `tb_image` VALUES ('40', 'e5i9cfrRPrKdMEMQ8QEISu', 'https://zxu.ink/learn/image/20191203/223746/FL_dPfbSzOlJTm4XLoL1.jpg');
INSERT INTO `tb_image` VALUES ('41', 'e5i9cfrRPrKdMEMQ8QEISu', 'https://zxu.ink/learn/image/20191203/223746/FL_gmr1ADKEKXpk5mWzF.jpg');
INSERT INTO `tb_image` VALUES ('42', 'gbG7Sk9u554hHgTRKAcnTQ', 'https://zxu.ink/learn/image/20191204/003833/FL_egV6Oak7XEp0wOvvL.jpg');
INSERT INTO `tb_image` VALUES ('43', 'gbG7Sk9u554hHgTRKAcnTQ', 'https://zxu.ink/learn/image/20191204/003833/FL_bMOdAJYbXJOlJwA1o.jpg');
INSERT INTO `tb_image` VALUES ('44', 'gbG7Sk9u554hHgTRKAcnTQ', 'https://zxu.ink/learn/image/20191204/003834/FL_g0Ksdb2eagv2YV7kA.jpg');
INSERT INTO `tb_image` VALUES ('45', 'gbG7Sk9u554hHgTRKAcnTQ', 'https://zxu.ink/learn/image/20191204/003834/FL_d25JpMmEtiSg3Ri91.jpg');
INSERT INTO `tb_image` VALUES ('46', 'gbG7Sk9u554hHgTRKAcnTQ', 'https://zxu.ink/learn/image/20191204/003834/FL_flJcl1uuTgM6xSgRX.jpg');
INSERT INTO `tb_image` VALUES ('47', 'b4yXv6jIUPxlm4ANtMh7R1', 'https://zxu.ink/learn/image/20191204/010011/FL_fpv2UShLlqS259tye.png');
INSERT INTO `tb_image` VALUES ('48', 'b4yXv6jIUPxlm4ANtMh7R1', 'https://zxu.ink/learn/image/20191204/010011/FL_djIQpvoc05vggyHyW.png');
INSERT INTO `tb_image` VALUES ('49', 'b4yXv6jIUPxlm4ANtMh7R1', 'https://zxu.ink/learn/image/20191205/003020/FL_ctUekahxsK1hbinWG.jpg');
INSERT INTO `tb_image` VALUES ('50', 'd6g19xXfoSc4q0LCsqDn1A', 'https://zxu.ink/learn/image/20191205/174115/FL_cT8GWXMrMSPi1e9H5.jpg');
INSERT INTO `tb_image` VALUES ('51', 'cKvTHS0AtLP4Vx6kk679Mx', 'https://zxu.ink/learn/image/20191205/225044/FL_d9lmx1ny5GR3EwfLw.jpg');
INSERT INTO `tb_image` VALUES ('52', 'fy9cwpkcaCfj1Pi9TeZbHT', 'https://zxu.ink/learn/image/20191205/225334/FL_fLNPhLc8O7c7jB28l.jpg');
INSERT INTO `tb_image` VALUES ('53', 'bY0yyFeWR4jkq3Jr6ZMG18', 'https://zxu.ink/learn/image/20191205/225444/FL_eqIPIDBSg2I4ahLcp.png');
INSERT INTO `tb_image` VALUES ('54', 'emhvZeems4nebrwx12cexn', 'https://zxu.ink/learn/image/20191205/225546/FL_ctbRwUiJNO96lSkGi.jpg');
INSERT INTO `tb_image` VALUES ('55', 'cpXkcraFpja5q9Byh0Yamd', 'https://zxu.ink/learn/image/20191205/230854/FL_dnMgz4WDsHH2NqKAT.jpg');

-- ----------------------------
-- Table structure for tb_question
-- ----------------------------
DROP TABLE IF EXISTS `tb_question`;
CREATE TABLE `tb_question` (
  `question_id` varchar(200) NOT NULL,
  `test_id` varchar(200) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `option_A` varchar(200) DEFAULT NULL,
  `option_B` varchar(200) DEFAULT NULL,
  `option_C` varchar(200) DEFAULT NULL,
  `option_D` varchar(200) DEFAULT NULL,
  `answer` varchar(24) DEFAULT NULL,
  `analysis` varchar(900) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_question
-- ----------------------------

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `sno` char(1) NOT NULL,
  `sname` varchar(8) NOT NULL,
  `passworld` varchar(20) DEFAULT NULL,
  `msg` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------

-- ----------------------------
-- Table structure for tb_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_test`;
CREATE TABLE `tb_test` (
  `test_id` varchar(200) NOT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `test_type` char(2) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `browse_num` int(11) DEFAULT NULL,
  `test_grade` int(2) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_test
-- ----------------------------

-- ----------------------------
-- Table structure for tb_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_video`;
CREATE TABLE `tb_video` (
  `id` varchar(200) NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `video_name` varchar(100) DEFAULT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `browse_num` int(11) DEFAULT NULL,
  `video_type` int(2) DEFAULT NULL,
  `video_num` int(4) DEFAULT NULL,
  `video_knowledge` varchar(400) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_video
-- ----------------------------
INSERT INTO `tb_video` VALUES ('b135qypwm7x4qIYvPXuJEt', 'https://zxu.ink/learn/video/20191107/235457/VL_fCxle1rShSk3Y1X2Y.mp4', '日语基础', '2019-11-07 23:54:57', '0', '0', '1', null, '0');
INSERT INTO `tb_video` VALUES ('bNqlyYJAT7m5Fd2W1wTzIS', 'https://zxu.ink/learn/video/20200130/212623/VL_bhGtQxC6zvr61JUgO.jpg', '20200130 21点25分zt', '2020-01-31 14:36:19', '0', '0', '2', '啊啊啊啊啊', '0');
INSERT INTO `tb_video` VALUES ('ewKmm4R4eXf5eTY8x7jyLJ', 'https://zxu.ink/learn/video/20191107/235525/VL_c27VfPQEXKwgEp9AT.mp4', '日语入门', '2019-11-07 23:55:25', '0', '1', '1', null, '0');
INSERT INTO `tb_video` VALUES ('geeeb0rNtBC23SD9nvjHyI', 'https://zxu.ink/learn/video/20191116/175322/VL_bW9vAF0k9J9fSkCQv.jpeg', '日语学习1', '2019-11-16 17:53:22', '0', '3', '1', null, '0');

-- ----------------------------
-- Table structure for tb_voice
-- ----------------------------
DROP TABLE IF EXISTS `tb_voice`;
CREATE TABLE `tb_voice` (
  `voice_id` varchar(200) NOT NULL COMMENT '音频id',
  `type` varchar(2) NOT NULL COMMENT '音频类型',
  `voice_url` varchar(200) NOT NULL COMMENT '音频地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_voice
-- ----------------------------
INSERT INTO `tb_voice` VALUES ('dE0pMpOBN4bd8Pwm5K4IGA', '1', 'https://zxu.ink/learn/voice/20191206/200521/VO_fCcozlNyx5R42wGcg.mp3');
INSERT INTO `tb_voice` VALUES ('flA4OKN0Ky5dRBPqEfWbJq', '1', 'https://zxu.ink/learn/voice/20191206/200622/VO_e4jbVRiif6P6N8zsx.mp3');
INSERT INTO `tb_voice` VALUES ('dAt9TKs2LarfXbItl8HBkF', '1', 'https://zxu.ink/learn/voice/20191206/200823/VO_bgJV0TnWFPdkVRpHB.mp3');
INSERT INTO `tb_voice` VALUES ('bpsmQtlK67FeYVhlEcZlCT', '1', 'https://zxu.ink/learn/voice/20191206/200922/VO_cDVa0zmiGDk8N9wKU.mp3');
INSERT INTO `tb_voice` VALUES ('e4UdArn9sm5a07du0W6xU4', '1', 'https://zxu.ink/learn/voice/20191206/201034/VO_eFV1FYG5ozE5ZATGK.mp3');
INSERT INTO `tb_voice` VALUES ('fLS8GoT4iRVltsQ7yaadMG', '1', 'https://zxu.ink/learn/voice/20191208/212251/VO_fzCqFlyrhI1awcD3H.mp3');
INSERT INTO `tb_voice` VALUES ('bOD1aSiszFR0DAR555DgkH', '1', 'https://zxu.ink/learn/voice/20191208/212534/VO_fG1CCh29TNdlzZQe0.mp3');
INSERT INTO `tb_voice` VALUES ('ba8BEsJQ1uedzFYK1Y9NDM', '1', 'https://zxu.ink/learn/voice/20191208/213003/VO_fi04YWWiaAA9ggqq4.mp3');
INSERT INTO `tb_voice` VALUES ('fIT37UuxWrw3aoh86vmukL', '1', 'https://zxu.ink/learn/voice/20200129/103420/VO_eHH3iXmajiTalTIHM.mp3');

-- ----------------------------
-- Table structure for tb_word
-- ----------------------------
DROP TABLE IF EXISTS `tb_word`;
CREATE TABLE `tb_word` (
  `word_id` varchar(200) NOT NULL COMMENT '单词id',
  `voice_id` varchar(200) NOT NULL COMMENT '音频id',
  `analy_id` varchar(200) NOT NULL COMMENT '解析id',
  `japanese` varchar(200) NOT NULL COMMENT '日本语',
  `word_title` varchar(200) NOT NULL COMMENT '单词表标题',
  `kana` varchar(200) NOT NULL COMMENT '假名',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `state` varchar(2) DEFAULT '0' COMMENT '状态：0正常 1删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word
-- ----------------------------
INSERT INTO `tb_word` VALUES ('drmUY6LEvcY15Okq5ayTRk', 'dE0pMpOBN4bd8Pwm5K4IGA', 'fSINYb9PCXVkjrqOorVWSb', 'あの人', '大家的日语', 'あのひと', '2019-12-06 20:05:21', '0');
INSERT INTO `tb_word` VALUES ('ftzg8hsi2Xac9T5IIUsBVO', 'flA4OKN0Ky5dRBPqEfWbJq', 'ctbAyKAbO10fYJSfiIz4O3', '私', '大家的日语', 'わたし', '2019-12-06 20:06:22', '0');
INSERT INTO `tb_word` VALUES ('dOQTpjQykIo5rther3Fjjx', 'dAt9TKs2LarfXbItl8HBkF', 'ducip9vSZMFcI4YmjQ9dpH', '	 ～さん', '大家的日语', '～さん', '2019-12-06 20:08:23', '0');
INSERT INTO `tb_word` VALUES ('csN141VHuig6RKLWzBOZir', 'bpsmQtlK67FeYVhlEcZlCT', 'edMfF2VVY804biwim9v4mS', '会社員', '标准日本语初级', 'いしゃいん', '2019-12-06 20:09:22', '0');
INSERT INTO `tb_word` VALUES ('cTf4fUdJKrZ5LwYYYQKo3p', 'e4UdArn9sm5a07du0W6xU4', 'dQUz9DnAxKu56sWwPSRmkl', '初めまして', '标准日本语中级', 'はじめまして', '2019-12-06 20:10:34', '0');
INSERT INTO `tb_word` VALUES ('bgplSQO61ra1Xn5yVKLRqZ', 'fLS8GoT4iRVltsQ7yaadMG', 'eLM2bBltudt3hxH7PJOJzt', '初めまして', '大家的日语', 'はじめまして', '2019-12-08 21:27:16', '0');
INSERT INTO `tb_word` VALUES ('fipsN8z07sVaRHgnsGUO2G', 'bOD1aSiszFR0DAR555DgkH', 'bur1u3CFqgcbprlvG1Wx3z', '旅行社', '大家的日语', 'りょこうしゃ', '2019-12-08 21:27:25', '0');
INSERT INTO `tb_word` VALUES ('eSm0UZ4CQcN5HQ232AISCR', 'ba8BEsJQ1uedzFYK1Y9NDM', 'b8rDQAOjbCc1N9YkmDmO0N', 'とうきょうだいがく', '大家的日语', '東京大学', '2019-12-08 21:30:03', '0');

-- ----------------------------
-- Table structure for tb_word_eg
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_eg`;
CREATE TABLE `tb_word_eg` (
  `eg_id` varchar(200) NOT NULL COMMENT '例句id',
  `word_id` varchar(200) NOT NULL COMMENT '单词id',
  `voice_id` varchar(200) NOT NULL COMMENT '音频id',
  `sentence` varchar(4000) NOT NULL COMMENT '句子',
  `translate` varchar(4000) NOT NULL COMMENT '中文意思'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word_eg
-- ----------------------------
INSERT INTO `tb_word_eg` VALUES ('bdtcyclKbAPe09CmYd9Qh9', 'drmUY6LEvcY15Okq5ayTRk', 'dE0pMpOBN4bd8Pwm5K4IGA', 'あのひとあのひと', '翻译1翻译1翻译1');
INSERT INTO `tb_word_eg` VALUES ('eRTvQGMVMVo2gcRrzvO2TG', 'ftzg8hsi2Xac9T5IIUsBVO', 'flA4OKN0Ky5dRBPqEfWbJq', 'わたしわたしわたし', '翻译翻译翻译翻译');
INSERT INTO `tb_word_eg` VALUES ('e2NmbwvAK7cdBqYTnHHdnY', 'dOQTpjQykIo5rther3Fjjx', 'dAt9TKs2LarfXbItl8HBkF', '～さん～さん～さん～さん', '翻译1*翻译1*翻译1');
INSERT INTO `tb_word_eg` VALUES ('eDC1vMxrO3nkhynPotdWJE', 'csN141VHuig6RKLWzBOZir', 'bpsmQtlK67FeYVhlEcZlCT', 'いしゃいんいしゃいんいしゃいん', '*翻译*翻译*翻译*翻译');
INSERT INTO `tb_word_eg` VALUES ('bxaoov4QuNG85CmNABADqc', 'cTf4fUdJKrZ5LwYYYQKo3p', 'e4UdArn9sm5a07du0W6xU4', 'じめましてじめまして', '*翻译1：*翻译1：*翻译1：*翻译1：*翻译1：');
INSERT INTO `tb_word_eg` VALUES ('bThZDUiwGgKgEQ3kxt2RMK', 'bgplSQO61ra1Xn5yVKLRqZ', 'fLS8GoT4iRVltsQ7yaadMG', 'はじめましてはじめましてはじめまして', '初次见面初次见面初次见面初次见面');
INSERT INTO `tb_word_eg` VALUES ('eyJLreggfi5jjFrhkp3FER', 'fipsN8z07sVaRHgnsGUO2G', 'bOD1aSiszFR0DAR555DgkH', 'りょこうしゃりょこうしゃりょこうしゃ', '旅行社旅行社旅行社旅行社');
INSERT INTO `tb_word_eg` VALUES ('bLTwNVJu45o0aL8p76GtRz', 'eSm0UZ4CQcN5HQ232AISCR', 'ba8BEsJQ1uedzFYK1Y9NDM', 'とうきょうだいがくとうきょうだいがく', '东京大学东京大学东京大学');

-- ----------------------------
-- Table structure for tb_word_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_record`;
CREATE TABLE `tb_word_record` (
  `record_id` varchar(200) NOT NULL COMMENT '单词测试id',
  `word_id` varchar(200) NOT NULL COMMENT '单词id',
  `true_num` int(4) DEFAULT '0' COMMENT '正确次数',
  `false_num` int(4) DEFAULT '0' COMMENT '错误次数',
  `is_collect` varchar(2) DEFAULT '0' COMMENT '状态：0收藏 1未收藏',
  `state` varchar(2) DEFAULT '0' COMMENT '状态：0正常 1删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word_record
-- ----------------------------
INSERT INTO `tb_word_record` VALUES ('dZ46PpNbNVb3UwkjJHmcmb', 'csN141VHuig6RKLWzBOZir', '21', '44', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'eSm0UZ4CQcN5HQ232AISCR', '137', '80', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'fipsN8z07sVaRHgnsGUO2G', '34', '7', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'bgplSQO61ra1Xn5yVKLRqZ', '0', '17', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'dOQTpjQykIo5rther3Fjjx', '0', '41', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'ftzg8hsi2Xac9T5IIUsBVO', '5', '8', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'drmUY6LEvcY15Okq5ayTRk', '2', '28', '0', '0');
INSERT INTO `tb_word_record` VALUES ('ezM5ljnT0HE2cZirs49pYy', 'cTf4fUdJKrZ5LwYYYQKo3p', '156', '4', '0', '0');
INSERT INTO `tb_word_record` VALUES ('null', '', '5', '0', '0', '0');
INSERT INTO `tb_word_record` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'eSm0UZ4CQcN5HQ232AISCR', '2', '3', '0', '0');
INSERT INTO `tb_word_record` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'ftzg8hsi2Xac9T5IIUsBVO', '0', '4', '0', '0');
INSERT INTO `tb_word_record` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'drmUY6LEvcY15Okq5ayTRk', '3', '6', '0', '0');
INSERT INTO `tb_word_record` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'dOQTpjQykIo5rther3Fjjx', '1', '0', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cAGZADllHEukOYwFoafBGn', 'eSm0UZ4CQcN5HQ232AISCR', '1', '1', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cAGZADllHEukOYwFoafBGn', 'fipsN8z07sVaRHgnsGUO2G', '0', '1', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cAGZADllHEukOYwFoafBGn', 'bgplSQO61ra1Xn5yVKLRqZ', '0', '1', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cAGZADllHEukOYwFoafBGn', 'dOQTpjQykIo5rther3Fjjx', '0', '1', '0', '0');
INSERT INTO `tb_word_record` VALUES ('cAGZADllHEukOYwFoafBGn', 'ftzg8hsi2Xac9T5IIUsBVO', '0', '2', '0', '0');
INSERT INTO `tb_word_record` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'fipsN8z07sVaRHgnsGUO2G', '0', '1', '0', '0');
INSERT INTO `tb_word_record` VALUES ('fUQdKAKWPJd8CYTa7wvVno', 'csN141VHuig6RKLWzBOZir', '0', '4', '0', '0');
INSERT INTO `tb_word_record` VALUES ('e0xcHvbiSwid0ERK70bfjX', 'cTf4fUdJKrZ5LwYYYQKo3p', '0', '6', '0', '0');

-- ----------------------------
-- Table structure for tb_word_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_word_test`;
CREATE TABLE `tb_word_test` (
  `record_id` varchar(200) NOT NULL COMMENT '单词测试id',
  `user_id` varchar(200) NOT NULL COMMENT '用户id',
  `word_title` varchar(200) NOT NULL COMMENT '单词表标题',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `is_collect` varchar(2) DEFAULT '0' COMMENT '是否收藏：0是 1否',
  `is_end` varchar(2) DEFAULT '0' COMMENT '是否结束：0是 1否',
  `state` varchar(2) DEFAULT '0' COMMENT '状态：0正常 1删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_word_test
-- ----------------------------
INSERT INTO `tb_word_test` VALUES ('ffthp1KnQV2fY1RvUrDnax', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:16:50', '2019-12-08 19:16:50', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ehk2IwDxNIyhW8tlHizRoQ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:27:08', '2019-12-08 19:27:08', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dC4fqsN1I1n9jQBZiDHH8X', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:35:01', '2019-12-08 19:35:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cptNfUaKRRZaSLAH10bRb5', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:37:06', '2019-12-08 19:37:06', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('e5UvEamnTOr8u9woQIfAK7', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:39:19', '2019-12-08 19:39:19', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fahbVQ4w3ni7Etpwdz2Kqd', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:40:37', '2019-12-08 19:40:37', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fxJzurFlyM76pXCjRZQ0RB', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:47:38', '2019-12-08 19:47:38', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('edAxvb8ljmybbKQPjWihlJ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:48:43', '2019-12-08 19:48:43', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dpFAnf4flVRfOI9dhiRcSq', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:49:42', '2019-12-08 19:49:42', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cQs8OIFaRJebZRlv9btWAk', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语中级', '2019-12-08 19:49:57', '2019-12-08 19:49:57', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('erMqav0YrA25FaSzuhfVKX', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 19:51:29', '2019-12-08 19:51:29', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('e17KYrMwAWuiQ0eVTQPMfX', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:09:57', '2019-12-08 20:09:57', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('emfFX7R37Sl7WahoBnaQYB', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:11:00', '2019-12-08 20:11:00', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fIJkSeih2uRg7nXBqRgFbF', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:12:24', '2019-12-08 20:12:24', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('gbjIw3dATSv8ioxEIuDpAC', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:13:37', '2019-12-08 20:13:37', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bsmtpFNMxrykbxqgiIvisc', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:15:40', '2019-12-08 20:15:40', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('c1EbSKAMevxiTYWMS42LPf', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:17:06', '2019-12-08 20:17:06', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eaNVOVPctedah74Bh99N3H', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:17:54', '2019-12-08 20:17:54', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cftAwgAy7Ub8Dy9sBiPjaP', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:18:50', '2019-12-08 20:18:50', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bZpdlpE09wp66DsHGOFZvp', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:20:05', '2019-12-08 20:20:05', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bxUBHujsy3n4whcdoWlBiL', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:21:39', '2019-12-08 20:21:39', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('grIkHKpiLS8cZwlusWmT7L', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:26:38', '2019-12-08 20:26:38', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('blvLVfQ488yfu2sLL4pwLR', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:30:15', '2019-12-08 20:30:15', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('e3qbXQiovm1hHZsModTk4o', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:31:44', '2019-12-08 20:31:44', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fdPGA4ihZmO8OWMiJCvSUp', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:35:53', '2019-12-08 20:35:53', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dnxQmH43gt2j5L4QhJG6ZG', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:36:52', '2019-12-08 20:36:52', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dxqFhsOvqA74gBhBsZOQVI', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:38:17', '2019-12-08 20:38:17', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bBXMzDBoEvg9jVMa68fXBv', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:39:14', '2019-12-08 20:39:14', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cYLgrTwNHEu2koxcp8FF74', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:43:54', '2019-12-08 20:43:54', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dPwXoOu3HHJlqDLseVOIru', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:45:48', '2019-12-08 20:45:48', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dEZxkRKybMscawHteMtjrN', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:46:24', '2019-12-08 20:46:24', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eAKeqpNe7YUkh1l6v6OulD', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:46:28', '2019-12-08 20:46:28', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dfyfowjAvFz6LLny1hE7hy', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语中级', '2019-12-08 20:46:41', '2019-12-08 20:46:41', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dOZ7ch22xSw0lQEtutBpnl', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:46:52', '2019-12-08 20:46:52', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fwgjnP5FY3l4VdbGt1mszt', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:46:58', '2019-12-08 20:46:58', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eXxEItLxbOO8WPGRMOpFzZ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:47:01', '2019-12-08 20:47:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('gjdXM164nkWlshtlBpHWOd', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:47:14', '2019-12-08 20:47:14', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fWnIK3V3gKnbADEONx2YMl', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:47:26', '2019-12-08 20:47:26', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bDqd7WI8skC4XQuMR5JHbF', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 20:57:31', '2019-12-08 20:57:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cke2BOEixoshnLp3yLyaze', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:57:44', '2019-12-08 20:57:44', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dsYbz4SJJj1g34PI2yJqB6', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 20:58:25', '2019-12-08 20:58:25', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eYVV1qRxbceeGydaD4eRh2', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日本', '2019-12-08 21:26:09', '2019-12-08 21:26:09', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('choAxj1eiXD8CwBrQtMqtl', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 21:26:31', '2019-12-08 21:26:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dx9GVOiQ1gM4GzF8y0phmg', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 21:27:35', '2019-12-08 21:27:35', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ffbbJgfyjRf0GiG2vgHvxs', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 21:30:31', '2019-12-08 21:30:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('d6VhUthGDNL64k7K5lJL0N', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 21:30:40', '2019-12-08 21:30:40', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ezM5ljnT0HE2cZirs49pYy', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语中级', '2019-12-08 21:31:36', '2019-12-08 21:31:36', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fwaWhyg3qZl2Nzr8Blj2kr', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 21:31:42', '2019-12-08 21:31:42', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dKtLcmg71Wh3w4RUOJRR0M', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 21:32:10', '2019-12-08 21:32:10', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dZJwQMKyftD9EC6LPfDZWL', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:04:41', '2019-12-08 22:04:41', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fnQLOwxO0cPdD5vTV4uOKq', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 22:21:25', '2019-12-08 22:21:25', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dZ46PpNbNVb3UwkjJHmcmb', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '标准日本语初级', '2019-12-08 22:27:45', '2019-12-08 22:27:45', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cHZZs4n5eXlfYWsDOJvZVg', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:29:31', '2019-12-08 22:29:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dKEG8YFXPxG0uThX6H90x7', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:30:01', '2019-12-08 22:30:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dWBT8iLh4cejhyfliJ0IJh', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:30:08', '2019-12-08 22:30:08', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('d8lhs2PSjysjce2FyVKRlr', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:30:12', '2019-12-08 22:30:12', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('b4mp1mYfTdhivaKTGfTniM', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:30:16', '2019-12-08 22:30:16', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fqbr8WEv42phN015kICTZA', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:31:54', '2019-12-08 22:31:54', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cPTImig6gyWldFynEfpQyK', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:34:01', '2019-12-08 22:34:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('g36SdCeJtx1gbtqzizOerm', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:34:37', '2019-12-08 22:34:37', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('db6UkIABcxU0dCagE87m1h', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:38:48', '2019-12-08 22:38:48', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cZjoi5WAkYz5zf5uLT6v0g', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:38:54', '2019-12-08 22:38:54', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bxHeRtUXrKxfuIiHMewAs0', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:39:00', '2019-12-08 22:39:00', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ek40tlHKg39iL7sl8OgQya', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:45:34', '2019-12-08 22:45:34', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fDVgSJmgvPgg5KombmlcgD', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:47:01', '2019-12-08 22:47:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cSK02GuTzTIhP3TVzCMTv4', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:47:44', '2019-12-08 22:47:44', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('gmXbXqHElOqfEsr479TGq5', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:49:01', '2019-12-08 22:49:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dBZEvBZdmMy5FY7hFRB9H4', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:49:33', '2019-12-08 22:49:33', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dnzBTQbd742lg8wpFqUKvQ', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:52:48', '2019-12-08 22:52:48', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fILG2ApEuTQcHvQVbqGcGi', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:55:12', '2019-12-08 22:55:12', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cSQkH8oBGzg2tYdY047S3c', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 22:58:15', '2019-12-08 22:58:15', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('c79zzLzkuGL4t8mVbciChY', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:00:15', '2019-12-08 23:00:15', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cnvZNSdWECgiU5Xt5MWmCz', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:01:01', '2019-12-08 23:01:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cgEVYzJkw1K7oUCdpKku05', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:03:26', '2019-12-08 23:03:26', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dGmi4AJAfpxiCkZ1ck7ZhV', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:04:18', '2019-12-08 23:04:18', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eqWzCjHH3eo1VGxwXoP9OE', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:05:11', '2019-12-08 23:05:11', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ckcdRXOwFJ8l9EpZY2Qo8B', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:06:19', '2019-12-08 23:06:19', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('c0WIaw6lPMG7LoeFTWxKVD', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:15:43', '2019-12-08 23:15:43', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fw5gWPA09ZV0OI65PMFtnf', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:17:04', '2019-12-08 23:17:04', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('g35FQHyTTs2943ByCbOXiF', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:27:24', '2019-12-08 23:27:24', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dyUcK1AB4jmjcPHZdKdsLv', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:29:15', '2019-12-08 23:29:15', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('f7mK9x7P7KO7eXKVKQCyep', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:33:39', '2019-12-08 23:33:39', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fS10v7NlAnClR2AqGkE3rm', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:34:47', '2019-12-08 23:34:47', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eKc9iqHHylg2EarkMMyrrC', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:35:29', '2019-12-08 23:35:29', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('etpm2sUI8BAeh9TuiB2XUu', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:38:20', '2019-12-08 23:38:20', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('c1N9tn03xn7dWCDh6op7Ks', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:39:32', '2019-12-08 23:39:32', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fPxZZWFto7A5jWMT21kVvt', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:41:53', '2019-12-08 23:41:53', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('efaeU9DaII12qdwS7Xjtas', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:43:35', '2019-12-08 23:43:35', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dCCT2iCh7Cd1rKGJKDzq69', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:45:31', '2019-12-08 23:45:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bHhMCXrSYtE3oXGjcBIRMO', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:47:19', '2019-12-08 23:47:19', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('gsoiE5sBaLh7W2jpvv56zK', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:47:29', '2019-12-08 23:47:29', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bQ32UdaKu4j36CxcS0r2iv', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:48:14', '2019-12-08 23:48:14', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('csj7Tq44RY64xL92d3tIHO', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:49:03', '2019-12-08 23:49:03', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bwwFBDa2UV5btoCfy8SXm1', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:51:38', '2019-12-08 23:51:38', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('f6SQblmumw2jxcWK6Yzn6j', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:53:17', '2019-12-08 23:53:17', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fKbInkeSHJE7DM0HbO2y7l', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:54:04', '2019-12-08 23:54:04', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dOq1G00DEPvj21uItUDCHv', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:55:05', '2019-12-08 23:55:05', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cjqPCJZQMa0lVX88nFLxAW', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '大家的日语', '2019-12-08 23:55:18', '2019-12-08 23:55:18', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bLW65sTVV9Xly1RiHLiAG8', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '2020-01-29 10:34:31', '2020-01-29 10:34:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eMEWQNhYMPufalKCqjgXfK', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '2020-01-29 10:34:37', '2020-01-29 10:34:37', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('eTSCFl4XaOM3ckwsgDL1kv', 'oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', '测试', '2020-01-29 10:34:48', '2020-01-29 10:34:48', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('dPOmAlLfTnTd5fBPMy6cn2', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '大家的日语', '2020-01-29 11:36:22', '2020-01-29 11:36:22', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('fUQdKAKWPJd8CYTa7wvVno', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '标准日本语初级', '2020-01-29 11:36:27', '2020-01-29 11:36:27', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('e0xcHvbiSwid0ERK70bfjX', 'oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', '标准日本语中级', '2020-01-29 11:36:31', '2020-01-29 11:36:31', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('bnX416k77B0fMB3RzwypsY', 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '大家的日语', '2020-01-29 11:41:01', '2020-01-29 11:41:01', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('b8bjBYtsIQigmX3iroDULI', 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '标准日本语初级', '2020-01-29 13:48:55', '2020-01-29 13:48:55', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('buJivk3qSAs24b3TaWHe5R', 'oIFDc4tR0ozgAP7QbFAJkf5XbV_g', '标准日本语初级', '2020-01-29 13:48:59', '2020-01-29 13:48:59', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('cAGZADllHEukOYwFoafBGn', 'oIFDc4u-43oSkNj8s1w25cUVcA8M', '大家的日语', '2020-01-29 15:44:19', '2020-01-29 15:44:19', '0', '0', '0');
INSERT INTO `tb_word_test` VALUES ('ddXsdQcV7TelQo5mPSCKhI', 'oIFDc4u-43oSkNj8s1w25cUVcA8M', '标准日本语初级', '2020-01-29 19:03:56', '2020-01-29 19:03:56', '0', '0', '0');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coursetotal` int(11) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `openid` varchar(100) NOT NULL,
  `session_key` varchar(100) DEFAULT NULL,
  `nick_name` varchar(30) DEFAULT NULL,
  `avatar_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('oIFDc4g1ClQnMNHX5LjR5t_8uRZE', 'IgKCOQbykwfC/UkEx51H+A==', '知行合一', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIDfFZB1y5h7ZK18fB3bQWbR4aYVl3eQdoXL0JAPzCTVFb5kJVx9VxZxnRwV9jK8OibJmjM9a07BdA/132');
INSERT INTO `users` VALUES ('oIFDc4lGKvKT3Uzsb4vwFvywkN9Q', 'lnR7pklQOCeeRC7JdCZidg==', 'Engineer', 'https://wx.qlogo.cn/mmopen/vi_32/NuZwc9dZ2jL7OYDzpia65jqT7FBTtRycviblvW5Y3QzZYcG6L3mLia6WMFR0icTr4rRViboW2F3zRDpAwEQT7jibRNQA/132');
INSERT INTO `users` VALUES ('oIFDc4lXwIhQKeaQ1dEjCZwLWuT0', 'J6deG0Ov20hN5ChxHa+HdQ==', 'Dealbreaker', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLne5ySsv7sldNHoEVf1yhylfuDD1hmpBebHdhMf4kWiaCyK0lkpE2NxhgoGGia36ibwgLiaS4PiawsIkw/132');
INSERT INTO `users` VALUES ('oIFDc4rfqYw3-doDBXi5ZRxgYrkk', 'gEx4sV3mDtdzGpMKVtiHJA==', '大表哥', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIE7A27oaPPS9z12zWNmXrHxNXGY9nDv7C9YFNEkZvXAUAAuk8unYFQuxBveiaJlWFjGhA0bZpVbA/132');
INSERT INTO `users` VALUES ('oIFDc4ta5j1MCwgOgE4jFzhwx1L4', 'Leh8aZcEyaiDVMdh4HEWgQ==', '噼里啪啦砰', 'https://wx.qlogo.cn/mmopen/vi_32/CKT0Y6WzTicymtkS7I6m8LmAZQ72L3tOAicSia9ia8j4JaV8goXn7yRFtHQnyejOcibHHkmgPnD91XggP1VJk5uLm3w/132');
INSERT INTO `users` VALUES ('oIFDc4tR0ozgAP7QbFAJkf5XbV_g', 'Rmmtv3NYjgW5AFbNEzGrIw==', '奋斗', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKQNUgjtVPmh5ibdAWwYMNob78G2rS1gv7ghPvxnMLG4UldPIS9Zc1qt70R9Mnpdib73GbNODmraXQA/132');
INSERT INTO `users` VALUES ('oIFDc4u-43oSkNj8s1w25cUVcA8M', 's7Koh3kcZCZIk2UoYVYErw==', '卜桓', 'https://wx.qlogo.cn/mmopen/vi_32/AVdTM18xgaoiaEXw74T97icEibBC2KYG3kf33I2lhYxgpGamQ5hqH3NdoHBDzNIw1opAniawiawicWf7MqMGWYtl1qhw/132');
INSERT INTO `users` VALUES ('oIFDc4vBILtejo6QIsNPzaITO83E', 'GE96k7h8w/jG+vR+n/ThPA==', '独忘机', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLyQWrdrPVU9ll8WCDcxGtibP4Fc6C1tGM57ia95BXRpNwuLqicDYzvbVG179WG2bB9gvwjSD659TK1w/132');
