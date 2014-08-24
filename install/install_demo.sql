-- fanwe SQL Dump Program
-- Apache/2.2.8 (Win32) PHP/5.2.6
-- 
-- DATE : 2013-01-22 17:51:20
-- MYSQL SERVER VERSION : 5.0.51b-community-nt
-- PHP VERSION : apache2handler
-- Vol : 1


DROP TABLE IF EXISTS `fanwe_admin`;
CREATE TABLE `fanwe_admin` (
  `id` int(11) NOT NULL auto_increment,
  `adm_name` varchar(255) NOT NULL,
  `adm_password` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `unique_adm_name` (`adm_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_admin` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3','1','0','4','1352225405','127.0.0.1');
DROP TABLE IF EXISTS `fanwe_adv`;
CREATE TABLE `fanwe_adv` (
  `id` int(11) NOT NULL auto_increment,
  `tmpl` varchar(255) NOT NULL,
  `adv_id` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_table` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tmpl` (`tmpl`),
  KEY `adv_id` (`adv_id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_table` (`rel_table`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_api_login`;
CREATE TABLE `fanwe_api_login` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bicon` varchar(255) NOT NULL,
  `is_weibo` tinyint(1) NOT NULL,
  `dispname` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_api_login` VALUES ('13','新浪api登录接口','a:3:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";s:7:\"app_url\";s:0:\"\";}','Sina','./public/attachment/201210/13/17/50792e5bbc901.gif','./public/attachment/201210/13/16/5079277a72c9d.gif','1','新浪微博');
INSERT INTO `fanwe_api_login` VALUES ('14','腾讯微博登录插件','a:3:{s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";s:7:\"app_url\";s:0:\"\";}','Tencent','./public/attachment/201211/06/11/509882825c183.png','./public/attachment/201211/06/11/50988287b1890.png','1','腾讯微博');
DROP TABLE IF EXISTS `fanwe_auto_cache`;
CREATE TABLE `fanwe_auto_cache` (
  `cache_key` varchar(100) NOT NULL,
  `cache_type` varchar(100) NOT NULL,
  `cache_data` text NOT NULL,
  `cache_time` int(11) NOT NULL,
  PRIMARY KEY  (`cache_key`,`cache_type`),
  KEY `cache_type` (`cache_type`),
  KEY `cache_key` (`cache_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_conf`;
CREATE TABLE `fanwe_conf` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `input_type` tinyint(1) NOT NULL COMMENT '配置输入的类型 0:文本输入 1:下拉框输入 2:图片上传 3:编辑器',
  `value_scope` text NOT NULL COMMENT '取值范围',
  `is_effect` tinyint(1) NOT NULL,
  `is_conf` tinyint(1) NOT NULL COMMENT '是否可配置 0: 可配置  1:不可配置',
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_conf` VALUES ('1','DEFAULT_ADMIN','admin','1','0','','1','0','0');
INSERT INTO `fanwe_conf` VALUES ('2','URL_MODEL','0','1','1','0,1','1','1','3');
INSERT INTO `fanwe_conf` VALUES ('3','AUTH_KEY','fanwe','1','0','','1','1','4');
INSERT INTO `fanwe_conf` VALUES ('4','TIME_ZONE','8','1','1','0,8','1','1','1');
INSERT INTO `fanwe_conf` VALUES ('5','ADMIN_LOG','1','1','1','0,1','0','1','0');
INSERT INTO `fanwe_conf` VALUES ('6','DB_VERSION','1.1','0','0','','1','0','0');
INSERT INTO `fanwe_conf` VALUES ('7','DB_VOL_MAXSIZE','8000000','1','0','','1','1','11');
INSERT INTO `fanwe_conf` VALUES ('8','WATER_MARK','./public/attachment/201011/4cdde85a27105.gif','2','2','','1','1','48');
INSERT INTO `fanwe_conf` VALUES ('10','BIG_WIDTH','500','2','0','','0','0','49');
INSERT INTO `fanwe_conf` VALUES ('11','BIG_HEIGHT','500','2','0','','0','0','50');
INSERT INTO `fanwe_conf` VALUES ('12','SMALL_WIDTH','200','2','0','','0','0','51');
INSERT INTO `fanwe_conf` VALUES ('13','SMALL_HEIGHT','200','2','0','','0','0','52');
INSERT INTO `fanwe_conf` VALUES ('14','WATER_ALPHA','75','2','0','','1','1','53');
INSERT INTO `fanwe_conf` VALUES ('15','WATER_POSITION','4','2','1','1,2,3,4,5','1','1','54');
INSERT INTO `fanwe_conf` VALUES ('16','MAX_IMAGE_SIZE','3000000','2','0','','1','1','55');
INSERT INTO `fanwe_conf` VALUES ('17','ALLOW_IMAGE_EXT','jpg,gif,png','2','0','','1','1','56');
INSERT INTO `fanwe_conf` VALUES ('18','BG_COLOR','#ffffff','2','0','','0','0','57');
INSERT INTO `fanwe_conf` VALUES ('19','IS_WATER_MARK','1','2','1','0,1','1','1','58');
INSERT INTO `fanwe_conf` VALUES ('20','TEMPLATE','fanwe','1','0','','1','1','17');
INSERT INTO `fanwe_conf` VALUES ('21','SITE_LOGO','./public/attachment/201210/12/11/5077943312beb.jpg','1','2','','1','1','19');
INSERT INTO `fanwe_conf` VALUES ('173','SEO_TITLE','预购一个梦想','1','0','','1','1','20');
INSERT INTO `fanwe_conf` VALUES ('25','REPLY_ADDRESS','info@fanwe.com','3','0','','1','1','77');
INSERT INTO `fanwe_conf` VALUES ('23','MAIL_ON','1','3','1','0,1','1','1','72');
INSERT INTO `fanwe_conf` VALUES ('24','SMS_ON','0','3','1','0,1','1','1','78');
INSERT INTO `fanwe_conf` VALUES ('26','PUBLIC_DOMAIN_ROOT','','2','0','','1','1','59');
INSERT INTO `fanwe_conf` VALUES ('27','APP_MSG_SENDER_OPEN','0','1','1','0,1','1','1','9');
INSERT INTO `fanwe_conf` VALUES ('28','ADMIN_MSG_SENDER_OPEN','0','1','1','0,1','1','1','10');
INSERT INTO `fanwe_conf` VALUES ('29','GZIP_ON','0','1','1','0,1','1','1','2');
INSERT INTO `fanwe_conf` VALUES ('42','SITE_NAME','点火时间','1','0','','1','1','1');
INSERT INTO `fanwe_conf` VALUES ('30','CACHE_ON','1','1','1','0,1','1','1','7');
INSERT INTO `fanwe_conf` VALUES ('31','EXPIRED_TIME','0','1','0','','1','1','5');
INSERT INTO `fanwe_conf` VALUES ('32','TMPL_DOMAIN_ROOT','','2','0','0','0','0','62');
INSERT INTO `fanwe_conf` VALUES ('33','CACHE_TYPE','File','1','1','File,Xcache,Memcached','1','1','7');
INSERT INTO `fanwe_conf` VALUES ('34','MEMCACHE_HOST','127.0.0.1:11211','1','0','','1','1','8');
INSERT INTO `fanwe_conf` VALUES ('35','IMAGE_USERNAME','admin','2','0','','1','1','60');
INSERT INTO `fanwe_conf` VALUES ('36','IMAGE_PASSWORD','admin','2','4','','1','1','61');
INSERT INTO `fanwe_conf` VALUES ('37','DEAL_MSG_LOCK','0','0','0','','0','0','0');
INSERT INTO `fanwe_conf` VALUES ('38','SEND_SPAN','2','1','0','','1','1','85');
INSERT INTO `fanwe_conf` VALUES ('39','TMPL_CACHE_ON','1','1','1','0,1','1','1','6');
INSERT INTO `fanwe_conf` VALUES ('40','DOMAIN_ROOT','','1','0','','1','0','10');
INSERT INTO `fanwe_conf` VALUES ('41','COOKIE_PATH','/','1','0','','1','1','10');
INSERT INTO `fanwe_conf` VALUES ('43','INTEGRATE_CFG','','0','0','','1','0','0');
INSERT INTO `fanwe_conf` VALUES ('44','INTEGRATE_CODE','','0','0','','1','0','0');
INSERT INTO `fanwe_conf` VALUES ('172','PAY_RADIO','0.1','3','0','','1','1','10');
INSERT INTO `fanwe_conf` VALUES ('176','SITE_LICENSE','点火时间 - fanwe.com 版权所有','1','0','','1','1','22');
INSERT INTO `fanwe_conf` VALUES ('174','SEO_KEYWORD','SEO关键词','1','0','','1','1','21');
INSERT INTO `fanwe_conf` VALUES ('175','SEO_DESCRIPTION','SEO描述','1','0','','1','1','22');
DROP TABLE IF EXISTS `fanwe_deal`;
CREATE TABLE `fanwe_deal` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `name_match` text NOT NULL,
  `name_match_row` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `source_vedio` varchar(255) NOT NULL,
  `vedio` varchar(255) NOT NULL,
  `deal_days` int(11) NOT NULL COMMENT '上线天数，仅提供管理员审核参考',
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `limit_price` double(20,4) NOT NULL,
  `brief` text NOT NULL,
  `description` text NOT NULL,
  `comment_count` int(11) NOT NULL,
  `support_count` int(11) NOT NULL COMMENT '支持人数',
  `focus_count` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `log_count` int(11) NOT NULL,
  `support_amount` double(20,4) NOT NULL COMMENT '支持总金额，需大等于limit_price(不含运费)',
  `pay_amount` double(20,4) NOT NULL COMMENT '可发放金额，抽完佣金的可领金额（含运费，运费不抽佣金）\r\n即support_amount*佣金比率+delivery_fee_amount',
  `delivery_fee_amount` double(20,4) NOT NULL,
  `create_time` int(11) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `tags` text NOT NULL,
  `tags_match` text NOT NULL,
  `tags_match_row` text NOT NULL,
  `success_time` int(11) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `is_recommend` tinyint(1) NOT NULL COMMENT '推荐项目',
  `is_classic` tinyint(1) NOT NULL COMMENT '经典项目',
  `is_delete` tinyint(1) NOT NULL,
  `deal_extra_cache` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `begin_time` (`begin_time`),
  KEY `end_time` (`end_time`),
  KEY `is_effect` (`is_effect`),
  KEY `limit_price` (`limit_price`),
  KEY `comment_count` (`comment_count`),
  KEY `support_count` (`support_count`),
  KEY `focus_count` (`focus_count`),
  KEY `view_count` (`view_count`),
  KEY `log_count` (`log_count`),
  KEY `support_amount` (`support_amount`),
  KEY `create_time` (`create_time`),
  KEY `is_success` (`is_success`),
  KEY `cate_id` (`cate_id`),
  KEY `sort` (`sort`),
  KEY `is_recommend` (`is_recommend`),
  KEY `is_classic` (`is_classic`),
  KEY `is_delete` (`is_delete`),
  FULLTEXT KEY `tags_match` (`tags_match`),
  FULLTEXT KEY `name_match` (`name_match`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal` VALUES ('55','原创DIY桌面游戏《功夫》《黄金密码》期待您的支持','ux21151ux22827,ux26700ux38754,ux26399ux24453,ux23494ux30721,ux40644ux37329,ux25903ux25345,ux21407ux21019,ux28216ux25103,ux68ux73ux89,ux21407ux21019ux68ux73ux89ux26700ux38754ux28216ux25103ux12298ux21151ux22827ux12299ux12298ux40644ux37329ux23494ux30721ux12299ux26399ux24453ux24744ux30340ux25903ux25345,ux21407ux21019ux68ux73ux89ux26700ux38754ux28216ux25103ux12298ux21151ux22827ux12299ux12298ux40644ux37329ux23494ux30721ux12299ux26399ux24453ux24744ux30340ux25903ux25345,ux21407ux21019ux68ux73ux89ux26700ux38754ux28216ux25103ux12298ux21151ux22827ux12299ux12298ux40644ux37329ux23494ux30721ux12299ux26399ux24453ux24744ux30340ux25903ux25345','功夫,桌面,期待,密码,黄金,支持,原创,游戏,DIY,原创DIY桌面游戏《功夫》《黄金密码》期待您的支持,原创DIY桌面游戏《功夫》《黄金密码》期待您的支持,原创DIY桌面游戏《功夫》《黄金密码》期待您的支持','./public/attachment/201211/07/10/021e2f6812298468cfab78cbd07b90ee85.jpg','','','15','1351710606','1383765012','1','3000.0000','这次给大家带来的是我们自己原创的两个桌面游戏《功夫》和《黄金密码》，由于我们并非专业的桌游制作公司，希望大家能够喜欢并支持我们！','这次给大家带来的是我们自己原创的两个桌面游戏《功夫》和《黄金密码》，由于我们并非专业的桌游制作公司，所以在游戏的美术、包装、宣传等方面都会存在一些不足。但本次带来的两个作品都是我们利用几乎所有的业余时间尽心尽力制作出来的，希望大家能够喜欢并支持我们！<p><br />\r\n</p>\r\n<h3>我想要做什么</h3>\r\n<p>&nbsp; 桌面游戏是一种健康的休闲方式，你不用整天面对电脑的辐射，同时也让你可以不再过度沉迷于虚拟的网络世界中。因为桌面游戏方式的特殊性，能使你更加注重加强与人面对面的交流，提高自己的语言和沟通能力，还可以在现实生活中用这种轻松愉快的休闲方式结交更多的朋友。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;我们就是这样一群喜爱桌游，同时喜欢设计桌游的年轻人，我们并非专业的桌游制作团队，我们只是凭着对桌游的爱好开始了对桌游设计的探索。我们希望通过努力，将桌游的快乐带给更多喜欢轻松休闲、热爱生活的朋友。但是，我们的资金及能力有限，需要得到大家的帮助与支持，才能实现这样的梦想。也希望您在支持我们的同时收获一份快乐和惊喜！</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;我们这次将原创的桌面游戏《功夫》和《黄金密码》一起放到这里，希望得到大家的支持！&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><br />\r\n<img src=\"./public/attachment/201211/07/16/da4f6f7e11b249dcf71bf5e9c6a86d8a83o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n</p>\r\n<p>游戏人数：2-4人</p>\r\n<p>适合年龄：8+</p>\r\n<p>游戏时间：10-30分钟</p>\r\n<p>游戏类型：手牌管理</p>\r\n<p>游戏背景：你在游戏中扮演一名武者，灵活运用你掌握的功夫（手牌）和装备（装备牌）对抗其他的武者并最终打败他们。</p>\r\n<p>游戏目标：扣除敌方所有人物的体力为胜。</p>\r\n游戏配件：69张动作牌（手牌）、6张道具牌、2张血量牌（需自行制作）<p><br />\r\n</p>\r\n<p><img src=\"./public/attachment/201211/07/16/7a404c90f81ca1368ff0f5b24e26a5d781o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n</p>\r\n<p>游戏过程：游戏的每个回合分两个阶段，第一阶段为热身阶段，获得热身阶段胜利的玩家成为第二阶段（攻击阶段）的主导者，由他决定第二阶段如何进行。</p>\r\n<p>&nbsp;&nbsp;&nbsp;《功夫》用卡牌较好的模拟再现了格斗中的一些乐趣，比如热身阶段的猜招、攻击阶段一招一式的过招，同时结合手牌管理的一些特点，打出组合招式及连招，配合你获得的道具，最终战胜对手。在游戏过程中，当你取得一定的优势时，也不能掉以轻心，形式可能会因为你的任何一个破绽而发生逆转，这与格斗、搏击的情况十分相似。所以如何保持良好的心态，灵活的运用手牌才是这个游戏制胜的关键所在。（具体规则见最下方及本项目动态）</p>\r\n<p><br />\r\n</p>\r\n<p><br />\r\n</p>\r\n<p>游戏人数：3-4人</p>\r\n<p>适合年龄：8+</p>\r\n<p>游戏时间：20-40分钟</p>\r\n<p>游戏类型：逻辑推理、谜题设计</p>\r\n<p>游戏背景：二战时期，德军将一批黄金铸成金条，分别保存在3个金库里，并派重兵把守。为了得到这批黄金，美军重金收买了一个德军守卫为内奸，内奸成功获取了金库的密码破解方法，并将密码破解方法以暗号的形式告知了美军特工。但是，与此同时德军也发现了暗号，并且金库的守卫非常森严，解开金库密码的时间只有1分钟……玩家在这个游戏中分别扮演德军、德军内奸、美军特工。如何设计出德军看不懂，美军特工又能在1分钟内解出的暗号密码。就看你的表现啦！</p>\r\n<p>游戏目标：根据身份的不同，任务也不同。德军需解开密码保住金库，特工需设置密码阻止德军解密，美军需解开密码同时选择金库获得黄金。</p>\r\n<p>游戏配件：10张密码牌、12张空箱牌、24张黄金牌、沙漏1个、草稿纸和笔（自备）</p>\r\n<p>游戏过程：每人分别扮演一次特工、德军、美军，完成后计算每人所获得的黄金数量，黄金最多的玩家获胜。</p>\r\n<p><br />\r\n<br />\r\n</p>\r\n<p></p>','0','1','0','3','1','15.0000','18.5000','5.0000','1352229030','','','','功夫 桌面 期待 密码 黄金 支持 原创 游戏 DIY','ux21151ux22827,ux26700ux38754,ux26399ux24453,ux23494ux30721,ux40644ux37329,ux25903ux25345,ux21407ux21019,ux28216ux25103,ux68ux73ux89','功夫,桌面,期待,密码,黄金,支持,原创,游戏,DIY','0','0','8','福建','福州','17','0','fanwe','1','1','0','');
INSERT INTO `fanwe_deal` VALUES ('56','拥有自己的咖啡馆','ux21654ux21857ux39302,ux25317ux26377,ux33258ux24049,ux25317ux26377ux33258ux24049ux30340ux21654ux21857ux39302','咖啡馆,拥有,自己,拥有自己的咖啡馆','./public/attachment/201211/07/11/40e44eb97b0ca5aed5148e59c2cc8dcb95.jpg','','','30','1351711495','1384975499','1','5000.0000','每个人心目中都有一个属于自己的咖啡馆,我们也是.但我们想要的咖啡馆，又不仅仅是咖啡馆','<h3>关于我</h3>\r\n<p>每个人心目中都有一个属于自己的咖啡馆<br />\r\n我们也是<br />\r\n但我们想要的咖啡馆，又不仅仅是咖啡馆<br />\r\n这里除了售卖咖啡和甜点，还有旅行的梦想<br />\r\n我们想要一个“窝”，一个无论在出发前还是归来后随时开放的地方<br />\r\n梦想着有一天<br />\r\n我们可以带着咖啡的香气出发<br />\r\n又满载着旅行的收获回到充满咖啡香气的小“窝”</p>\r\n<h3>我想要做什么</h3>\r\n<p>以图文并茂的方式简洁生动地说明你的项目，让大家一目了然，这会决定是否将你的项目描述继续看下去。建议不超过300字。<br />\r\n</p>\r\n<p><img src=\"./public/attachment/201211/07/16/0482ef5836f6745af0f59ff40d40805765o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n<br />\r\n</p>\r\n<h3>为什么我需要你的支持</h3>\r\n<p>这是加分项。说说你的项目不同寻常的特色、资金用途、以及大家支持你的理由。这会让更多人能够支持你，不超过200个汉字。<br />\r\n<br />\r\n</p>\r\n<h3>我的承诺与回报</h3>\r\n让大家感到你对待项目的认真程度，鞭策你将项目执行最终成功。同时向大家展示一下你为支持者准备的回报，来吸引更多人支持你。<br />\r\n<br />\r\n<img src=\"./public/attachment/201211/07/16/2ae4c7149cfd31f12d91453713322f9076o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n<br />','0','11','1','4','1','5500.0000','4950.0000','0.0000','1352229954','','','','咖啡馆 拥有 自己','ux21654ux21857ux39302,ux25317ux26377,ux33258ux24049','咖啡馆,拥有,自己','1352230293','1','1','北京','东城区','18','0','fzmatthew','1','1','0','');
INSERT INTO `fanwe_deal` VALUES ('57','短片电影《Blind Love》','ux30701ux29255,ux30005ux24433,ux66ux108ux105ux110ux100,ux76ux111ux118ux101,ux30701ux29255ux30005ux24433ux12298ux66ux108ux105ux110ux100ux76ux111ux118ux101ux12299','短片,电影,Blind,Love,短片电影《Blind Love》','./public/attachment/201211/07/11/0c067c4522bba51595c324028be7070d11.jpg','http://player.youku.com/player.php/sid/XMzgyNjMzNDA4/v.swf','http://v.youku.com/v_show/id_XMzgyNjMzNDA4.html','30','1349034009','1383766813','1','3000.0000','我叫武秋辰， 美国圣地亚哥大学影视专业硕士毕业。这是我在毕业后的第一部独立电影作品，讲述了一个关于盲人画家的唯美爱情故事。','<p>我叫武秋辰， 美国圣地亚哥大学影视专业硕士毕业。这是我在毕业后的第一部独立电影作品，讲述了一个关于盲人画家的唯美爱情故事。</p>\r\n <p>这是一个需要爱与被爱的世界，然而在我们面对这纷繁复杂多变的世界时，我们如何过滤掉那迷乱双眼的尘沙找到真爱？我们在爱中得救，在爱中迷失。我们过度相信我们用双眼所见的，却忘记听从内心最真的感受！<br />\r\n<br />\r\n</p>\r\n<p>我们一路奔跑、一路追逐，生活的洪流把我们涌向未来不确定的方向，我们有着一双能望穿苍穹的眼睛，却不断的迷失在路途中。如果有一天我们的双眼失去光明……<br />\r\n<br />\r\n</p>\r\n<p>真爱是否还遥远？<br />\r\n<br />\r\n</p>\r\n<p>导演武秋辰将用电影语言为我们讲述一位盲人画家的爱情故事，如同她所写道的：“我们视觉正常的人很容易被表象所迷惑，而我们的触觉，听觉和嗅觉却非常的精准，给我们带来更丰富的感知。”当我们不仅凭双眼去认识这个世界的时候，也许答案就在那里！<br />\r\n<br />\r\n</p>\r\n<p>为了使影片更富深入性、更具专业性，导演请来了好莱坞的职业演员，就连剧中的盲人画像也由美国著名画家OlyaLusina特为此片创作。<br />\r\n<br />\r\n</p>\r\n<p>该片不仅是一个远赴美国实现梦想的中国女孩的心血之作，同时也深刻展现了一个盲人心中的世界，从“他”的角度为因爱迷失的人们找到了一个诗意的出口。<br />\r\n<br />\r\n</p>\r\n<p>在这里，真诚地感谢您的关注！关注武秋辰和她的《BlindLove》！<br />\r\n<br />\r\n</p>\r\n<h3>自我介绍<br />\r\n</h3>\r\n<p>我是一个在美国学电影做电影的中国女孩。在美国圣地亚哥大学电影系求学的过程中，我学会了编剧，导演，拍摄和剪辑，参与了几十部电影的创作。“盲爱”是我在硕士毕业后自编自导的第一部独立电影作品。</p>\r\n<p><br />\r\n</p>\r\n<p><img src=\"./public/attachment/201211/07/16/148cb883cbb170735c331125a96c11e162o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n</p>\r\n<p><br />\r\n</p>\r\n<p><img src=\"./public/attachment/201211/07/16/875016977d65ee2cc679ab0cfd7a7f6620o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n</p>','0','0','0','3','1','0.0000','0.0000','0.0000','1352230821','','','','短片 电影 Blind Love','ux30701ux29255,ux30005ux24433,ux66ux108ux105ux110ux100,ux76ux111ux118ux101','短片,电影,Blind,Love','0','0','3','福建','福州','17','0','fanwe','1','1','0','');
INSERT INTO `fanwe_deal` VALUES ('58','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！','ux21654ux21857ux39302,ux37325ux24314,ux20844ux30410,ux27969ux28010,ux21147ux37327,ux38656ux35201,ux22825ux20351,ux22823ux23478,ux27969ux28010ux29483ux30340ux23478ux8212ux29233ux22825ux20351ux20844ux30410ux21654ux21857ux39302ux30340ux37325ux24314ux38656ux35201ux22823ux23478ux30340ux21147ux37327ux65281,ux27969ux28010ux29483ux30340ux23478ux8212ux29233ux22825ux20351ux20844ux30410ux21654ux21857ux39302ux30340ux37325ux24314ux38656ux35201ux22823ux23478ux30340ux21147ux37327ux65281,ux27969ux28010ux29483ux30340ux23478ux8212ux29233ux22825ux20351ux20844ux30410ux21654ux21857ux39302ux30340ux37325ux24314ux38656ux35201ux22823ux23478ux30340ux21147ux37327ux65281,ux27969ux28010ux29483ux30340ux23478ux8212ux29233ux22825ux20351ux20844ux30410ux21654ux21857ux39302ux30340ux37325ux24314ux38656ux35201ux22823ux23478ux30340ux21147ux37327ux65281','咖啡馆,重建,公益,流浪,力量,需要,天使,大家,流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！,流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！,流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！,流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！','./public/attachment/201211/07/11/438813e6d75cb84c6b0df8ffbad7aa8c31.jpg','http://www.tudou.com/v/153527563/v.swf','http://www.tudou.com/listplay/i67lCgQt5nQ/i9toRdup3ok.html','50','1352145022','1385668225','1','3000.0000','爱天使成立的猫天使驿站三年多收养救助了两百余只的流浪猫并为它们找到了一个个温暖的家。','<p>爱天使成立的猫天使驿站三年多收养救助了两百余只的流浪猫并为它们找到了一个个温暖的家。爱天使是一种爱，更是一种生活！坚持个人信念的我一直努力活出这个世上不一般的价值人生。那就是不追求自己能拥有什么而在能为自己以外的生命带去什么。。。爱天使在今年因合同到期而到了转折点，重建是艰辛的却也坚信必将更加强大。</p>\r\n <h3>【关于我】——将救助流浪猫视为自己的事业！</h3>\r\n<p>首先做个自我介绍：</p>\r\n<p>我叫李文婷，英文名ANGELLI。</p>\r\n<p>是一名爱猫如命的“狂热分子”，</p>\r\n<p>作为流浪猫的代理麻麻已收养救助过两百余只猫咪；</p>\r\n<p>00年在大学校园宿舍开始拨号上网的网络生活，</p>\r\n<p>担任系学生会副主席及宣传部长等，</p>\r\n<p>参与系女篮队、校诗朗诵比赛、主持系选举活动，<br />\r\n</p>\r\n<p>组织带领系队作为一辩参加校辩论赛获得季军，</p>\r\n<p>毕业后于厦门海尔及三五互联等公司工作近六年。</p>\r\n<p>工作中一直表现突出主持公司千人晚会并荣获过部门最高荣誉奖。</p>\r\n<p>08年辞去部门经理一职后成为SOHO一族，</p>\r\n<p>经营LA爱天使韩国饰品成为淘宝卖家。</p>\r\n<p>于短短半年间毫无虚假的升为二钻一年后升至三钻，</p>\r\n<p>于09年6月20日在老爸大力的支持下经营爱天使咖啡馆，</p>\r\n<p>于2010年10月创办猫天使驿站正式收养救助流浪猫，</p>\r\n<p>先后接受了海峡导报厦门卫视等媒体及大学生的多次采访报道。<br />\r\n</p>\r\n<p>三年间收养救助了两百余只流浪猫并为它们找到了一个个温暖的家。</p>\r\n<p>与仔仔、全全、QQ、EE四只咪咪一起相伴爱天使救命流浪猫的生活。</p>\r\n<p>爱天使就是流浪猫们的家，是我将用余生为之奋斗的事业！</p>\r\n将“关爱弱小弱势生命，传递爱分享快乐”救助流浪猫视为毕生为之努力的事业。<br />\r\n<br />\r\n<img src=\"./public/attachment/201211/07/16/dda29128a6310c273da111f1f30296c172o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n<img src=\"./public/attachment/201211/07/16/c7650c3dd93e5585dbfad780ba3bbced31o5700.jpg\" rel=\"0\" /><br />\r\n<br />\r\n<br />','1','2','1','3','1','5000.0000','4500.0000','0.0000','1352231478','','','','咖啡馆 重建 公益 流浪 力量 需要 天使 大家','ux21654ux21857ux39302,ux37325ux24314,ux20844ux30410,ux27969ux28010,ux21147ux37327,ux38656ux35201,ux22825ux20351,ux22823ux23478','咖啡馆,重建,公益,流浪,力量,需要,天使,大家','1352231704','1','7','福建','福州','17','0','fanwe','1','1','0','');
DROP TABLE IF EXISTS `fanwe_deal_cate`;
CREATE TABLE `fanwe_deal_cate` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_cate` VALUES ('1','设计','1');
INSERT INTO `fanwe_deal_cate` VALUES ('2','科技','2');
INSERT INTO `fanwe_deal_cate` VALUES ('3','影视','3');
INSERT INTO `fanwe_deal_cate` VALUES ('4','摄影','4');
INSERT INTO `fanwe_deal_cate` VALUES ('5','音乐','5');
INSERT INTO `fanwe_deal_cate` VALUES ('6','出版','6');
INSERT INTO `fanwe_deal_cate` VALUES ('7','活动','7');
INSERT INTO `fanwe_deal_cate` VALUES ('8','游戏','8');
INSERT INTO `fanwe_deal_cate` VALUES ('9','旅行','9');
INSERT INTO `fanwe_deal_cate` VALUES ('10','其他','10');
DROP TABLE IF EXISTS `fanwe_deal_comment`;
CREATE TABLE `fanwe_deal_comment` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '回复的评论ID',
  `deal_user_id` int(11) NOT NULL COMMENT '项目发起人的ID',
  `reply_user_id` int(11) NOT NULL COMMENT '回复的评论的评论人ID',
  `deal_user_name` varchar(255) NOT NULL,
  `reply_user_name` varchar(255) NOT NULL,
  `deal_info_cache` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`),
  KEY `log_id` (`log_id`),
  KEY `pid` (`pid`),
  KEY `deal_user_id` (`deal_user_id`),
  KEY `reply_user_id` (`reply_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_comment` VALUES ('170','55','加油哦！','18','1352229601','26','fzmatthew','0','17','0','fanwe','','');
INSERT INTO `fanwe_deal_comment` VALUES ('171','56','感谢支持！！','18','1352230363','27','fzmatthew','0','18','0','fzmatthew','','');
INSERT INTO `fanwe_deal_comment` VALUES ('172','57','好好加油！','18','1352230882','28','fzmatthew','0','17','0','fanwe','','');
INSERT INTO `fanwe_deal_comment` VALUES ('173','57','回复 fzmatthew:一定会的。','17','1352230924','28','fanwe','172','17','18','fanwe','fzmatthew','');
INSERT INTO `fanwe_deal_comment` VALUES ('174','58','感谢','17','1352231585','29','fanwe','0','17','0','fanwe','','');
INSERT INTO `fanwe_deal_comment` VALUES ('175','58','感谢大家的支持','17','1352231787','0','fanwe','0','17','0','fanwe','','');
DROP TABLE IF EXISTS `fanwe_deal_faq`;
CREATE TABLE `fanwe_deal_faq` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_faq` VALUES ('98','56','我们的咖啡馆在哪里？','目前暂定的店址，是在延安西路、重庆北路附近。','1');
INSERT INTO `fanwe_deal_faq` VALUES ('99','56','我们的咖啡馆大概有多大？','目前定的店址面积约在200平米以内，有上下两层，底楼较小，二层是整个一层。','2');
INSERT INTO `fanwe_deal_faq` VALUES ('100','56','咖啡馆筹备的进度是？','由于各种的原因，在寻找店址的过程中，先先后后放弃了很多地方，目前找的店址，在办证、面积、交通等方面都较理想。所以基本确定了地方，正在积极办理营业执照及设计各方面的工作，同时也在现有资金的基础上，募集更多的资金及支持。目前店面的装修免租期约在2个月内，所以离正式开业还需要一些时日。','3');
INSERT INTO `fanwe_deal_faq` VALUES ('96','58','流浪猫与爱天使咖啡是什么关系呢？','爱天使就是收养救助流浪猫的咖啡馆。因为救助需要资金与空间，这个资金的最好来源一定是要有一个有收益的项目来支撑而非单纯靠募捐方式，否则容易造成依赖与被动，当然其实也因自己个性好强。 在繁殖季爱天使最多一天能收到3-6只的流浪猫，三年间独自一人艰难维持并收养救助两百多只流浪猫，所需空间资金精力全部由我个人维持。','1');
INSERT INTO `fanwe_deal_faq` VALUES ('97','58','新店确定了吗？装修顺利吗？在哪里呢？','新店终于在几经各方协商后于前日确定于文化艺术中心广场正中间（五一文化广场中间文化宫左边，图书馆对面，大润发楼上正中间）的玻璃房。昨天开始了紧张的重新设计装修中。关于搬店的过程几经周折的磨难苦不堪言。因为新店面积比老店小了，而东西只能先搬过去，而里面要装修所以大柜子都没办法先放进去。里面也已堆满了东西，装修师傅找了五个都不愿意接，因为太多东西很影响装修。东西要一直搬来搬去，现在全部是灰，之后又是一大堆的卫生清洁整理工作，已有很多东西因此受到损坏了。。。新店是转过来了付了一大笔转让费未想因为要重装再装修又要投入两万多的改装费，这笔当时完全忘记预算在内了。。。 不过现在顺利的进入装修重新开业在即。谢谢大家的关注支持！我会让爱天使尽快走回正轨。','2');
DROP TABLE IF EXISTS `fanwe_deal_focus_log`;
CREATE TABLE `fanwe_deal_focus_log` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_focus_log` VALUES ('32','58','18','1352231518');
INSERT INTO `fanwe_deal_focus_log` VALUES ('33','56','17','1352232247');
DROP TABLE IF EXISTS `fanwe_deal_item`;
CREATE TABLE `fanwe_deal_item` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `price` double(20,4) NOT NULL,
  `support_count` int(11) NOT NULL,
  `support_amount` double(20,4) NOT NULL,
  `description` text NOT NULL,
  `is_delivery` tinyint(1) NOT NULL,
  `delivery_fee` double(20,4) NOT NULL,
  `is_limit_user` tinyint(1) NOT NULL COMMENT '是否限',
  `limit_user` int(11) NOT NULL COMMENT '限额数量',
  `repaid_day` int(11) NOT NULL COMMENT '项目成功后的回报时间',
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_item` VALUES ('17','55','10.0000','0','0.0000','我们将以平信的方式寄出2款桌游的首发纪念牌，随机赠送部分游戏牌（至少5张）并在游戏说明书中致谢','1','0.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('18','55','15.0000','1','15.0000','我们将回报《黄金密码》1套，赠送首发纪念牌并在游戏说明书中致谢。（邮费另计）','1','5.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('19','55','30.0000','0','0.0000','我们将回报《黄金密码》、《功夫》各1套，赠送首发纪念牌并在游戏说明书中致谢。（邮费另计）','1','5.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('20','55','50.0000','0','0.0000','我们将回报《黄金密码》、《功夫》各2套，赠送首发纪念牌并在游戏说明书中致谢。（邮费另计）','1','5.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('21','55','500.0000','0','0.0000','我们将回报《黄金密码》40套，赠送首发纪念牌并在游戏说明书中致谢，同时还将在首发纪念牌上印上您的姓名或公司名称致谢！（限额2名）。（国内包邮）','1','0.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('22','56','50.0000','0','0.0000','你将收到小组成员，在旅行中为你寄出的一张祝福明信片\r\n你将成为我们开业PARTY的座上嘉宾\r\n所以，请留下你的联系方式（电话，地址及邮编）','1','0.0000','0','0','50');
INSERT INTO `fanwe_deal_item` VALUES ('23','56','200.0000','0','0.0000','你将获得咖啡馆开业后永久9折会员卡一张（会员卡可用于借阅书籍，并在生日当天获得免费饮料一杯）\r\n店内旅行纪念手信一份（价值在50元以内）\r\n成为开业PARTY的邀请来宾','1','0.0000','0','0','60');
INSERT INTO `fanwe_deal_item` VALUES ('24','56','500.0000','11','5500.0000','你将获得咖啡馆开业后永久9折会员卡一张（会员卡可用于借阅书籍，并在生日当天获得免费饮料一杯）\r\n一份店内招牌下午茶套餐的招待券\r\n免费参加店内组织的活动（各类分享会、试吃体验等等）\r\n成为开业PARTY的邀请来宾','1','0.0000','0','0','50');
INSERT INTO `fanwe_deal_item` VALUES ('25','57','60.0000','0','0.0000','电影签名海报和明信片。全国包邮。','1','0.0000','0','0','50');
INSERT INTO `fanwe_deal_item` VALUES ('26','57','150.0000','0','0.0000','电影DVD的拷贝一张，以及片尾特别感谢。全国包邮。','1','0.0000','0','0','55');
INSERT INTO `fanwe_deal_item` VALUES ('27','57','600.0000','0','0.0000','一个崭新的印有影片标志的8GB快闪储存器（flash drive), 电影DVD 拷贝，剧照，和特别回报（包括预告片DVD，拍摄花絮DVD）, 以及片尾特别感谢。（所有DVD均有中文字幕），全国包邮。','1','0.0000','1','20','50');
INSERT INTO `fanwe_deal_item` VALUES ('28','57','1200.0000','0','0.0000','电影签名海报和明信片， 一个崭新的印有影片标志的8GB快闪储存器（flash drive), 电影DVD 拷贝，剧照，和特别回报（包括预告片DVD，拍摄花絮DVD）, 以及片尾特别感谢。（所有DVD均有中文字幕）全国包邮。','1','0.0000','1','5','10');
INSERT INTO `fanwe_deal_item` VALUES ('29','57','3000.0000','0','0.0000','成为影片的联合制片人（associate producer), 8GB的快闪储存器（flash drive)， 电影DVD 拷贝，剧照，和特别回报（包括预告片DVD，拍摄花絮DVD）。（所有DVD均有中文字幕） 全国包邮。','1','0.0000','0','0','10');
INSERT INTO `fanwe_deal_item` VALUES ('30','58','1000.0000','0','0.0000','爱的礼物：精美工艺品及红酒。如果你希望得到一份爱的礼物与记念，请留言你的详细地址姓名电话，我将会于爱天使重建之后的三个月内为你寄一件精美的工艺品及价值399元的澳洲红宝龙红酒一瓶！你将成为爱天使的终生会员。。。','1','0.0000','0','0','50');
INSERT INTO `fanwe_deal_item` VALUES ('31','58','2000.0000','1','2000.0000','爱的礼物：精美工艺品红酒及晚餐。如果你希望得到一份爱的礼物与记念，请留言你的详细地址姓名电话，我将会于爱天使重建之后的三个月内为你寄一件精美的工艺品及澳洲红宝龙红酒一瓶及邀请你到爱天使享受晚餐！你将成为爱天使的终生会员。。。','1','0.0000','0','0','50');
INSERT INTO `fanwe_deal_item` VALUES ('32','58','3000.0000','1','3000.0000','爱的礼物：精美工艺品及红酒及晚餐。如果你希望得到一份爱的礼物与记念，请留言你的详细地址姓名电话，我将会于爱天使重建之后的三个月内为你寄一件精美的工艺品及价值688元的澳洲康纳瓦拉红酒一瓶及邀请你到爱天使享受晚餐！你将成为爱天使的终生会员。。。','1','0.0000','0','0','50');
DROP TABLE IF EXISTS `fanwe_deal_item_image`;
CREATE TABLE `fanwe_deal_item_image` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `deal_item_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `deal_item_id` (`deal_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_item_image` VALUES ('40','55','18','./public/attachment/201211/07/10/1df0db265b86352e3886b9c62e8ef01b18.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('41','55','18','./public/attachment/201211/07/10/4a4a8bdca29b165b7bd5f510ce200c4385.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('42','55','18','./public/attachment/201211/07/10/c8223b4192fc39e4a3dce8a986eccf3994.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('43','55','19','./public/attachment/201211/07/10/a37a306a3bedaa664011115de251576034.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('44','55','20','./public/attachment/201211/07/10/cc12200a637c9db1dcf7354e592f220985.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('45','55','21','./public/attachment/201211/07/10/d65e7badd7098a0922db2b49c2fd8ef011.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('46','56','22','./public/attachment/201211/07/11/5d379d45a98db1816b027e85d59ca47c58.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('47','56','23','./public/attachment/201211/07/11/1ed8f029594ec5e809d95d8074fe3d2760.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('48','56','24','./public/attachment/201211/07/11/b08505b20319f493cbc03debd52eceb474.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('49','56','24','./public/attachment/201211/07/11/18b75305fe13c623363abb4ab995f6af34.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('50','57','25','./public/attachment/201211/07/11/7ecd287a12bff4289d305c0fb949889e29.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('51','57','26','./public/attachment/201211/07/11/d84152ab2d569c584c795018846cbb7233.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('52','57','27','./public/attachment/201211/07/11/bdefb72e944b41b60a751d50d0d84fe983.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('53','57','28','./public/attachment/201211/07/11/c0df234411b34427dedb121ab9bd577352.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('54','57','28','./public/attachment/201211/07/11/9c82e2a30f02513d0a197f3d4573794e76.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('55','57','29','./public/attachment/201211/07/11/326730647fde78562777b82f0a9e81a155.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('56','58','30','./public/attachment/201211/07/11/06bab2f2823bdd050ef8949162bf717729.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('57','58','31','./public/attachment/201211/07/11/c835e1fd43685e3106c4de641f70cf2b62.jpg');
INSERT INTO `fanwe_deal_item_image` VALUES ('58','58','32','./public/attachment/201211/07/11/44036ee2e369e9c91be966a329cac70084.jpg');
DROP TABLE IF EXISTS `fanwe_deal_log`;
CREATE TABLE `fanwe_deal_log` (
  `id` int(11) NOT NULL auto_increment,
  `log_info` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `vedio` varchar(255) NOT NULL,
  `source_vedio` varchar(255) NOT NULL,
  `comment_data_cache` text NOT NULL,
  `deal_info_cache` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='项目的动态，主要由发起人更新动态进度';
INSERT INTO `fanwe_deal_log` VALUES ('26','功夫图文说明书1','1352229555','17','fanwe','55','./public/attachment/201211/07/11/5d2a94ce2a3db73277fb04be463365a255.jpg','','','','');
INSERT INTO `fanwe_deal_log` VALUES ('27','每当我们踏上新的旅程，总是带着期待和兴奋\r\n\r\n而每次踏上归程，多多少少都会怀有一丝的失落\r\n\r\n在路上，我们拥有一拍即合、相谈甚欢的朋友\r\n\r\n在路上，我们总能遇到有趣的人，听到有意思的故事\r\n\r\n在路上，我们可以遗忘时间，丢开工作，在任何一方天地里享用美食和咖啡\r\n\r\n但是归来后，工作和生活又将我们丢回压力和快节奏之下\r\n\r\n我们想要一个在城市中，也能随时抽离的天地\r\n\r\n找朋友，找梦想，找快乐\r\n\r\n \r\n\r\n我们的小窝不会很大，但足以容纳所有的做梦者\r\n\r\n这里有齐全的旅行攻略书籍、各种旅行散文、绘本、游记……\r\n\r\n这里有香浓的咖啡和好吃的甜点\r\n\r\n这里有同样喜爱旅行，爱结交朋友的年轻人\r\n\r\n每一个将这里当做家的人，你们是我们的客人，更是这里的主人','1352230347','18','fzmatthew','56','./public/attachment/201211/07/11/714396a1e4416b0f7510d97e6966190459.jpg','','','','');
INSERT INTO `fanwe_deal_log` VALUES ('28','在电影里看到的最自然的场景在拍摄的时候都是要用灯光特别加工出来的，因为摄影机和人对光的感受能力不一样。人的眼睛可以说是世界上最好的摄影机。这一幕女主角站在窗边充满惆怅的向男主角的方向望过去，明显的受到了日本导演岩井俊二的影响。','1352230864','17','fanwe','57','./public/attachment/201211/07/11/eab603d5c65ec25f88a7fdd8ec9a5c1095.jpg','','','','');
INSERT INTO `fanwe_deal_log` VALUES ('29','谢谢这几天来帮忙的朋友们，昨天一群的同学们让窗户变得明亮，虽然还是挺乱但却充满了快乐与欢。。爱天使每天都要这样充满爱与快乐。。谢谢有你们！因为东西太多可能还要打理两天才能开业，希望最近有空的朋友还能过来帮忙。下午两点过来便可13400642022。地址文化艺术中心大润发楼上正中间店。谢谢！','1352231575','17','fanwe','58','./public/attachment/201211/07/11/85a7d1e781bfb8812271b6f6f1bee91d25.jpg','','','','');
DROP TABLE IF EXISTS `fanwe_deal_msg_list`;
CREATE TABLE `fanwe_deal_msg_list` (
  `id` int(11) NOT NULL auto_increment,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `is_youhui` tinyint(1) NOT NULL,
  `youhui_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_deal_notify`;
CREATE TABLE `fanwe_deal_notify` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='准备发送通知的项目ID';
DROP TABLE IF EXISTS `fanwe_deal_order`;
CREATE TABLE `fanwe_deal_order` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `deal_item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `total_price` double(20,4) NOT NULL COMMENT '总价',
  `delivery_fee` double(20,4) NOT NULL COMMENT '运费',
  `deal_price` double(20,4) NOT NULL COMMENT '项目费用',
  `support_memo` text NOT NULL,
  `payment_id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `credit_pay` double(20,4) NOT NULL,
  `online_pay` double(20,4) NOT NULL,
  `deal_name` varchar(255) NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '0:未支付 1:已支付(过期) 2:已支付(无库存) 3:成功',
  `create_time` int(11) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `repay_time` int(11) NOT NULL COMMENT '回报更新时间',
  `repay_memo` text NOT NULL COMMENT '回报备注，由发起人更新',
  `is_refund` tinyint(1) NOT NULL COMMENT '已退款 0:未 1:已',
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `deal_item_id` (`deal_item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_order` VALUES ('65','55','18','18','fzmatthew','1352229388','20.0000','5.0000','15.0000','请在上班时间配送。','0','COMM','20.0000','0.0000','原创DIY桌面游戏《功夫》《黄金密码》期待您的支持','3','1352229388','方维','350000','13333333333','福建','福州','福建福州台江区工业路博美诗邦','0','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('66','56','24','17','fanwe','1352230101','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230101','方维','22222','14444444444','福建','福州','方维方维方维方维方维','1','1352230424','回报已经发货，发货单号123456, 有问题请联系我。','0');
INSERT INTO `fanwe_deal_order` VALUES ('67','56','24','19','test','1352230180','500.0000','0.0000','500.0000','','24','ICBCB2C','0.0000','500.0000','拥有自己的咖啡馆','3','1352230157','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('68','56','24','19','test','1352230228','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230228','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('69','56','24','19','test','1352230232','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230232','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('70','56','24','19','test','1352230237','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230237','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('71','56','24','19','test','1352230240','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230240','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('72','56','24','19','test','1352230243','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230243','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('73','56','24','19','test','1352230247','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230247','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('74','56','24','19','test','1352230268','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230268','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('75','56','24','19','test','1352230270','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230270','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('76','56','24','19','test','1352230293','500.0000','0.0000','500.0000','','0','','500.0000','0.0000','拥有自己的咖啡馆','3','1352230293','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('77','58','31','18','fzmatthew','1352231539','2000.0000','0.0000','2000.0000','test','0','','2000.0000','0.0000','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！','3','1352231539','方维','350000','13333333333','福建','福州','福建福州台江区工业路博美诗邦','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('78','58','30','19','test','0','1000.0000','0.0000','1000.0000','ttt','24','CCB','500.0000','0.0000','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！','0','1352231631','test','test','13344455555','湖北','襄樊','test','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('79','56','24','17','fanwe','0','500.0000','0.0000','500.0000','部份支付','24','ICBCB2C','300.0000','0.0000','拥有自己的咖啡馆','0','1352231671','方维','22222','14444444444','福建','福州','方维方维方维方维方维','1','0','','0');
INSERT INTO `fanwe_deal_order` VALUES ('80','58','32','18','fzmatthew','1352231704','3000.0000','0.0000','3000.0000','','0','','3000.0000','0.0000','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！','3','1352231704','方维','350000','13333333333','福建','福州','福建福州台江区工业路博美诗邦','1','0','','0');
DROP TABLE IF EXISTS `fanwe_deal_pay_log`;
CREATE TABLE `fanwe_deal_pay_log` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `money` double(20,4) NOT NULL,
  `create_time` int(11) NOT NULL,
  `log_info` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='项目支持金额发放记录';
DROP TABLE IF EXISTS `fanwe_deal_support_log`;
CREATE TABLE `fanwe_deal_support_log` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `price` double(20,4) NOT NULL,
  `deal_item_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`),
  KEY `deal_item_id` (`deal_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_support_log` VALUES ('41','55','18','1352229388','15.0000','18');
INSERT INTO `fanwe_deal_support_log` VALUES ('42','56','17','1352230101','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('43','56','19','1352230180','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('44','56','19','1352230228','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('45','56','19','1352230232','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('46','56','19','1352230237','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('47','56','19','1352230240','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('48','56','19','1352230243','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('49','56','19','1352230247','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('50','56','19','1352230268','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('51','56','19','1352230270','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('52','56','19','1352230293','500.0000','24');
INSERT INTO `fanwe_deal_support_log` VALUES ('53','58','18','1352231539','2000.0000','31');
INSERT INTO `fanwe_deal_support_log` VALUES ('54','58','18','1352231704','3000.0000','32');
DROP TABLE IF EXISTS `fanwe_deal_visit_log`;
CREATE TABLE `fanwe_deal_visit_log` (
  `id` int(11) NOT NULL auto_increment,
  `deal_id` int(11) NOT NULL,
  `client_ip` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_deal_visit_log` VALUES ('117','55','127.0.0.1','1352229137');
INSERT INTO `fanwe_deal_visit_log` VALUES ('118','56','127.0.0.1','1352230070');
INSERT INTO `fanwe_deal_visit_log` VALUES ('119','57','127.0.0.1','1352230830');
INSERT INTO `fanwe_deal_visit_log` VALUES ('120','58','127.0.0.1','1352231514');
INSERT INTO `fanwe_deal_visit_log` VALUES ('121','56','127.0.0.1','1352231651');
INSERT INTO `fanwe_deal_visit_log` VALUES ('122','55','127.0.0.1','1352232299');
INSERT INTO `fanwe_deal_visit_log` VALUES ('123','58','127.0.0.1','1352232420');
INSERT INTO `fanwe_deal_visit_log` VALUES ('124','56','127.0.0.1','1352232590');
INSERT INTO `fanwe_deal_visit_log` VALUES ('125','57','127.0.0.1','1352232717');
INSERT INTO `fanwe_deal_visit_log` VALUES ('126','55','127.0.0.1','1352246374');
INSERT INTO `fanwe_deal_visit_log` VALUES ('127','57','127.0.0.1','1352246699');
INSERT INTO `fanwe_deal_visit_log` VALUES ('128','56','127.0.0.1','1352246710');
INSERT INTO `fanwe_deal_visit_log` VALUES ('129','58','127.0.0.1','1352246719');
DROP TABLE IF EXISTS `fanwe_faq`;
CREATE TABLE `fanwe_faq` (
  `id` int(11) NOT NULL auto_increment,
  `group` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `sort` (`sort`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_faq` VALUES ('1','基本问题','这是什么站?','我们是一个让你可以发起和支持创意项目的平台。如果你有一个创意的想法(新颖的产品?独立电影?)，我们欢迎你到我们的平台上发起项目，向公众推广，并得到资金的支持去完成你的想法。如果你喜欢创意，我们欢迎你来到我们平台，浏览各种有趣的项目，并力所能及支持他们。','1');
INSERT INTO `fanwe_faq` VALUES ('2','基本问题','什么样的项目适合我们的平台?','我们欢迎一切有创意的想法，欢迎艺术家，电影工作者，音乐家，产品设计师，作家，画家，表演者，DJ等等来我们平台推广他们的创意。但是，我们的平台不适用于慈善项目或是创业投资项目。如果你不确定你的想法是否适合我们的平台，欢迎你直接与我们联系。','2');
INSERT INTO `fanwe_faq` VALUES ('3','基本问题','这种模式有非法集资的风险吗?','不会，因为我们要求项目不能够以股权或是资金作为对支持者的回报。项目发起人更不能向支持者许诺任何资金上的收益。项目的回报必须是以实物（如产品，出版物），或者媒体内容（如提供视频或者音乐的流媒体播放或者下载）。我们平台项目接受支持，不能够以股权或者债券的形式。支持者对一个项目的支持属于购买行为，而不是投资行为。','3');
INSERT INTO `fanwe_faq` VALUES ('4','基本问题','这个平台接受慈善项目类的提案么?','我们不接受慈善类项目。作为个人，我们支持社会公益慈善事业，但是我们平台不是支持此类项目的平台。我们所接受的是商业类，有销售购买行为的设计或者文创类的项目。项目发起人需要给支持以实物或者媒体内容类的回报。','4');
INSERT INTO `fanwe_faq` VALUES ('5','项目发起人相关问题','是否会要求产品或作品的知识产权?','不会。我们只是提供一个宣传和支持的平台，知识产权由项目发起人所有。','5');
INSERT INTO `fanwe_faq` VALUES ('6','项目发起人相关问题','什么人可以发起项目?','目前任何在两岸三地(中国大陆，台湾，港澳)的有创意的人都可以发起项目。你可以是一个从事创意行业的自由职业者，也可以是公司职员。只要你有个点子，我们都希望收到你的项目提案。','6');
INSERT INTO `fanwe_faq` VALUES ('7','项目发起人相关问题','我怎么发起项目呢?','请到我们的网站并注册用户后，在我们网站上提交所需要的基本项目信息，包括项目的内容，目前进行的阶段等等。我们会有专人跟进，与你联系。','7');
INSERT INTO `fanwe_faq` VALUES ('8','项目发起人相关问题','我想发起项目，但是我担心我的知识产权被人抄袭?','作为项目发起人，你可以选择公布更多的信息。知识产权敏感的信息，你可以选择不公开。同时，我们平台是一个面对公众的平台。你所提供的信息越丰富，越翔实，就越容易打动和说服别人的支持。','8');
INSERT INTO `fanwe_faq` VALUES ('9','项目发起人相关问题','项目目标金额是否有上下限制?','我们对目标金额的下限是1000元人民币。原则上没有上限。但是资金的要求越高，成功的概率就越低。目前常见的目标金额从几千到几万不等。','9');
INSERT INTO `fanwe_faq` VALUES ('10','项目发起人相关问题','没有达到目标金额，是否就不能得到支持?','是的。如果在项目截至日期到达时，没有达到预期，那么已经收到的资金会退还给支持者。这么做的原因是为了给支持者提供风险保护。只有当项目有足够多的人支持足够多的资金时，他们的支持才生效。','10');
INSERT INTO `fanwe_faq` VALUES ('11','项目发起人相关问题','我的项目成功了，然后呢?','我们会分两次把资金打入你所提供的银行账户。两次汇款的时间和金额因项目而异，在项目上线之前，由我们平台与项目发起人确定。在资金的支持下，你就可以开始进行你的项目，给你的支持者以邮件或者其他形式的更新，并如期实现你承诺的回报。','11');
INSERT INTO `fanwe_faq` VALUES ('12','项目发起人相关问题','如何设定项目截止日期?','一般来说，时间设置在一个月或以内比较合适。数据显示，绝大部分的支持发生在项目上线开始和结束前的一个星期中。','12');
INSERT INTO `fanwe_faq` VALUES ('13','项目发起人相关问题','收到的金额能够超过预设的目标?','可以。在截至日期之前，项目可以一直接受资金支持。','13');
INSERT INTO `fanwe_faq` VALUES ('14','项目发起人相关问题','大家支持的动机是什么?','大家对项目支持的动机是多样的。有些是因为项目发起者提供了有吸引力的回报，特别是产品设计类的项目。有些是因为认可这个项目，希望它能够实现。有些是因为认可项目的发起人，希望助他一臂之力。','14');
INSERT INTO `fanwe_faq` VALUES ('15','项目发起人相关问题','什么样的回报比较合适?','回报因项目而异。可以是实物，比如如果是电影项目，可以提供成片后的DVD;如果是产品设计，可以提供产品;其他还有如明信片，T恤，出版物。也可以是非实物，比如鸣谢，与项目发起人共进晚餐，影片首映的门票等。我们欢迎项目发起人展开想象，设计出各式各样的回报。','15');
INSERT INTO `fanwe_faq` VALUES ('16','项目发起人相关问题','如何能够吸引更多的人来支持我的项目?','对此，我们会另外详细介绍。简短来说，有以下要点\r\n- 拍摄一个有趣，吸引人的视频。讲述这个项目背后的故事。\r\n- 提供有吸引力，物有所值的回报。\r\n- 项目刚上线时，要发动你的亲朋好友来支持你。让你的项目有一个基本的人气。\r\n- 充分运用微博，人人等社交网站来推广。\r\n- 在项目上线期间，经常性的在你的项目页上提供项目的更新，与支持者，询问者的互动。\r\n- 项目宣传视频是必须的么?\r\n宣传视频是项目页上的重要内容。是公众了解你和你的项目的第一步。一个好的宣传视频，能够比文字和图片起到更好的宣传效果。基于这个原因，我们要求每个项目都提供一个视频。有必要的话，我们平台可以提供视频拍摄的支持。','16');
INSERT INTO `fanwe_faq` VALUES ('17','项目发起人相关问题','项目宣传视频有什么要求?','我们要求宣传视频在两分钟之内。内容上，强烈建议包括以下内容\r\n发起人姓名\r\n项目简短描述(特别说明其吸引人的地方)，目前进展\r\n为什么需要支持\r\n谢谢大家','17');
INSERT INTO `fanwe_faq` VALUES ('18','项目支持者相关问题','如果项目没有达到目标金额，我支持的资金会还给我么?','是的。如果项目在截止日期没有达到目标，你所支持的金额会返还给你。','18');
INSERT INTO `fanwe_faq` VALUES ('19','项目支持者相关问题','如何支持一个项目?','每个项目页的右侧有可选择的支持额度和相应的回报介绍。想支持的话，选择你想支持的金额，鼠标点击绿色的按钮，即可。你可以选择支付宝或者财付通来完成付款。','19');
INSERT INTO `fanwe_faq` VALUES ('20','项目支持者相关问题','如何保证项目发起人能够实现他们的承诺呢?','很多项目本身存在着风险，比如产品设计和纪录片的拍摄。有可能存在项目发起人无法完成其许诺的情况。项目支持者一方面要了解创意项目本身是有风险的，另一方面，我们要求项目发起人提供联系方式，并且鼓励有意支持者直接联系他们，在与项目发起人的沟通和互动中对项目的价值，风险，项目发起人的执行力等等有所判断。','20');
DROP TABLE IF EXISTS `fanwe_help`;
CREATE TABLE `fanwe_help` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_fix` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_help` VALUES ('1','服务条款','<div class=\"layout960\"><p><strong>一、接受条款</strong></p>\r\n<p>我们所提供的服务包含我们平台网站体验和使用、我们平台互联网消息传递服务以及我们平台提供的与我们平台网站有关的任何其他特色功能、内容或应用程序(合称\"我们平台服务\")。无论用户是以\"访客\"(表示用户只是浏览我们平台网站)还是\"成员\"(表示用户已在我们平台注册并登录)的身份使用我们平台服务，均表示该用户同意遵守本使用协议。</p>\r\n<p>如果用户自愿成为我们平台成员并与其他成员交流(包括通过我们平台网站直接联系或通过我们平台各种服务而连接到的成员)，以及使用我们平台网站及其各种附加服务，请务必认真阅读本协议并在注册过程中表明同意接受本协议。本协议的内容包含我们平台关于接受我们平台服务和在我们平台网站上发布内容的规定、用户使用我们平台服务所享有的权利、承担的义务和对使用我们平台服务所受的限制、以及我们平台的隐私条款。如果用户选择使用某些我们平台服务，可能会收到要求其下载软件或内容的通知，和/或要求用户同意附加条款和条件的通知。除非用户选择使用的我们平台服务相关的附加条款和条件另有规定，附加的条款和条件都应被包含于本协议中。</p>\r\n<p>我们平台有权随时修改本协议文本中的任何条款。一旦我们平台对本协议进行修改,我们平台将会以公告形式发布通知。任何该等修改自发布之日起生效。如果用户在该等修改发布后继续使用我们平台服务，则表示该用户同意遵守对本协议所作出的该等修改。因此，请用户务必定期查阅本协议，以确保了解所有关于本协议的最新修改。如果用户不同意我们平台对本协议进行的修改，请用户离开我们平台网站并立即停止使用我们平台服务。同时，用户还应当删除个人档案并注销成员资格。</p>\r\n<p><strong>二、遵守法律</strong></p>\r\n<p>当使用我们平台服务时，用户同意遵守中华人民共和国(下称\"中国\")的相关法律法规，包括但不限于《中华人民共和国宪法》、《中华人民共和国合同法》、《中华人民共和国电信条例》、《互联网信息服务管理办法》、《互联网电子公告服务管理规定》、《中华人民共和国保守国家秘密法》、《全国人民代表大会常务委员会关于维护互联网安全的决定》、《中华人民共和国计算机信息系统安全保护条例》、《计算机信息网络国际联网安全保护管理办法》、《中华人民共和国著作权法》及其实施条例、《互联网著作权行政保护办法》等。用户只有在同意遵守所有相关法律法规和本协议时，才有权使用我们平台服务(无论用户是否有意访问或使用此服务)。请用户仔细阅读本协议并将其妥善保存。</p>\r\n<p><strong>三、用户帐号、密码及安全</strong></p>\r\n<p>用户应提供及时、详尽、准确的个人资料，并不断及时更新注册时提供的个人资料，保持其详尽、准确。所有用户输入的资料将引用为注册资料。我们平台不对因用户提交的注册信息不真实或未及时准确变更信息而引起的问题、争议及其后果承担责任。</p>\r\n<p>用户不应将其帐号、密码转让、出借或告知他人，供他人使用。如用户发现帐号遭他人非法使用，应立即通知我们平台。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用的，我们平台不承担任何责任。</p>\r\n<p><strong>四、隐私权政策</strong></p>\r\n<p>用户提供的注册信息及我们平台保留的用户所有资料将受到中国相关法律法规和我们平台《隐私权政策》的规范。《隐私权政策》构成本协议不可分割的一部分。</p>\r\n<p><strong>五、上传内容</strong></p>\r\n<p>用户通过任何我们平台提供的服务上传、张贴、发送(通过电子邮件或任何其它方式传送)的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料(以下简称\"内容\"，包括用户个人的或个人创作的照片、声音、视频等)，无论系公开还是私下传播，均由用户和内容提供者承担责任，我们平台不对该等内容的正确性、完整性或品质作出任何保证。用户在使用我们平台服务时，可能会接触到令人不快、不适当或令人厌恶之内容，用户需在接受服务前自行做出判断。在任何情况下，我们平台均不为任何内容负责(包括但不限于任何内容的错误、遗漏、不准确或不真实)，亦不对通过我们平台服务上传、张贴、发送(通过电子邮件或任何其它方式传送)的内容衍生的任何损失或损害负责。我们平台在管理过程中发现或接到举报并进行初步调查后，有权依法停止任何前述内容的传播并采取进一步行动，包括但不限于暂停某些用户使用我们平台的全部或部分服务，保存有关记录，并向有关机关报告。</p>\r\n<p><strong>六、用户行为</strong></p>\r\n<p>用户在使用我们平台服务时，必须遵守中华人民共和国相关法律法规的规定，用户保证不会利用我们平台服务进行任何违法或不正当的活动，包括但不限于下列行为∶</p>\r\n<p>上传、展示、张贴或以其它方式传播含有下列内容之一的信息：</p>\r\n<p>反对宪法及其他法律的基本原则的;</p>\r\n<p>危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的;</p>\r\n<p>损害国家荣誉和利益的;</p>\r\n<p>煽动民族仇恨、民族歧视、破坏民族团结的;</p>\r\n<p>破坏国家宗教政策，宣扬邪教和封建迷信的;</p>\r\n<p>散布谣言，扰乱社会秩序，破坏社会稳定的;</p>\r\n<p>散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的;</p>\r\n<p>侮辱或者诽谤他人，侵害他人合法权利的;</p>\r\n<p>含有虚假、有害、胁迫、侵害他人隐私、骚扰、中伤、粗俗、猥亵、或其它道德上令人反感的内容;</p>\r\n<p>含有中国法律、法规、规章、条例以及任何具有法律效力的规范所限制或禁止的其它内容的;</p>\r\n<p>不得为任何非法目的而使用网络服务系统;</p>\r\n<p>用户同时保证不会利用我们平台服务从事以下活动：</p>\r\n<p>未经允许，进入计算机信息网络或者使用计算机信息网络资源的;</p>\r\n<p>未经允许，对计算机信息网络功能进行删除、修改或者增加的;</p>\r\n<p>未经允许，对进入计算机信息网络中存储、处理或者传输的数据和应用程序进行删除、修改或者增加的;故意制作、传播计算机病毒等破坏性程序的;</p>\r\n<p>其他危害计算机信息网络安全的行为。</p>\r\n<p>如用户在使用网络服务时违反任何上述规定，我们平台或经其授权者有权要求该用户改正或直接采取一切必要措施(包括但不限于更改、删除相关内容、暂停或终止相关用户使用我们平台服务)以减轻和消除该用户不当行为造成的影响。</p>\r\n<p>用户不得对我们平台服务的任何部分或全部以及通过我们平台取得的任何形式的信息，进行复制、拷贝、出售、转售或用于任何其它商业目的。</p>\r\n<p>用户须对自己在使用我们平台服务过程中的行为承担法律责任。用户承担法律责任的形式包括但不限于：停止侵害行为，向受到侵害者公开赔礼道歉，恢复受到侵害这的名誉，对受到侵害者进行赔偿。如果我们平台网站因某用户的非法或不当行为受到行政处罚或承担了任何形式的侵权损害赔偿责任，该用户应向我们平台进行赔偿(不低于我们平台向第三方赔偿的金额)并通过全国性的媒体向我们平台公开赔礼道歉。</p>\r\n<p><strong>七、知识产权和其他合法权益(包括但不限于名誉权、商誉等)</strong></p>\r\n<p>我们平台并不对用户发布到我们平台服务中的文本、文件、图像、照片、视频、声音、音乐、其他创作作品或任何其他材料(前文称为\"内容\")拥有任何所有权。在用户将内容发布到我们平台服务中后，用户将继续对内容享有权利，并且有权选择恰当的方式使用该等内容。如果用户在我们平台服务中或通过我们平台服务展示或发表任何内容，即表明该用户就此授予我们平台一个有限的许可以使我们平台能够合法使用、修改、复制、传播和出版此类内容。</p>\r\n<p>用户同意其已就在我们平台服务所发布的内容，授予我们平台可以免费的、永久有效的、不可撤销的、非独家的、可转授权的、在全球范围内对所发布内容进行使用、复制、修改、改写、改编、发行、翻译、创造衍生性著作的权利，及/或可以将前述部分或全部内容加以传播、表演、展示，及/或可以将前述部分或全部内容放入任何现在已知和未来开发出的以任何形式、媒体或科技承载的著作当中。</p>\r\n<p>用户声明并保证：用户对其在我们平台服务中或通过我们平台服务发布的内容拥有合法权利;用户在我们平台服务中或通过我们平台服务发布的内容不侵犯任何人的肖像权、隐私权、著作权、商标权、专利权、及其它合同权利。如因用户在我们平台服务中或通过我们平台服务发布的内容而需向其他任何人支付许可费或其它费用，全部由该用户承担。</p>\r\n<p>我们平台服务中包含我们平台提供的内容，包含用户和其他我们平台许可方的内容(下称\"我们平台的内容\")。我们平台的内容受《中华人民共和国著作权法》、《中华人民共和国商标法》、《中华人民共和国专利法》、《中华人民共和国反不正当竞争法》和其他相关法律法规的保护，我们平台拥有并保持对我们平台的内容和我们平台服务的所有权利。</p>\r\n<p><strong>八、国际使用之特别警告</strong></p>\r\n<p>用户已了解国际互联网的无国界性，同意遵守所有关于网上行为、内容的法律法规。用户特别同意遵守有关从中国或用户所在国家或地区输出信息所可能涉及、适用的全部法律法规。</p>\r\n<p><strong>九、赔偿</strong></p>\r\n<p>由于用户通过我们平台服务上传、张贴、发送或传播的内容，或因用户与本服务连线，或因用户违反本使用协议，或因用户侵害他人任何权利而导致任何第三人向我们平台提出赔偿请求，该用户同意赔偿我们平台及其股东、子公司、关联企业、代理人、品牌共有人或其它合作伙伴相应的赔偿金额(包括我们平台支付的律师费等)，以使我们平台的利益免受损害。</p>\r\n<p><strong>十、关于使用及储存的一般措施</strong></p>\r\n<p>用户承认我们平台有权制定关于服务使用的一般措施及限制，包括但不限于我们平台服务将保留用户的电子邮件信息、用户所张贴内容或其它上载内容的最长保留期间、用户一个帐号可收发信息的最大数量、用户帐号当中可收发的单个信息的大小、我们平台服务器为用户分配的最大磁盘空间，以及一定期间内用户使用我们平台服务的次数上限(及每次使用时间之上限)。通过我们平台服务存储或传送的任何信息、通讯资料和其它任何内容，如被删除或未予储存，用户同意我们平台毋须承担任何责任。用户亦同意，超过一年未使用的帐号，我们平台有权关闭。我们平台有权依其自行判断和决定，随时变更相关一般措施及限制。</p>\r\n<p><strong>十一、服务的修改</strong></p>\r\n<p>用户了解并同意，无论通知与否，我们平台有权于任何时间暂时或永久修改或终止部分或全部我们平台服务，对此，我们平台对用户和任何第三人均无需承担任何责任。用户同意，所有上传、张贴、发送到我们平台的内容，我们平台均无保存义务，用户应自行备份。我们平台不对任何内容丢失以及用户因此而遭受的相关损失承担责任。</p>\r\n<p><strong>十二、终止服务</strong></p>\r\n<p>用户同意我们平台可单方面判断并决定，如果用户违反本使用协议或用户长时间未能使用其帐号，我们平台可以终止该用户的密码、帐号或某些服务的使用，并可将该用户在我们平台服务中留存的任何内容加以移除或删除。我们平台亦可基于自身考虑，在通知或未通知之情形下，随时对该用户终止部分或全部服务。用户了解并同意依本使用协议，无需进行事先通知，我们平台可在发现任何不适宜内容时，立即关闭或删除该用户的帐号及其帐号中所有相关信息及文件，并暂时或永久禁止该用户继续使用前述文件或帐号。</p>\r\n<p><strong>十三、与广告商进行的交易</strong></p>\r\n<p>用户通过我们平台服务与广告商进行任何形式的通讯或商业往来，或参与促销活动(包括相关商品或服务的付款及交付)，以及达成的其它任何条款、条件、保证或声明，完全是用户与广告商之间的行为。除有关法律法规明文规定要求我们平台承担责任外，用户因前述任何交易、沟通等而遭受的任何性质的损失或损害，我们平台均不予负责。</p>\r\n<p><strong>十四、链接</strong></p>\r\n<p>用户了解并同意，对于我们平台服务或第三人提供的其它网站或资源的链接是否可以利用，我们平台不予负责;存在或源于此类网站或资源的任何内容、广告、产品或其它资料，我们平台亦不保证或负责。因使用或信赖任何此类网站或资源发布的或经由此类网站或资源获得的任何商品、服务、信息，如对用户造成任何损害，我们平台不负任何直接或间接责任。</p>\r\n<p><strong>十五、禁止商业行为</strong></p>\r\n<p>用户同意不对我们平台服务的任何部分或全部以及用户通过我们平台的服务取得的任何物品、服务、信息等，进行复制、拷贝、出售、转售或用于任何其它商业目的。</p>\r\n<p><strong>十六、我们平台的专属权利</strong></p>\r\n<p>用户了解并同意，我们平台服务及其所使用的相关软件(以下简称\"服务软件\")含有受到相关知识产权及其它法律保护的专有保密资料。用户同时了解并同意，经由我们平台服务或广告商向用户呈现的赞助广告或信息所包含之内容，亦可能受到著作权、商标、专利等相关法律的保护。未经我们平台或广告商书面授权，用户不得修改、出售、传播部分或全部服务内容或软件，或加以制作衍生服务或软件。我们平台仅授予用户个人非专属的使用权，用户不得(也不得允许任何第三人)复制、修改、创作衍生著作，或通过进行还原工程、反向组译及其它方式破译原代码。用户也不得以转让、许可、设定任何担保或其它方式移转服务和软件的任何权利。用户同意只能通过由我们平台所提供的界面而非任何其它方式使用我们平台服务。</p>\r\n<p><strong>十七、担保与保证</strong></p>\r\n<p>我们平台使用协议的任何规定均不会免除因我们平台造成用户人身伤害或因故意造成用户财产损失而应承担的任何责任。</p>\r\n<p>用户使用我们平台服务的风险由用户个人承担。我们平台对服务不提供任何明示或默示的担保或保证，包括但不限于商业适售性、特定目的的适用性及未侵害他人权利等的担保或保证。</p>\r\n<p>我们平台亦不保证以下事项：</p>\r\n<p>服务将符合用户的要求;</p>\r\n<p>服务将不受干扰、及时提供、安全可靠或不会出错;</p>\r\n<p>使用服务取得的结果正确可靠;</p>\r\n<p>用户经由我们平台服务购买或取得的任何产品、服务、资讯或其它信息将符合用户的期望，且软件中任何错误都将得到更正。</p>\r\n<p>用户应自行决定使用我们平台服务下载或取得任何资料且自负风险，因任何资料的下载而导致的用户电脑系统损坏或数据流失等后果，由用户自行承担。</p>\r\n<p>用户经由我们平台服务获知的任何建议或信息(无论书面或口头形式)，除非使用协议有明确规定，将不构成我们平台对用户的任何保证。</p>\r\n<p><strong>十八、责任限制</strong></p>\r\n<p>用户明确了解并同意，基于以下原因而造成的任何损失，我们平台均不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿责任(即使我们平台事先已被告知用户或第三方可能会产生相关损失)：</p>\r\n<p>我们平台服务的使用或无法使用;</p>\r\n<p>通过我们平台服务购买、兑换、交换取得的任何商品、数据、信息、服务、信息，或缔结交易而发生的成本;</p>\r\n<p>用户的传输或数据遭到未获授权的存取或变造;</p>\r\n<p>任何第三方在我们平台服务中所作的声明或行为;</p>\r\n<p>与我们平台服务相关的其它事宜，但本使用协议有明确规定的除外。</p>\r\n<p><strong>十九、一般性条款</strong></p>\r\n<p>本使用协议构成用户与我们平台之间的正式协议，并用于规范用户的使用行为。在用户使用我们平台服务、使用第三方提供的内容或软件时，在遵守本协议的基础上，亦应遵守与该等服务、内容、软件有关附加条款及条件。</p>\r\n<p>本使用协以及用户与我们平台之间的关系，均受到中华人民共和国法律管辖。</p>\r\n<p>用户与我们平台就服务本身、本使用协议或其它有关事项发生的争议，应通过友好协商解决。协商不成的，应向北京市东城区人民法院提起诉讼。</p>\r\n<p>我们平台未行使或执行本使用协议设定、赋予的任何权利，不构成对该等权利的放弃。</p>\r\n<p>本使用协议中的任何条款因与中华人民共和国法律相抵触而无效，并不影响其它条款的效力。</p>\r\n<p>本使用协议的标题仅供方便阅读而设，如与协议内容存在矛盾，以协议内容为准。</p>\r\n<p><strong>二十、举报</strong></p>\r\n<p>如用户发现任何违反本服务条款的情事，请及时通知我们平台。</p>\r\n</div>','term','','1','1');
INSERT INTO `fanwe_help` VALUES ('2','服务介绍','','intro','','1','1');
INSERT INTO `fanwe_help` VALUES ('3','隐私策略','','privacy','','1','1');
INSERT INTO `fanwe_help` VALUES ('4','关于我们','','about','','1','1');
INSERT INTO `fanwe_help` VALUES ('5','官方微博','adsfadsfasdf','','http://weibo.com/fzmatthew','0','1');
DROP TABLE IF EXISTS `fanwe_index_image`;
CREATE TABLE `fanwe_index_image` (
  `id` int(11) NOT NULL auto_increment,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_index_image` VALUES ('5','./public/attachment/201211/07/10/5099c97ad9f82.gif','http://zc.fanwe.cn','1','点火时间');
INSERT INTO `fanwe_index_image` VALUES ('6','./public/attachment/201211/07/10/5099c984946c3.jpg','http://zc.fanwe.cn','2','点火时间');
DROP TABLE IF EXISTS `fanwe_log`;
CREATE TABLE `fanwe_log` (
  `id` int(11) NOT NULL auto_increment,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin` int(11) NOT NULL,
  `log_ip` varchar(255) NOT NULL,
  `log_status` tinyint(1) NOT NULL,
  `module` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2380 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_mail_server`;
CREATE TABLE `fanwe_mail_server` (
  `id` int(11) NOT NULL auto_increment,
  `smtp_server` varchar(255) NOT NULL,
  `smtp_name` varchar(255) NOT NULL,
  `smtp_pwd` varchar(255) NOT NULL,
  `is_ssl` tinyint(1) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `is_reset` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `total_use` int(11) NOT NULL,
  `is_verify` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_msg_template`;
CREATE TABLE `fanwe_msg_template` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_msg_template` VALUES ('1','TPL_MAIL_USER_PASSWORD','{$user.user_name}你好，请点击以下链接修改您的密码\r\n</p>\r\n<a href=\'{$user.password_url}\'>{$user.password_url}</a>','1','1');
DROP TABLE IF EXISTS `fanwe_nav`;
CREATE TABLE `fanwe_nav` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `u_module` varchar(255) NOT NULL,
  `u_action` varchar(255) NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_param` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_nav` VALUES ('42','首页','','0','1','1','index','','0','');
INSERT INTO `fanwe_nav` VALUES ('47','经典项目','','0','3','1','deals','index','0','r=classic');
INSERT INTO `fanwe_nav` VALUES ('46','所有项目','','0','2','1','deals','index','0','');
INSERT INTO `fanwe_nav` VALUES ('48','最新动态','','0','4','1','news','index','0','');
DROP TABLE IF EXISTS `fanwe_payment`;
CREATE TABLE `fanwe_payment` (
  `id` int(11) NOT NULL auto_increment,
  `class_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `online_pay` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `total_amount` double(20,4) NOT NULL,
  `config` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_payment` VALUES ('24','AlipayBank','1','1','支付宝银行直连支付','','0.0000','a:4:{s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_gateway\";a:17:{s:7:\"ICBCB2C\";s:1:\"1\";s:3:\"CMB\";s:1:\"1\";s:3:\"CCB\";s:1:\"1\";s:3:\"ABC\";s:1:\"1\";s:4:\"SPDB\";s:1:\"1\";s:3:\"SDB\";s:1:\"1\";s:3:\"CIB\";s:1:\"1\";s:6:\"BJBANK\";s:1:\"1\";s:7:\"CEBBANK\";s:1:\"1\";s:4:\"CMBC\";s:1:\"1\";s:5:\"CITIC\";s:1:\"1\";s:3:\"GDB\";s:1:\"1\";s:7:\"SPABANK\";s:1:\"1\";s:6:\"BOCB2C\";s:1:\"1\";s:4:\"COMM\";s:1:\"1\";s:7:\"ICBCBTB\";s:1:\"1\";s:10:\"PSBC-DEBIT\";s:1:\"1\";}}','','1');
DROP TABLE IF EXISTS `fanwe_payment_notice`;
CREATE TABLE `fanwe_payment_notice` (
  `id` int(11) NOT NULL auto_increment,
  `notice_sn` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `order_id` int(11) NOT NULL COMMENT 'order_id为0时为充值',
  `is_paid` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `memo` text NOT NULL,
  `money` double(20,4) NOT NULL,
  `outer_notice_sn` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL COMMENT '0为充值',
  `deal_item_id` int(11) NOT NULL COMMENT '0为充值',
  `deal_name` varchar(255) NOT NULL COMMENT '空为充值',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `notice_sn_unk` (`notice_sn`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `payment_id` (`payment_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_payment_notice` VALUES ('200','20121107399','1352230157','0','67','0','19','24','ICBCB2C','','500.0000','','56','24','拥有自己的咖啡馆');
INSERT INTO `fanwe_payment_notice` VALUES ('201','20121107985','1352230180','1352230180','67','1','19','0','','管理员收款','500.0000','','56','24','拥有自己的咖啡馆');
INSERT INTO `fanwe_payment_notice` VALUES ('202','20121107931','1352231631','0','78','0','19','24','CCB','ttt','500.0000','','58','30','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！');
INSERT INTO `fanwe_payment_notice` VALUES ('203','20121107124','1352231671','0','79','0','17','24','ICBCB2C','部份支付','200.0000','','56','24','拥有自己的咖啡馆');
DROP TABLE IF EXISTS `fanwe_region_conf`;
CREATE TABLE `fanwe_region_conf` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `region_level` tinyint(4) NOT NULL COMMENT '1:国 2:省 3:市(县) 4:区(镇)',
  `py` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3401 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_region_conf` VALUES ('3','1','安徽','2','anhui');
INSERT INTO `fanwe_region_conf` VALUES ('4','1','福建','2','fujian');
INSERT INTO `fanwe_region_conf` VALUES ('5','1','甘肃','2','gansu');
INSERT INTO `fanwe_region_conf` VALUES ('6','1','广东','2','guangdong');
INSERT INTO `fanwe_region_conf` VALUES ('7','1','广西','2','guangxi');
INSERT INTO `fanwe_region_conf` VALUES ('8','1','贵州','2','guizhou');
INSERT INTO `fanwe_region_conf` VALUES ('9','1','海南','2','hainan');
INSERT INTO `fanwe_region_conf` VALUES ('10','1','河北','2','hebei');
INSERT INTO `fanwe_region_conf` VALUES ('11','1','河南','2','henan');
INSERT INTO `fanwe_region_conf` VALUES ('12','1','黑龙江','2','heilongjiang');
INSERT INTO `fanwe_region_conf` VALUES ('13','1','湖北','2','hubei');
INSERT INTO `fanwe_region_conf` VALUES ('14','1','湖南','2','hunan');
INSERT INTO `fanwe_region_conf` VALUES ('15','1','吉林','2','jilin');
INSERT INTO `fanwe_region_conf` VALUES ('16','1','江苏','2','jiangsu');
INSERT INTO `fanwe_region_conf` VALUES ('17','1','江西','2','jiangxi');
INSERT INTO `fanwe_region_conf` VALUES ('18','1','辽宁','2','liaoning');
INSERT INTO `fanwe_region_conf` VALUES ('19','1','内蒙古','2','neimenggu');
INSERT INTO `fanwe_region_conf` VALUES ('20','1','宁夏','2','ningxia');
INSERT INTO `fanwe_region_conf` VALUES ('21','1','青海','2','qinghai');
INSERT INTO `fanwe_region_conf` VALUES ('22','1','山东','2','shandong');
INSERT INTO `fanwe_region_conf` VALUES ('23','1','山西','2','shanxi');
INSERT INTO `fanwe_region_conf` VALUES ('24','1','陕西','2','shanxi');
INSERT INTO `fanwe_region_conf` VALUES ('26','1','四川','2','sichuan');
INSERT INTO `fanwe_region_conf` VALUES ('28','1','西藏','2','xicang');
INSERT INTO `fanwe_region_conf` VALUES ('29','1','新疆','2','xinjiang');
INSERT INTO `fanwe_region_conf` VALUES ('30','1','云南','2','yunnan');
INSERT INTO `fanwe_region_conf` VALUES ('31','1','浙江','2','zhejiang');
INSERT INTO `fanwe_region_conf` VALUES ('36','3','安庆','3','anqing');
INSERT INTO `fanwe_region_conf` VALUES ('37','3','蚌埠','3','bangbu');
INSERT INTO `fanwe_region_conf` VALUES ('38','3','巢湖','3','chaohu');
INSERT INTO `fanwe_region_conf` VALUES ('39','3','池州','3','chizhou');
INSERT INTO `fanwe_region_conf` VALUES ('40','3','滁州','3','chuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('41','3','阜阳','3','fuyang');
INSERT INTO `fanwe_region_conf` VALUES ('42','3','淮北','3','huaibei');
INSERT INTO `fanwe_region_conf` VALUES ('43','3','淮南','3','huainan');
INSERT INTO `fanwe_region_conf` VALUES ('44','3','黄山','3','huangshan');
INSERT INTO `fanwe_region_conf` VALUES ('45','3','六安','3','liuan');
INSERT INTO `fanwe_region_conf` VALUES ('46','3','马鞍山','3','maanshan');
INSERT INTO `fanwe_region_conf` VALUES ('47','3','宿州','3','suzhou');
INSERT INTO `fanwe_region_conf` VALUES ('48','3','铜陵','3','tongling');
INSERT INTO `fanwe_region_conf` VALUES ('49','3','芜湖','3','wuhu');
INSERT INTO `fanwe_region_conf` VALUES ('50','3','宣城','3','xuancheng');
INSERT INTO `fanwe_region_conf` VALUES ('51','3','亳州','3','zhou');
INSERT INTO `fanwe_region_conf` VALUES ('52','2','北京','2','beijing');
INSERT INTO `fanwe_region_conf` VALUES ('53','4','福州','3','fuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('54','4','龙岩','3','longyan');
INSERT INTO `fanwe_region_conf` VALUES ('55','4','南平','3','nanping');
INSERT INTO `fanwe_region_conf` VALUES ('56','4','宁德','3','ningde');
INSERT INTO `fanwe_region_conf` VALUES ('57','4','莆田','3','putian');
INSERT INTO `fanwe_region_conf` VALUES ('58','4','泉州','3','quanzhou');
INSERT INTO `fanwe_region_conf` VALUES ('59','4','三明','3','sanming');
INSERT INTO `fanwe_region_conf` VALUES ('60','4','厦门','3','xiamen');
INSERT INTO `fanwe_region_conf` VALUES ('61','4','漳州','3','zhangzhou');
INSERT INTO `fanwe_region_conf` VALUES ('62','5','兰州','3','lanzhou');
INSERT INTO `fanwe_region_conf` VALUES ('63','5','白银','3','baiyin');
INSERT INTO `fanwe_region_conf` VALUES ('64','5','定西','3','dingxi');
INSERT INTO `fanwe_region_conf` VALUES ('65','5','甘南','3','gannan');
INSERT INTO `fanwe_region_conf` VALUES ('66','5','嘉峪关','3','jiayuguan');
INSERT INTO `fanwe_region_conf` VALUES ('67','5','金昌','3','jinchang');
INSERT INTO `fanwe_region_conf` VALUES ('68','5','酒泉','3','jiuquan');
INSERT INTO `fanwe_region_conf` VALUES ('69','5','临夏','3','linxia');
INSERT INTO `fanwe_region_conf` VALUES ('70','5','陇南','3','longnan');
INSERT INTO `fanwe_region_conf` VALUES ('71','5','平凉','3','pingliang');
INSERT INTO `fanwe_region_conf` VALUES ('72','5','庆阳','3','qingyang');
INSERT INTO `fanwe_region_conf` VALUES ('73','5','天水','3','tianshui');
INSERT INTO `fanwe_region_conf` VALUES ('74','5','武威','3','wuwei');
INSERT INTO `fanwe_region_conf` VALUES ('75','5','张掖','3','zhangye');
INSERT INTO `fanwe_region_conf` VALUES ('76','6','广州','3','guangzhou');
INSERT INTO `fanwe_region_conf` VALUES ('77','6','深圳','3','shen');
INSERT INTO `fanwe_region_conf` VALUES ('78','6','潮州','3','chaozhou');
INSERT INTO `fanwe_region_conf` VALUES ('79','6','东莞','3','dong');
INSERT INTO `fanwe_region_conf` VALUES ('80','6','佛山','3','foshan');
INSERT INTO `fanwe_region_conf` VALUES ('81','6','河源','3','heyuan');
INSERT INTO `fanwe_region_conf` VALUES ('82','6','惠州','3','huizhou');
INSERT INTO `fanwe_region_conf` VALUES ('83','6','江门','3','jiangmen');
INSERT INTO `fanwe_region_conf` VALUES ('84','6','揭阳','3','jieyang');
INSERT INTO `fanwe_region_conf` VALUES ('85','6','茂名','3','maoming');
INSERT INTO `fanwe_region_conf` VALUES ('86','6','梅州','3','meizhou');
INSERT INTO `fanwe_region_conf` VALUES ('87','6','清远','3','qingyuan');
INSERT INTO `fanwe_region_conf` VALUES ('88','6','汕头','3','shantou');
INSERT INTO `fanwe_region_conf` VALUES ('89','6','汕尾','3','shanwei');
INSERT INTO `fanwe_region_conf` VALUES ('90','6','韶关','3','shaoguan');
INSERT INTO `fanwe_region_conf` VALUES ('91','6','阳江','3','yangjiang');
INSERT INTO `fanwe_region_conf` VALUES ('92','6','云浮','3','yunfu');
INSERT INTO `fanwe_region_conf` VALUES ('93','6','湛江','3','zhanjiang');
INSERT INTO `fanwe_region_conf` VALUES ('94','6','肇庆','3','zhaoqing');
INSERT INTO `fanwe_region_conf` VALUES ('95','6','中山','3','zhongshan');
INSERT INTO `fanwe_region_conf` VALUES ('96','6','珠海','3','zhuhai');
INSERT INTO `fanwe_region_conf` VALUES ('97','7','南宁','3','nanning');
INSERT INTO `fanwe_region_conf` VALUES ('98','7','桂林','3','guilin');
INSERT INTO `fanwe_region_conf` VALUES ('99','7','百色','3','baise');
INSERT INTO `fanwe_region_conf` VALUES ('100','7','北海','3','beihai');
INSERT INTO `fanwe_region_conf` VALUES ('101','7','崇左','3','chongzuo');
INSERT INTO `fanwe_region_conf` VALUES ('102','7','防城港','3','fangchenggang');
INSERT INTO `fanwe_region_conf` VALUES ('103','7','贵港','3','guigang');
INSERT INTO `fanwe_region_conf` VALUES ('104','7','河池','3','hechi');
INSERT INTO `fanwe_region_conf` VALUES ('105','7','贺州','3','hezhou');
INSERT INTO `fanwe_region_conf` VALUES ('106','7','来宾','3','laibin');
INSERT INTO `fanwe_region_conf` VALUES ('107','7','柳州','3','liuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('108','7','钦州','3','qinzhou');
INSERT INTO `fanwe_region_conf` VALUES ('109','7','梧州','3','wuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('110','7','玉林','3','yulin');
INSERT INTO `fanwe_region_conf` VALUES ('111','8','贵阳','3','guiyang');
INSERT INTO `fanwe_region_conf` VALUES ('112','8','安顺','3','anshun');
INSERT INTO `fanwe_region_conf` VALUES ('113','8','毕节','3','bijie');
INSERT INTO `fanwe_region_conf` VALUES ('114','8','六盘水','3','liupanshui');
INSERT INTO `fanwe_region_conf` VALUES ('115','8','黔东南','3','qiandongnan');
INSERT INTO `fanwe_region_conf` VALUES ('116','8','黔南','3','qiannan');
INSERT INTO `fanwe_region_conf` VALUES ('117','8','黔西南','3','qianxinan');
INSERT INTO `fanwe_region_conf` VALUES ('118','8','铜仁','3','tongren');
INSERT INTO `fanwe_region_conf` VALUES ('119','8','遵义','3','zunyi');
INSERT INTO `fanwe_region_conf` VALUES ('120','9','海口','3','haikou');
INSERT INTO `fanwe_region_conf` VALUES ('121','9','三亚','3','sanya');
INSERT INTO `fanwe_region_conf` VALUES ('122','9','白沙','3','baisha');
INSERT INTO `fanwe_region_conf` VALUES ('123','9','保亭','3','baoting');
INSERT INTO `fanwe_region_conf` VALUES ('124','9','昌江','3','changjiang');
INSERT INTO `fanwe_region_conf` VALUES ('125','9','澄迈县','3','chengmaixian');
INSERT INTO `fanwe_region_conf` VALUES ('126','9','定安县','3','dinganxian');
INSERT INTO `fanwe_region_conf` VALUES ('127','9','东方','3','dongfang');
INSERT INTO `fanwe_region_conf` VALUES ('128','9','乐东','3','ledong');
INSERT INTO `fanwe_region_conf` VALUES ('129','9','临高县','3','lingaoxian');
INSERT INTO `fanwe_region_conf` VALUES ('130','9','陵水','3','lingshui');
INSERT INTO `fanwe_region_conf` VALUES ('131','9','琼海','3','qionghai');
INSERT INTO `fanwe_region_conf` VALUES ('132','9','琼中','3','qiongzhong');
INSERT INTO `fanwe_region_conf` VALUES ('133','9','屯昌县','3','tunchangxian');
INSERT INTO `fanwe_region_conf` VALUES ('134','9','万宁','3','wanning');
INSERT INTO `fanwe_region_conf` VALUES ('135','9','文昌','3','wenchang');
INSERT INTO `fanwe_region_conf` VALUES ('136','9','五指山','3','wuzhishan');
INSERT INTO `fanwe_region_conf` VALUES ('137','9','儋州','3','zhou');
INSERT INTO `fanwe_region_conf` VALUES ('138','10','石家庄','3','shijiazhuang');
INSERT INTO `fanwe_region_conf` VALUES ('139','10','保定','3','baoding');
INSERT INTO `fanwe_region_conf` VALUES ('140','10','沧州','3','cangzhou');
INSERT INTO `fanwe_region_conf` VALUES ('141','10','承德','3','chengde');
INSERT INTO `fanwe_region_conf` VALUES ('142','10','邯郸','3','handan');
INSERT INTO `fanwe_region_conf` VALUES ('143','10','衡水','3','hengshui');
INSERT INTO `fanwe_region_conf` VALUES ('144','10','廊坊','3','langfang');
INSERT INTO `fanwe_region_conf` VALUES ('145','10','秦皇岛','3','qinhuangdao');
INSERT INTO `fanwe_region_conf` VALUES ('146','10','唐山','3','tangshan');
INSERT INTO `fanwe_region_conf` VALUES ('147','10','邢台','3','xingtai');
INSERT INTO `fanwe_region_conf` VALUES ('148','10','张家口','3','zhangjiakou');
INSERT INTO `fanwe_region_conf` VALUES ('149','11','郑州','3','zhengzhou');
INSERT INTO `fanwe_region_conf` VALUES ('150','11','洛阳','3','luoyang');
INSERT INTO `fanwe_region_conf` VALUES ('151','11','开封','3','kaifeng');
INSERT INTO `fanwe_region_conf` VALUES ('152','11','安阳','3','anyang');
INSERT INTO `fanwe_region_conf` VALUES ('153','11','鹤壁','3','hebi');
INSERT INTO `fanwe_region_conf` VALUES ('154','11','济源','3','jiyuan');
INSERT INTO `fanwe_region_conf` VALUES ('155','11','焦作','3','jiaozuo');
INSERT INTO `fanwe_region_conf` VALUES ('156','11','南阳','3','nanyang');
INSERT INTO `fanwe_region_conf` VALUES ('157','11','平顶山','3','pingdingshan');
INSERT INTO `fanwe_region_conf` VALUES ('158','11','三门峡','3','sanmenxia');
INSERT INTO `fanwe_region_conf` VALUES ('159','11','商丘','3','shangqiu');
INSERT INTO `fanwe_region_conf` VALUES ('160','11','新乡','3','xinxiang');
INSERT INTO `fanwe_region_conf` VALUES ('161','11','信阳','3','xinyang');
INSERT INTO `fanwe_region_conf` VALUES ('162','11','许昌','3','xuchang');
INSERT INTO `fanwe_region_conf` VALUES ('163','11','周口','3','zhoukou');
INSERT INTO `fanwe_region_conf` VALUES ('164','11','驻马店','3','zhumadian');
INSERT INTO `fanwe_region_conf` VALUES ('165','11','漯河','3','he');
INSERT INTO `fanwe_region_conf` VALUES ('166','11','濮阳','3','yang');
INSERT INTO `fanwe_region_conf` VALUES ('167','12','哈尔滨','3','haerbin');
INSERT INTO `fanwe_region_conf` VALUES ('168','12','大庆','3','daqing');
INSERT INTO `fanwe_region_conf` VALUES ('169','12','大兴安岭','3','daxinganling');
INSERT INTO `fanwe_region_conf` VALUES ('170','12','鹤岗','3','hegang');
INSERT INTO `fanwe_region_conf` VALUES ('171','12','黑河','3','heihe');
INSERT INTO `fanwe_region_conf` VALUES ('172','12','鸡西','3','jixi');
INSERT INTO `fanwe_region_conf` VALUES ('173','12','佳木斯','3','jiamusi');
INSERT INTO `fanwe_region_conf` VALUES ('174','12','牡丹江','3','mudanjiang');
INSERT INTO `fanwe_region_conf` VALUES ('175','12','七台河','3','qitaihe');
INSERT INTO `fanwe_region_conf` VALUES ('176','12','齐齐哈尔','3','qiqihaer');
INSERT INTO `fanwe_region_conf` VALUES ('177','12','双鸭山','3','shuangyashan');
INSERT INTO `fanwe_region_conf` VALUES ('178','12','绥化','3','suihua');
INSERT INTO `fanwe_region_conf` VALUES ('179','12','伊春','3','yichun');
INSERT INTO `fanwe_region_conf` VALUES ('180','13','武汉','3','wuhan');
INSERT INTO `fanwe_region_conf` VALUES ('181','13','仙桃','3','xiantao');
INSERT INTO `fanwe_region_conf` VALUES ('182','13','鄂州','3','ezhou');
INSERT INTO `fanwe_region_conf` VALUES ('183','13','黄冈','3','huanggang');
INSERT INTO `fanwe_region_conf` VALUES ('184','13','黄石','3','huangshi');
INSERT INTO `fanwe_region_conf` VALUES ('185','13','荆门','3','jingmen');
INSERT INTO `fanwe_region_conf` VALUES ('186','13','荆州','3','jingzhou');
INSERT INTO `fanwe_region_conf` VALUES ('187','13','潜江','3','qianjiang');
INSERT INTO `fanwe_region_conf` VALUES ('188','13','神农架林区','3','shennongjialinqu');
INSERT INTO `fanwe_region_conf` VALUES ('189','13','十堰','3','shiyan');
INSERT INTO `fanwe_region_conf` VALUES ('190','13','随州','3','suizhou');
INSERT INTO `fanwe_region_conf` VALUES ('191','13','天门','3','tianmen');
INSERT INTO `fanwe_region_conf` VALUES ('192','13','咸宁','3','xianning');
INSERT INTO `fanwe_region_conf` VALUES ('193','13','襄樊','3','xiangfan');
INSERT INTO `fanwe_region_conf` VALUES ('194','13','孝感','3','xiaogan');
INSERT INTO `fanwe_region_conf` VALUES ('195','13','宜昌','3','yichang');
INSERT INTO `fanwe_region_conf` VALUES ('196','13','恩施','3','enshi');
INSERT INTO `fanwe_region_conf` VALUES ('197','14','长沙','3','changsha');
INSERT INTO `fanwe_region_conf` VALUES ('198','14','张家界','3','zhangjiajie');
INSERT INTO `fanwe_region_conf` VALUES ('199','14','常德','3','changde');
INSERT INTO `fanwe_region_conf` VALUES ('200','14','郴州','3','chenzhou');
INSERT INTO `fanwe_region_conf` VALUES ('201','14','衡阳','3','hengyang');
INSERT INTO `fanwe_region_conf` VALUES ('202','14','怀化','3','huaihua');
INSERT INTO `fanwe_region_conf` VALUES ('203','14','娄底','3','loudi');
INSERT INTO `fanwe_region_conf` VALUES ('204','14','邵阳','3','shaoyang');
INSERT INTO `fanwe_region_conf` VALUES ('205','14','湘潭','3','xiangtan');
INSERT INTO `fanwe_region_conf` VALUES ('206','14','湘西','3','xiangxi');
INSERT INTO `fanwe_region_conf` VALUES ('207','14','益阳','3','yiyang');
INSERT INTO `fanwe_region_conf` VALUES ('208','14','永州','3','yongzhou');
INSERT INTO `fanwe_region_conf` VALUES ('209','14','岳阳','3','yueyang');
INSERT INTO `fanwe_region_conf` VALUES ('210','14','株洲','3','zhuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('211','15','长春','3','changchun');
INSERT INTO `fanwe_region_conf` VALUES ('212','15','吉林','3','jilin');
INSERT INTO `fanwe_region_conf` VALUES ('213','15','白城','3','baicheng');
INSERT INTO `fanwe_region_conf` VALUES ('214','15','白山','3','baishan');
INSERT INTO `fanwe_region_conf` VALUES ('215','15','辽源','3','liaoyuan');
INSERT INTO `fanwe_region_conf` VALUES ('216','15','四平','3','siping');
INSERT INTO `fanwe_region_conf` VALUES ('217','15','松原','3','songyuan');
INSERT INTO `fanwe_region_conf` VALUES ('218','15','通化','3','tonghua');
INSERT INTO `fanwe_region_conf` VALUES ('219','15','延边','3','yanbian');
INSERT INTO `fanwe_region_conf` VALUES ('220','16','南京','3','nanjing');
INSERT INTO `fanwe_region_conf` VALUES ('221','16','苏州','3','suzhou');
INSERT INTO `fanwe_region_conf` VALUES ('222','16','无锡','3','wuxi');
INSERT INTO `fanwe_region_conf` VALUES ('223','16','常州','3','changzhou');
INSERT INTO `fanwe_region_conf` VALUES ('224','16','淮安','3','huaian');
INSERT INTO `fanwe_region_conf` VALUES ('225','16','连云港','3','lianyungang');
INSERT INTO `fanwe_region_conf` VALUES ('226','16','南通','3','nantong');
INSERT INTO `fanwe_region_conf` VALUES ('227','16','宿迁','3','suqian');
INSERT INTO `fanwe_region_conf` VALUES ('228','16','泰州','3','taizhou');
INSERT INTO `fanwe_region_conf` VALUES ('229','16','徐州','3','xuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('230','16','盐城','3','yancheng');
INSERT INTO `fanwe_region_conf` VALUES ('231','16','扬州','3','yangzhou');
INSERT INTO `fanwe_region_conf` VALUES ('232','16','镇江','3','zhenjiang');
INSERT INTO `fanwe_region_conf` VALUES ('233','17','南昌','3','nanchang');
INSERT INTO `fanwe_region_conf` VALUES ('234','17','抚州','3','fuzhou');
INSERT INTO `fanwe_region_conf` VALUES ('235','17','赣州','3','ganzhou');
INSERT INTO `fanwe_region_conf` VALUES ('236','17','吉安','3','jian');
INSERT INTO `fanwe_region_conf` VALUES ('237','17','景德镇','3','jingdezhen');
INSERT INTO `fanwe_region_conf` VALUES ('238','17','九江','3','jiujiang');
INSERT INTO `fanwe_region_conf` VALUES ('239','17','萍乡','3','pingxiang');
INSERT INTO `fanwe_region_conf` VALUES ('240','17','上饶','3','shangrao');
INSERT INTO `fanwe_region_conf` VALUES ('241','17','新余','3','xinyu');
INSERT INTO `fanwe_region_conf` VALUES ('242','17','宜春','3','yichun');
INSERT INTO `fanwe_region_conf` VALUES ('243','17','鹰潭','3','yingtan');
INSERT INTO `fanwe_region_conf` VALUES ('244','18','沈阳','3','shenyang');
INSERT INTO `fanwe_region_conf` VALUES ('245','18','大连','3','dalian');
INSERT INTO `fanwe_region_conf` VALUES ('246','18','鞍山','3','anshan');
INSERT INTO `fanwe_region_conf` VALUES ('247','18','本溪','3','benxi');
INSERT INTO `fanwe_region_conf` VALUES ('248','18','朝阳','3','chaoyang');
INSERT INTO `fanwe_region_conf` VALUES ('249','18','丹东','3','dandong');
INSERT INTO `fanwe_region_conf` VALUES ('250','18','抚顺','3','fushun');
INSERT INTO `fanwe_region_conf` VALUES ('251','18','阜新','3','fuxin');
INSERT INTO `fanwe_region_conf` VALUES ('252','18','葫芦岛','3','huludao');
INSERT INTO `fanwe_region_conf` VALUES ('253','18','锦州','3','jinzhou');
INSERT INTO `fanwe_region_conf` VALUES ('254','18','辽阳','3','liaoyang');
INSERT INTO `fanwe_region_conf` VALUES ('255','18','盘锦','3','panjin');
INSERT INTO `fanwe_region_conf` VALUES ('256','18','铁岭','3','tieling');
INSERT INTO `fanwe_region_conf` VALUES ('257','18','营口','3','yingkou');
INSERT INTO `fanwe_region_conf` VALUES ('258','19','呼和浩特','3','huhehaote');
INSERT INTO `fanwe_region_conf` VALUES ('259','19','阿拉善盟','3','alashanmeng');
INSERT INTO `fanwe_region_conf` VALUES ('260','19','巴彦淖尔盟','3','bayannaoermeng');
INSERT INTO `fanwe_region_conf` VALUES ('261','19','包头','3','baotou');
INSERT INTO `fanwe_region_conf` VALUES ('262','19','赤峰','3','chifeng');
INSERT INTO `fanwe_region_conf` VALUES ('263','19','鄂尔多斯','3','eerduosi');
INSERT INTO `fanwe_region_conf` VALUES ('264','19','呼伦贝尔','3','hulunbeier');
INSERT INTO `fanwe_region_conf` VALUES ('265','19','通辽','3','tongliao');
INSERT INTO `fanwe_region_conf` VALUES ('266','19','乌海','3','wuhai');
INSERT INTO `fanwe_region_conf` VALUES ('267','19','乌兰察布市','3','wulanchabushi');
INSERT INTO `fanwe_region_conf` VALUES ('268','19','锡林郭勒盟','3','xilinguolemeng');
INSERT INTO `fanwe_region_conf` VALUES ('269','19','兴安盟','3','xinganmeng');
INSERT INTO `fanwe_region_conf` VALUES ('270','20','银川','3','yinchuan');
INSERT INTO `fanwe_region_conf` VALUES ('271','20','固原','3','guyuan');
INSERT INTO `fanwe_region_conf` VALUES ('272','20','石嘴山','3','shizuishan');
INSERT INTO `fanwe_region_conf` VALUES ('273','20','吴忠','3','wuzhong');
INSERT INTO `fanwe_region_conf` VALUES ('274','20','中卫','3','zhongwei');
INSERT INTO `fanwe_region_conf` VALUES ('275','21','西宁','3','xining');
INSERT INTO `fanwe_region_conf` VALUES ('276','21','果洛','3','guoluo');
INSERT INTO `fanwe_region_conf` VALUES ('277','21','海北','3','haibei');
INSERT INTO `fanwe_region_conf` VALUES ('278','21','海东','3','haidong');
INSERT INTO `fanwe_region_conf` VALUES ('279','21','海南','3','hainan');
INSERT INTO `fanwe_region_conf` VALUES ('280','21','海西','3','haixi');
INSERT INTO `fanwe_region_conf` VALUES ('281','21','黄南','3','huangnan');
INSERT INTO `fanwe_region_conf` VALUES ('282','21','玉树','3','yushu');
INSERT INTO `fanwe_region_conf` VALUES ('283','22','济南','3','jinan');
INSERT INTO `fanwe_region_conf` VALUES ('284','22','青岛','3','qingdao');
INSERT INTO `fanwe_region_conf` VALUES ('285','22','滨州','3','binzhou');
INSERT INTO `fanwe_region_conf` VALUES ('286','22','德州','3','dezhou');
INSERT INTO `fanwe_region_conf` VALUES ('287','22','东营','3','dongying');
INSERT INTO `fanwe_region_conf` VALUES ('288','22','菏泽','3','heze');
INSERT INTO `fanwe_region_conf` VALUES ('289','22','济宁','3','jining');
INSERT INTO `fanwe_region_conf` VALUES ('290','22','莱芜','3','laiwu');
INSERT INTO `fanwe_region_conf` VALUES ('291','22','聊城','3','liaocheng');
INSERT INTO `fanwe_region_conf` VALUES ('292','22','临沂','3','linyi');
INSERT INTO `fanwe_region_conf` VALUES ('293','22','日照','3','rizhao');
INSERT INTO `fanwe_region_conf` VALUES ('294','22','泰安','3','taian');
INSERT INTO `fanwe_region_conf` VALUES ('295','22','威海','3','weihai');
INSERT INTO `fanwe_region_conf` VALUES ('296','22','潍坊','3','weifang');
INSERT INTO `fanwe_region_conf` VALUES ('297','22','烟台','3','yantai');
INSERT INTO `fanwe_region_conf` VALUES ('298','22','枣庄','3','zaozhuang');
INSERT INTO `fanwe_region_conf` VALUES ('299','22','淄博','3','zibo');
INSERT INTO `fanwe_region_conf` VALUES ('300','23','太原','3','taiyuan');
INSERT INTO `fanwe_region_conf` VALUES ('301','23','长治','3','changzhi');
INSERT INTO `fanwe_region_conf` VALUES ('302','23','大同','3','datong');
INSERT INTO `fanwe_region_conf` VALUES ('303','23','晋城','3','jincheng');
INSERT INTO `fanwe_region_conf` VALUES ('304','23','晋中','3','jinzhong');
INSERT INTO `fanwe_region_conf` VALUES ('305','23','临汾','3','linfen');
INSERT INTO `fanwe_region_conf` VALUES ('306','23','吕梁','3','lvliang');
INSERT INTO `fanwe_region_conf` VALUES ('307','23','朔州','3','shuozhou');
INSERT INTO `fanwe_region_conf` VALUES ('308','23','忻州','3','xinzhou');
INSERT INTO `fanwe_region_conf` VALUES ('309','23','阳泉','3','yangquan');
INSERT INTO `fanwe_region_conf` VALUES ('310','23','运城','3','yuncheng');
INSERT INTO `fanwe_region_conf` VALUES ('311','24','西安','3','xian');
INSERT INTO `fanwe_region_conf` VALUES ('312','24','安康','3','ankang');
INSERT INTO `fanwe_region_conf` VALUES ('313','24','宝鸡','3','baoji');
INSERT INTO `fanwe_region_conf` VALUES ('314','24','汉中','3','hanzhong');
INSERT INTO `fanwe_region_conf` VALUES ('315','24','商洛','3','shangluo');
INSERT INTO `fanwe_region_conf` VALUES ('316','24','铜川','3','tongchuan');
INSERT INTO `fanwe_region_conf` VALUES ('317','24','渭南','3','weinan');
INSERT INTO `fanwe_region_conf` VALUES ('318','24','咸阳','3','xianyang');
INSERT INTO `fanwe_region_conf` VALUES ('319','24','延安','3','yanan');
INSERT INTO `fanwe_region_conf` VALUES ('320','24','榆林','3','yulin');
INSERT INTO `fanwe_region_conf` VALUES ('321','25','上海','2','shanghai');
INSERT INTO `fanwe_region_conf` VALUES ('322','26','成都','3','chengdu');
INSERT INTO `fanwe_region_conf` VALUES ('323','26','绵阳','3','mianyang');
INSERT INTO `fanwe_region_conf` VALUES ('324','26','阿坝','3','aba');
INSERT INTO `fanwe_region_conf` VALUES ('325','26','巴中','3','bazhong');
INSERT INTO `fanwe_region_conf` VALUES ('326','26','达州','3','dazhou');
INSERT INTO `fanwe_region_conf` VALUES ('327','26','德阳','3','deyang');
INSERT INTO `fanwe_region_conf` VALUES ('328','26','甘孜','3','ganzi');
INSERT INTO `fanwe_region_conf` VALUES ('329','26','广安','3','guangan');
INSERT INTO `fanwe_region_conf` VALUES ('330','26','广元','3','guangyuan');
INSERT INTO `fanwe_region_conf` VALUES ('331','26','乐山','3','leshan');
INSERT INTO `fanwe_region_conf` VALUES ('332','26','凉山','3','liangshan');
INSERT INTO `fanwe_region_conf` VALUES ('333','26','眉山','3','meishan');
INSERT INTO `fanwe_region_conf` VALUES ('334','26','南充','3','nanchong');
INSERT INTO `fanwe_region_conf` VALUES ('335','26','内江','3','neijiang');
INSERT INTO `fanwe_region_conf` VALUES ('336','26','攀枝花','3','panzhihua');
INSERT INTO `fanwe_region_conf` VALUES ('337','26','遂宁','3','suining');
INSERT INTO `fanwe_region_conf` VALUES ('338','26','雅安','3','yaan');
INSERT INTO `fanwe_region_conf` VALUES ('339','26','宜宾','3','yibin');
INSERT INTO `fanwe_region_conf` VALUES ('340','26','资阳','3','ziyang');
INSERT INTO `fanwe_region_conf` VALUES ('341','26','自贡','3','zigong');
INSERT INTO `fanwe_region_conf` VALUES ('342','26','泸州','3','zhou');
INSERT INTO `fanwe_region_conf` VALUES ('343','27','天津','2','tianjin');
INSERT INTO `fanwe_region_conf` VALUES ('344','28','拉萨','3','lasa');
INSERT INTO `fanwe_region_conf` VALUES ('345','28','阿里','3','ali');
INSERT INTO `fanwe_region_conf` VALUES ('346','28','昌都','3','changdu');
INSERT INTO `fanwe_region_conf` VALUES ('347','28','林芝','3','linzhi');
INSERT INTO `fanwe_region_conf` VALUES ('348','28','那曲','3','naqu');
INSERT INTO `fanwe_region_conf` VALUES ('349','28','日喀则','3','rikaze');
INSERT INTO `fanwe_region_conf` VALUES ('350','28','山南','3','shannan');
INSERT INTO `fanwe_region_conf` VALUES ('351','29','乌鲁木齐','3','wulumuqi');
INSERT INTO `fanwe_region_conf` VALUES ('352','29','阿克苏','3','akesu');
INSERT INTO `fanwe_region_conf` VALUES ('353','29','阿拉尔','3','alaer');
INSERT INTO `fanwe_region_conf` VALUES ('354','29','巴音郭楞','3','bayinguoleng');
INSERT INTO `fanwe_region_conf` VALUES ('355','29','博尔塔拉','3','boertala');
INSERT INTO `fanwe_region_conf` VALUES ('356','29','昌吉','3','changji');
INSERT INTO `fanwe_region_conf` VALUES ('357','29','哈密','3','hami');
INSERT INTO `fanwe_region_conf` VALUES ('358','29','和田','3','hetian');
INSERT INTO `fanwe_region_conf` VALUES ('359','29','喀什','3','kashi');
INSERT INTO `fanwe_region_conf` VALUES ('360','29','克拉玛依','3','kelamayi');
INSERT INTO `fanwe_region_conf` VALUES ('361','29','克孜勒苏','3','kezilesu');
INSERT INTO `fanwe_region_conf` VALUES ('362','29','石河子','3','shihezi');
INSERT INTO `fanwe_region_conf` VALUES ('363','29','图木舒克','3','tumushuke');
INSERT INTO `fanwe_region_conf` VALUES ('364','29','吐鲁番','3','tulufan');
INSERT INTO `fanwe_region_conf` VALUES ('365','29','五家渠','3','wujiaqu');
INSERT INTO `fanwe_region_conf` VALUES ('366','29','伊犁','3','yili');
INSERT INTO `fanwe_region_conf` VALUES ('367','30','昆明','3','kunming');
INSERT INTO `fanwe_region_conf` VALUES ('368','30','怒江','3','nujiang');
INSERT INTO `fanwe_region_conf` VALUES ('369','30','普洱','3','puer');
INSERT INTO `fanwe_region_conf` VALUES ('370','30','丽江','3','lijiang');
INSERT INTO `fanwe_region_conf` VALUES ('371','30','保山','3','baoshan');
INSERT INTO `fanwe_region_conf` VALUES ('372','30','楚雄','3','chuxiong');
INSERT INTO `fanwe_region_conf` VALUES ('373','30','大理','3','dali');
INSERT INTO `fanwe_region_conf` VALUES ('374','30','德宏','3','dehong');
INSERT INTO `fanwe_region_conf` VALUES ('375','30','迪庆','3','diqing');
INSERT INTO `fanwe_region_conf` VALUES ('376','30','红河','3','honghe');
INSERT INTO `fanwe_region_conf` VALUES ('377','30','临沧','3','lincang');
INSERT INTO `fanwe_region_conf` VALUES ('378','30','曲靖','3','qujing');
INSERT INTO `fanwe_region_conf` VALUES ('379','30','文山','3','wenshan');
INSERT INTO `fanwe_region_conf` VALUES ('380','30','西双版纳','3','xishuangbanna');
INSERT INTO `fanwe_region_conf` VALUES ('381','30','玉溪','3','yuxi');
INSERT INTO `fanwe_region_conf` VALUES ('382','30','昭通','3','zhaotong');
INSERT INTO `fanwe_region_conf` VALUES ('383','31','杭州','3','hangzhou');
INSERT INTO `fanwe_region_conf` VALUES ('384','31','湖州','3','huzhou');
INSERT INTO `fanwe_region_conf` VALUES ('385','31','嘉兴','3','jiaxing');
INSERT INTO `fanwe_region_conf` VALUES ('386','31','金华','3','jinhua');
INSERT INTO `fanwe_region_conf` VALUES ('387','31','丽水','3','lishui');
INSERT INTO `fanwe_region_conf` VALUES ('388','31','宁波','3','ningbo');
INSERT INTO `fanwe_region_conf` VALUES ('389','31','绍兴','3','shaoxing');
INSERT INTO `fanwe_region_conf` VALUES ('390','31','台州','3','taizhou');
INSERT INTO `fanwe_region_conf` VALUES ('391','31','温州','3','wenzhou');
INSERT INTO `fanwe_region_conf` VALUES ('392','31','舟山','3','zhoushan');
INSERT INTO `fanwe_region_conf` VALUES ('393','31','衢州','3','zhou');
INSERT INTO `fanwe_region_conf` VALUES ('394','32','重庆','2','zhongqing');
INSERT INTO `fanwe_region_conf` VALUES ('395','33','香港','2','xianggang');
INSERT INTO `fanwe_region_conf` VALUES ('396','34','澳门','2','aomen');
INSERT INTO `fanwe_region_conf` VALUES ('397','35','台湾','2','taiwan');
INSERT INTO `fanwe_region_conf` VALUES ('500','52','东城区','3','dongchengqu');
INSERT INTO `fanwe_region_conf` VALUES ('501','52','西城区','3','xichengqu');
INSERT INTO `fanwe_region_conf` VALUES ('502','52','海淀区','3','haidianqu');
INSERT INTO `fanwe_region_conf` VALUES ('503','52','朝阳区','3','chaoyangqu');
INSERT INTO `fanwe_region_conf` VALUES ('504','52','崇文区','3','chongwenqu');
INSERT INTO `fanwe_region_conf` VALUES ('505','52','宣武区','3','xuanwuqu');
INSERT INTO `fanwe_region_conf` VALUES ('506','52','丰台区','3','fengtaiqu');
INSERT INTO `fanwe_region_conf` VALUES ('507','52','石景山区','3','shijingshanqu');
INSERT INTO `fanwe_region_conf` VALUES ('508','52','房山区','3','fangshanqu');
INSERT INTO `fanwe_region_conf` VALUES ('509','52','门头沟区','3','mentougouqu');
INSERT INTO `fanwe_region_conf` VALUES ('510','52','通州区','3','tongzhouqu');
INSERT INTO `fanwe_region_conf` VALUES ('511','52','顺义区','3','shunyiqu');
INSERT INTO `fanwe_region_conf` VALUES ('512','52','昌平区','3','changpingqu');
INSERT INTO `fanwe_region_conf` VALUES ('513','52','怀柔区','3','huairouqu');
INSERT INTO `fanwe_region_conf` VALUES ('514','52','平谷区','3','pingguqu');
INSERT INTO `fanwe_region_conf` VALUES ('515','52','大兴区','3','daxingqu');
INSERT INTO `fanwe_region_conf` VALUES ('516','52','密云县','3','miyunxian');
INSERT INTO `fanwe_region_conf` VALUES ('517','52','延庆县','3','yanqingxian');
INSERT INTO `fanwe_region_conf` VALUES ('2703','321','长宁区','3','changningqu');
INSERT INTO `fanwe_region_conf` VALUES ('2704','321','闸北区','3','zhabeiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2705','321','闵行区','3','xingqu');
INSERT INTO `fanwe_region_conf` VALUES ('2706','321','徐汇区','3','xuhuiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2707','321','浦东新区','3','pudongxinqu');
INSERT INTO `fanwe_region_conf` VALUES ('2708','321','杨浦区','3','yangpuqu');
INSERT INTO `fanwe_region_conf` VALUES ('2709','321','普陀区','3','putuoqu');
INSERT INTO `fanwe_region_conf` VALUES ('2710','321','静安区','3','jinganqu');
INSERT INTO `fanwe_region_conf` VALUES ('2711','321','卢湾区','3','luwanqu');
INSERT INTO `fanwe_region_conf` VALUES ('2712','321','虹口区','3','hongkouqu');
INSERT INTO `fanwe_region_conf` VALUES ('2713','321','黄浦区','3','huangpuqu');
INSERT INTO `fanwe_region_conf` VALUES ('2714','321','南汇区','3','nanhuiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2715','321','松江区','3','songjiangqu');
INSERT INTO `fanwe_region_conf` VALUES ('2716','321','嘉定区','3','jiadingqu');
INSERT INTO `fanwe_region_conf` VALUES ('2717','321','宝山区','3','baoshanqu');
INSERT INTO `fanwe_region_conf` VALUES ('2718','321','青浦区','3','qingpuqu');
INSERT INTO `fanwe_region_conf` VALUES ('2719','321','金山区','3','jinshanqu');
INSERT INTO `fanwe_region_conf` VALUES ('2720','321','奉贤区','3','fengxianqu');
INSERT INTO `fanwe_region_conf` VALUES ('2721','321','崇明县','3','chongmingxian');
INSERT INTO `fanwe_region_conf` VALUES ('2912','343','和平区','3','hepingqu');
INSERT INTO `fanwe_region_conf` VALUES ('2913','343','河西区','3','hexiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2914','343','南开区','3','nankaiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2915','343','河北区','3','hebeiqu');
INSERT INTO `fanwe_region_conf` VALUES ('2916','343','河东区','3','hedongqu');
INSERT INTO `fanwe_region_conf` VALUES ('2917','343','红桥区','3','hongqiaoqu');
INSERT INTO `fanwe_region_conf` VALUES ('2918','343','东丽区','3','dongliqu');
INSERT INTO `fanwe_region_conf` VALUES ('2919','343','津南区','3','jinnanqu');
INSERT INTO `fanwe_region_conf` VALUES ('2920','343','西青区','3','xiqingqu');
INSERT INTO `fanwe_region_conf` VALUES ('2921','343','北辰区','3','beichenqu');
INSERT INTO `fanwe_region_conf` VALUES ('2922','343','塘沽区','3','tangguqu');
INSERT INTO `fanwe_region_conf` VALUES ('2923','343','汉沽区','3','hanguqu');
INSERT INTO `fanwe_region_conf` VALUES ('2924','343','大港区','3','dagangqu');
INSERT INTO `fanwe_region_conf` VALUES ('2925','343','武清区','3','wuqingqu');
INSERT INTO `fanwe_region_conf` VALUES ('2926','343','宝坻区','3','baoqu');
INSERT INTO `fanwe_region_conf` VALUES ('2927','343','经济开发区','3','jingjikaifaqu');
INSERT INTO `fanwe_region_conf` VALUES ('2928','343','宁河县','3','ninghexian');
INSERT INTO `fanwe_region_conf` VALUES ('2929','343','静海县','3','jinghaixian');
INSERT INTO `fanwe_region_conf` VALUES ('2930','343','蓟县','3','jixian');
INSERT INTO `fanwe_region_conf` VALUES ('3325','394','合川区','3','hechuanqu');
INSERT INTO `fanwe_region_conf` VALUES ('3326','394','江津区','3','jiangjinqu');
INSERT INTO `fanwe_region_conf` VALUES ('3327','394','南川区','3','nanchuanqu');
INSERT INTO `fanwe_region_conf` VALUES ('3328','394','永川区','3','yongchuanqu');
INSERT INTO `fanwe_region_conf` VALUES ('3329','394','南岸区','3','nananqu');
INSERT INTO `fanwe_region_conf` VALUES ('3330','394','渝北区','3','yubeiqu');
INSERT INTO `fanwe_region_conf` VALUES ('3331','394','万盛区','3','wanshengqu');
INSERT INTO `fanwe_region_conf` VALUES ('3332','394','大渡口区','3','dadukouqu');
INSERT INTO `fanwe_region_conf` VALUES ('3333','394','万州区','3','wanzhouqu');
INSERT INTO `fanwe_region_conf` VALUES ('3334','394','北碚区','3','beiqu');
INSERT INTO `fanwe_region_conf` VALUES ('3335','394','沙坪坝区','3','shapingbaqu');
INSERT INTO `fanwe_region_conf` VALUES ('3336','394','巴南区','3','bananqu');
INSERT INTO `fanwe_region_conf` VALUES ('3337','394','涪陵区','3','fulingqu');
INSERT INTO `fanwe_region_conf` VALUES ('3338','394','江北区','3','jiangbeiqu');
INSERT INTO `fanwe_region_conf` VALUES ('3339','394','九龙坡区','3','jiulongpoqu');
INSERT INTO `fanwe_region_conf` VALUES ('3340','394','渝中区','3','yuzhongqu');
INSERT INTO `fanwe_region_conf` VALUES ('3341','394','黔江开发区','3','qianjiangkaifaqu');
INSERT INTO `fanwe_region_conf` VALUES ('3342','394','长寿区','3','changshouqu');
INSERT INTO `fanwe_region_conf` VALUES ('3343','394','双桥区','3','shuangqiaoqu');
INSERT INTO `fanwe_region_conf` VALUES ('3344','394','綦江县','3','jiangxian');
INSERT INTO `fanwe_region_conf` VALUES ('3345','394','潼南县','3','nanxian');
INSERT INTO `fanwe_region_conf` VALUES ('3346','394','铜梁县','3','tongliangxian');
INSERT INTO `fanwe_region_conf` VALUES ('3347','394','大足县','3','dazuxian');
INSERT INTO `fanwe_region_conf` VALUES ('3348','394','荣昌县','3','rongchangxian');
INSERT INTO `fanwe_region_conf` VALUES ('3349','394','璧山县','3','shanxian');
INSERT INTO `fanwe_region_conf` VALUES ('3350','394','垫江县','3','dianjiangxian');
INSERT INTO `fanwe_region_conf` VALUES ('3351','394','武隆县','3','wulongxian');
INSERT INTO `fanwe_region_conf` VALUES ('3352','394','丰都县','3','fengduxian');
INSERT INTO `fanwe_region_conf` VALUES ('3353','394','城口县','3','chengkouxian');
INSERT INTO `fanwe_region_conf` VALUES ('3354','394','梁平县','3','liangpingxian');
INSERT INTO `fanwe_region_conf` VALUES ('3355','394','开县','3','kaixian');
INSERT INTO `fanwe_region_conf` VALUES ('3356','394','巫溪县','3','wuxixian');
INSERT INTO `fanwe_region_conf` VALUES ('3357','394','巫山县','3','wushanxian');
INSERT INTO `fanwe_region_conf` VALUES ('3358','394','奉节县','3','fengjiexian');
INSERT INTO `fanwe_region_conf` VALUES ('3359','394','云阳县','3','yunyangxian');
INSERT INTO `fanwe_region_conf` VALUES ('3360','394','忠县','3','zhongxian');
INSERT INTO `fanwe_region_conf` VALUES ('3361','394','石柱','3','shizhu');
INSERT INTO `fanwe_region_conf` VALUES ('3362','394','彭水','3','pengshui');
INSERT INTO `fanwe_region_conf` VALUES ('3363','394','酉阳','3','youyang');
INSERT INTO `fanwe_region_conf` VALUES ('3364','394','秀山','3','xiushan');
INSERT INTO `fanwe_region_conf` VALUES ('3365','395','沙田区','3','shatianqu');
INSERT INTO `fanwe_region_conf` VALUES ('3366','395','东区','3','dongqu');
INSERT INTO `fanwe_region_conf` VALUES ('3367','395','观塘区','3','guantangqu');
INSERT INTO `fanwe_region_conf` VALUES ('3368','395','黄大仙区','3','huangdaxianqu');
INSERT INTO `fanwe_region_conf` VALUES ('3369','395','九龙城区','3','jiulongchengqu');
INSERT INTO `fanwe_region_conf` VALUES ('3370','395','屯门区','3','tunmenqu');
INSERT INTO `fanwe_region_conf` VALUES ('3371','395','葵青区','3','kuiqingqu');
INSERT INTO `fanwe_region_conf` VALUES ('3372','395','元朗区','3','yuanlangqu');
INSERT INTO `fanwe_region_conf` VALUES ('3373','395','深水埗区','3','shenshui');
INSERT INTO `fanwe_region_conf` VALUES ('3374','395','西贡区','3','xigongqu');
INSERT INTO `fanwe_region_conf` VALUES ('3375','395','大埔区','3','dapuqu');
INSERT INTO `fanwe_region_conf` VALUES ('3376','395','湾仔区','3','wanziqu');
INSERT INTO `fanwe_region_conf` VALUES ('3377','395','油尖旺区','3','youjianwangqu');
INSERT INTO `fanwe_region_conf` VALUES ('3378','395','北区','3','beiqu');
INSERT INTO `fanwe_region_conf` VALUES ('3379','395','南区','3','nanqu');
INSERT INTO `fanwe_region_conf` VALUES ('3380','395','荃湾区','3','wanqu');
INSERT INTO `fanwe_region_conf` VALUES ('3381','395','中西区','3','zhongxiqu');
INSERT INTO `fanwe_region_conf` VALUES ('3382','395','离岛区','3','lidaoqu');
INSERT INTO `fanwe_region_conf` VALUES ('3383','396','澳门','3','aomen');
INSERT INTO `fanwe_region_conf` VALUES ('3384','397','台北','3','taibei');
INSERT INTO `fanwe_region_conf` VALUES ('3385','397','高雄','3','gaoxiong');
INSERT INTO `fanwe_region_conf` VALUES ('3386','397','基隆','3','jilong');
INSERT INTO `fanwe_region_conf` VALUES ('3387','397','台中','3','taizhong');
INSERT INTO `fanwe_region_conf` VALUES ('3388','397','台南','3','tainan');
INSERT INTO `fanwe_region_conf` VALUES ('3389','397','新竹','3','xinzhu');
INSERT INTO `fanwe_region_conf` VALUES ('3390','397','嘉义','3','jiayi');
INSERT INTO `fanwe_region_conf` VALUES ('3391','397','宜兰县','3','yilanxian');
INSERT INTO `fanwe_region_conf` VALUES ('3392','397','桃园县','3','taoyuanxian');
INSERT INTO `fanwe_region_conf` VALUES ('3393','397','苗栗县','3','miaolixian');
INSERT INTO `fanwe_region_conf` VALUES ('3394','397','彰化县','3','zhanghuaxian');
INSERT INTO `fanwe_region_conf` VALUES ('3395','397','南投县','3','nantouxian');
INSERT INTO `fanwe_region_conf` VALUES ('3396','397','云林县','3','yunlinxian');
INSERT INTO `fanwe_region_conf` VALUES ('3397','397','屏东县','3','pingdongxian');
INSERT INTO `fanwe_region_conf` VALUES ('3398','397','台东县','3','taidongxian');
INSERT INTO `fanwe_region_conf` VALUES ('3399','397','花莲县','3','hualianxian');
INSERT INTO `fanwe_region_conf` VALUES ('3400','397','澎湖县','3','penghuxian');
DROP TABLE IF EXISTS `fanwe_role`;
CREATE TABLE `fanwe_role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_role` VALUES ('4','测试管理员','1','0');
DROP TABLE IF EXISTS `fanwe_role_access`;
CREATE TABLE `fanwe_role_access` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_role_group`;
CREATE TABLE `fanwe_role_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `nav_id` int(11) NOT NULL COMMENT '后台导航分组ID',
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_role_group` VALUES ('1','首页','1','0','1','1');
INSERT INTO `fanwe_role_group` VALUES ('5','系统设置','3','0','1','1');
INSERT INTO `fanwe_role_group` VALUES ('7','管理员','3','0','1','2');
INSERT INTO `fanwe_role_group` VALUES ('8','数据库操作','3','0','1','6');
INSERT INTO `fanwe_role_group` VALUES ('9','系统日志','3','0','1','7');
INSERT INTO `fanwe_role_group` VALUES ('19','菜单设置','3','0','1','17');
INSERT INTO `fanwe_role_group` VALUES ('28','邮件管理','10','0','1','26');
INSERT INTO `fanwe_role_group` VALUES ('29','短信管理','10','0','1','27');
INSERT INTO `fanwe_role_group` VALUES ('31','广告设置','3','0','1','29');
INSERT INTO `fanwe_role_group` VALUES ('33','队列管理','10','0','1','31');
INSERT INTO `fanwe_role_group` VALUES ('69','会员管理','5','0','1','31');
INSERT INTO `fanwe_role_group` VALUES ('70','会员整合','5','0','1','32');
INSERT INTO `fanwe_role_group` VALUES ('71','同步登录','5','0','1','33');
INSERT INTO `fanwe_role_group` VALUES ('72','项目管理','13','0','1','33');
INSERT INTO `fanwe_role_group` VALUES ('73','项目支持','13','0','1','34');
INSERT INTO `fanwe_role_group` VALUES ('74','项目点评','13','0','1','35');
INSERT INTO `fanwe_role_group` VALUES ('75','支付接口','14','0','1','1');
INSERT INTO `fanwe_role_group` VALUES ('76','付款记录','14','0','1','2');
INSERT INTO `fanwe_role_group` VALUES ('77','消息模板','10','0','1','1');
INSERT INTO `fanwe_role_group` VALUES ('78','提现记录','14','0','1','3');
DROP TABLE IF EXISTS `fanwe_role_module`;
CREATE TABLE `fanwe_role_module` (
  `id` int(11) NOT NULL auto_increment,
  `module` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_role_module` VALUES ('5','Role','权限组别','1','0');
INSERT INTO `fanwe_role_module` VALUES ('6','Admin','管理员','1','0');
INSERT INTO `fanwe_role_module` VALUES ('12','Conf','系统配置','1','0');
INSERT INTO `fanwe_role_module` VALUES ('13','Database','数据库','1','0');
INSERT INTO `fanwe_role_module` VALUES ('15','Log','系统日志','1','0');
INSERT INTO `fanwe_role_module` VALUES ('19','File','文件管理','1','0');
INSERT INTO `fanwe_role_module` VALUES ('58','Index','首页','1','0');
INSERT INTO `fanwe_role_module` VALUES ('36','Nav','导航菜单','1','0');
INSERT INTO `fanwe_role_module` VALUES ('47','MailServer','邮件服务器','1','0');
INSERT INTO `fanwe_role_module` VALUES ('48','Sms','短信接口','1','0');
INSERT INTO `fanwe_role_module` VALUES ('53','Adv','广告模块','1','0');
INSERT INTO `fanwe_role_module` VALUES ('56','DealMsgList','业务群发队列','1','0');
INSERT INTO `fanwe_role_module` VALUES ('92','Cache','缓存处理','1','0');
INSERT INTO `fanwe_role_module` VALUES ('113','User','会员管理','1','0');
INSERT INTO `fanwe_role_module` VALUES ('114','MsgTemplate','消息模板管理','1','0');
INSERT INTO `fanwe_role_module` VALUES ('115','Integrate','会员整合','1','0');
INSERT INTO `fanwe_role_module` VALUES ('116','ApiLogin','同步登录','1','0');
INSERT INTO `fanwe_role_module` VALUES ('117','DealCate','项目分类','1','0');
INSERT INTO `fanwe_role_module` VALUES ('118','Deal','项目管理','1','0');
INSERT INTO `fanwe_role_module` VALUES ('119','Payment','支付接口','1','0');
INSERT INTO `fanwe_role_module` VALUES ('120','IndexImage','轮播广告图','1','0');
INSERT INTO `fanwe_role_module` VALUES ('121','Help','站点帮助','1','0');
INSERT INTO `fanwe_role_module` VALUES ('122','Faq','常见问题','1','0');
INSERT INTO `fanwe_role_module` VALUES ('123','DealOrder','项目支持','1','0');
INSERT INTO `fanwe_role_module` VALUES ('124','DealComment','项目点评','1','0');
INSERT INTO `fanwe_role_module` VALUES ('125','PaymentNotice','付款记录','1','0');
INSERT INTO `fanwe_role_module` VALUES ('126','UserRefund','用户提现','1','0');
DROP TABLE IF EXISTS `fanwe_role_nav`;
CREATE TABLE `fanwe_role_nav` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_role_nav` VALUES ('1','首页','0','1','1');
INSERT INTO `fanwe_role_nav` VALUES ('3','系统设置','0','1','10');
INSERT INTO `fanwe_role_nav` VALUES ('5','会员管理','0','1','3');
INSERT INTO `fanwe_role_nav` VALUES ('10','短信邮件','0','1','7');
INSERT INTO `fanwe_role_nav` VALUES ('13','项目管理','0','1','4');
INSERT INTO `fanwe_role_nav` VALUES ('14','支付管理','0','1','5');
DROP TABLE IF EXISTS `fanwe_role_node`;
CREATE TABLE `fanwe_role_node` (
  `id` int(11) NOT NULL auto_increment,
  `action` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL COMMENT '后台分组菜单分组ID',
  `module_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=667 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_role_node` VALUES ('334','main','首页','1','0','1','58');
INSERT INTO `fanwe_role_node` VALUES ('11','index','管理员分组列表','1','0','7','5');
INSERT INTO `fanwe_role_node` VALUES ('13','trash','管理员分组回收站','1','0','7','5');
INSERT INTO `fanwe_role_node` VALUES ('14','index','管理员列表','1','0','7','6');
INSERT INTO `fanwe_role_node` VALUES ('15','trash','管理员回收站','1','0','7','6');
INSERT INTO `fanwe_role_node` VALUES ('16','index','系统配置','1','0','5','12');
INSERT INTO `fanwe_role_node` VALUES ('17','index','数据库备份列表','1','0','8','13');
INSERT INTO `fanwe_role_node` VALUES ('18','sql','SQL操作','1','0','8','13');
INSERT INTO `fanwe_role_node` VALUES ('19','index','系统日志列表','1','0','9','15');
INSERT INTO `fanwe_role_node` VALUES ('24','do_upload','编辑器图片上传','1','0','0','19');
INSERT INTO `fanwe_role_node` VALUES ('43','index','导航菜单列表','1','0','19','36');
INSERT INTO `fanwe_role_node` VALUES ('57','index','邮件服务器列表','1','0','28','47');
INSERT INTO `fanwe_role_node` VALUES ('58','index','短信接口列表','1','0','29','48');
INSERT INTO `fanwe_role_node` VALUES ('63','index','广告列表','1','0','31','53');
INSERT INTO `fanwe_role_node` VALUES ('66','index','业务队列列表','1','0','33','56');
INSERT INTO `fanwe_role_node` VALUES ('68','add','添加页面','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('69','edit','编辑页面','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('70','set_effect','设置生效','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('71','add','添加执行','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('72','update','编辑执行','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('73','delete','删除','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('74','restore','恢复','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('75','foreverdelete','永久删除','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('76','set_default','设置默认管理员','1','0','0','6');
INSERT INTO `fanwe_role_node` VALUES ('77','add','添加页面','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('78','edit','编辑页面','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('79','update','编辑执行','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('80','foreverdelete','永久删除','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('81','set_effect','设置生效','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('99','update','更新配置','1','0','0','12');
INSERT INTO `fanwe_role_node` VALUES ('100','dump','备份数据','1','0','0','13');
INSERT INTO `fanwe_role_node` VALUES ('101','delete','删除备份','1','0','0','13');
INSERT INTO `fanwe_role_node` VALUES ('102','restore','恢复备份','1','0','0','13');
INSERT INTO `fanwe_role_node` VALUES ('103','load_file','读取页面','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('104','load_adv_id','读取广告位','1','0','0','53');
INSERT INTO `fanwe_role_node` VALUES ('105','execute','执行SQL语句','1','0','0','13');
INSERT INTO `fanwe_role_node` VALUES ('147','show_content','显示内容','1','0','0','56');
INSERT INTO `fanwe_role_node` VALUES ('148','send','手动发送','1','0','0','56');
INSERT INTO `fanwe_role_node` VALUES ('149','foreverdelete','永久删除','1','0','0','56');
INSERT INTO `fanwe_role_node` VALUES ('181','do_upload_img','图片控件上传','1','0','0','19');
INSERT INTO `fanwe_role_node` VALUES ('182','deleteImg','删除图片','1','0','0','19');
INSERT INTO `fanwe_role_node` VALUES ('198','foreverdelete','永久删除','1','0','0','15');
INSERT INTO `fanwe_role_node` VALUES ('205','add','添加页面','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('206','insert','添加执行','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('207','edit','编辑页面','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('208','update','编辑执行','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('209','set_effect','设置生效','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('210','foreverdelete','永久删除','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('211','send_demo','发送测试邮件','1','0','0','47');
INSERT INTO `fanwe_role_node` VALUES ('229','edit','编辑页面','1','0','0','36');
INSERT INTO `fanwe_role_node` VALUES ('230','update','编辑执行','1','0','0','36');
INSERT INTO `fanwe_role_node` VALUES ('231','set_effect','设置生效','1','0','0','36');
INSERT INTO `fanwe_role_node` VALUES ('232','set_sort','排序','1','0','0','36');
INSERT INTO `fanwe_role_node` VALUES ('257','add','添加页面','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('258','insert','添加执行','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('259','edit','编辑页面','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('260','update','编辑执行','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('261','set_effect','设置生效','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('262','delete','删除','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('263','restore','恢复','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('264','foreverdelete','永久删除','1','0','0','5');
INSERT INTO `fanwe_role_node` VALUES ('265','insert','安装页面','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('266','insert','安装保存','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('267','edit','编辑页面','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('268','update','编辑执行','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('269','uninstall','卸载','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('270','set_effect','设置生效','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('271','send_demo','发送测试短信','1','0','0','48');
INSERT INTO `fanwe_role_node` VALUES ('474','index','缓存处理','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('475','clear_parse_file','清空脚本样式缓存','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('477','clear_data','清空数据缓存','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('480','syn_data','同步数据','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('481','clear_image','清空图片缓存','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('482','clear_admin','清空后台缓存','1','0','0','92');
INSERT INTO `fanwe_role_node` VALUES ('605','index','消息模板','1','0','77','114');
INSERT INTO `fanwe_role_node` VALUES ('606','update','更新模板','1','0','0','114');
INSERT INTO `fanwe_role_node` VALUES ('607','index','会员列表','1','0','69','113');
INSERT INTO `fanwe_role_node` VALUES ('608','add','添加会员','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('609','insert','添提执行','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('610','edit','编辑会员','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('611','update','编辑执行','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('612','delete','删除会员','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('613','modify_account','会员资金变更','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('614','account_detail','帐户日志','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('615','foreverdelete_account_detail','删除帐户日志','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('616','consignee','配送地址','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('617','foreverdelete_consignee','删除配送地址','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('618','weibo','微博列表','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('619','foreverdelete_weibo','删除微博','1','0','0','113');
INSERT INTO `fanwe_role_node` VALUES ('620','index','会员整合','1','0','70','115');
INSERT INTO `fanwe_role_node` VALUES ('621','save','执行整合','1','0','0','115');
INSERT INTO `fanwe_role_node` VALUES ('622','uninstall','卸载整合','1','0','0','115');
INSERT INTO `fanwe_role_node` VALUES ('623','index','同步登录接口','1','0','71','116');
INSERT INTO `fanwe_role_node` VALUES ('624','insert','安装接口','1','0','0','116');
INSERT INTO `fanwe_role_node` VALUES ('625','update','更新配置','1','0','0','116');
INSERT INTO `fanwe_role_node` VALUES ('626','uninstall','卸载接口','1','0','0','116');
INSERT INTO `fanwe_role_node` VALUES ('627','index','分类列表','1','0','72','117');
INSERT INTO `fanwe_role_node` VALUES ('628','insert','添加分类','1','0','0','117');
INSERT INTO `fanwe_role_node` VALUES ('629','update','更新分类','1','0','0','117');
INSERT INTO `fanwe_role_node` VALUES ('630','foreverdelete','删除分类','1','0','0','117');
INSERT INTO `fanwe_role_node` VALUES ('631','online_index','上线项目列表','1','0','72','118');
INSERT INTO `fanwe_role_node` VALUES ('632','submit_index','未审核项目','1','0','72','118');
INSERT INTO `fanwe_role_node` VALUES ('633','index','支付接口列表','1','0','75','119');
INSERT INTO `fanwe_role_node` VALUES ('634','insert','安装支付接口','1','0','0','119');
INSERT INTO `fanwe_role_node` VALUES ('635','update','更新支付接口','1','0','0','119');
INSERT INTO `fanwe_role_node` VALUES ('636','uninstall','卸载接口','1','0','0','119');
INSERT INTO `fanwe_role_node` VALUES ('637','index','轮播广告设置','1','0','5','120');
INSERT INTO `fanwe_role_node` VALUES ('638','insert','添加广告','1','0','0','120');
INSERT INTO `fanwe_role_node` VALUES ('639','update','修改广告','1','0','0','120');
INSERT INTO `fanwe_role_node` VALUES ('640','foreverdelete','删除广告','1','0','0','120');
INSERT INTO `fanwe_role_node` VALUES ('641','delete_index','回收站','1','0','72','118');
INSERT INTO `fanwe_role_node` VALUES ('642','index','帮助列表','1','0','5','121');
INSERT INTO `fanwe_role_node` VALUES ('643','insert','添加帮助','1','0','0','121');
INSERT INTO `fanwe_role_node` VALUES ('644','update','修改帮助','1','0','0','121');
INSERT INTO `fanwe_role_node` VALUES ('645','foreverdelete','删除帮助','1','0','0','121');
INSERT INTO `fanwe_role_node` VALUES ('646','index','常见问题','1','0','5','122');
INSERT INTO `fanwe_role_node` VALUES ('647','insert','添加问题','1','0','0','122');
INSERT INTO `fanwe_role_node` VALUES ('648','update','更新问题','1','0','0','122');
INSERT INTO `fanwe_role_node` VALUES ('649','foreverdelete','删除问题','1','0','0','122');
INSERT INTO `fanwe_role_node` VALUES ('650','pay_log','筹款发放','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('651','save_pay_log','发放','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('652','del_pay_log','删除发放','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('653','deal_log','项目日志','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('654','del_deal_log','删除日志','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('655','batch_refund','批量退款','1','0','0','118');
INSERT INTO `fanwe_role_node` VALUES ('656','index','项目支持','1','0','73','123');
INSERT INTO `fanwe_role_node` VALUES ('657','view','查看详情','1','0','0','123');
INSERT INTO `fanwe_role_node` VALUES ('658','refund','项目退款','1','0','0','123');
INSERT INTO `fanwe_role_node` VALUES ('659','delete','删除支持','1','0','0','123');
INSERT INTO `fanwe_role_node` VALUES ('660','incharge','项目收款','1','0','0','123');
INSERT INTO `fanwe_role_node` VALUES ('661','index','项目点评','1','0','74','124');
INSERT INTO `fanwe_role_node` VALUES ('662','index','付款记录','1','0','76','125');
INSERT INTO `fanwe_role_node` VALUES ('663','delete','删除记录','1','0','0','125');
INSERT INTO `fanwe_role_node` VALUES ('664','index','提现记录','1','0','78','126');
INSERT INTO `fanwe_role_node` VALUES ('665','delete','删除记录','1','0','0','126');
INSERT INTO `fanwe_role_node` VALUES ('666','confirm','确认提现','1','0','0','126');
DROP TABLE IF EXISTS `fanwe_sms`;
CREATE TABLE `fanwe_sms` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `server_url` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_user`;
CREATE TABLE `fanwe_user` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(255) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `money` double(20,4) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(50) NOT NULL,
  `province` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `password_verify` varchar(255) NOT NULL COMMENT '找回密码的验证号',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `build_count` int(11) NOT NULL COMMENT '发起的项目数',
  `support_count` int(11) NOT NULL COMMENT '支持的项目数',
  `focus_count` int(11) NOT NULL COMMENT '关注的项目数',
  `integrate_id` int(11) NOT NULL,
  `intro` text NOT NULL COMMENT '个人简介',
  `ex_real_name` varchar(255) NOT NULL COMMENT '发布者真实姓名',
  `ex_account_info` text NOT NULL COMMENT '银行帐号等信息',
  `ex_contact` text NOT NULL COMMENT '联系方式',
  `code` varchar(255) NOT NULL,
  `sina_id` varchar(255) NOT NULL,
  `sina_token` varchar(255) NOT NULL,
  `sina_secret` varchar(255) NOT NULL,
  `sina_url` varchar(255) NOT NULL,
  `tencent_id` varchar(255) NOT NULL,
  `tencent_token` varchar(255) NOT NULL,
  `tencent_secret` varchar(255) NOT NULL,
  `tencent_url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `is_effect` (`is_effect`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_user` VALUES ('17','fanwe','6714ccb93be0fda4e51f206b91b46358','1352227130','1352227130','1','97139915@qq.com','1200.0000','1352232219','127.0.0.1','福建','福州','','1','3','1','1','0','点火时间 - http://zc.fanwe.cn','','','','','','','','','','','','');
INSERT INTO `fanwe_user` VALUES ('18','fzmatthew','6714ccb93be0fda4e51f206b91b46358','1352229180','1352229180','1','fanwe@fanwe.com','980.0000','1352246617','127.0.0.1','北京','东城区','','1','0','3','1','0','爱旅行的猫，生活在路上','','','','','','','','','','','','');
INSERT INTO `fanwe_user` VALUES ('19','test','098f6bcd4621d373cade4e832627b4f6','1352230142','1352230142','1','test@test.com','0.0000','1352232937','127.0.0.1','广东','江门','','0','0','10','0','0','','','','','','','','','','','','','');
DROP TABLE IF EXISTS `fanwe_user_consignee`;
CREATE TABLE `fanwe_user_consignee` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_user_consignee` VALUES ('18','18','福建','福州','福建福州台江区工业路博美诗邦','13333333333','350000','方维');
INSERT INTO `fanwe_user_consignee` VALUES ('19','17','福建','福州','方维方维方维方维方维','14444444444','22222','方维');
INSERT INTO `fanwe_user_consignee` VALUES ('20','19','湖北','襄樊','test','13344455555','test','test');
DROP TABLE IF EXISTS `fanwe_user_deal_notify`;
CREATE TABLE `fanwe_user_deal_notify` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `deal_id_user_id` (`user_id`,`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用于发送下单成功的用户与关注用户的项目成功准备队列';
INSERT INTO `fanwe_user_deal_notify` VALUES ('20','18','55','1352229388');
DROP TABLE IF EXISTS `fanwe_user_log`;
CREATE TABLE `fanwe_user_log` (
  `id` int(11) NOT NULL auto_increment,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin_id` int(11) NOT NULL,
  `money` double(20,4) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='帐户资金变动日志';
INSERT INTO `fanwe_user_log` VALUES ('114','管理员测试充值','1352229203','1','1000.0000','18');
INSERT INTO `fanwe_user_log` VALUES ('115','支持原创DIY桌面游戏《功夫》《黄金密码》期待您的支持项目支付','1352229388','1','-20.0000','18');
INSERT INTO `fanwe_user_log` VALUES ('116','管理员测试充值','1352229989','1','2000.0000','17');
INSERT INTO `fanwe_user_log` VALUES ('117','支持拥有自己的咖啡馆项目支付','1352230101','1','-500.0000','17');
INSERT INTO `fanwe_user_log` VALUES ('118','test','1352230213','1','5000.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('119','支持拥有自己的咖啡馆项目支付','1352230228','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('120','支持拥有自己的咖啡馆项目支付','1352230232','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('121','支持拥有自己的咖啡馆项目支付','1352230237','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('122','支持拥有自己的咖啡馆项目支付','1352230240','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('123','支持拥有自己的咖啡馆项目支付','1352230243','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('124','支持拥有自己的咖啡馆项目支付','1352230247','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('125','支持拥有自己的咖啡馆项目支付','1352230268','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('126','支持拥有自己的咖啡馆项目支付','1352230270','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('127','支持拥有自己的咖啡馆项目支付','1352230293','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('128','继续测试','1352231510','1','5000.0000','18');
INSERT INTO `fanwe_user_log` VALUES ('129','支持流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！项目支付','1352231539','1','-2000.0000','18');
INSERT INTO `fanwe_user_log` VALUES ('130','支持流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！项目支付','1352231631','1','-500.0000','19');
INSERT INTO `fanwe_user_log` VALUES ('131','支持拥有自己的咖啡馆项目支付','1352231671','1','-300.0000','17');
INSERT INTO `fanwe_user_log` VALUES ('132','支持流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！项目支付','1352231704','1','-3000.0000','18');
DROP TABLE IF EXISTS `fanwe_user_message`;
CREATE TABLE `fanwe_user_message` (
  `id` int(11) NOT NULL auto_increment,
  `create_time` int(11) NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '该私信所属人ID',
  `dest_user_id` int(11) NOT NULL COMMENT '对方的用户ID（如果user_id是发件人，该ID为收件，反之为发件人ID）',
  `send_user_id` int(11) NOT NULL COMMENT '发件人ID',
  `receive_user_id` int(11) NOT NULL COMMENT '收件人ID',
  `user_name` varchar(255) NOT NULL,
  `dest_user_name` varchar(255) NOT NULL,
  `send_user_name` varchar(255) NOT NULL,
  `receive_user_name` varchar(255) NOT NULL,
  `message_type` enum('inbox','outbox') NOT NULL COMMENT '类型：inbox(收件) outbox(发件)',
  `is_read` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_user_message` VALUES ('47','1352230383','感谢支持','18','19','18','19','fzmatthew','test','fzmatthew','test','outbox','1');
INSERT INTO `fanwe_user_message` VALUES ('48','1352230383','感谢支持','19','18','18','19','test','fzmatthew','fzmatthew','test','inbox','0');
INSERT INTO `fanwe_user_message` VALUES ('49','1352230403','感谢您的支持!!!','18','17','18','17','fzmatthew','fanwe','fzmatthew','fanwe','outbox','1');
INSERT INTO `fanwe_user_message` VALUES ('50','1352230403','感谢您的支持!!!','17','18','18','17','fanwe','fzmatthew','fzmatthew','fanwe','inbox','0');
INSERT INTO `fanwe_user_message` VALUES ('51','1352230499','谢谢!!!','17','18','17','18','fanwe','fzmatthew','fanwe','fzmatthew','outbox','1');
INSERT INTO `fanwe_user_message` VALUES ('52','1352230499','谢谢!!!','18','17','17','18','fzmatthew','fanwe','fanwe','fzmatthew','inbox','0');
DROP TABLE IF EXISTS `fanwe_user_notify`;
CREATE TABLE `fanwe_user_notify` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `url_route` varchar(255) NOT NULL,
  `url_param` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_user_notify` VALUES ('69','17','拥有自己的咖啡馆 在 2012-11-07 11:31:10 成功筹到 ¥5,000.00','1352230271','0','deal#show','id=56');
INSERT INTO `fanwe_user_notify` VALUES ('70','19','拥有自己的咖啡馆 在 2012-11-07 11:31:10 成功筹到 ¥5,000.00','1352230271','0','deal#show','id=56');
INSERT INTO `fanwe_user_notify` VALUES ('71','17','您支持的项目拥有自己的咖啡馆回报已发放','1352230424','0','account#view_order','id=66');
INSERT INTO `fanwe_user_notify` VALUES ('72','18','流浪猫的家—爱天使公益咖啡馆的重建需要大家的力量！ 在 2012-11-07 11:55:04 成功筹到 ¥3,000.00','1352231704','0','deal#show','id=58');
DROP TABLE IF EXISTS `fanwe_user_refund`;
CREATE TABLE `fanwe_user_refund` (
  `id` int(11) NOT NULL auto_increment,
  `money` double(20,4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '提现申请时间',
  `reply` text NOT NULL COMMENT '提现审核回复',
  `is_pay` tinyint(1) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `memo` text NOT NULL COMMENT '提现的备注',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `fanwe_user_weibo`;
CREATE TABLE `fanwe_user_weibo` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `weibo_url` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
INSERT INTO `fanwe_user_weibo` VALUES ('55','17','http://weibo.com/fzmatthew');