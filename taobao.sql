/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : taobao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-06-12 09:21:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allgoodlist`
-- ----------------------------
DROP TABLE IF EXISTS `allgoodlist`;
CREATE TABLE `allgoodlist` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `newprice` varchar(5) NOT NULL,
  `oldprice` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allgoodlist
-- ----------------------------
INSERT INTO `allgoodlist` VALUES ('2', 'https://goods6.juancdn.com/goods/200303/b/d/5e5db131b6f8ea45ac5e34da_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '60', '199', '持证美白淡斑30粒');
INSERT INTO `allgoodlist` VALUES ('1', 'https://goods7.juancdn.com/goods/180330/c/f/5abde038a9fcf8b6d22d50b3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '69', '168', '四级鞋童鞋女学生鞋');
INSERT INTO `allgoodlist` VALUES ('3', 'https://goods8.juancdn.com/goods/200317/f/e/5e703c7533b089155a6a59e4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '499', '男士纯色短袖T桖');
INSERT INTO `allgoodlist` VALUES ('4', 'https://goods4.juancdn.com/goods/200323/6/1/5e77a024b6f8ea22c2643db6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '298', '亮面粗高跟单鞋女凉鞋');
INSERT INTO `allgoodlist` VALUES ('5', 'https://goods3.juancdn.com/goods/200428/5/1/5ea7e3e633b0891937392728_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '29', '99', '男士夏季纯棉大码T恤');
INSERT INTO `allgoodlist` VALUES ('6', 'https://goods8.juancdn.com/goods/200118/e/0/5e22a80833b08922366c60b7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '55', '199', '条纹撞色休闲铅笔裤');
INSERT INTO `allgoodlist` VALUES ('7', 'https://goods3.juancdn.com/goods/200521/5/d/5ec6a3bb33b0895f781d41a4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '298', '千鸟格一字粗高跟凉鞋');
INSERT INTO `allgoodlist` VALUES ('8', 'https://goods7.juancdn.com/goods/200428/d/6/5ea7dbd833b0894cb14d6b54_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '69', '399', '旗袍式印花夏季连衣裙');
INSERT INTO `allgoodlist` VALUES ('9', 'https://goods5.juancdn.com/goods/200302/8/5/5e5c777733b089335379f552_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '79', '109', '女童黑色套装');
INSERT INTO `allgoodlist` VALUES ('10', 'https://goods1.juancdn.com/goods/200214/0/d/5e463cddb6f8ea33ad60471c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '199', '时尚磨毛牛仔半身裙');
INSERT INTO `allgoodlist` VALUES ('11', 'https://goods6.juancdn.com/goods/190402/a/1/5ca322db33b0897ef1781766_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '35', '99', '女童公主皮鞋');
INSERT INTO `allgoodlist` VALUES ('12', 'https://goods7.juancdn.com/goods/200305/c/1/5e60952633b0897bbd5e55b2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '49', '98', '网红短袖针织衫女薄款');
INSERT INTO `allgoodlist` VALUES ('13', 'https://goods4.juancdn.com/goods/181107/6/0/5be2324c33b0893262308940_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '24', '48', '玫瑰碧根果120g*3袋');
INSERT INTO `allgoodlist` VALUES ('14', 'https://goods1.juancdn.com/goods/180411/1/0/5acde28ba9fcf86b6c1459ed_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '7', '18', '成人弟子规行书字帖');
INSERT INTO `allgoodlist` VALUES ('15', 'https://goods4.juancdn.com/goods/181107/7/4/5be2454d33b08930c144c7b2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '72', '159', '玫瑰开心果250g*4罐');
INSERT INTO `allgoodlist` VALUES ('16', 'https://goods8.juancdn.com/bao/170331/f/3/58de2000ad0a49b2838b45bb_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '168', '韩后有机消纹眼精华');
INSERT INTO `allgoodlist` VALUES ('17', 'https://goods3.juancdn.com/tao/200428/4/6/5ea7c064b6f8ea1cf278d77d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '118', '236', '螺旋扎染掉肩短袖T恤');
INSERT INTO `allgoodlist` VALUES ('18', 'https://goods5.juancdn.com/goods/181024/8/2/5bd0505733b08908f5744927_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '156', '320', '菲洛嘉 慕斯洗面奶');
INSERT INTO `allgoodlist` VALUES ('19', 'https://goods5.juancdn.com/goods/200401/9/c/5e84903a33b08931f9237c03_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '299', '高帮鞋板鞋帆布鞋男鞋');
INSERT INTO `allgoodlist` VALUES ('20', 'https://goods2.juancdn.com/goods/200302/3/f/5e5c925f33b08934150cdba2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '59', '99', '女童绿腰带破洞阔腿');
INSERT INTO `allgoodlist` VALUES ('21', 'https://goods1.juancdn.com/goods/200329/0/c/5e7f942233b0896ef57bb038_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '39', '198', '蝴蝶结包头绒面半拖鞋');
INSERT INTO `allgoodlist` VALUES ('22', 'https://goods3.juancdn.com/goods/190515/5/6/5cdb7b1933b089247f02a7e9_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '298', '方根尖头后空方根凉鞋');
INSERT INTO `allgoodlist` VALUES ('23', 'https://goods4.juancdn.com/goods/180404/6/c/5ac43da38150a17a4d468c9b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '65', '459', '一字编织扣带坡跟凉鞋');
INSERT INTO `allgoodlist` VALUES ('24', 'https://goods2.juancdn.com/goods/200521/2/5/5ec69cf233b0895b1814d921_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '39', '198', '平底水钻人字拖一字拖');
INSERT INTO `allgoodlist` VALUES ('25', 'https://goods1.juancdn.com/goods/200418/0/7/5e9b217ab6f8ea0a21265f82_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '39', '198', '花朵平底编织罗马凉鞋');
INSERT INTO `allgoodlist` VALUES ('26', 'https://goods4.juancdn.com/goods/200122/7/7/5e282a17b6f8ea62f914a3f0_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '498', '细高跟婚鞋亮片高跟鞋');
INSERT INTO `allgoodlist` VALUES ('27', 'https://goods8.juancdn.com/tao/200504/f/9/5eafbd97b6f8ea6e1e3bbe11_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '59', '199', '达芙妮斜挎包单肩包女');
INSERT INTO `allgoodlist` VALUES ('28', 'https://goods5.juancdn.com/tao/200504/9/8/5eafbe34b6f8ea23b13b4239_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '199', '达芙妮小方包斜挎包女');
INSERT INTO `allgoodlist` VALUES ('29', 'https://goods3.juancdn.com/tao/200504/4/3/5eafbda733b089678f5af5c3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '199', '达芙妮单肩包手提包');
INSERT INTO `allgoodlist` VALUES ('30', 'https://goods4.juancdn.com/goods/191029/7/c/5db7d0dab6f8ea64274a6ed7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '139', '569', '时尚多尺寸pc拉杆箱');
INSERT INTO `allgoodlist` VALUES ('31', 'https://goods7.juancdn.com/goods/181123/c/7/5bf7e223b6f8ea69122b9784_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '229', '796', '品质万向轮时尚登机箱');
INSERT INTO `allgoodlist` VALUES ('32', 'https://goods1.juancdn.com/goods/190219/1/6/5c6bd3b6b6f8ea269a5b740b_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '296', '986', '铝框海关锁拉杆箱新款');
INSERT INTO `allgoodlist` VALUES ('33', 'https://goods1.juancdn.com/bao/160711/0/1/57837eb4151ad1f5218b4580_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '169', '1780', '全棉贡缎提花四件套');
INSERT INTO `allgoodlist` VALUES ('34', 'https://goods5.juancdn.com/goods/200522/9/f/5ec77ac3b6f8ea1300401bec_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '11', '60', '玉儿本色840克卷纸');
INSERT INTO `allgoodlist` VALUES ('35', 'https://goods1.juancdn.com/goods/190903/1/6/5d6dce06b6f8ea6ab506690d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '13.6', '55', '可爱家居家用塑料拖鞋');
INSERT INTO `allgoodlist` VALUES ('36', 'https://goods7.juancdn.com/goods/180423/c/c/5add534133b08924ac13ce0e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '58', '411', '简易实木衣柜布衣柜');
INSERT INTO `allgoodlist` VALUES ('37', 'https://goods5.juancdn.com/bao/160424/9/d/571c3f0392be596e688b4577_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '9.9', '20', '维达130抽抽纸');
INSERT INTO `allgoodlist` VALUES ('38', 'https://goods6.juancdn.com/goods/191028/b/2/5db64a1fb6f8ea128c49cbb8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '25.6', '99', '创意个性双耳懒人闹钟');
INSERT INTO `allgoodlist` VALUES ('39', 'https://goods6.juancdn.com/goods/180827/b/d/5b83f586b6f8ea61a54d516a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '9.9', '39', '居民户口保护皮套');
INSERT INTO `allgoodlist` VALUES ('40', 'https://goods8.juancdn.com/goods/190823/f/5/5d5f910233b0896d931f8fcc_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '19.8', '59', '简约LED迷你创意台灯');
INSERT INTO `allgoodlist` VALUES ('41', 'https://goods3.juancdn.com/goods/200405/5/0/5e89bbf933b089108a633cf5_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '8.8', '155', '家用成人加粗衣架50个');
INSERT INTO `allgoodlist` VALUES ('42', 'https://goods4.juancdn.com/goods/190907/6/5/5d733eb8b6f8ea578779a52b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '15.8', '99', '客厅垃圾桶分类神器');
INSERT INTO `allgoodlist` VALUES ('43', 'https://goods6.juancdn.com/goods/180410/b/4/5acc34bd8150a17cbd74a069_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49.8', '423', '衣帽架多功能置物衣架');
INSERT INTO `allgoodlist` VALUES ('44', 'https://goods5.juancdn.com/goods/180813/9/e/5b71561a33b08951967ed1be_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '38', '129', '【买2送1】安神阿胶');
INSERT INTO `allgoodlist` VALUES ('45', 'https://goods4.juancdn.com/goods/191120/6/1/5dd50d3a33b0895f1a1d6283_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '39.9', '288', '衣柜简易布衣柜收纳柜');
INSERT INTO `allgoodlist` VALUES ('46', 'https://goods8.juancdn.com/goods/200420/e/3/5e9d4c5133b08942ab1c50d2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '15.9', '79', '扬子迷你USB电风扇限');
INSERT INTO `allgoodlist` VALUES ('47', 'https://goods6.juancdn.com/goods/191112/a/3/5dca38b833b08963d059038a_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '11.9', '199', '托玛琳自发热钢板护腰');
INSERT INTO `allgoodlist` VALUES ('48', 'https://goods3.juancdn.com/goods/191112/5/a/5dca3c8bb6f8ea1e1d62875d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '8.9', '99', '多功能充电修脚磨脚器');
INSERT INTO `allgoodlist` VALUES ('49', 'https://goods4.juancdn.com/goods/180108/6/6/5a52f573a9fcf862d9185d26_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '79', '188', '触摸屏正品电磁炉家用');
INSERT INTO `allgoodlist` VALUES ('50', 'https://goods2.juancdn.com/goods/200413/2/e/5e93c0c0b6f8ea34d05f218e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '39', '199', '先科（SAST）挂烫机限');
INSERT INTO `allgoodlist` VALUES ('51', 'https://goods3.juancdn.com/goods/191112/4/1/5dca3aec33b0896bf1233afc_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '12.9', '399', '预防近视眼部护眼仪');
INSERT INTO `allgoodlist` VALUES ('52', 'https://goods6.juancdn.com/goods/180330/a/9/5abd36dca9fcf8959c5a1e6e_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '6.9', '89', '80贴艾灸贴养身瘦身贴');
INSERT INTO `allgoodlist` VALUES ('53', 'https://goods3.juancdn.com/goods/200225/4/7/5e5537a9b6f8ea6a4c346e94_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '2999', '4199', '美的大2匹3级能效柜机');
INSERT INTO `allgoodlist` VALUES ('54', 'https://goods2.juancdn.com/goods/191221/2/2/5dfe00c233b0897be16f9e78_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '1799', '2899', '美的智弧1.5匹3级变频');
INSERT INTO `allgoodlist` VALUES ('55', 'https://goods8.juancdn.com/goods/180310/f/3/5aa338118150a15fde771fe3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '55', '188', '时尚免打孔置物架刀架');
INSERT INTO `allgoodlist` VALUES ('56', 'https://goods3.juancdn.com/goods/180226/5/e/5a93b8cba9fcf820100de51e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '650', '3200', '智能恒温燃气热水器');
INSERT INTO `allgoodlist` VALUES ('57', 'https://goods5.juancdn.com/goods/171109/8/6/5a0432158150a14dca691853_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '1339', '1799', '自动清洗油烟机灶套装');
INSERT INTO `allgoodlist` VALUES ('58', 'https://goods6.juancdn.com/goods/170926/b/e/59ca0072a9fcf850bd4aba9b_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '21.9', '109', '未来家匀热电吹风机');
INSERT INTO `allgoodlist` VALUES ('59', 'https://goods8.juancdn.com/goods/180310/f/3/5aa338118150a15fde771fe3_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '55', '188', '时尚免打孔置物架刀架');
INSERT INTO `allgoodlist` VALUES ('60', 'https://goods3.juancdn.com/goods/180226/5/e/5a93b8cba9fcf820100de51e_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '650', '3200', '智能恒温燃气热水器');
INSERT INTO `allgoodlist` VALUES ('61', 'https://goods7.juancdn.com/goods/171108/c/8/5a026b1ba9fcf83c391ad862_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '929', '1687', '侧吸式油烟机套餐');
INSERT INTO `allgoodlist` VALUES ('62', 'https://goods1.juancdn.com/goods/171108/1/f/5a026d428150a14cee7f4c73_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '869', '1698', '智能触控油烟机灶套装');
INSERT INTO `allgoodlist` VALUES ('63', 'https://goods5.juancdn.com/goods/180311/8/9/5aa495bf8150a10d957b3060_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '318', '799', '数码储水式电热水器');
INSERT INTO `allgoodlist` VALUES ('64', 'https://goods8.juancdn.com/goods/180305/e/d/5a9d0a49a9fcf84d6237aec8_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '59', '199', '未来家T型时尚吹风机');
INSERT INTO `allgoodlist` VALUES ('65', 'https://goods1.juancdn.com/goods/180207/0/d/5a7a95368150a132c42f2735_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '650', '1199', '恒温变频燃气热水器');

-- ----------------------------
-- Table structure for `indexgoodlist`
-- ----------------------------
DROP TABLE IF EXISTS `indexgoodlist`;
CREATE TABLE `indexgoodlist` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `newprice` varchar(5) NOT NULL,
  `oldprice` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexgoodlist
-- ----------------------------
INSERT INTO `indexgoodlist` VALUES ('1', 'https://goods6.juancdn.com/goods/200303/b/d/5e5db131b6f8ea45ac5e34da_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '60', '199', '持证美白淡斑精华30粒');
INSERT INTO `indexgoodlist` VALUES ('2', 'https://goods7.juancdn.com/goods/180330/c/f/5abde038a9fcf8b6d22d50b3_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '69', '168', '四级鞋童鞋女学生鞋');
INSERT INTO `indexgoodlist` VALUES ('3', 'https://goods8.juancdn.com/goods/200317/f/e/5e703c7533b089155a6a59e4_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '499', '男士纯色短袖T桖');
INSERT INTO `indexgoodlist` VALUES ('4', 'https://goods4.juancdn.com/goods/200323/6/1/5e77a024b6f8ea22c2643db6_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '298', '亮面粗高跟单鞋女凉鞋');
INSERT INTO `indexgoodlist` VALUES ('5', 'https://goods3.juancdn.com/goods/200428/5/1/5ea7e3e633b0891937392728_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '29', '99', '男士夏季纯棉大码T恤');
INSERT INTO `indexgoodlist` VALUES ('6', 'https://goods8.juancdn.com/goods/200118/e/0/5e22a80833b08922366c60b7_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '55', '199', '条纹撞色休闲铅笔裤');
INSERT INTO `indexgoodlist` VALUES ('7', 'https://goods3.juancdn.com/goods/200521/5/d/5ec6a3bb33b0895f781d41a4_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '298', '千鸟格一字粗高跟凉鞋');
INSERT INTO `indexgoodlist` VALUES ('8', 'https://goods7.juancdn.com/goods/200428/d/6/5ea7dbd833b0894cb14d6b54_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '69', '399', '旗袍式印花夏季连衣裙');
INSERT INTO `indexgoodlist` VALUES ('9', 'https://goods5.juancdn.com/goods/200302/8/5/5e5c777733b089335379f552_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '79', '109', '女童黑色套装');
INSERT INTO `indexgoodlist` VALUES ('10', 'https://goods1.juancdn.com/goods/200214/0/d/5e463cddb6f8ea33ad60471c_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '199', '时尚磨毛牛仔半身裙');
INSERT INTO `indexgoodlist` VALUES ('11', 'https://goods6.juancdn.com/goods/190402/a/1/5ca322db33b0897ef1781766_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '35', '99', '女童公主皮鞋');
INSERT INTO `indexgoodlist` VALUES ('12', 'https://goods7.juancdn.com/goods/200305/c/1/5e60952633b0897bbd5e55b2_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '49', '98', '网红短袖针织衫女薄款');
INSERT INTO `indexgoodlist` VALUES ('13', 'https://goods4.juancdn.com/goods/181107/6/0/5be2324c33b0893262308940_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '24', '48', '玫瑰碧根果120g*3袋');
INSERT INTO `indexgoodlist` VALUES ('14', 'https://goods1.juancdn.com/goods/180411/1/0/5acde28ba9fcf86b6c1459ed_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '7', '18', '成人弟子规行书字帖');
INSERT INTO `indexgoodlist` VALUES ('15', 'https://goods4.juancdn.com/goods/181107/7/4/5be2454d33b08930c144c7b2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '72', '159', '玫瑰开心果250g*4罐');
INSERT INTO `indexgoodlist` VALUES ('16', 'https://goods8.juancdn.com/bao/170331/f/3/58de2000ad0a49b2838b45bb_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '49', '168', '韩后有机消纹眼精华');
INSERT INTO `indexgoodlist` VALUES ('17', 'https://goods3.juancdn.com/tao/200428/4/6/5ea7c064b6f8ea1cf278d77d_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '118', '236', '螺旋扎染掉肩短袖T恤');
INSERT INTO `indexgoodlist` VALUES ('18', 'https://goods5.juancdn.com/goods/181024/8/2/5bd0505733b08908f5744927_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '156', '320', '菲洛嘉 慕斯洗面奶');
INSERT INTO `indexgoodlist` VALUES ('19', 'https://goods5.juancdn.com/goods/200401/9/c/5e84903a33b08931f9237c03_800x800.jpg?iopcmd=thumbnail&type=11&height=310&width=310%7Ciopcmd=convert&Q=88&dst=jpg', '59', '299', '高帮鞋板鞋帆布鞋男鞋');
INSERT INTO `indexgoodlist` VALUES ('20', 'https://goods2.juancdn.com/goods/200302/3/f/5e5c925f33b08934150cdba2_800x800.jpg?imageMogr2/thumbnail/310x310!/quality/88!/format/jpg', '59', '99', '女童绿腰带破洞阔腿');

-- ----------------------------
-- Table structure for `registry`
-- ----------------------------
DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `sid` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry
-- ----------------------------
INSERT INTO `registry` VALUES ('1', 'zhangsan', '123456', '2020-05-13 11:48:00');
INSERT INTO `registry` VALUES ('2', 'zhangsan', '123456', '2020-05-13 11:48:16');
INSERT INTO `registry` VALUES ('3', 'zhangsan', '123456', '2020-05-13 11:48:22');
INSERT INTO `registry` VALUES ('4', 'zhujiapeng', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2020-05-13 11:51:31');
INSERT INTO `registry` VALUES ('5', '2318018520', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-06-03 18:54:24');
INSERT INTO `registry` VALUES ('8', '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-06-03 19:29:17');
INSERT INTO `registry` VALUES ('9', '1234567', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2020-06-03 19:30:13');
INSERT INTO `registry` VALUES ('10', '1111', '8cb2237d0679ca88db6464eac60da96345513964', '2020-06-03 19:35:42');
INSERT INTO `registry` VALUES ('11', '朱家鹏1', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2020-06-03 19:41:32');
INSERT INTO `registry` VALUES ('12', '111111', '111111', '2020-06-03 21:29:25');
INSERT INTO `registry` VALUES ('13', 'meimei', 'meimei', '2020-06-04 14:55:10');
INSERT INTO `registry` VALUES ('14', 'zhujiapeng', 'weiaiying', '2020-06-04 15:23:26');
INSERT INTO `registry` VALUES ('15', 'zjp', '123456', '2020-06-04 15:44:41');
INSERT INTO `registry` VALUES ('16', 'jim', 'ming1314520', '2020-06-04 18:44:55');
INSERT INTO `registry` VALUES ('17', 'Nihao', '123456', '2020-06-08 15:11:16');
INSERT INTO `registry` VALUES ('18', 'woyouyigem', '123456', '2020-06-08 15:21:54');
INSERT INTO `registry` VALUES ('19', '2318018520', '123456', '2020-06-08 16:13:23');
INSERT INTO `registry` VALUES ('20', '', '', '2020-06-08 16:59:15');
INSERT INTO `registry` VALUES ('21', '庄涛', '123456', '2020-06-08 17:02:07');
INSERT INTO `registry` VALUES ('22', '庄涛', '123456', '2020-06-08 17:02:07');
INSERT INTO `registry` VALUES ('23', '123', '123', '2020-06-08 22:15:01');
INSERT INTO `registry` VALUES ('24', '熟悉', '123456', '2020-06-09 09:41:54');
INSERT INTO `registry` VALUES ('25', 'sbsbsb', 'sbsbsb', '2020-06-10 10:43:47');
INSERT INTO `registry` VALUES ('26', '', '', '2020-06-11 15:01:47');
INSERT INTO `registry` VALUES ('27', '', '', '2020-06-11 15:01:47');
INSERT INTO `registry` VALUES ('28', '', '', '2020-06-11 15:01:47');
INSERT INTO `registry` VALUES ('29', '', '', '2020-06-11 15:01:47');
INSERT INTO `registry` VALUES ('30', '', '', '2020-06-11 15:02:07');
INSERT INTO `registry` VALUES ('31', '', '', '2020-06-11 15:49:12');
INSERT INTO `registry` VALUES ('32', '', '', '2020-06-11 15:49:12');
INSERT INTO `registry` VALUES ('33', '', '', '2020-06-11 15:49:12');
INSERT INTO `registry` VALUES ('34', '', '', '2020-06-11 15:49:12');
INSERT INTO `registry` VALUES ('35', '', '', '2020-06-11 16:20:57');
INSERT INTO `registry` VALUES ('36', '', '', '2020-06-11 16:26:47');
INSERT INTO `registry` VALUES ('37', '', '', '2020-06-11 16:29:52');
INSERT INTO `registry` VALUES ('38', '11111111', '123456', '2020-06-11 16:42:34');

-- ----------------------------
-- Table structure for `taobaogoods`
-- ----------------------------
DROP TABLE IF EXISTS `taobaogoods`;
CREATE TABLE `taobaogoods` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float(7,2) unsigned NOT NULL,
  `sailnumber` tinyint(3) unsigned NOT NULL,
  `piclisturl` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taobaogoods
-- ----------------------------
INSERT INTO `taobaogoods` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i2/TB1gHopsOAKL1JjSZFoYXGgCFXa_M2.SS2_200x200q90.jpg_.webp', '怀孕期居家无钢圈中长款宽松孕妇打底衫长袖打底t恤上衣女秋冬装', '39.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i4/307116571/TB2vHgNaeUkyKJjSsphXXbdaVXa_!!307116571.jpg_200x200q90.jpg_.webp', '高帮男女运动拳击贴肤软鞋沙滩鞋溯溪涉水防滑游泳潜水浮潜漂流鞋', '35.84', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/i3/110713146/O1CN01mxyc7H1Z6ubjKHiO2_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '一次性吸管整箱6000支可弯饮料果汁豆浆吸管', '59.00', '112', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i1/2275024826/TB2xNbvdxlmpuFjSZPfXXc9iXXa_!!2275024826.jpg_200x200q90.jpg_.webp', '正品墨西哥5A净水蓝珀手串纯天然蜜蜡佛珠琥珀圆珠单圈手链男女款', '58.99', '10', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i3/2056173505/TB1SPKxfuSSBuNjy0FlXXbBpVXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '夏季透气洞洞鞋女沙滩鞋防滑轻便鸟巢拖鞋户外速干涉水鞋女度假鞋', '19.99', '88', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('9', 'https://img.alicdn.com/bao/uploaded/i4/TB1d5OEGFXXXXbFXFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '折叠懒人沙发 可爱创意日式榻榻米 客厅卧室飘窗组合随心拼沙发椅', '250.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('10', 'https://img.alicdn.com/bao/uploaded/i2/1598695834/TB21g63bbZnBKNjSZFGXXbt3FXa_!!1598695834.jpg_200x200q90.jpg_.webp', '北欧单人现代简约布艺懒人小户型沙发迷你阳台卧室拆洗休闲沙发椅', '228.00', '102', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('11', 'https://img.alicdn.com/bao/uploaded/i1/874114626/TB2M4dsg6uhSKJjSspjXXci8VXa_!!874114626.jpg_200x200q90.jpg_.webp', '多功能布艺床上懒人沙发单人飘窗榻榻米网咖电脑无腿可调节折叠椅', '218.00', '42', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('12', 'https://img.alicdn.com/bao/uploaded/i3/43844436/O1CN01PWybgq1idjXJyMYCd_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '美克美家公园大道美式轻奢实木圆餐桌软包实', '2759.00', '38', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('13', 'https://gma.alicdn.com/bao/uploaded/i3/1756006063748529324/TB2iD.PtbVkpuFjSspcXXbSMVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '对抗服足球篮球训练背心成人儿童分队组训练', '12.00', '123', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('14', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01v962me1lbOJCKSnFq_!!0-saturn_solar.jpg_200x200.jpg_.webp', '电动洗鼻器壶机仪冲鼻水流喷雾窦腔成人儿童', '77.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('15', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01WDhG3z1lbOJXP9x4S_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国SinuPulse洗鼻仪洗鼻瓶洗鼻壶', '123.00', '12', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('16', 'https://gma.alicdn.com/bao/uploaded/i3/324010021/O1CN01ZmGWv41C1euHnoSMT_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国NOWFIT艾尔健椭圆机', '89.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('17', 'https://gma.alicdn.com/bao/uploaded/i1/43610982/O1CN01HeUhk31J7nWXh4xoS_!!0-saturn_solar.jpg_200x200.jpg_.webp', '羽毛球服套装男女款乒乓球夏跑步运动服定制', '35.00', '66', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('18', 'https://gma.alicdn.com/bao/uploaded/i2/28340651/O1CN01DXWul61GgCQgFRmI7_!!0-saturn_solar.jpg_200x200.jpg_.webp', '跪乳羊秋季运动会儿童校服套装小学生运动服', '442.00', '89', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/i1/2378279334/TB1BQpcSVXXXXajaXXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '新娘敬酒服2020新款时尚短款宴会聚会结婚红色连衣裙修身显瘦礼服', '110.00', '56', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '预售kikc连帽风衣2019秋季新款', '379.00', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `taobaogoods` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/i1/212939229/TB1vkxrihTI8KJjSspiXXbM4FXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', 'Debbie Bliss Rialto Lace 荷叶披肩 毛线DIY材料包 送中文图解', '256.00', '24', null);
INSERT INTO `taobaogoods` VALUES ('22', 'https://img.alicdn.com/bao/uploaded/i3/TB1vR00NXXXXXc7XFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '敬酒服新娘旗袍2020新款夏季短款中式礼服红色新娘秀禾服小个子女', '56.00', '44', null);
INSERT INTO `taobaogoods` VALUES ('23', 'https://img.alicdn.com/bao/uploaded/i3/2023859078/TB2YqBZXxZIL1JjSZFNXXXupXXa_!!2023859078.jpg_200x200q90.jpg_.webp', '新款影楼拖尾婚纱礼服主题摄影写真拍照轻纱服装艺考演出蓬蓬裙女', '635.00', '98', null);
INSERT INTO `taobaogoods` VALUES ('24', 'https://img.alicdn.com/bao/uploaded/i4/120414676/O1CN01d7VzLg1kPeakz0OJm_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '仙宝丽小金条口红变色唇膏淡化唇纹滋润', '356.00', '45', null);
