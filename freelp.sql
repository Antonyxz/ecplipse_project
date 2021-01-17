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

 Date: 17/01/2021 18:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `adminpswd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES (1, 'xzk', '202cb962ac59075b964b07152d234b70');

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
-- Records of lable
-- ----------------------------
INSERT INTO `lable` VALUES (1, 'aaa', 1, 0);
INSERT INTO `lable` VALUES (1, 'bbb', 2, 0);
INSERT INTO `lable` VALUES (1, 'ccc', 3, 0);
INSERT INTO `lable` VALUES (11, '视频', 4, 0);
INSERT INTO `lable` VALUES (3, 'C', 5, 0);

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
-- Records of lableinfo
-- ----------------------------
INSERT INTO `lableinfo` VALUES (11, 4, 1, '11111', '虎牙', 0);

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
-- Records of page1
-- ----------------------------
INSERT INTO `page1` VALUES ('搜狗', 'https://www.sogou.com/web?query=', 1);
INSERT INTO `page1` VALUES ('duckduckgo', 'https://duckduckgo.com/?q=', 1);
INSERT INTO `page1` VALUES ('dogedoge', 'https://www.dogedoge.com/results?q=', 1);
INSERT INTO `page1` VALUES ('秘迹', 'https://mijisou.com/?q=', 1);
INSERT INTO `page1` VALUES ('爱奇艺', 'https://so.iqiyi.com/so/q_', 2);
INSERT INTO `page1` VALUES ('腾讯', 'https://v.qq.com/x/search/?q=', 2);
INSERT INTO `page1` VALUES ('优酷', 'https://so.youku.com/search_video/q_', 2);
INSERT INTO `page1` VALUES ('B站', 'https://search.bilibili.com/all?keyword=', 2);
INSERT INTO `page1` VALUES ('A站', 'https://www.acfun.cn/search?keyword=', 2);
INSERT INTO `page1` VALUES ('芒果', 'https://so.mgtv.com/so?k=', 2);
INSERT INTO `page1` VALUES ('搜狐', 'https://so.tv.sohu.com/mts?wd=', 2);
INSERT INTO `page1` VALUES ('网易云', 'https://music.163.com/#/search/m/?s=', 3);
INSERT INTO `page1` VALUES ('QQ音乐', 'https://y.qq.com/portal/search.html#page=1&searchid=1&remoteplace=txt.yqq.top&t=song&w=', 3);
INSERT INTO `page1` VALUES ('酷狗音乐', 'https://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=', 3);
INSERT INTO `page1` VALUES ('千千静听', 'https://music.taihe.com/search?word=', 3);
INSERT INTO `page1` VALUES ('酷我音乐', 'https://www.kuwo.cn/search/list?key=', 3);
INSERT INTO `page1` VALUES ('喜马拉雅', 'https://www.ximalaya.com/search/', 3);
INSERT INTO `page1` VALUES ('蜻蜓FM', 'https://www.qingting.fm/search/all/', 3);
INSERT INTO `page1` VALUES ('微博', 'https://s.weibo.com/weibo/', 4);
INSERT INTO `page1` VALUES ('豆瓣', 'https://www.douban.com/search?q=', 4);
INSERT INTO `page1` VALUES ('知乎', 'https://www.zhihu.com/search?q=', 4);
INSERT INTO `page1` VALUES ('V2EX', 'https://www.v2ex.com/go/', 4);
INSERT INTO `page1` VALUES ('百度贴吧', 'https://tieba.baidu.com/f/search/res?ie=utf-8&qw=', 4);
INSERT INTO `page1` VALUES ('百度百科', 'https://baike.baidu.com/item/', 4);
INSERT INTO `page1` VALUES ('维基百科', 'https://zh.wikipedia.org/wiki/', 4);
INSERT INTO `page1` VALUES ('wikiHow', 'https://www.wikihow.com/wikiHowTo?search=', 4);
INSERT INTO `page1` VALUES ('谷歌翻译', 'https://translate.google.com/?hl=zh-TW&sl=auto&tl=en&text=', 5);
INSERT INTO `page1` VALUES ('百度翻译', 'https://fanyi.baidu.com/#zh/en/', 5);
INSERT INTO `page1` VALUES ('有道翻译', 'http://www.youdao.com/w/eng/', 5);
INSERT INTO `page1` VALUES ('金山翻译', 'http://www.iciba.com/word?w=', 5);
INSERT INTO `page1` VALUES ('百度文库', 'https://wenku.baidu.com/search?word=', 6);
INSERT INTO `page1` VALUES ('豆丁', 'https://www.docin.com/search.do?nkey=', 6);
INSERT INTO `page1` VALUES ('360', 'https://wenku.so.com/s?q=', 6);
INSERT INTO `page1` VALUES ('茶杯狐', 'https://www.cupfox.com/search?key=', 7);
INSERT INTO `page1` VALUES ('小不点', 'https://www.xiaoso.net/m/search?wd=', 7);
INSERT INTO `page1` VALUES ('微盘', 'https://vdisk.weibo.com/search/?type=public&keyword=', 7);
INSERT INTO `page1` VALUES ('西林街', 'https://xilinjie.cc/s?q=', 7);
INSERT INTO `page1` VALUES ('百度学术', 'https://xueshu.baidu.com/s?wd=', 8);
INSERT INTO `page1` VALUES ('必应学术', 'https://cn.bing.com/academic/search?q=', 8);
INSERT INTO `page1` VALUES ('万方', 'http://s.wanfangdata.com.cn/paper?q=', 8);

-- ----------------------------
-- Table structure for page2
-- ----------------------------
DROP TABLE IF EXISTS `page2`;
CREATE TABLE `page2`  (
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weburl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `webtype` int(255) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of page2
-- ----------------------------
INSERT INTO `page2` VALUES ('磁力熊猫', 'https://xiongmao21.xyz/', 100);
INSERT INTO `page2` VALUES ('磁力多', 'https://nayy.online/', 100);
INSERT INTO `page2` VALUES ('吃力搜索', 'http://www.chilisousuo.com/?ad=jubt', 100);
INSERT INTO `page2` VALUES ('BT4G', 'https://bt4g.unblockit.lat/', 100);
INSERT INTO `page2` VALUES ('SOBT6', 'http://sobt6.org/', 100);
INSERT INTO `page2` VALUES ('BTSOW', 'https://btsow.work/search', 100);
INSERT INTO `page2` VALUES ('种子搜', 'https://zhongziso3.com/', 100);
INSERT INTO `page2` VALUES ('BTDigg', 'https://btdig.proxyit.ga/', 100);
INSERT INTO `page2` VALUES ('雨花阁磁力', 'https://www.yhgzz.xyz/', 100);
INSERT INTO `page2` VALUES ('低端影视', 'https://ddrk.me/', 101);
INSERT INTO `page2` VALUES ('片库网', 'https://www.pianku.tv/', 101);
INSERT INTO `page2` VALUES ('片吧', 'https://www.pianba.tv/', 101);
INSERT INTO `page2` VALUES ('YYeTss', 'http://www.yyetss.com/', 101);
INSERT INTO `page2` VALUES ('蛋蛋赞影院', 'https://www.dandanzan.cc/', 101);
INSERT INTO `page2` VALUES ('88影视网', 'https://www.88ys.com/', 101);
INSERT INTO `page2` VALUES ('剧迷', 'https://gimy.co/', 101);
INSERT INTO `page2` VALUES ('1090影视', 'http://1090ys1.com/', 101);
INSERT INTO `page2` VALUES ('电影淘淘', 'http://www.dytt.com/', 101);
INSERT INTO `page2` VALUES ('好恐怖', 'https://www.haokongbu.net/', 101);
INSERT INTO `page2` VALUES ('网易云课堂', 'https://study.163.com/', 102);
INSERT INTO `page2` VALUES ('腾讯课堂', 'https://ke.qq.com/', 102);
INSERT INTO `page2` VALUES ('网易公开课', 'https://reg.163.com/', 102);
INSERT INTO `page2` VALUES ('我要自学网', 'https://www.51zxw.net/', 102);
INSERT INTO `page2` VALUES ('中国大学', 'https://www.icourse163.org/', 102);
INSERT INTO `page2` VALUES ('Oeasy', 'http://oeasy.org/', 102);
INSERT INTO `page2` VALUES ('沪江网校', 'https://class.hujiang.com/', 102);
INSERT INTO `page2` VALUES ('优酷教育', 'https://edu.youku.com/', 102);
INSERT INTO `page2` VALUES ('爱奇艺教育', 'https://edu.iqiyi.com/', 102);
INSERT INTO `page2` VALUES ('菜鸟教程', 'https://www.runoob.com/', 103);
INSERT INTO `page2` VALUES ('W3school', 'https://www.w3school.com.cn/', 103);
INSERT INTO `page2` VALUES ('Github', 'https://github.com/', 103);
INSERT INTO `page2` VALUES ('HOW2J', 'https://how2j.cn/', 103);
INSERT INTO `page2` VALUES ('MDN Web', 'https://developer.mozilla.org/zh-CN/', 103);
INSERT INTO `page2` VALUES ('CSDN', 'https://www.csdn.net/', 103);
INSERT INTO `page2` VALUES ('博客园', 'https://www.cnblogs.com/', 103);
INSERT INTO `page2` VALUES ('gitee', 'https://gitee.com/', 103);
INSERT INTO `page2` VALUES ('开源中国', 'https://www.oschina.net/', 103);
INSERT INTO `page2` VALUES ('StackOverflow', 'https://stackoverflow.com/', 103);
INSERT INTO `page2` VALUES ('优设网', 'https://www.uisdc.com/', 104);
INSERT INTO `page2` VALUES ('站酷设计', 'https://www.zcool.com.cn/discover', 104);
INSERT INTO `page2` VALUES ('优优教程', 'https://uiiiuiii.com/ranking', 104);
INSERT INTO `page2` VALUES ('思缘论坛', 'https://www.missyuan.com/', 104);
INSERT INTO `page2` VALUES ('高高手', 'https://www.gogoup.com/', 104);
INSERT INTO `page2` VALUES ('正版中国', 'https://www.getitfree.cn/', 105);
INSERT INTO `page2` VALUES ('小众软件', 'https://www.appinn.com/', 105);
INSERT INTO `page2` VALUES ('果核剥壳', 'https://www.ghpym.com/', 105);
INSERT INTO `page2` VALUES ('MSDN', 'https://msdn.itellyou.cn/', 105);
INSERT INTO `page2` VALUES ('异次元软件世界', 'https://www.iplaysoft.com/', 105);

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
-- Records of text
-- ----------------------------
INSERT INTO `text` VALUES (1, 'aaa');
INSERT INTO `text` VALUES (3, '');

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

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'aa', '2', 'dadas', 'dasd', 'aa@qq.com');
INSERT INTO `userinfo` VALUES (2, 'sss', '2', 'affff', 'vdafs', 'a@qq.com');
INSERT INTO `userinfo` VALUES (3, 'chenxi', '202cb962ac59075b964b07152d234b70', 'aaaaaa', '000000', 'chenxi@xzk.com');
INSERT INTO `userinfo` VALUES (4, 'zxc', '1', '111111', '000000', 'ccc@qq.com');
INSERT INTO `userinfo` VALUES (5, 'vbn', '1', '111111', '000000', 'ddd@qq.com');
INSERT INTO `userinfo` VALUES (6, 'zzz', '1', '111111', 'E64CSR', 'zzz@qq.com');
INSERT INTO `userinfo` VALUES (7, 'cccc', '1', '111111', 'QHF8IO', 'cccc@qq.com');
INSERT INTO `userinfo` VALUES (8, 'bbb', '1', '111111', 'ZNN3VO', 'dddd@qq.com');
INSERT INTO `userinfo` VALUES (9, 'qqwe', '-1ef523c6b645a65441a91fa80df077c2', '111111', '0YOQ0R', 'qwe@qq.com');
INSERT INTO `userinfo` VALUES (10, 'antony', '202cb962ac59075b964b07152d234b70', '000000', 'NWC9JH', '549193263@qq.com');
INSERT INTO `userinfo` VALUES (11, 'mmm', '202cb962ac59075b964b07152d234b70', '111111', 'GYBJM1', '5668@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
