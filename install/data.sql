DROP TABLE IF EXISTS qb_members;
CREATE TABLE `qb_members` (
  `uid` mediumint(7) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_memberdata;
CREATE TABLE `qb_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `question` varchar(32) NOT NULL default '',
  `groupid` smallint(4) NOT NULL default '0',
  `grouptype` tinyint(1) NOT NULL default '0',
  `groups` varchar(255) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `newpm` tinyint(1) NOT NULL default '0',
  `medals` varchar(255) NOT NULL default '',
  `money` mediumint(7) unsigned NOT NULL default '0',
  `totalspace` bigint(13) NOT NULL default '0',
  `usespace` bigint(13) NOT NULL default '0',
  `oltime` int(10) NOT NULL default '0',
  `lastvist` int(10) NOT NULL default '0',
  `lastip` varchar(15) NOT NULL default '',
  `regdate` int(10) NOT NULL default '0',
  `regip` varchar(15) NOT NULL default '',
  `sex` tinyint(1) NOT NULL default '0',
  `bday` date NOT NULL default '0000-00-00',
  `icon` varchar(150) NOT NULL default '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `oicq` varchar(11) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `homepage` varchar(150) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `provinceid` mediumint(6) NOT NULL default '0',
  `cityid` mediumint(7) NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `postalcode` varchar(6) NOT NULL default '',
  `mobphone` varchar(12) NOT NULL default '',
  `telephone` varchar(25) NOT NULL default '',
  `idcard` varchar(20) NOT NULL default '',
  `truename` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL default '0',
  `email_yz` tinyint(1) NOT NULL default '0',
  `mob_yz` tinyint(1) NOT NULL default '0',
  `idcard_yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_group;
CREATE TABLE `qb_group` (
  `gid` smallint(4) NOT NULL auto_increment,
  `gptype` tinyint(1) NOT NULL default '0',
  `grouptitle` varchar(50) NOT NULL default '',
  `levelnum` mediumint(7) NOT NULL default '0',
  `totalspace` int(10) NOT NULL default '0',
  `allowsearch` tinyint(1) NOT NULL default '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL default '0',
  `allowadmindb` text,
  PRIMARY KEY  (`gid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_menu;
CREATE TABLE `qb_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `moduleid` tinyint(2) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `hide` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `extend` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_admin_menu;
CREATE TABLE `qb_admin_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `groupid` mediumint(5) NOT NULL default '0',
  `iftier` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_module;
CREATE TABLE `qb_module` (
  `id` mediumint(5) NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `pre` varchar(20) NOT NULL default '',
  `dirname` varchar(30) NOT NULL default '',
  `domain` varchar(100) NOT NULL default '',
  `admindir` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL default '0',
  `admingroup` varchar(150) NOT NULL default '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL default '0',
  `ifsys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_alonepage;
CREATE TABLE `qb_alonepage` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `tpl_head` varchar(50) NOT NULL default '',
  `tpl_main` varchar(50) NOT NULL default '',
  `tpl_foot` varchar(50) NOT NULL default '',
  `filename` varchar(100) default NULL,
  `filepath` varchar(30) NOT NULL default '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `ishtml` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_config;
CREATE TABLE `qb_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_copyfrom;
CREATE TABLE `qb_copyfrom` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `keywords` (`name`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hack;
CREATE TABLE `qb_hack` (
  `keywords` varchar(30) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `author` varchar(30) NOT NULL default '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL default '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL default '',
  `class2` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `keywords` (`keywords`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_label;
CREATE TABLE `qb_label` (
  `lid` int(10) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `ch` smallint(4) NOT NULL default '0',
  `chtype` tinyint(2) NOT NULL default '0',
  `tag` varchar(50) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `typesystem` tinyint(1) NOT NULL default '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL default '0',
  `js_time` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `pagetype` tinyint(3) NOT NULL default '0',
  `module` mediumint(6) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `if_js` tinyint(1) NOT NULL default '0',
  `style` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_friendlink;
CREATE TABLE `qb_friendlink` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` int(7) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` varchar(255) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `ifhide` tinyint(1) NOT NULL default '0',
  `iswordlink` tinyint(1) default NULL,
  `hits` tinyint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` int(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '1',
  `endtime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_friendlink_sort;
CREATE TABLE `qb_friendlink_sort` (
  `fid` mediumint(7) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_pm;
CREATE TABLE `qb_pm` (
  `mid` int(10) unsigned NOT NULL auto_increment,
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `togroups` varchar(80) NOT NULL default '',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `type` enum('rebox','sebox','public') NOT NULL default 'rebox',
  `ifnew` tinyint(1) NOT NULL default '0',
  `title` varchar(130) NOT NULL default '',
  `mdate` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_limitword;
CREATE TABLE `qb_limitword` (
  `id` int(5) NOT NULL auto_increment,
  `oldword` varchar(50) NOT NULL default '',
  `newword` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_norm_place;
CREATE TABLE `qb_ad_norm_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `keywords` varchar(50) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `type` varchar(30) NOT NULL default '0',
  `isclose` tinyint(1) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `moneycard` mediumint(6) NOT NULL default '0',
  `ifsale` tinyint(1) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '0',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_norm_user;
CREATE TABLE `qb_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `u_uid` mediumint(7) NOT NULL default '0',
  `u_username` varchar(30) NOT NULL default '',
  `u_day` smallint(4) NOT NULL default '0',
  `u_begintime` int(10) NOT NULL default '0',
  `u_endtime` int(10) NOT NULL default '0',
  `u_hits` mediumint(7) NOT NULL default '0',
  `u_yz` tinyint(1) NOT NULL default '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL default '0',
  `u_moneycard` mediumint(7) NOT NULL default '0',
  `u_posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_config;
CREATE TABLE `qb_ad_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_compete_place;
CREATE TABLE `qb_ad_compete_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `price` mediumint(5) NOT NULL default '0',
  `day` mediumint(4) NOT NULL default '0',
  `adnum` smallint(3) NOT NULL default '0',
  `wordnum` smallint(3) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '1',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_compete_user;
CREATE TABLE `qb_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `id` mediumint(7) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '1',
  `adlink` varchar(200) NOT NULL default '',
  `adword` varchar(255) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `color` varchar(20) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_upfile;
CREATE TABLE `qb_upfile` (
  `up_id` mediumint(7) NOT NULL auto_increment,
  `module_id` smallint(4) NOT NULL default '0',
  `ids` varchar(255) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `url` varchar(150) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `num` smallint(5) NOT NULL default '0',
  `if_tmp` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_area;
CREATE TABLE `qb_area` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_jfabout;
CREATE TABLE `qb_jfabout` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_jfsort;
CREATE TABLE `qb_jfsort` (
  `fid` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_moneycard;
CREATE TABLE `qb_moneycard` (
  `id` mediumint(7) NOT NULL auto_increment,
  `passwd` varchar(32) NOT NULL default '',
  `moneyrmb` int(7) NOT NULL default '0',
  `moneycard` int(7) NOT NULL default '0',
  `ifsell` tinyint(1) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_olpay;
CREATE TABLE `qb_olpay` (
  `id` mediumint(7) NOT NULL auto_increment,
  `orderid` int(10) NOT NULL default '0',
  `numcode` varchar(32) NOT NULL default '',
  `money` varchar(15) NOT NULL default '0',
  `ifpay` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `paytype` tinyint(3) NOT NULL default '0',
  `moduleid` mediumint(5) NOT NULL default '0',
  `formid` mediumint(5) NOT NULL default '0',
  `banktype` varchar(15) NOT NULL default '',
  `articleid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_propagandize;
CREATE TABLE `qb_propagandize` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `ip` bigint(11) NOT NULL default '0',
  `day` smallint(3) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `fromurl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_template;
CREATE TABLE `qb_template` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `type` smallint(4) NOT NULL default '0',
  `filepath` varchar(100) NOT NULL default '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_template_bak;
CREATE TABLE `qb_template_bak` (
  `bid` int(7) NOT NULL auto_increment,
  `id` int(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `code` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `id` (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_crontab;
CREATE TABLE `qb_crontab` (
  `id` mediumint(7) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `minutetime` mediumint(4) NOT NULL default '0',
  `daytime` varchar(4) NOT NULL default '0',
  `whiletime` int(10) NOT NULL default '0',
  `lasttime` int(10) NOT NULL default '0',
  `filepath` varchar(50) NOT NULL default '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `ifstop` (`ifstop`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_moneylog;
CREATE TABLE `qb_moneylog` (
  `id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `about` varchar(255) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_yzimg;
CREATE TABLE `qb_yzimg` (
  `sid` varchar(8) NOT NULL default '',
  `imgnum` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) TYPE=HEAP;


DROP TABLE IF EXISTS qb_download_article;
CREATE TABLE `qb_download_article` (
  `aid` mediumint(7) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL default '',
  `smalltitle` varchar(100) NOT NULL default '',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `mid` mediumint(5) NOT NULL default '0',
  `fname` varchar(50) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `pages` smallint(4) NOT NULL default '0',
  `comments` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `author` varchar(30) NOT NULL default '',
  `copyfrom` varchar(100) NOT NULL default '',
  `copyfromurl` varchar(150) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  `picurl` varchar(150) NOT NULL default '0',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `yzer` varchar(30) NOT NULL default '',
  `yztime` int(10) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `jumpurl` varchar(150) NOT NULL default '',
  `iframeurl` varchar(150) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `template` varchar(255) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `lastfid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL default '',
  `allowdown` varchar(150) NOT NULL default '',
  `allowview` varchar(150) NOT NULL default '',
  `editer` varchar(30) NOT NULL default '',
  `edittime` int(10) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL default '0',
  `digg_num` mediumint(7) NOT NULL default '0',
  `digg_time` int(10) NOT NULL default '0',
  `forbidcomment` tinyint(1) NOT NULL default '0',
  `ifvote` tinyint(1) NOT NULL default '0',
  `heart` varchar(255) NOT NULL default '',
  `htmlname` varchar(100) NOT NULL default '',
  `softurl` text NOT NULL,
  `day_down` varchar(7) NOT NULL default '',
  `week_down` mediumint(7) NOT NULL default '0',
  `month_down` mediumint(7) NOT NULL default '0',
  `total_down` mediumint(7) NOT NULL default '0',
  `down_time` int(10) NOT NULL default '0',
  `down_user` text NOT NULL,
  `update_time` int(10) NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `lastview` (`yz`,`lastview`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_collection;
CREATE TABLE `qb_download_collection` (
  `id` mediumint(7) NOT NULL auto_increment,
  `aid` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_comment;
CREATE TABLE `qb_download_comment` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `aid` int(10) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `authorid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `ifcom` tinyint(1) NOT NULL default '0',
  `agree` mediumint(5) NOT NULL default '0',
  `disagree` mediumint(5) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `aid` (`aid`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_config;
CREATE TABLE `qb_download_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_field;
CREATE TABLE `qb_download_field` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` mediumint(5) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `field_name` varchar(30) NOT NULL default '',
  `field_type` varchar(15) NOT NULL default '',
  `field_leng` smallint(3) NOT NULL default '0',
  `orderlist` int(10) NOT NULL default '0',
  `form_type` varchar(15) NOT NULL default '',
  `field_inputwidth` smallint(3) default NULL,
  `field_inputheight` smallint(3) NOT NULL default '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL default '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL default '0',
  `listshow` tinyint(1) NOT NULL default '0',
  `listfilter` tinyint(1) default NULL,
  `search` tinyint(1) NOT NULL default '0',
  `allowview` varchar(255) NOT NULL default '',
  `allowpost` varchar(255) NOT NULL default '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL default '',
  `classid` mediumint(7) NOT NULL default '0',
  `form_js` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_fu_article;
CREATE TABLE `qb_download_fu_article` (
  `fid` int(7) NOT NULL default '0',
  `aid` int(10) NOT NULL default '0',
  KEY `fid` (`fid`),
  KEY `aid` (`aid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_fu_sort;
CREATE TABLE `qb_download_fu_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `fmid` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL default '',
  `bencandy_html` varchar(255) NOT NULL default '',
  `domain` varchar(150) NOT NULL default '',
  `domain_dir` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_gather_rule;
CREATE TABLE `qb_download_gather_rule` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `type` varchar(15) NOT NULL default '0',
  `fixsystem` varchar(30) NOT NULL default '',
  `filetype` varchar(50) NOT NULL default '',
  `webname` varchar(150) NOT NULL default '',
  `listurl` varchar(150) NOT NULL default '',
  `firstpage` varchar(150) NOT NULL default '',
  `page_begin` int(10) NOT NULL default '0',
  `page_end` int(10) NOT NULL default '0',
  `page_step` int(10) NOT NULL default '0',
  `title_minleng` smallint(5) NOT NULL default '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL default '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL default '',
  `show_firstpage` varchar(100) NOT NULL default '',
  `show_spe2page` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `copypic` tinyint(1) NOT NULL default '0',
  `sort` smallint(4) NOT NULL default '0',
  `file_type` varchar(50) NOT NULL default '',
  `file_minleng` mediumint(6) NOT NULL default '0',
  `file_minsize` int(9) NOT NULL default '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL default '0',
  `file_star_string` varchar(150) NOT NULL default '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_keyword;
CREATE TABLE `qb_download_keyword` (
  `id` mediumint(5) NOT NULL auto_increment,
  `keywords` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `ifhide` tinyint(1) NOT NULL default '0',
  `url` varchar(150) NOT NULL default '',
  `num` smallint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `keywords` (`keywords`),
  KEY `num` (`num`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_keywordid;
CREATE TABLE `qb_download_keywordid` (
  `id` mediumint(7) NOT NULL default '0',
  `aid` mediumint(7) NOT NULL default '0',
  KEY `id` (`id`),
  KEY `aid` (`aid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_module;
CREATE TABLE `qb_download_module` (
  `id` smallint(4) NOT NULL auto_increment,
  `sort_id` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `list` smallint(4) NOT NULL default '0',
  `style` varchar(50) NOT NULL default '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL default '0',
  `ifdp` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_reply;
CREATE TABLE `qb_download_reply` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `subhead` varchar(150) NOT NULL default '',
  `postdate` int(10) NOT NULL default '0',
  `aid` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `topic` tinyint(1) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`rid`),
  KEY `aid` (`aid`,`topic`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_report;
CREATE TABLE `qb_download_report` (
  `id` mediumint(7) NOT NULL auto_increment,
  `aid` int(10) NOT NULL default '0',
  `type` varchar(50) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `content` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_sort;
CREATE TABLE `qb_download_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `mid` mediumint(7) NOT NULL default '0',
  `fmid` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL default '',
  `bencandy_html` varchar(255) NOT NULL default '',
  `domain` varchar(150) NOT NULL default '',
  `domain_dir` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`),
  KEY `mid` (`mid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_special;
CREATE TABLE `qb_download_special` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `keywords` varchar(100) NOT NULL default '',
  `style` varchar(25) NOT NULL default '',
  `template` varchar(255) NOT NULL default '',
  `picurl` varchar(150) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `aids` text NOT NULL,
  `tids` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `levels` tinyint(1) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `htmlfile` varchar(50) NOT NULL default '',
  `banner` varchar(150) NOT NULL default '',
  `allowpost` varchar(255) NOT NULL default '',
  `ifbase` tinyint(1) NOT NULL default '0',
  `htmlname` varchar(80) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `ifbase` (`ifbase`),
  KEY `yz` (`yz`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_special_comment;
CREATE TABLE `qb_download_special_comment` (
  `id` mediumint(7) unsigned NOT NULL auto_increment,
  `cid` mediumint(7) unsigned NOT NULL default '0',
  `vid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_download_spsort;
CREATE TABLE `qb_download_spsort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL default '',
  `bencandy_html` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_regnum;
CREATE TABLE `qb_regnum` (
  `sid` varchar(8) NOT NULL default '',
  `num` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) TYPE=HEAP;


INSERT INTO `qb_members` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `qb_memberdata` VALUES ('1','admin','','3','1','','1','0','','1261','0','79703492','4310331','1307419516','127.0.0.1','1253678332','127.0.0.1','1','1890-00-00','http://news.net/upload_files/icon/1.jpg','','117','1307000683','888888','','','222@qq.com','20','345','cvbnmmm','','13399999999','','','张学友','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
INSERT INTO `qb_group` VALUES ('2','1','游客组','0','0','0','a:56:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";s:18:\"allow_get_homepage\";s:1:\"0\";s:15:\"power_qb_video_\";a:27:{s:17:\"SearchArticleType\";s:1:\"1\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"comment_num\";s:2:\"10\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";}}','0','');
INSERT INTO `qb_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:57:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:28:\"Module_download_center_label\";s:1:\"1\";s:29:\"Module_download_center_config\";s:1:\"1\";s:25:\"Module_download_listartic\";s:1:\"1\";s:29:\"Module_download_sort_listsort\";s:1:\"1\";s:27:\"Module_download_postArticle\";s:1:\"1\";s:23:\"Module_download_comment\";s:1:\"1\";s:25:\"Module_download_sort_html\";s:1:\"1\";s:27:\"Module_download_listsp_html\";s:1:\"1\";s:23:\"Module_download_special\";s:1:\"1\";s:22:\"Module_download_spsort\";s:1:\"1\";s:24:\"Module_download_fu_artic\";s:1:\"1\";s:23:\"Module_download_fu_sort\";s:1:\"1\";s:27:\"Module_download_group_power\";s:1:\"1\";s:26:\"Module_download_getkeyword\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('4','1','前台管理员','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('8','0','普通会员','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('9','0','VIP会员','10000','0','0','a:54:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('10','0','钻石会员','30000','0','0','a:50:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_menu` VALUES ('55','0','装机软件','/download/list.php?fid=26','','0','0','0','0','0','');
INSERT INTO `qb_menu` VALUES ('10','0','建站软件','/download/list.php?fid=12','','0','0','0','0','16','');
INSERT INTO `qb_menu` VALUES ('51','0','网站首页','/','','0','0','0','0','20','');
INSERT INTO `qb_menu` VALUES ('56','0','办公软件','/download/list.php?fid=27','','0','0','0','0','0','');
INSERT INTO `qb_admin_menu` VALUES ('83','0','标签/风格模板/静态页','','','0','9','3','0');
INSERT INTO `qb_admin_menu` VALUES ('84','83','</a>\r\n<font color=\"#FF0000\">主页</font><img src=../images/default/article_elite.gif> <a href=\"../index.php?&ch=1&chtype=0&jobs=show\" target=\"main\">标签</a> <A HREF=\'../index.php?&ch=1&MakeIndex=1\' target=\'_blank\' onclick=\"return confirm(\'你确实要把首页生成静态吗?生成静态后,如有更改其它相关设置,需要重新点击生成一次静态.才可以看到效果.\');\">静态</a> <a> ','#','','0','4','3','0');
INSERT INTO `qb_admin_menu` VALUES ('87','0','会员相关功能','','','0','7','3','0');
INSERT INTO `qb_admin_menu` VALUES ('88','87','会员资料管理','index.php?lfj=member&job=list','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('90','87','基本权限','index.php?lfj=group&job=list','','0','0','3','1');
INSERT INTO `qb_admin_menu` VALUES ('91','87','管理员后台权限设置','index.php?lfj=group&job=list_admin','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('92','0','系统功能设置','','','0','6','3','0');
INSERT INTO `qb_admin_menu` VALUES ('93','92','核心全局参数设置','index.php?lfj=center&job=config','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('94','92','网站导航菜单设置','index.php?lfj=guidemenu&job=list','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('96','92','友情链接管理','index.php?lfj=friendlink&job=list','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('97','92','独立页面管理','index.php?lfj=alonepage&job=list','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('98','92','备份网站数据库','index.php?lfj=mysql&job=out','','0','0','3','0');
INSERT INTO `qb_admin_menu` VALUES ('102','0','大菜单','','','0','0','-3','0');
INSERT INTO `qb_module` VALUES ('24','2','广告系统','ad_','a_d','','','','0','','','0','0');
INSERT INTO `qb_module` VALUES ('30','2','下载系统','download_','download','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','0','','','0','1');
INSERT INTO `qb_alonepage` VALUES ('1','0','友情链接','友情链接','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>菁菁论坛</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>欧迪手机图片</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>天涯客栈</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>崇左热线</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>金能家园</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>屋檐人家</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>嫩北网</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>图吧</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>视览供销</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>我爱搜罗娱乐</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>飞羽设计</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>爱雅</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>上饶教研</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>优盟网</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>扑豆中国</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT中文</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>香港网视</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','56','0');
INSERT INTO `qb_config` VALUES ('yzImgComment','0','');
INSERT INTO `qb_config` VALUES ('flashtime','0','');
INSERT INTO `qb_config` VALUES ('showComment','1','');
INSERT INTO `qb_config` VALUES ('forbidComment','0','');
INSERT INTO `qb_config` VALUES ('showCommentRows','8','');
INSERT INTO `qb_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `qb_config` VALUES ('yzImgContribute','0','');
INSERT INTO `qb_config` VALUES ('groupPassContribute','3','');
INSERT INTO `qb_config` VALUES ('RegCompany','0','');
INSERT INTO `qb_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `qb_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `qb_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `qb_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `qb_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `qb_config` VALUES ('ContributeFid','2','');
INSERT INTO `qb_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `qb_config` VALUES ('regmoney','5','');
INSERT INTO `qb_config` VALUES ('FtpPwd','admin','');
INSERT INTO `qb_config` VALUES ('PostSortStep','2','');
INSERT INTO `qb_config` VALUES ('ListSonline','2','');
INSERT INTO `qb_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `qb_config` VALUES ('CommentTime','5','');
INSERT INTO `qb_config` VALUES ('weburl','/','');
INSERT INTO `qb_config` VALUES ('MailType','smtp','');
INSERT INTO `qb_config` VALUES ('tenpay_id','1900000109','');
INSERT INTO `qb_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `qb_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `qb_config` VALUES ('AvoidCopy','0','');
INSERT INTO `qb_config` VALUES ('AvoidGather','0','');
INSERT INTO `qb_config` VALUES ('AvoidSave','0','');
INSERT INTO `qb_config` VALUES ('adminPostEditType','html','');
INSERT INTO `qb_config` VALUES ('article_show_step','0','');
INSERT INTO `qb_config` VALUES ('ifContribute','1','');
INSERT INTO `qb_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `qb_config` VALUES ('kill_badword','0','');
INSERT INTO `qb_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `qb_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `qb_config` VALUES ('UseFtp','0','');
INSERT INTO `qb_config` VALUES ('FtpDir','111','');
INSERT INTO `qb_config` VALUES ('FtpWeb','','');
INSERT INTO `qb_config` VALUES ('FtpName','admin','');
INSERT INTO `qb_config` VALUES ('photoShowType','0','');
INSERT INTO `qb_config` VALUES ('groupTime','180','');
INSERT INTO `qb_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `qb_config` VALUES ('ShowMenu','0','');
INSERT INTO `qb_config` VALUES ('GuestBookNum','8','');
INSERT INTO `qb_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `qb_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `qb_config` VALUES ('groupUpType','1','');
INSERT INTO `qb_config` VALUES ('allowDownMv','0','');
INSERT INTO `qb_config` VALUES ('QQ_QBappid','40632','');
INSERT INTO `qb_config` VALUES ('is_waterimg','1','');
INSERT INTO `qb_config` VALUES ('alipay_service','create_direct_pay_by_user','');
INSERT INTO `qb_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `qb_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `qb_config` VALUES ('allowGuestComment','1','');
INSERT INTO `qb_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
INSERT INTO `qb_config` VALUES ('ListLeng','70','');
INSERT INTO `qb_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `qb_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `qb_config` VALUES ('propagandize_close','0','');
INSERT INTO `qb_config` VALUES ('propagandize_Money','2','');
INSERT INTO `qb_config` VALUES ('YZ_IdcardMoney','20','');
INSERT INTO `qb_config` VALUES ('EditYzEmail','0','');
INSERT INTO `qb_config` VALUES ('EditYzMob','0','');
INSERT INTO `qb_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `qb_config` VALUES ('YZ_EmailMoney','10','');
INSERT INTO `qb_config` VALUES ('YZ_MobMoney','15','');
INSERT INTO `qb_config` VALUES ('MailServer','smtp.163.com','');
INSERT INTO `qb_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `qb_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `qb_config` VALUES ('YzImg_voice','0','');
INSERT INTO `qb_config` VALUES ('close_count','0','');
INSERT INTO `qb_config` VALUES ('Reg_Field','a:1:{s:8:\\\\\\\\\\\\\\\"field_db\\\\\\\\\\\\\\\";a:0:{}}','');
INSERT INTO `qb_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `qb_config` VALUES ('Listsortnameline','2','');
INSERT INTO `qb_config` VALUES ('ListSonLeng','34','');
INSERT INTO `qb_config` VALUES ('ListSonRows','9','');
INSERT INTO `qb_config` VALUES ('JsListLeng','36','');
INSERT INTO `qb_config` VALUES ('forbidReg','0','');
INSERT INTO `qb_config` VALUES ('cache_time_js','-1','');
INSERT INTO `qb_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `qb_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `qb_config` VALUES ('JsListRows','5','');
INSERT INTO `qb_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `qb_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('cache_time_com','-1','');
INSERT INTO `qb_config` VALUES ('ArticleHeart','欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif','');
INSERT INTO `qb_config` VALUES ('heart_time','30','');
INSERT INTO `qb_config` VALUES ('heart_noRecord','1','');
INSERT INTO `qb_config` VALUES ('ForceDel','0','');
INSERT INTO `qb_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `qb_config` VALUES ('forbidRegIp','','');
INSERT INTO `qb_config` VALUES ('sortNUM','24','');
INSERT INTO `qb_config` VALUES ('FtpPort','21','');
INSERT INTO `qb_config` VALUES ('articleNUM','78','');
INSERT INTO `qb_config` VALUES ('cache_time_like','-1','');
INSERT INTO `qb_config` VALUES ('cache_time_new','-1','');
INSERT INTO `qb_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `qb_config` VALUES ('passport_path','../pw7','');
INSERT INTO `qb_config` VALUES ('QQ_appkey','','');
INSERT INTO `qb_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `qb_config` VALUES ('passport_type','','');
INSERT INTO `qb_config` VALUES ('QQ_appid','','');
INSERT INTO `qb_config` VALUES ('QQ_login','2','');
INSERT INTO `qb_config` VALUES ('emailOnly','1','');
INSERT INTO `qb_config` VALUES ('reg_group','8','');
INSERT INTO `qb_config` VALUES ('RegYz','1','');
INSERT INTO `qb_config` VALUES ('passport_url','http://localhost/u/bbs','');
INSERT INTO `qb_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `qb_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `qb_config` VALUES ('list_cache_time','0','');
INSERT INTO `qb_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `qb_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `qb_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `qb_config` VALUES ('yzImgReg','1','');
INSERT INTO `qb_config` VALUES ('alipay_partner','20883328846','');
INSERT INTO `qb_config` VALUES ('MoneyRatio','100','');
INSERT INTO `qb_config` VALUES ('Money2card','0','');
INSERT INTO `qb_config` VALUES ('limitRegTime','','');
INSERT INTO `qb_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `qb_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `qb_config` VALUES ('forbidRegName','','');
INSERT INTO `qb_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `qb_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `qb_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `qb_config` VALUES ('postArticleMoney','1','');
INSERT INTO `qb_config` VALUES ('comArticleMoney','3','');
INSERT INTO `qb_config` VALUES ('hotArticleNum','100','');
INSERT INTO `qb_config` VALUES ('newArticleTime','24','');
INSERT INTO `qb_config` VALUES ('ListShowIcon','0','');
INSERT INTO `qb_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `qb_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `qb_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `qb_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `qb_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `qb_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `qb_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `qb_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `qb_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `qb_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `qb_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `qb_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `qb_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `qb_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `qb_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('MailPw','8gz','');
INSERT INTO `qb_config` VALUES ('MailId','lfj846@163.com','');
INSERT INTO `qb_config` VALUES ('yeepay_id','10011159269','');
INSERT INTO `qb_config` VALUES ('yeepay_key','jY9VL251GM0ZiX48583Dx520T623054s86587s0kyy39m6x43SqSya689p1L','');
INSERT INTO `qb_config` VALUES ('QQ_QBappkey','befedd71ba4690dc1426','');
INSERT INTO `qb_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `qb_config` VALUES ('copyright','','');
INSERT INTO `qb_config` VALUES ('mymd5','86756420','');
INSERT INTO `qb_config` VALUES ('companyTrade','机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场','');
INSERT INTO `qb_config` VALUES ('miibeian_gov_cn','京ICP备050453号','');
INSERT INTO `qb_config` VALUES ('bokecc_id','','');
INSERT INTO `qb_config` VALUES ('yzNumReg','0','');
INSERT INTO `qb_config` VALUES ('YzImg_difficult','0','');
INSERT INTO `qb_config` VALUES ('YzImg_string','','');
INSERT INTO `qb_config` VALUES ('YzImg_letter_differ','0','');
INSERT INTO `qb_config` VALUES ('upgrade_Record','v7','');
INSERT INTO `qb_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `qb_config` VALUES ('alipay_transport','https','');
INSERT INTO `qb_config` VALUES ('tenpay_key','8934e7d15453e97507ef794cf7b0519d','');
INSERT INTO `qb_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('alipay_key','4hqoy6bl87phm','');
INSERT INTO `qb_config` VALUES ('alipay_id','ay@qibosoft.com','');
INSERT INTO `qb_config` VALUES ('pay99_id','','');
INSERT INTO `qb_config` VALUES ('pay99_key','','');
INSERT INTO `qb_config` VALUES ('sms_es_name','wcb800322','');
INSERT INTO `qb_config` VALUES ('sms_es_key','wcb800321','');
INSERT INTO `qb_config` VALUES ('sms_type','ccell','');
INSERT INTO `qb_config` VALUES ('MailPort','25','');
INSERT INTO `qb_config` VALUES ('alipay_scale','100','');
INSERT INTO `qb_config` VALUES ('cookiePre','','');
INSERT INTO `qb_config` VALUES ('cookieDomain','','');
INSERT INTO `qb_config` VALUES ('path','','');
INSERT INTO `qb_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `qb_config` VALUES ('sms_wi_id','wcb800322','');
INSERT INTO `qb_config` VALUES ('sms_wi_pwd','wcb800321','');
INSERT INTO `qb_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `qb_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `qb_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `qb_config` VALUES ('updir','upload_files','');
INSERT INTO `qb_config` VALUES ('QQ_logintime','24','');
INSERT INTO `qb_config` VALUES ('waterAlpha','80','');
INSERT INTO `qb_config` VALUES ('if_gdimg','1','');
INSERT INTO `qb_config` VALUES ('waterpos','7','');
INSERT INTO `qb_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `qb_config` VALUES ('upfileMaxSize','','');
INSERT INTO `qb_config` VALUES ('totalSpace','100','');
INSERT INTO `qb_config` VALUES ('time','0','');
INSERT INTO `qb_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `qb_config` VALUES ('admin_url','admin','');
INSERT INTO `qb_config` VALUES ('www_url','http://localhost/u','');
INSERT INTO `qb_config` VALUES ('style_member','blue','');
INSERT INTO `qb_config` VALUES ('style','','');
INSERT INTO `qb_config` VALUES ('guide_word','网站首页|/|0||51\r\n建站软件|/download/list.php?fid=12|0||10\r\n装机软件|/download/list.php?fid=26|0||55\r\n办公软件|/download/list.php?fid=27|0||56','');
INSERT INTO `qb_config` VALUES ('close_why','网站维护当中,\r\n暂停访问.','');
INSERT INTO `qb_config` VALUES ('web_open','1','');
INSERT INTO `qb_config` VALUES ('MoneyDW','个','');
INSERT INTO `qb_config` VALUES ('MoneyName','积分','');
INSERT INTO `qb_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `qb_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `qb_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `qb_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `qb_config` VALUES ('description','提供各种软件下载','');
INSERT INTO `qb_config` VALUES ('metakeywords','免费版 破解版','');
INSERT INTO `qb_config` VALUES ('webname','齐博下载系统','');
INSERT INTO `qb_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `qb_config` VALUES ('member_contact','','');
INSERT INTO `qb_config` VALUES ('AutoCutFace','0','');
INSERT INTO `qb_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `qb_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `qb_config` VALUES ('label_cache_time','-1','');
INSERT INTO `qb_config` VALUES ('index_cache_time','0','');
INSERT INTO `qb_config` VALUES ('RewriteUrl','0','');
INSERT INTO `qb_config` VALUES ('hideFid','','');
INSERT INTO `qb_hack` VALUES ('alipay_set','在线充值支付管理','0','','','','','','index.php?lfj=alipay&job=list','','other','电子商务管理','9','','0');
INSERT INTO `qb_hack` VALUES ('area_list','地区管理','0','','','','','','index.php?lfj=area&job=list','','other','其它功能','5','','0');
INSERT INTO `qb_hack` VALUES ('attachment_list','附件管理','0','','','','','','index.php?lfj=attachment&job=list','','other','其它功能','6','','0');
INSERT INTO `qb_hack` VALUES ('cnzz_set','CNZZ流量统计','0','','','','','','index.php?lfj=cnzz&job=ask','','other','站外功能','3','','0');
INSERT INTO `qb_hack` VALUES ('crontab','定时任务','0','','','','','','index.php?lfj=crontab&job=list','','other','插件大全','0','','0');
INSERT INTO `qb_hack` VALUES ('jfadmin_mod','积分介绍管理','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','其它功能','7','','0');
INSERT INTO `qb_hack` VALUES ('login','用户登录插件','0','','a:3:{s:10:\"systemType\";s:6:\"php168\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `qb_hack` VALUES ('logs_login_logs','后台登录日志','0','','','','','','index.php?lfj=logs&job=login_logs','','other','日志管理','2','','0');
INSERT INTO `qb_hack` VALUES ('logs_admin_do_logs','后台操作日志','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','日志管理','1','','0');
INSERT INTO `qb_hack` VALUES ('mail_send','邮件群发','0','','','','','','index.php?lfj=mail&job=send','','other','消息/邮件群发','2','','0');
INSERT INTO `qb_hack` VALUES ('message_send','站内消息群发','0','','','','','','index.php?lfj=message&job=send','','other','消息/邮件群发','3','','0');
INSERT INTO `qb_hack` VALUES ('moneycard_make','点卡充值管理','0','','','','','','index.php?lfj=moneycard&job=make','','other','电子商务管理','7','','1');
INSERT INTO `qb_hack` VALUES ('moneylog','用户消费积分记录','0','','','','','','index.php?lfj=moneylog&job=list','','other','插件大全','0','','0');
INSERT INTO `qb_hack` VALUES ('propagandize','推广赚取积分功能','0','','','','','','index.php?lfj=propagandize&job=list','','other','其它功能','8','','0');
INSERT INTO `qb_hack` VALUES ('sms_send','手机短信群发','0','','','','','','index.php?lfj=sms&job=send','','other','消息/邮件群发','1','','0');
INSERT INTO `qb_hack` VALUES ('style_editstyle','风格管理','0','','','','','','index.php?lfj=style&job=edittpl','','other','风格/模板设置','2','','0');
INSERT INTO `qb_hack` VALUES ('template_list','模板设置','0','','','','','','index.php?lfj=template&job=list','','other','风格/模板设置','1','','0');
INSERT INTO `qb_hack` VALUES ('upgrade_ol','系统在线升级','0','','','','','','index.php?lfj=upgrade&job=get','','other','其它功能','4','','0');
INSERT INTO `qb_label` VALUES ('298','','0','0','bodyad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420140457_NOGYw.jpg\";s:7:\"imglink\";s:47:\"http://www.phpwind.net/read-htm-tid-761520.html\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240210319','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('299','','0','0','b2','comment','1','a:25:{s:9:\"tplpart_1\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> 于 <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">发表如下评论</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">　<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_1code\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> 于 <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">发表如下评论</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">　<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"comment\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:149:\" SELECT A.*,A.content AS title,B.title AS article FROM qb_comment A LEFT JOIN qb_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"80\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240996241','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('472','','0','0','index_ad8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141128_eq3o1.jpg\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"269\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642659','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('182','','0','0','Title1','code','0','web新闻','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"220\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240127514','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('183','','0','0','Title2','code','0','求职招聘','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"255\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239767486','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('184','','0','0','Title3','code','0','软件下载','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022710','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('185','','0','0','Title4','code','0','社会新闻','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022689','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('186','','0','0','Title5','code','0','文章评论','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"455\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022487','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('187','','0','0','Title6','code','0','优秀会员','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899624','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('188','','0','0','Title01','code','0','热门文章','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022429','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('189','','0','0','Title02','code','0','最受关注','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"234\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022631','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('284','','0','0','Title_jinjaad','code','0','投票调查','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022512','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('285','','0','0','jinjaad','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=6\'></SCRIPT>','a:4:{s:6:\"voteid\";s:1:\"6\";s:5:\"div_w\";s:3:\"229\";s:5:\"div_h\";s:3:\"138\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239010747','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('338','','0','0','bjsptitle','code','0','推荐专题','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('339','','0','0','bjspecial','specialsort','1','a:34:{s:9:\"tplpart_1\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_1code\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:11:\"specialsort\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";s:45:\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:113:\" SELECT A.* FROM qb_special A  WHERE `ifbase`=0  AND A.levels=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"953\";s:5:\"div_h\";s:3:\"177\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899961','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('304','','0','0','a2','member','1','a:19:{s:9:\"tplpart_1\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_1code\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"6\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:173:\" SELECT M.username AS title,D.*,D.icon AS picurl,D.introduce AS content FROM qb_members M LEFT JOIN qb_memberdata D ON M.uid=D.uid  WHERE 1  ORDER BY D.regdate DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240994881','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('305','','0','0','Title04','code','0','访客留言','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('306','','0','0','c02','guestbook','1','a:25:{s:9:\"tplpart_1\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> 于<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">　<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_1code\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> 于<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">　<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:9:\"guestbook\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:86:\" SELECT A.*,content AS title FROM qb_guestbook A  WHERE 1  ORDER BY A.id DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"70\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"231\";s:5:\"div_h\";s:3:\"260\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240898314','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('470','','0','0','index_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642651','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('471','','0','0','index_ad7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141121_uu6ot.gif\";s:7:\"imglink\";s:19:\"http://u.admin5.com\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291791530','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('364','','0','0','bb1','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">求职岗位</td>\r\n          <td width=\"13%\">学历</td>\r\n          <td width=\"14%\">性别</td>\r\n          <td width=\"13%\">工作年限</td>\r\n          <td width=\"13%\">年龄</td>\r\n          <td width=\"11%\">详情</td>\r\n        </tr> \r\n</table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"475\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239768502','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('365','','0','0','bb2','form','1','a:31:{s:9:\"tplpart_1\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} 年</td>\r\n          <td width=\"13%\">{$myage} 岁</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} 年</td>\r\n          <td width=\"13%\">{$myage} 岁</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"6\";s:7:\"tplpath\";s:16:\"/form/askjob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM qb_form_content A LEFT JOIN qb_form_content_6 R ON A.id=R.id LEFT JOIN qb_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'6\'  ORDER BY A.id DESC  LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899424','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('318','','0','0','b02','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">招聘职位</td>\r\n          <td width=\"13%\">学历要求</td>\r\n          <td width=\"14%\">性别要求</td>\r\n          <td width=\"13%\">经验要求</td>\r\n          <td width=\"13%\">月薪待遇</td>\r\n          <td width=\"11%\">详情</td>\r\n        </tr> \r\n      </table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"490\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022772','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('317','','0','0','Title05','code','0','商城购物','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239778992','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('319','','0','0','b022','form','1','a:31:{s:9:\"tplpart_1\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">详情</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"2\";s:7:\"tplpath\";s:17:\"/form/givejob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM qb_form_content A LEFT JOIN qb_form_content_2 R ON A.id=R.id LEFT JOIN qb_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'2\'  ORDER BY A.id DESC  LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899392','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('322','','0','0','bodyad2','pic','0','a:4:{s:6:\"imgurl\";s:11:\"ad/cnad.jpg\";s:7:\"imglink\";s:22:\"http://www.qibosoft.com/\";s:5:\"width\";s:3:\"742\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"742\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239759405','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('323','','0','0','Title4d','code','0','搜索引擎之PK战','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1237278157','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('324','','0','0','c2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"145\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011013','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('325','','0','0','Title5d','code','0','2008年中国站长八大热门','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240113989','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('326','','0','0','b2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=11\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"11\";s:5:\"div_w\";s:3:\"480\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011483','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('328','','0','0','Title04d','code','0','推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239345594','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('329','','0','0','c2de','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420130440_bWzOZ.jpg\";s:7:\"imglink\";s:19:\"http://www.371.com/\";s:5:\"width\";s:3:\"242\";s:6:\"height\";s:2:\"98\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240205249','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('347','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('469','','0','0','index_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:21:\"http://www.eydns.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642613','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('348','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('349','','0','0','list_page_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893815','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('350','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"273\";s:5:\"div_h\";s:2:\"56\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292548963','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('351','','0','0','article_list_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('356','','0','0','bbsifmark_tag','code','0','论坛优秀贴','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('354','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('355','','0','0','article_show_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('358','','0','0','view_article_bbs_tag','code','0','论坛推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('360','','0','0','bodyad33','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090418150428_gPa47.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"243\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240041136','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('468','','0','0','index_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:18:\"http://www.sudu.cn\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642635','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('465','','0','0','index_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141123_k355a.jpg\";s:7:\"imglink\";s:36:\"http://www.chinaccnet.com/hyperv.php\";s:5:\"width\";s:3:\"740\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"737\";s:5:\"div_h\";s:2:\"67\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291714552','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('466','','0','0','index_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141150_bnrt2.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462758','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('467','','0','0','index_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"266\";s:6:\"height\";s:3:\"236\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109141150_sfgyo.jpg\";i:2;s:32:\"label/1_20101109141154_f28xx.jpg\";}s:7:\"piclink\";a:2:{i:1;s:19:\"http://www.sudu.cn/\";i:2;s:26:\"http://www.chinaccnet.com/\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"265\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642100','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('375','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('902','','0','0','down_b4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"40\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (40)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('901','','0','0','down_b3','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"27\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (27)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481159','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('900','','0','0','down_b2','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"26\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (26)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481175','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('899','','0','0','down_b1','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"12\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (12)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481170','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('898','','0','0','down_t5','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('385','','0','0','showinfo','code','0','<SCRIPT LANGUAGE=\"JavaScript\">\r\n<!--\r\ndocument.write(\'<span id=\"num_info\"><img alt=\"内容加载中,请稍候...\" src=\"http://www_qibosoft_com/images/default/ico_loading3.gif\"></span>\');\r\ndocument.write(\'<div style=\"display:none;\"><iframe src=\"http://www_qibosoft_com/do/job.php?job=getinfo&iframeID=num_info\" width=0 height=0></iframe></div>\');\r\n//-->\r\n</SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:2:\"55\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074422','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('897','','0','0','down_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480863','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('444','','0','0','new_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"310\";s:6:\"height\";s:3:\"260\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108161159_zs6we.jpg\";i:2;s:32:\"label/1_20101108171103_f9fvv.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('896','','0','0','down_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480275','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('894','','0','0','down_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289479954','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('895','','0','0','down_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:181:\"<div class=\"list l$i\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\" >[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\" >$title</a><span>{$time_m}-{$time_d} </span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480150','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('893','','0','0','shops_v1','article','1','a:32:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457356','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('892','','0','0','shops_p4','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"list l1\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}人关注</span></div>\";s:13:\"tplpart_2code\";s:688:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listt\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	\r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"p\">市场价<strike>￥{$martprice}</strike></div>\r\n                        <div class=\"p\">现售价<span> ￥{$nowprice}</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";s:117:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457230','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('891','','0','0','shops_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('890','','0','0','shops_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:386:\"<div class=\"listshop\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">售价<span>￥{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('452','','0','0','new_tt2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('453','','0','0','new_tt1','code','0','推荐阅读','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('454','','0','0','new_tt3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('455','','0','0','new_tt4','code','0','今日推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('456','','0','0','new_tt6','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('457','','0','0','new_tt5','code','0','网友推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('458','','0','0','new_tt8','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('459','','0','0','new_tt7','code','0','民生话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('460','','0','0','new_tt9','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('461','','0','0','new_tt10','code','0','图片主题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('462','','0','0','new_tt11','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('463','','0','0','new_tt12','code','0','社会聚焦','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('464','','0','0','new_tt13','code','0','点击排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('473','','0','0','index_hot1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:92:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416138','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('474','','0','0','index_t1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:249:\"<div class=\"lista$i\"> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"d\">[{$time_m}-{$time_d}]</span> <span class=\"c\">　{$content}<a href=\"$url\" target=\"_blank\">[详情]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:158:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"130\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"54\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"446\";s:5:\"div_h\";s:3:\"209\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416125','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('475','','0','0','index_t2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:308:\"<div class=\"listpic\">\r\n        	\r\n        <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n            \r\n        <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:3:\"142\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416150','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('476','','0','0','index_down','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:90:\"<div class=\"listc$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:93:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416169','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('477','','0','0','index_j1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:219:\"<div class=\"list$i\">\r\n                    	<span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span>\r\n                        <span class=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;{$content}.</span>\r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:158:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"94\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"271\";s:5:\"div_h\";s:3:\"237\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416160','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('478','','0','0','index_j2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:283:\"<div class=\"list\"> <span class=\"t\"><em>{$username}</em> 于 {$time_m}-{$time_d} \r\n                      00:54 对 <a href=\"#\" target=\"_blank\">$article</a></span> \r\n                      <span class=\"a\">发表如下评论</span> <span class=\"c\">{$title}...</span> \r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:92:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"407\";s:5:\"div_h\";s:3:\"194\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416203','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('479','','0','0','index_j3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:501:\"	<div class=\"listpic\">\r\n                    \r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\"><strike>市场价:￥{$martprice}</strike></div>\r\n                    <div class=\"p\"><em>现售价:￥{$nowprice}</em></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:122:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"739\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416217','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('480','','0','0','index_member','member','1','a:20:{s:9:\"tplpart_1\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_1code\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:134:\" SELECT D.*,D.username AS title,D.icon AS picurl,D.introduce AS content FROM qb_memberdata D  WHERE 1  ORDER BY D.regdate ASC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"252\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463337','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('481','','0','0','index_c1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:741:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>\r\n                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">　　{$content}<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n               \";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:158:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:170:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"341\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416231','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('482','','0','0','index_c2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:738:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">　　{$content}<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n              \";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:157:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";s:169:\" SELECT A.*,A.aid AS id,R.content FROM qb_news_article A LEFT JOIN qb_news_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.ispic=1 AND R.topic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300416241','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('483','','0','0','index_cc1','code','0','<span>IT业界</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('484','','0','0','index_cc2','code','0','<span>社会民生</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('485','','0','0','index_digg','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:589:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listConcern\">\r\n                  <tr>\r\n                    <td class=\"L\"><div class=\"n\" id=\"DiggNum_$id\">$digg_num</div><div class=\"d\"><a href=\"$webdb[www_url]/news/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\">顶一下</a></div></td>\r\n                    <td class=\"R\"><a href=\"$url\" class=\"a$i\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\r\n<div style=\"display:none;\"><iframe src=\"about:blank\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:92:\" SELECT A.*,A.aid AS id FROM qb_news_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300425211','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('487','','0','0','index_pk','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"253\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463349','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('486','','0','0','index_tr1','Info_news_','1','a:37:{s:9:\"tplpart_1\";s:288:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$url\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$url\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_1code\";s:288:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$url\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$url\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:5:\"news_\";s:5:\"ctype\";s:11:\"specialsort\";s:13:\"RollStyleType\";s:0:\"\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:111:\" SELECT A.* FROM qb_news_special A  WHERE `ifbase`=0 AND yz=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"985\";s:5:\"div_h\";s:3:\"208\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300424270','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('839','','0','0','listpic2','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"10\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:152:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (10)  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006574','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('488','','0','0','index_tr01','code','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td class=\"choose\"><a href=\"#\" class=\"nbor\">文章</a></td>\r\n            <td><a href=\"#\" class=\"nbor\">图片</a></td>\r\n            <td><a href=\"#\">影视</a></td>\r\n            <td><a href=\"#\">商场</a></td>\r\n            <td><a href=\"#\">flash</a></td>\r\n          </tr>\r\n        </table> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"670\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289292242','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('489','','0','0','index_vote2','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=12\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"12\";s:5:\"div_w\";s:3:\"444\";s:5:\"div_h\";s:3:\"227\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463384','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('490','','0','0','wn_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109181105_gzaok.jpg\";i:2;s:32:\"label/1_20101109181113_fwdej.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('491','','0','0','wn_topic1','Info_wn_','1','a:29:{s:13:\"tplpart_1code\";s:128:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:73:\" SELECT A.* FROM qb_wn_content A   WHERE 1  ORDER BY A.list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289303057','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('492','','0','0','wn_tg1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:262:\"<div class=\"list$i\"> <span class=\"d\">{$time_y}/{$time_m}/{$time_d}</span> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"c\">　　{$content}<a href=\"$url\" target=\"_blank\">[查看全文]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"190\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305481','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('493','','0','0','wn_tg2','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:83:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>09-14</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('494','','0','0','wn_tg3','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 12 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305655','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('495','','0','0','wn_tg4','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:328:\"<div class=\"listpic\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE A.ispic=1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('496','','0','0','wn_tg01','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:235:\"<div class=\"list$i\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">点击:<span>$hits</span> 评论:<span>$comments</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('497','','0','0','wn_tgh1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:196:\"<div class=\"listtc\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"c\">　　$content</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"66\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289306541','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('498','','0','0','wn_tgh2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109201135_eoslv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('499','','0','0','wn_ptg4','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">　$content<a href=\"$url\" target=\"_blank\">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:147:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308003','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('500','','0','0','wn_ptg5','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">　$content<a href=\"$url\" target=\"_blank\">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:132:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:146:\"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('501','','0','0','wn_tsf','code','0','<a href=\"#\">经典文章</a> | <a href=\"#\">伤感文章</a> | <a href=\"#\">情感文章</a> &nbsp;&nbsp; <a href=\"#\">>>更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308157','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('502','','0','0','wn_tp5','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('503','','0','0','wn_tp3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('504','','0','0','wn_tp4','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('505','','0','0','wn_tp2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('506','','0','0','wn_tp1','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('507','','0','0','wn_g1','code','0','热门话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('508','','0','0','wn_g3','code','0','最近更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('509','','0','0','wn_g2','code','0','社会焦点','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('510','','0','0','wn_g4','code','0','今日关注','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('511','','0','0','wn_g6','code','0','民生话题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('512','','0','0','wn_g5','code','0','图片主题','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('513','','0','0','photo_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"238\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101110141134_yuvgy.jpg\";i:2;s:32:\"label/1_20101110141112_eb6bm.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('889','','0','0','shops_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:504:\"<div class=\"listshop\">\r\n                	\r\n              		<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n             		 <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">市场价<strike>￥{$martprice}</strike></div>\r\n                    <div class=\"p\">现售价<span>￥{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('888','','0','0','video_h2','article','1','a:32:{s:13:\"tplpart_1code\";s:415:\"	<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">播放:<span>$hits</span>次</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449096','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('887','','0','0','video_h1','article','1','a:32:{s:13:\"tplpart_1code\";s:673:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></td>\r\n                    <td class=\"word\">\r\n                       \r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                       <div class=\"m\">播放:<span>$hits</span></div>\r\n                       <div class=\"m\">评论:<span>$comments</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('518','','0','0','photo_t6','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('519','','0','0','photo_t5','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('520','','0','0','photo_t7','code','0','热门图片','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('521','','0','0','photo_t9','code','0','推荐图片','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('522','','0','0','photo_t8','code','0','最近更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('523','','0','0','photo_t10','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('524','','0','0','photo_t11','code','0','<a href=\"#\" class=\"sort choose\"><span>国内</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>国际</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>女性</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>娱乐时尚</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>军事</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>社会</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>文化</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>奇趣</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('525','','0','0','video_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"318\";s:6:\"height\";s:3:\"248\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111111131_dupyp.jpg\";i:2;s:32:\"label/1_20101111111135_0n6tg.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('886','','0','0','video_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a>\r\n\r\n<span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289448993','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('885','','0','0','video_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:148:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\">[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449013','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('884','','0','0','video_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:443:\"<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"150\" height=\"100\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">评论:<span>$comments</span> 播放:<span>$hits</span>次</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289446391','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('882','','0','0','photo_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289374054','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('883','','0','0','photo_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list ASC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('881','','0','0','photo_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:312:\"<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('531','','0','0','video_c1','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('532','','0','0','video_c2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('533','','0','0','video_c3','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('534','','0','0','video_c5','code','0','影视热播','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('535','','0','0','video_c7','code','0','精选视频','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('536','','0','0','video_c9','code','0',' <a href=\"#\" class=\"sort choose\"><span>国内</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>国际</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>女性</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>娱乐时尚</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>军事</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>社会</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>文化</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>奇趣</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('537','','0','0','video_c10','code','0','视频排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('538','','0','0','video_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121107_nd3ch.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('539','','0','0','video_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121116_80r2g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"260\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('540','','0','0','shops_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"530\";s:6:\"height\";s:3:\"210\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111141159_txw13.jpg\";i:2;s:32:\"label/1_20101111141105_k2yzk.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('541','','0','0','shops_sort','code','0','	<dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">演示分类</a></div>\r\n						\r\n                    </dd>\r\n                </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('880','','0','0','photo_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:313:\"	<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"125\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('547','','0','0','shops_f1','code','0','<dl>\r\n                <dt><a href=\"#\">会员中心</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">忘记密码</a></div>\r\n                    <div><a href=\"#\">我要买</a></div>\r\n                    <div><a href=\"#\">查看已购买商品</a></div>\r\n                    <div><a href=\"#\">如何搜索</a></div>\r\n                    <div><a href=\"#\">如何注册成为...</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('548','','0','0','shops_f2','code','0','<dl>\r\n                <dt><a href=\"#\">商铺之家</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">如何申请开店</a></div>\r\n                    <div><a href=\"#\">如何管理店铺</a></div>\r\n                    <div><a href=\"#\">查看售出商品</a></div>\r\n                    <div><a href=\"#\">如何发货</a></div>\r\n                    <div><a href=\"#\">商城商品推荐</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('549','','0','0','shops_f3','code','0','<dl>\r\n                <dt><a href=\"#\">支付方式</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">在线支付</a></div>\r\n                    <div><a href=\"#\">如何注册财付通</a></div>\r\n                    <div><a href=\"#\">如何注册贝宝</a></div>\r\n                    <div><a href=\"#\">使用预付款购物</a></div>\r\n                    <div><a href=\"#\">如何注册支付宝</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('550','','0','0','shops_f4','code','0','<dl>\r\n                <dt><a href=\"#\">今后服务</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">如何购物评价</a></div>\r\n                    <div><a href=\"#\">举报店主或商家</a></div>\r\n                    <div><a href=\"#\">投诉店铺</a></div>\r\n                    <div><a href=\"#\">如何联系卖家</a></div>\r\n                    <div><a href=\"#\">举报申诉</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('551','','0','0','shops_f5','code','0','<dl>\r\n                <dt><a href=\"#\">客服中心</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">会员修改密码</a></div>\r\n                    <div><a href=\"#\">修改收货地址</a></div>\r\n                    <div><a href=\"#\">商品发布规则</a></div>\r\n                    <div><a href=\"#\">会员修改个人信息</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('552','','0','0','shops_f6','code','0','<dl>\r\n                <dt><a href=\"#\">关于我们</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">关于我们</a></div>\r\n                    <div><a href=\"#\">消费者信赖同盟消费者信赖同盟消费者信赖同盟</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('553','','0','0','shops_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141108_fefgd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('554','','0','0','shops_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141125_iaj1l.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('555','','0','0','shops_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141143_r4drz.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('556','','0','0','shops_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141103_rpuaq.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('557','','0','0','shops_ad5','code','0','	<div class=\"list\"><a href=\"#\">好宝宝幼儿园开始招生了</a><span>报名优惠</span></div>\r\n                <div class=\"list\"><a href=\"#\">您想找个好家教吗:</a><em>010:88888888</em></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('558','','0','0','shops_ad6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141126_b9tqw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:2:\"55\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('559','','0','0','shops_a_d1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141115_ci14j.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289458738','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('560','','0','0','shops_a_d2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141129_5prhy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('561','','0','0','shops_a_d3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141110_oqdpu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('562','','0','0','shops_a_d4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141131_k3xih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('563','','0','0','shops_a_d5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141151_9lauy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('564','','0','0','shops_a_d6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151112_vin0e.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('565','','0','0','shops_a_d7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151133_53hvd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('566','','0','0','shops_a_d8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151150_avkih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('567','','0','0','shops_a_d9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151107_s9khw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('568','','0','0','shops_a_d10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151123_lxocu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('569','','0','0','shops_pp2','code','0','<a href=\"#\">更多...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('570','','0','0','shops_pp1','code','0','<a href=\"#\" class=\"sort choose\"><span>家居生活</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>电器产品</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>服装鞋帽</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>数码电子</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('571','','0','0','shops_pp0','code','0','商城产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('572','','0','0','shops_pv3','code','0','商城公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('573','','0','0','shops_pv4','code','0','热销商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('574','','0','0','shops_pcv2','code','0','经商之道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('575','','0','0','shops_pcv3','code','0','推荐商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('576','','0','0','down_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191127_zgile.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"707\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475404','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('577','','0','0','down_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191154_ykdyp.jpg\";s:7:\"imglink\";s:21:\"http://www.1gftp.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"267\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643191','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('578','','0','0','down_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191142_bnynf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"708\";s:5:\"div_h\";s:2:\"88\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475569','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('579','','0','0','down_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191109_shrig.gif\";s:7:\"imglink\";s:21:\"http://www.zwidc.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"268\";s:5:\"div_h\";s:2:\"89\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643722','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('580','','0','0','down_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191153_sdera.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"85\";}','a:3:{s:5:\"div_w\";s:3:\"270\";s:5:\"div_h\";s:2:\"84\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475675','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('870','','0','0','new_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('590','','0','0','down_c4','code','0','<a href=\"list.php?fid=40\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('591','','0','0','down_c3','code','0','<a href=\"list.php?fid=27\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('592','','0','0','down_c2','code','0','<a href=\"list.php?fid=26\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('593','','0','0','down_c1','code','0','<a href=\"list.php?fid=12\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('594','','0','0','down_bv1','code','0','建站软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('595','','0','0','down_bv2','code','0','装机软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('596','','0','0','down_bv3','code','0','办公软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('597','','0','0','down_bv4','code','0','杀毒软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('598','','0','0','down_a4','code','0','最新更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('599','','0','0','down_a3','code','0','今日榜单','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481643','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('600','','0','0','down_a2','code','0','网友推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('601','','0','0','down_a1','code','0','装机推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('602','','0','0','down_d2','code','0','热门推荐软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('603','','0','0','down_dp2','code','0','<a href=\"#\">最新源码</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('604','','0','0','down_t3v','code','0','<div>今日更新软件:<span>5</span>款 驱动更新:<span>1</span>款</div>\r\n                <div>软件总下载量:<em>651</em>次 今日下载量:<em>103</em>次</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481879','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('869','','0','0','new_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207948','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('868','','0','0','new_u1','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207819','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('867','','0','0','new_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:110:\"<div class=\"list_t_c\"> <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n              $content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207618','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('866','','0','0','new_ps','article','1','a:32:{s:13:\"tplpart_1code\";s:536:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" align=\"center\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"70\" height=\"70\" /></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" class=\"title\">$title</a>\r\n                        $content\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:192:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"56\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207490','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('865','','0','0','new_photo','article','1','a:32:{s:13:\"tplpart_1code\";s:274:\"<div class=\"listpic\">\r\n			 <a href=\"$url\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('864','','0','0','new_2','article','1','a:32:{s:13:\"tplpart_1code\";s:105:\"<div class=\"list\"><em>$i</em><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$hits}次</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"32\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289206999','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('863','','0','0','new_1','article','1','a:32:{s:13:\"tplpart_1code\";s:257:\"<div class=\"list$i\">\r\n            	\r\n          <div class=\"title\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                \r\n          <div class=\"content\">{$content}...<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n          </div>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"110\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"390\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289208353','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('862','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240292096','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('855','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','1','0','default');
INSERT INTO `qb_label` VALUES ('854','','0','0','c02d','article','1','a:31:{s:13:\"tplpart_1code\";s:476:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 12px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"100\" height=\"75\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"color:#929292;text-indent:1em;\">$content</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"34\";s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:211:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (34)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.aid DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"58\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240060985','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('852','','0','0','1236087504','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM qb_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `qb_label` VALUES ('853','tretre','0','0','1236087539','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM qb_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `qb_label` VALUES ('851','','0','0','mainnews2','article','1','a:31:{s:13:\"tplpart_1code\";s:397:\"<div style=\"clear:both;padding-top:2px;margin-bottom:4px;\"><span style=\"float:left;font-size:13px;color:#ccc;\">·<A HREF=\"$list_url\" style=\"font-size:13px;\">{$fname}</A>| <A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;font-size:13px;\">$title</a>$new$hot</span>                     \r\n    <span style=\"float:right;color:#993300;padding-right:3px;font-size:13px;\">[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"32\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (32)  AND A.mid=\'0\'   ORDER BY A.posttime DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"48\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"467\";s:5:\"div_h\";s:3:\"126\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240280500','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('850','','0','0','mainnews','article','1','a:31:{s:13:\"tplpart_1code\";s:630:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:8px;\">\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:5px;\"><a href=\"$url\" target=\"_blank\"><b><font color=\"#D50000\" style=\"font-size:16px;\">$title</font></b></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;line-height:150%;text-indent:2em;color:#929292;padding-bottom:3px;\">{$content} 共<font color=\"#D50000\">{$hits}</font>人关注  评论<font color=\"#D50000\">{$comments}</font>条 \r\n      [<a href=\"$url\" style=\"color:#D50000;\" target=\"_blank\">详情</a>]</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"31\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (31)   AND R.topic=1 ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"461\";s:5:\"div_h\";s:2:\"71\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240195933','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('849','','0','0','c1','article','1','a:31:{s:13:\"tplpart_1code\";s:254:\"<div style=\"line-height:130%;font-size:13px;color:#ccc;clear:both;\"><span style=\"float:left;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight\">$title </a></span><span style=\"float:right;padding-right:3px;color:#666;\">({$hits})</span></div>\";s:13:\"tplpart_2code\";s:302:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:4px;\">\r\n  <tr>\r\n    <td style=\"font-size:13px;font-weight:bold;\">[推荐]<A HREF=\"$url\" target=\"_blank\" style=\"font-size:15px;font-weight:bold;color:#990000;text-decoration: underline;\">$title</A></td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:8:\"12,26,27\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (12,26,27)  AND A.mid=\'101\'   ORDER BY A.posttime DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"226\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192810','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('848','','0','0','show_34','article','1','a:31:{s:13:\"tplpart_1code\";s:809:\"<table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"float:left;width:160px;margin-top:15px;\">\r\n  <tr>\r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:120px;height:90px;\"><img style=\"border:1px solid #fff;\" src=\'$picurl\' border=0 width=\"120\" height=\"90\"></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:5px;\"><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:3px;\"><strike><b>￥$martprice</b></strike> <b><font color=\"#FF0000\">￥$nowprice</font></b></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:18px;padding-top:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$webdb[www_url]/images/default/order_button.gif\" border=\"0\"></a></td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"180\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"450\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074246','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('847','','0','0','a1','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:6px;color:#ccc;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:558:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 5px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;padding-bottom:7px;border-bottom:1px dotted #ccc;\"><a href=\"$url\"><img src=\"$picurl\" width=\"100\" height=\"70\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"padding-bottom:7px;text-indent:1em;border-bottom:1px dotted #ccc;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\r\n\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"39\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:171:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (39)   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";s:183:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.fid IN (39)  AND A.ispic=1 AND R.topic=1 ORDER BY A.posttime DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"221\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192058','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('846','','0','0','comarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:1110:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:6px;\">\r\n  <tr> \r\n    <td align=\"left\" style=\"border-bottom:1px dotted #eee;padding-bottom:5px;\"> \r\n      <div style=\"background:url($webdb[www_url]/images/default/sdigg.gif) no-repeat;width:44px;height:36px;float:left;\">\r\n        <div style=\"font-size:13px;text-align:center;padding:0px;font-weight:bold;background:#eee;\" id=\"DiggNum_$id\">$digg_num</div>\r\n        <div style=\"text-align:center;font-size:12px;color:#FFF;width:44px;height:20px;overflow:hidden;background:#ccc;\" id=\"DiggDo_$id\"><a href=\"$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\" style=\"font-size:12px;color:#FFF;\">顶一下</a></div>\r\n      </div>\r\n      <div style=\"margin-left:4px;float:left;width:195px;\"> \r\n        <a href=\"$url\" target=\"_blank\" style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a>\r\n      </div>\r\n      <div style=\"display:none;\"><iframe src=\"$webdb[www_url]/do/job.php?job=digg&type=getnum&id=$id\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.digg_num\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.digg_num DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:2:\"55\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"246\";s:5:\"div_h\";s:3:\"243\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239193510','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('845','','0','0','c2','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:5px;color:#ccc;\">·<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:411:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:5px;\">\r\n  <tr>\r\n    <td align=\"left\"><a href=\"$url\" target=\"_blank\" style=\"font-weight:bold;color:#666;\" title=\"$full_title\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;text-indent:2em;padding-bottom:5px;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:5:\"35,38\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:189:\" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (35,38)  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"68\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"34\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"222\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192238','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('844','','0','0','listpic5','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"104\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'104\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006692','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('843','','0','0','listpic4','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006655','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('842','','0','0','listpic','article','1','a:31:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:7px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:0;s:5:\"fiddb\";s:2:\"33\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:167:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (33)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"3\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074794','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('841','','0','0','hotarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:212:\"<div style=\"background:url($webdb[www_url]/images/default/i/$i.gif) no-repeat 0px 2px;height:23px;text-indent:1.3em;\"><A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:27:\"/common_title/2title_i2.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE 1  AND A.mid=\'0\'   ORDER BY A.hits DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"228\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239609179','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('840','','0','0','listpic3','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006730','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('917','','0','0','down_c3','code','0','<a href=\"/download/list.php?fid=27\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1307419269','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('918','','0','0','down_c4','code','0','<a href=\"/download/list.php?fid=40\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1307419288','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('912','','0','0','down_bv2','code','0','装机软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('913','','0','0','down_bv3','code','0','办公软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('914','','0','0','down_bv4','code','0','杀毒软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('915','','0','0','down_c1','code','0','<a href=\"/download/list.php?fid=12\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1307419254','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('916','','0','0','down_c2','code','0','<a href=\"/download/list.php?fid=26\" target=\"_blank\">更多..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1307419280','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('911','','0','0','down_t1','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303370944','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('910','','0','0','down_dp2','code','0','<a href=\"#\">最新源码</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('909','','0','0','down_d2','code','0','热门推荐软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('908','','0','0','down_t2','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:181:\"<div class=\"list l$i\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\" >[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\" >$title</a><span>{$time_m}-{$time_d} </span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303370957','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('906','','0','0','down_t3v','code','0','<div>今日更新软件:<span>5</span>款 驱动更新:<span>1</span>款</div>\r\n                <div>软件总下载量:<em>651</em>次 今日下载量:<em>103</em>次</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481879','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('907','','0','0','down_t3','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303370973','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('905','','0','0','down_t5','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303371046','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('904','','0','0','down_t4','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303371008','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('903','','0','0','down_a1','code','0','装机推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('726','','0','0','index_t22','code','0','<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('727','','0','0','index_t23','code','0','<br><br>2 这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('728','','0','0','index_t24','code','0','<br><br>33这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('729','','0','0','index_t25','code','0','<br><br>44这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('730','','0','0','index_j32','code','0','dd<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>dd','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293084023','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('731','','0','0','index_j33','code','0','<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('732','','0','0','index_j34','code','0','d<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('733','','0','0','index_tr12','code','0','1<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('734','','0','0','index_tr13','code','0','2<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>2','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('735','','0','0','index_tr14','code','0','3<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('736','','0','0','index_tr15','code','0','4<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>6','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('737','','0','0','index_trrr1','code','0','<span id=\"Span6\" onmouseover=\"ShowTab(6,6,11)\">文章</span>\r\n            <span id=\"Span7\" onmouseover=\"ShowTab(7,6,11)\">图片</span>\r\n            <span id=\"Span8\" onmouseover=\"ShowTab(8,6,11)\">影视</span>\r\n            <span id=\"Span9\" onmouseover=\"ShowTab(9,6,11)\">商场</span>\r\n            <span id=\"Span10\" onmouseover=\"ShowTab(10,6,11)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('738','','0','0','index_bfj3','code','0','<span id=\"Span11\" onmouseover=\"ShowTab(11,11,15)\">服装</span>\r\n                    <span id=\"Span12\" onmouseover=\"ShowTab(12,11,15)\">数码</span>\r\n                    <span id=\"Span13\" onmouseover=\"ShowTab(13,11,15)\">食品</span>\r\n                    <span id=\"Span14\" onmouseover=\"ShowTab(14,11,15)\">美容</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('739','','0','0','index_5t2','code','0','	<span id=\"Span1\" onmouseover=\"ShowTab(1,1,6)\">文章</span>\r\n            <span id=\"Span2\" onmouseover=\"ShowTab(2,1,6)\">图片</span>\r\n            <span id=\"Span3\" onmouseover=\"ShowTab(3,1,6)\">影视</span>\r\n            <span id=\"Span4\" onmouseover=\"ShowTab(4,1,6)\">商场</span>\r\n            <span id=\"Span5\" onmouseover=\"ShowTab(5,1,6)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `qb_label` VALUES ('919','','0','0','down_bv1','code','0','建站软件','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('920','','0','0','down_b4','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303371034','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('921','','0','0','down_b3','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303370996','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('922','','0','0','down_b2','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303371020','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('923','','0','0','down_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191109_shrig.gif\";s:7:\"imglink\";s:21:\"http://www.zwidc.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"268\";s:5:\"div_h\";s:2:\"89\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643722','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('924','','0','0','down_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191153_sdera.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"85\";}','a:3:{s:5:\"div_w\";s:3:\"270\";s:5:\"div_h\";s:2:\"84\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475675','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('925','','0','0','down_b1','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}次</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303370985','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('926','','0','0','down_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191142_bnynf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"708\";s:5:\"div_h\";s:2:\"88\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475569','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('927','','0','0','down_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191154_ykdyp.jpg\";s:7:\"imglink\";s:21:\"http://www.1gftp.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"267\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643191','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('928','','0','0','down_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191127_zgile.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"707\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475404','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('929','','0','0','down_a4','code','0','最新更新','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('930','','0','0','down_a3','code','0','今日榜单','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481643','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('931','','0','0','down_a2','code','0','网友推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','30','0','0','default');
INSERT INTO `qb_label` VALUES ('932','','0','0','down_a1','code','0','装机推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','30','0','0','default');
INSERT INTO `qb_label` VALUES ('933','','0','0','special_finance_7','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:67:\" <div class=\"al1\"><a href=\"$url\" target=\"_blank\">．$title</a></div>\";s:13:\"tplpart_2code\";s:421:\"<div style=\"width:100%;margin:7px\"> \r\n              <div class=\"al\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"65\" border=\"0\" /></a></div>\r\n              <div  class=\"sm\"> \r\n                <p><span style=\"font-weight:bold;\">$title</span></p>\r\n                <p>　$content</p>\r\n              </div>\r\n            </div> \r\n           \";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";s:178:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"304\";s:5:\"div_h\";s:3:\"303\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428550','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('934','','0','0','special_finance_6','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:75:\"<div><b><a href=\"$url\" target=\"_blank\">$title</a></b><br>\r\n　$content</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"205\";s:5:\"div_h\";s:3:\"405\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428563','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('935','','0','0','special_finance_5','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">．{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"385\";s:5:\"div_h\";s:3:\"234\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428556','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('936','','0','0','special_finance_4','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">．{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:95:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"380\";s:5:\"div_h\";s:3:\"218\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428541','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('937','','0','0','special_sport_2','code','0','<a href=\"#\">新闻中心</a> | <a href=\"#\">体育新闻</a> | <a href=\"#\">娱乐新闻</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('938','','0','0','special_finance_3','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:153:\"<div class=\"diao_bt\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n            <div class=\"yy\">$content<a href=\"$url\" target=\"_blank\">[详细]</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"358\";s:5:\"div_h\";s:2:\"85\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428532','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('939','','0','0','special_car_32','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:48:\" ·<a href=\"$url\" target=\"_blank\">$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:3:\"175\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428338','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('940','','0','0','special_car_25','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:298:\"<div class=\"spic\">\r\n        <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n        <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n      </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:126:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"350\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428354','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('941','','0','0','special_car_29','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:53:\"<div><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"13\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 13 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"326\";s:5:\"div_h\";s:3:\"312\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428346','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('942','','0','0','special_car_24','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:304:\"<div class=\"hpic\">\r\n          <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n          <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:127:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"988\";s:5:\"div_h\";s:3:\"325\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428325','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('943','','0','0','special_car_13','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:595:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" /></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" target=\"_blank\" style=\"color:#004276;\">$title</a><br>　　$content<a href=\"$url\" target=\"_blank\" style=\"color:#98122A;\">[全文]</a><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:195:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"70\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"355\";s:5:\"div_h\";s:3:\"174\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428302','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('944','','0','0','special_car_23','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:49:\"·<A HREF=\"$url\" target=\'_blank\'  >$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428312','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('945','','0','0','special_car_12','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:56:\"<div><a href=\"$url\" target=\"_blank\">$title</a> </div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"352\";s:5:\"div_h\";s:3:\"137\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428291','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('946','','0','0','special_car_10','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:653:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><a href=\"$url\" target=\"_blank\"><img width=\'95\' height=\'64\' src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" style=\"color:#004276;\" target=\"_blank\">$title</a><br>\r\n                        $content<span href=\"$url\" style=\"color:#98122A;\">[详细]</span><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:196:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"363\";s:5:\"div_h\";s:3:\"248\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428279','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('947','','0','0','special_car_8','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:55:\" <div><a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:95:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"347\";s:5:\"div_h\";s:3:\"139\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428270','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('948','','0','0','special_car_7','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:300:\"<div class=\"Calign\"> \r\n                <div class=\"Text\"> <span><a href=\"$url\" target=\"_blank\">$title</a></span></div>\r\n                <div class=\"line_ys\"> <span style=\"text-indent:20px;\">$content<a href=\"$url\" style=\"color:#98122A;\">[全文]</a></span></div>\r\n                 \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"160\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"207\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428262','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('949','','0','0','special_sport_23','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>·[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"450\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134248','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('950','','0','0','special_sport_22','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>·[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"466\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134230','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('951','','0','0','special_sport_18','article','1','a:32:{s:13:\"tplpart_1code\";s:235:\"<div class=\"photo_list\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"160\" height=\"110\" border=\"0\" /></a><br />\r\n  <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"925\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133716','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('952','','0','0','special_sport_17','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133507','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('953','','0','0','special_sport_16','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"373\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133420','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('954','','0','0','special_sport_15','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">·<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"160\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133428','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('955','','0','0','special_sport_1','code','0','<a href=\"#\">加入收藏</a> | <a href=\"#\">设为首页</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"113\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131646','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('956','','0','0','special_sport_2','code','0','<a href=\"#\">新闻中心</a> | <a href=\"#\">体育新闻</a> | <a href=\"#\">娱乐新闻</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"191\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131639','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('957','','0','0','special_sport_3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119091126_q0kjm.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"160\";}','a:3:{s:5:\"div_w\";s:3:\"961\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290137907','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('958','','0','0','special_sport_4','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"306\";s:6:\"height\";s:3:\"262\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119101151_gvdry.jpg\";i:2;s:32:\"label/1_20101119101155_mqgga.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"262\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132179','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('959','','0','0','special_sport_5','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XOTk1OTE2NjQ=/v.swf\";s:5:\"width\";s:3:\"305\";s:6:\"height\";s:3:\"275\";}','a:3:{s:5:\"div_w\";s:3:\"302\";s:5:\"div_h\";s:3:\"271\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132344','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('960','','0','0','special_sport_6','code','0','希金斯简介','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('961','','0','0','special_sport_7','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						<td width=\"45%\"><img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo3.gif\" width=\"100\" height=\"80\" /></td>\r\n					    <td width=\"55%\">希金斯被认为是最出色的比赛型选手，超常的技术使他得到查过20项排名赛冠军...[<a href=\"#\">详细</a>]</td>\r\n					  </tr>\r\n					 </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132645','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('962','','0','0','special_sport_8','code','0','爆料媒体','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('963','','0','0','special_sport_9','code','0','<img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo4.gif\" width=\"166\" height=\"78\" /><br />上海起火楼工程多次','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"187\";s:5:\"div_h\";s:3:\"104\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132805','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('964','','0','0','special_sport_10','code','0','网友调查','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('965','','0','0','special_sport_11','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1 tiyu_top\">\r\n					  <tr>\r\n						<td id=\"vote_title\">你对希金斯被爆打假球这件事怎么看?</td>\r\n				      </tr>\r\n					  <tr>\r\n						<td class=\"vote_cont\">\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 很伤心,希金斯怎能如此道德败坏</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 很郁闷,斯诺克赛场也不是干净的土</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 不可以,希金斯不可能这么做</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 无奈,球员确实光靠打球难养活自己</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> 说不清，看事态进展吧</span>\r\n						</td>\r\n				      </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"245\";s:5:\"div_h\";s:3:\"210\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132887','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('966','','0','0','special_sport_12','code','0','<font face=\"黑体\"><a href=\"#\" >希金斯洗脱赌球罪</a> <a href=\"#\">禁赛6个月罚75000英镑</a></font>\r\n\r\n\r\n ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"367\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133123','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('967','','0','0','special_sport_13','code','0','<font face=\"黑体\"><a href=\"#\" >希金斯赌球丑闻后露面</a> <a href=\"#\">颁奖礼当救场嘉宾</a></font>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"366\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133184','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('968','','0','0','special_sport_14','code','0','<font face=\"黑体\"><a href=\"#\" >英媒曝希金斯收贿赂故输球</a> <a href=\"#\">已遭台联禁赛</a></font> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133258','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('969','','0','0','special_sport_19','code','0','希金斯陷赌球丑闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"127\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133781','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('970','','0','0','special_sport_20','code','0','最新进展','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('971','','0','0','special_sport_21','code','0','各方声音','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('972','','0','0','special_car_1','code','0','加入收藏 | 设为主页','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150121','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('973','','0','0','special_car_2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119151121_pnoj5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:4:\"1014\";s:6:\"height\";s:3:\"166\";}','a:3:{s:5:\"div_w\";s:4:\"1008\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150338','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('974','','0','0','special_car_3','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"346\";s:6:\"height\";s:3:\"250\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119151138_usu7n.jpg\";i:2;s:32:\"label/1_20101119151145_ysl0g.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"253\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150658','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('975','','0','0','special_car_4','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjE3NjczMDQ0/v.swf\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"256\";}','a:3:{s:5:\"div_w\";s:3:\"172\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150893','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('976','','0','0','special_car_5','code','0','奥迪A3亮相北京车展','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"154\";s:5:\"div_h\";s:2:\"17\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150943','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('977','','0','0','special_car_6','code','0','<a href=\"#\"><span class=\"STYLE1\">[奥迪A3频道]</span></a> <a href=\"#\"><span class=\"STYLE1\">[实际车展]</span></a> \r\n                  <a href=\"#\"><span class=\"STYLE1\">[奥迪车友会]</span></a> <a href=\"#\"><span class=\"STYLE1\">[微博讨论奥迪A3]</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:2:\"16\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290152789','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('978','','0','0','special_car_9','code','0','试驾奥迪A3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('979','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','19','0','default');
INSERT INTO `qb_label` VALUES ('980','','0','0','special_car_11','code','0','奥迪A3点评','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('981','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('982','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('983','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('984','','0','0','special_car_14','code','0','奥迪A3厂家指标价','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('985','','0','0','special_car_15','code','0','<li>\r\n                            <div class=\"PA10\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"PA10\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li class=\"CANSHU\">点击进入更多车型参数配置>></li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"207\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153727','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('986','','0','0','special_car_16','code','0','推荐指数<span>4</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"118\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153782','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('987','','0','0','special_car_17','code','0','<img src=\"http://www_qibosoft_com/news/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/news/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/news/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/news/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/news/images/special/car/c6.gif\" />','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"212\";s:5:\"div_h\";s:2:\"34\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300427512','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('988','','0','0','special_car_18','code','0','微博热议','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('989','','0','0','special_car_19','code','0','高调上市的精品小车奥迪A3<br>\r\n                        能否赢得中国市场消费者的认可？<br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"178\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153966','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('990','','0','0','special_car_20','code','0','调查','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('991','','0','0','special_car_21','code','0','1.你如何看到奥迪A3？<br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        高品质时尚下车</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        又一款一炮车来袭</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        与高尔夫同平台，售价较高</label><br>\r\n                        <div style=\"margin-top:5px;\">2.你认为奥迪的最大竞争对手是？</div>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        MINI Cper</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        沃尔沃C30</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        高尔夫 GTI</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        宝马1系</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"单选\" />\r\n                        奔驰B级</label><br />\r\n                        <div style=\"margin:7px;\"> \r\n                          <input type=\"button\" value=\"提交\" />\r\n                          <input type=\"button\" value=\"查看\" />\r\n                        </div>\r\n                      ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:3:\"197\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154073','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('992','','0','0','special_car_22','code','0','车友会','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('993','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:149:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\">&nbsp;<A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:30:\"/common_title/1title_noico.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240201322','11','30','24','0','default');
INSERT INTO `qb_label` VALUES ('994','','0','0','mvshow','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428507','11','30','23','0','default');
INSERT INTO `qb_label` VALUES ('995','','0','0','special_car_26','code','0','奥迪A3实拍图','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('996','','0','0','special_car_27','code','0','奥迪在售车型的（部分）','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('997','','0','0','special_car_28','code','0','竞争车型新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('998','','0','0','special_car_30','code','0','近期上市车型','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('999','','0','0','special_car_31','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119161159_20k4y.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:3:\"130\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"127\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154756','11','30','22','0','default');
INSERT INTO `qb_label` VALUES ('1000','','0','0','special_finance_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122151143_g4zey.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"958\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290409679','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1001','','0','0','special_finance_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"261\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122151110_kzqtx.jpg\";i:2;s:32:\"label/1_20101122151126_jorrb.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"294\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290411221','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1002','','0','0','special_finance_8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161156_ehzhv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"120\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"119\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414265','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1003','','0','0','special_finance_12','code','0','滚动报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1004','','0','0','special_finance_19','code','0','法案的主要条例','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1005','','0','0','special_finance_20','code','0','相关报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1006','','0','0','special_finance_21','code','0','最新报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1007','','0','0','special_finance_22','code','0','追踪报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1008','','0','0','special_finance_23','code','0','汇改大事记','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1009','','0','0','special_finance_24','code','0','美元对人民币走势','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1010','','0','0','special_finance_25','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161134_anvod.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"211\";s:6:\"height\";s:3:\"133\";}','a:3:{s:5:\"div_w\";s:3:\"213\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414346','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1011','','0','0','special_finance_28','code','0','admin@qibosoft.com','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1012','','0','0','special_sp1_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161145_th99u.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"948\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416100','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1013','','0','0','special_sp1_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122161104_gaaxz.jpg\";i:2;s:32:\"label/1_20101122161110_yoshc.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:3:\"219\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416339','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1014','','0','0','special_sp1_3','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjIxMTM5MTMy/v.swf\";s:5:\"width\";s:3:\"301\";s:6:\"height\";s:3:\"261\";}','a:3:{s:5:\"div_w\";s:3:\"164\";s:5:\"div_h\";s:3:\"268\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416435','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1015','','0','0','special_sp1_4','code','0','<table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:23px;\">\r\n					  <tr>\r\n						\r\n                      <td width=\"39%\"><img src=\"http://i1.sinaimg.cn/dy/2010/0512/S11612T1273624471182.jpg\" width=82 height=98/></td>\r\n					    <td width=\"61%\">\r\n							<div class=\"Cor3\"><a href=\"#\">从差生到唐宁街主人</a></div>\r\n							<div class=\"TEXT\">贵族后裔：身为威廉四世后裔卡梅伦沿循贵族轨迹：著名私立小学—伊顿公学—牛津大学。\r\n</div>\r\n						</td>\r\n					  </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"106\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416780','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1016','','0','0','special_sp1_5','code','0','<div class=\"TANGBIAOT\">\r\n					   <a href=\"#\" style=\"font-weight:bold;\">政坛新星：</a>\r\n					 <a href=\"#\">2005年卡梅伦在几乎无人看好的情况下，以出色的况下，以出色的况下，以出色的成功当选保况下，以出色况下，以出色的的守党党首。</a></div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">力主变革：</a>\r\n				  <a href=\"#\">卡梅伦以“变革”的口号打动了选民，在工党领导内忧外患之下，民众最想看到的无疑就是“变革”。</a> </div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">面临破题：</a>\r\n				  <a href=\"#\">卡梅伦称将重建民众对政治的信任，但如何实现目重建民众对政治的信任，但如何实标依然有待观察。</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"248\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416775','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1017','','0','0','special_sp1_16','code','0',' 应国务院总理温家宝邀请，大不列颠及北爱尔兰联合王国首相戴维·卡梅伦将于11月9日至10日对中国进行正式访问。 ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"330\";s:5:\"div_h\";s:2:\"43\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476395','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1018','','0','0','special_sp1_19','code','0','访华行程','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1019','','0','0','special_sp1_20','code','0','聚焦英国首相卡梅伦','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1020','','0','0','special_sp1_21','code','0','图片报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1021','','0','0','special_sp1_22','code','0','图文报道','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1022','','0','0','special_sp1_23','code','0','时事追踪','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1023','','0','0','special_sp1_24','code','0','大会议程','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1024','','0','0','special_sp1_25','code','0','最新消息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1025','','0','0','special_sp1_26','code','0','编辑推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1026','','0','0','special_finance_9','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:424:\"<div class=\"ren_h\">\r\n                <div class=\"at\"><img src=\"$webdb[www_url]/images/special/finance/finace_3.jpg\" width=\"15\" height=\"16\" /></div>\r\n                <div class=\"ab\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n              </div>\r\n              <div class=\"ren_by\"> \r\n                \r\n  <p>{$content} <a href=\"$url\" target=\"_blank\"><font color=\"#990000\">[更多]</font></a> \r\n  </p>\r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"270\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"553\";s:5:\"div_h\";s:3:\"144\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428570','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1027','','0','0','special_finance_10','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">．$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428578','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1028','','0','0','special_finance_11','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">．$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:95:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"371\";s:5:\"div_h\";s:3:\"306\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428584','11','30','21','0','default');
INSERT INTO `qb_label` VALUES ('1029','','0','0','special_sp1_9','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:237:\"<div class=\"photo_list\">    \r\n<a href=\"$url\" target=\"_blank\">\r\n<img width=\"164\" height=\"123\" src=\"$picurl\" border=0 onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" /></a>\r\n\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:126:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"904\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428659','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1030','','0','0','special_sp1_10','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:571:\"<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						\r\n                <td width=\"37%\"><a href=\"$url\" target=\"_blank\">\r\n				<img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" width=\"100\" height=\"68\" /></a></td>\r\n					    \r\n                <td width=\"63%\"><a href=\"$url\" style=\"color:#1F4363;\" target=\"_blank\">$title</a> \r\n                  <div style=\"color:#6A6A6A;\">　$content  [<a href=\"$url\" target=\"_blank\">详细</a>]</div></td>\r\n					  </tr>\r\n					 </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:196:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428672','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1031','','0','0','special_sp1_11','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:71:\"<div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"351\";s:5:\"div_h\";s:3:\"326\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428665','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1032','','0','0','special_sp1_12','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:176:\"<div class=\"Tbiaoti\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n		\r\n<div class=\"xwzi\">{$content} <a href=\"$url\" target=\"_blank\" style=\"color:#990000;\">  [详情] </a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:165:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"100\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428651','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1033','','0','0','special_sp1_13','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"360\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428644','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1034','','0','0','special_sp1_14','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">· <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:95:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"359\";s:5:\"div_h\";s:3:\"162\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428629','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1035','','0','0','special_sp1_15','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">· <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:73:\"<div class=\"BIAOTI\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n				\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"196\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428623','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1036','','0','0','special_sp1_17','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:102:\"<a href=\"$url\" target=\"blank\" class=\"t\" style=\"color:#013979;\">$title</a> \r\n						<div>$content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428615','11','30','20','0','default');
INSERT INTO `qb_label` VALUES ('1037','','0','0','special_sp1_18','Info_download_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">· <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:3:\"CMS\";s:3:\"PRE\";s:9:\"download_\";s:5:\"ctype\";s:7:\"article\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:96:\" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1300428637','11','30','20','0','default');
INSERT INTO `qb_friendlink` VALUES ('12','0','PHPWIND官方论坛','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND官方论坛','32','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('5','0','齐博CMS','http://www.qibosoft.com','../images/default/friendlink.gif','国内著名的CMS建站系统提供商','40','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('13','3','中国站长站','http://www.chinazhan.net/','','中国站长站','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('17','3','动网论坛','http://www.dvbbs.net/','','动网论坛','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('18','3','华夏名网','http://www.sudu.cn/','','','25','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('25','2','站长网','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','站长网','37','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('26','2','中国站长站','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','中国站长站','38','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('27','2','WEB开发网','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB开发网','34','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('29','2','中电华通','http://www.chinaccnet.com/','','中电华通','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('34','3','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `qb_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `qb_limitword` VALUES ('1','造反','造**');
INSERT INTO `qb_limitword` VALUES ('2','法轮功','法**功');
INSERT INTO `qb_ad_norm_place` VALUES ('1','article_list','文章列表页侧面广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('10','article_content','文章内容里边的广告','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.qibosoft.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('2','article_show','文章内容页侧边下方广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>站长学习网</strong></font></a> 　　<a href=\"http://www.angelyyl.cn/\" target=_blank>冰蓝世界</a><a href=\"http://www.czin.cn/\" target=_blank><br />崇左热线—崇左人的网上家园</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>邵阳网邻 了解邵阳 商务邵阳</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>亲亲你抱抱你-国际女同拉拉网-败家女网站 </a><br /><a href=\"http://www.aihut.com/\" target=_blank>情感小筑原创情感文章网 </a><br /><a href=\"http://www.popyule.com/\" target=_blank>泡泡娱乐网--娱乐综合站qibosoft构建</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>高中物理网</font></a> 　　<a href=\"http://www.ym988.com/\" target=_blank>圆梦模板工作室 </a><br /><a href=\"http://www.welights.com/\" target=_blank>国际灯具网</a> 　　<a href=\"http://www.hnmssy.cn/\" target=_blank>湖南民俗摄影网</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>诺跃站长社区 - 站长、菜鸟学习的好地方</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>泉州分类 连接泉州信息，服务百姓生活</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>中国内衣联盟</a> 　　<a href=\"http://www.downcc.cn/\" target=_blank>大当家软件站 </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>劳动社保之家-盐亭劳动保障网</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>广易网 - 广州最大门户网 </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.部落</a> 　　<a href=\"http://www.tz0632.com/\" target=_blank>滕州城市网</a> 　　<a href=\"http://www.doubar.com/\" target=_blank>豆吧 </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>重庆网站优化</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('11','digg_list','顶客排行榜侧边广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>绿谷生物网--打造最具活力生物站!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>搜罗娱乐门户－精彩娱乐生活从我开始 </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>方向和路线尽在中国高速公路网 </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>嫩北聚合娱乐网欢迎您的到来 </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>流水设计</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创 文学与摄影的创作平台 </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>时尚唐城-海外华人精英的网络家园 </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>上海玻璃钢冷却塔专业生产厂家. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `qb_ad_norm_place` VALUES ('19','list_page_topad','列表页侧边顶部广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('18','show_topad','内容页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('17','show_right_top_picad','内容页侧边顶部图片广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('20','AD_list_topad','列表页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `qb_ad_norm_place` VALUES ('21','sp_show_ad','专题页广告位','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>重庆幼儿教育 一切为了我们的孩子</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>世纪医药网</a><br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>胶南热线</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>骑摩托-中国第一摩托车互动媒体 </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>湖南公安高等专科学校校友会 </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO培训选择--北京SEO培训中心</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>品牌推广,SEO网站优化 </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>致力于儿童教育 </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>中国环评吧招聘求职网</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>文章吧 打造最好经典文章网 </a>　 </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `qb_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `qb_ad_config` VALUES ('Info_webname','广告系统','');
INSERT INTO `qb_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_ad_config` VALUES ('module_close','0','');
INSERT INTO `qb_ad_config` VALUES ('module_id','24','');
INSERT INTO `qb_ad_compete_place` VALUES ('3','顶客页竞价广告','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `qb_ad_compete_user` VALUES ('11','1','admin','1239277578','1239709578','50','3','1','http://www.qibosoft.com/','齐博官方站','0','','0');
INSERT INTO `qb_ad_compete_user` VALUES ('12','1','admin','1239279810','1239711810','50','3','1','http://www.qibosoft.com/bbs','齐博官方论坛','0','','0');
INSERT INTO `qb_upfile` VALUES ('1','0','0','0','1','1307093885','qb_w8_/ht/','tmp-1_20110603170605_aHR0cF9pbWdsb2FkZmZm.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('2','0','0','0','1','1307093915','qb_w8_/trade/','tmp-1_20110603170635_ZXJ3dHJl.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('3','0','0','0','1','1307093934','qb_w8_/trade/','tmp-1_20110603170654_MDAx.jpg','1','1');
INSERT INTO `qb_area` VALUES ('1','0','北京市','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('2','0','上海市','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('3','0','天津市','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('4','0','重庆市','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('5','0','河北省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('6','0','山西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('7','0','内蒙古自治区','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('8','0','辽宁省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('9','0','吉林省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('10','0','黑龙江省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('11','0','江苏省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('12','0','浙江省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('13','0','安徽省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('14','0','福建省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('15','0','江西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('16','0','山东省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('17','0','河南省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('18','0','湖北省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('19','0','湖南省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('20','0','广东省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('21','0','广西壮族自治区','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('22','0','海南省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('23','0','四川省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('24','0','贵州省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('25','0','云南省','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('26','0','西藏自治区','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('27','0','陕西省','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('28','0','甘肃省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('29','0','青海省','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('30','0','宁夏回族自治区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('31','0','新疆维吾尔自治区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('32','0','台湾省','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('33','0','香港特别行政区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('34','0','澳门特别行政区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('35','1','东城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('36','1','西城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('37','1','崇文区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('38','1','宣武区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('39','1','朝阳区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('40','1','丰台区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('41','1','石景山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('42','1','海淀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('43','1','门头沟区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('44','1','房山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('45','1','通州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('46','1','顺义区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('47','1','昌平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('48','1','大兴区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('49','1','怀柔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('50','1','平谷区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('51','1','密云县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('52','1','延庆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('53','2','黄浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('54','2','卢湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('55','2','徐汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('56','2','长宁区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('57','2','静安区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('58','2','普陀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('59','2','闸北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('60','2','虹口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('61','2','杨浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('62','2','闵行区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('63','2','宝山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('64','2','嘉定区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('65','2','浦东新区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('66','2','金山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('67','2','松江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('68','2','青浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('69','2','南汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('70','2','奉贤区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('71','2','崇明县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('72','3','和平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('73','3','河东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('74','3','河西区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('75','3','南开区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('76','3','河北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('77','3','红桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('78','3','塘沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('79','3','汉沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('80','3','大港区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('81','3','东丽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('82','3','西青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('83','3','津南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('84','3','北辰区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('85','3','武清区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('86','3','宝坻区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('87','3','宁河县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('88','3','静海县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('89','3','蓟县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('90','4','万州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('91','4','涪陵区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('92','4','渝中区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('93','4','大渡口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('94','4','江北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('95','4','沙坪坝区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('96','4','九龙坡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('97','4','南岸区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('98','4','北碚区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('99','4','万盛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('100','4','双桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('101','4','渝北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('102','4','巴南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('103','4','黔江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('104','4','长寿区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('105','4','綦江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('106','4','潼南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('107','4','铜梁县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('108','4','大足县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('109','4','荣昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('110','4','璧山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('111','4','梁平县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('112','4','城口县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('113','4','丰都县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('114','4','垫江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('115','4','武隆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('116','4','忠县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('117','4','开县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('118','4','云阳县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('119','4','奉节县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('120','4','巫山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('121','4','巫溪县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('122','4','石柱土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('123','4','秀山土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('124','4','酉阳土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('125','4','彭水苗族土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('126','4','江津市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('127','4','合川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('128','4','永川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('129','4','南川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('130','5','石家庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('131','5','唐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('132','5','秦皇岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('133','5','邯郸市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('134','5','邢台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('135','5','保定市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('136','5','张家口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('137','5','承德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('138','5','沧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('139','5','廊坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('140','5','衡水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('141','6','太原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('142','6','大同市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('143','6','阳泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('144','6','长治市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('145','6','晋城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('146','6','朔州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('147','6','晋中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('148','6','运城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('149','6','忻州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('150','6','临汾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('151','6','吕梁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('152','7','呼和浩特市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('153','7','包头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('154','7','乌海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('155','7','赤峰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('156','7','通辽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('157','7','鄂尔多斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('158','7','呼伦贝尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('159','7','巴彦淖尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('160','7','乌兰察布市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('161','7','兴安盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('162','7','锡林郭勒盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('163','7','阿拉善盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('164','8','沈阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('165','8','大连市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('166','8','鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('167','8','抚顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('168','8','本溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('169','8','丹东市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('170','8','锦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('171','8','营口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('172','8','阜新市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('173','8','辽阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('174','8','盘锦市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('175','8','铁岭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('176','8','朝阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('177','8','葫芦岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('178','9','长春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('179','9','吉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('180','9','四平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('181','9','辽源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('182','9','通化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('183','9','白山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('184','9','松原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('185','9','白城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('186','9','延边朝鲜族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('187','10','哈尔滨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('188','10','齐齐哈尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('189','10','鸡西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('190','10','鹤岗市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('191','10','双鸭山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('192','10','大庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('193','10','伊春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('194','10','佳木斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('195','10','七台河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('196','10','牡丹江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('197','10','黑河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('198','10','绥化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('199','10','大兴安岭地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('200','11','南京市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('201','11','无锡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('202','11','徐州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('203','11','常州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('204','11','苏州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('205','11','南通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('206','11','连云港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('207','11','淮安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('208','11','盐城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('209','11','扬州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('210','11','镇江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('211','11','泰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('212','11','宿迁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('213','12','杭州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('214','12','宁波市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('215','12','温州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('216','12','嘉兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('217','12','湖州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('218','12','绍兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('219','12','金华市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('220','12','衢州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('221','12','舟山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('222','12','台州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('223','12','丽水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('224','13','合肥市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('225','13','芜湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('226','13','蚌埠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('227','13','淮南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('228','13','马鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('229','13','淮北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('230','13','铜陵市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('231','13','安庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('232','13','黄山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('233','13','滁州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('234','13','阜阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('235','13','宿州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('236','13','巢湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('237','13','六安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('238','13','亳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('239','13','池州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('240','13','宣城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('241','14','福州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('242','14','厦门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('243','14','莆田市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('244','14','三明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('245','14','泉州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('246','14','漳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('247','14','南平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('248','14','龙岩市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('249','14','宁德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('250','15','南昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('251','15','景德镇市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('252','15','萍乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('253','15','九江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('254','15','新余市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('255','15','鹰潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('256','15','赣州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('257','15','吉安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('258','15','宜春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('259','15','抚州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('260','15','上饶市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('261','16','济南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('262','16','青岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('263','16','淄博市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('264','16','枣庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('265','16','东营市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('266','16','烟台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('267','16','潍坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('268','16','济宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('269','16','泰安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('270','16','威海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('271','16','日照市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('272','16','莱芜市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('273','16','临沂市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('274','16','德州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('275','16','聊城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('276','16','滨州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('277','16','荷泽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('278','17','郑州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('279','17','开封市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('280','17','洛阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('281','17','平顶山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('282','17','安阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('283','17','鹤壁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('284','17','新乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('285','17','焦作市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('286','17','濮阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('287','17','许昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('288','17','漯河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('289','17','三门峡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('290','17','南阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('291','17','商丘市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('292','17','信阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('293','17','周口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('294','17','驻马店市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('295','18','武汉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('296','18','黄石市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('297','18','十堰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('298','18','宜昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('299','18','襄樊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('300','18','鄂州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('301','18','荆门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('302','18','孝感市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('303','18','荆州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('304','18','黄冈市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('305','18','咸宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('306','18','随州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('307','18','恩施土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('308','18','仙桃市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('309','18','潜江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('310','18','天门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('311','18','神农架林区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('312','19','长沙市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('313','19','株洲市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('314','19','湘潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('315','19','衡阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('316','19','邵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('317','19','岳阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('318','19','常德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('319','19','张家界市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('320','19','益阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('321','19','郴州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('322','19','永州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('323','19','怀化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('324','19','娄底市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('325','19','湘西土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('326','20','广州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('327','20','韶关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('328','20','深圳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('329','20','珠海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('330','20','汕头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('331','20','佛山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('332','20','江门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('333','20','湛江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('334','20','茂名市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('335','20','肇庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('336','20','惠州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('337','20','梅州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('338','20','汕尾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('339','20','河源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('340','20','阳江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('341','20','清远市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('342','20','东莞市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('343','20','中山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('344','20','潮州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('345','20','揭阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('346','20','云浮市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('347','21','南宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('348','21','柳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('349','21','桂林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('350','21','梧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('351','21','北海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('352','21','防城港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('353','21','钦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('354','21','贵港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('355','21','玉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('356','21','百色市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('357','21','贺州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('358','21','河池市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('359','21','来宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('360','21','崇左市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('361','22','海口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('362','22','三亚市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('363','22','五指山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('364','22','琼海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('365','22','儋州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('366','22','文昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('367','22','万宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('368','22','东方市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('369','22','定安县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('370','22','屯昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('371','22','澄迈县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('372','22','临高县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('373','22','白沙黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('374','22','昌江黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('375','22','乐东黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('376','22','陵水黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('377','22','保亭黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('378','22','琼中黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('379','22','西沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('380','22','南沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('381','22','中沙群岛的岛礁及其海域','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('382','23','成都市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('383','23','自贡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('384','23','攀枝花市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('385','23','泸州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('386','23','德阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('387','23','绵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('388','23','广元市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('389','23','遂宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('390','23','内江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('391','23','乐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('392','23','南充市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('393','23','眉山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('394','23','宜宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('395','23','广安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('396','23','达州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('397','23','雅安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('398','23','巴中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('399','23','资阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('400','23','阿坝藏族羌族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('401','23','甘孜藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('402','23','凉山彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('403','24','贵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('404','24','六盘水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('405','24','遵义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('406','24','安顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('407','24','铜仁地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('408','24','黔西南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('409','24','毕节地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('410','24','黔东南苗族侗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('411','24','黔南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('412','25','昆明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('413','25','曲靖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('414','25','玉溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('415','25','保山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('416','25','昭通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('417','25','丽江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('418','25','思茅市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('419','25','临沧市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('420','25','楚雄彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('421','25','红河哈尼族彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('422','25','文山壮族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('423','25','西双版纳傣族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('424','25','大理白族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('425','25','德宏傣族景颇族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('426','25','怒江傈僳族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('427','25','迪庆藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('428','26','拉萨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('429','26','昌都地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('430','26','山南地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('431','26','日喀则地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('432','26','那曲地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('433','26','阿里地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('434','26','林芝地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('435','27','西安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('436','27','铜川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('437','27','宝鸡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('438','27','咸阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('439','27','渭南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('440','27','延安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('441','27','汉中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('442','27','榆林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('443','27','安康市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('444','27','商洛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('445','28','兰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('446','28','嘉峪关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('447','28','金昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('448','28','白银市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('449','28','天水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('450','28','武威市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('451','28','张掖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('452','28','平凉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('453','28','酒泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('454','28','庆阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('455','28','定西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('456','28','陇南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('457','28','临夏回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('458','28','甘南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('459','29','西宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('460','29','海东地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('461','29','海北藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('462','29','黄南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('463','29','海南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('464','29','果洛藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('465','29','玉树藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('466','29','海西蒙古族藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('467','30','银川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('468','30','石嘴山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('469','30','吴忠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('470','30','固原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('471','30','中卫市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('472','31','乌鲁木齐市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('473','31','克拉玛依市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('474','31','吐鲁番地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('475','31','哈密地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('476','31','昌吉回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('477','31','博尔塔拉蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('478','31','巴音郭楞蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('479','31','阿克苏地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('480','31','克孜勒苏柯尔克孜自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('481','31','喀什地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('482','31','和田地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('483','31','伊犁哈萨克自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('484','31','塔城地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('485','31','阿勒泰地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('486','31','石河子市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('487','31','阿拉尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('488','31','图木舒克市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('489','31','五家渠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('490','32','台北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('491','32','高雄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('492','32','基隆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('493','32','新竹市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('494','32','台中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('495','32','嘉义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('496','32','台南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('497','32','台北县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('498','32','桃园县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('499','32','新竹县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('500','32','苗栗县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('501','32','台中县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('502','32','彰化县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('503','32','南投县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('504','32','云林县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('505','32','嘉义县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('506','32','台南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('507','32','高雄县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('508','32','屏东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('509','32','宜兰县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('510','32','花莲县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('511','32','台东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('512','32','澎湖县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('513','32','金门县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('514','32','连江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('515','33','中西区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('516','33','东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('517','33','南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('518','33','湾仔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('519','33','九龙城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('520','33','观塘区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('521','33','深水埗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('522','33','黄大仙区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('523','33','油尖旺区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('524','33','离岛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('525','33','葵青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('526','33','北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('527','33','西贡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('528','33','沙田区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('529','33','大埔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('530','33','荃湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('531','33','屯门区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('532','33','元朗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('533','34','澳门市花地玛堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('534','34','澳门市圣安多尼堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('535','34','澳门市大堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('536','34','澳门市望德堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('537','34','澳门市风顺堂区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_jfabout` VALUES ('6','2','发表文章可得{$webdb[postArticleMoney]}个积分','只有审核后的文章才可得积分,没审核的文章不得积分.','0');
INSERT INTO `qb_jfabout` VALUES ('7','2','删除文章扣除{$webdb[deleteArticleMoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('5','1','用户注册可得{$webdb[regmoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('8','2','文章被设置为精华可得{$webdb[comArticleMoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('9','1','每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.','','0');
INSERT INTO `qb_jfsort` VALUES ('1','会员中心','0');
INSERT INTO `qb_jfsort` VALUES ('2','文章中心','0');
INSERT INTO `qb_olpay` VALUES ('33','0','08nyzxrb9a','10','0','1284605041','1','admin','1','0','0','yeepay','0');
INSERT INTO `qb_olpay` VALUES ('34','0','qaqec2flpj','1','0','1291882682','1','admin','1','0','0','tenpay','0');
INSERT INTO `qb_olpay` VALUES ('35','0','tge8v0ag0w','1','0','1291882786','1','admin','1','0','0','tenpay','0');
INSERT INTO `qb_template` VALUES ('5','头部白板','7','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('6','底部白板','8','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('23','文章列表页(左宽右窄)','2','template/default/list.htm','','0');
INSERT INTO `qb_template` VALUES ('22','内容页(左宽右窄)','3','template/default/bencandy.htm','','0');
INSERT INTO `qb_template` VALUES ('24','主页(左宽右窄)','1','template/default/index.htm','','0');
INSERT INTO `qb_template` VALUES ('20','内容页(上下型)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `qb_template` VALUES ('21','独立页','9','template/default/alonepage.htm','','0');
INSERT INTO `qb_template` VALUES ('25','专题模板一(头与底要白板)','11','template/special/showsp2.htm','','0');
INSERT INTO `qb_template` VALUES ('26','专题模板二(头与底要白板)','11','template/special/special_sport.htm','','0');
INSERT INTO `qb_template` VALUES ('27','专题模板三(头与底要白板)','11','template/special/special_car.htm','','0');
INSERT INTO `qb_template` VALUES ('28','专题模板四(头与底要白板)','11','template/special/special_finance.htm','','0');
INSERT INTO `qb_template` VALUES ('29','专题模板五(头与底要白板)','11','template/special/sp1.htm','','0');
INSERT INTO `qb_crontab` VALUES ('1','主页静态','3','','0','1292402491','inc/crontab/make_index_html.php','','1');
INSERT INTO `qb_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `qb_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `qb_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `qb_moneylog` VALUES ('6','1','1','发表图片通过审核奖分<A HREF=\'http://photo.net/photo/bencandy.php?fid=5&aid=619\' target=_blank>这里的风景独好</A>','1306374868');
INSERT INTO `qb_moneylog` VALUES ('7','1','1','发表图片通过审核奖分<A HREF=\'http://photo.net/photo/bencandy.php?fid=4&aid=620\' target=_blank>车模美女大展厅</A>','1306374992');
INSERT INTO `qb_yzimg` VALUES ('b8zvzq9d','4gRH','1307416848');
INSERT INTO `qb_download_article` VALUES ('535','迅雷5,迅雷网络版权所有','','26','101','装机软件','6','1','0','1239786953','1239786953','1','admin','','','','','0','','0','1','','0','0','0','迅雷 网络 版权所有','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1239787179','0','0','','1289453277','0','0','0','0','','','http://down.sandai.net/Thunder5.8.13.699.exe@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('537','QQ2009 Beta2 (兼容Windows Vista)','','26','101','装机软件','2','1','0','1239788244','1239788244','1','admin','','','','','0','','0','1','','0','0','0','QQ2009 Beta2 兼容 Windows Vista','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1289453294','0','0','0','0','','','http://dl_dir.qq.com/qqfile/qq/QQ2009/QQ2009Beta2.exe@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('538','万能文章系统','','12','101','建站软件','2','1','0','1239788484','1239788484','1','admin','','','','','0','','0','1','','0','0','0','万能 文章 系统','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1289465148','0','0','0','0','','','http://down.qibosoft.com/module/wnarticle.rar@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('539','qibosoft分类信息系统','','12','101','建站软件','2','1','0','1239788649','1239788649','1','admin','','','','','0','','0','1','','0','0','0','qibosoft 分类 信息系统','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1240209778','0','0','0','0','','','http://down.qibosoft.com/module/wnfenlei.rar@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('540','qibosoft博客系统','','12','101','建站软件','1','1','0','1239788777','1239788777','1','admin','','','','','0','','0','1','','0','0','0','qibosoft 博客 系统','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1240192777','0','0','0','0','','','http://down.qibosoft.com/module/blog.rar@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('541','qibosoft知道系统','','12','101','建站软件','3','1','0','1239788863','1239788863','1','admin','','','','','0','','0','1','','0','0','0','qibosoft 知道 系统','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1240111969','0','0','0','0','','','http://down.qibosoft.com/module/zhidao.rar@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('536','WPS个人版永久免费','','27','101','办公软件','2','1','0','1239788019','1239788019','1','admin','','','','','0','','0','1','','0','0','0','WPS 个人版 永久 免费','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1239788111','0','0','0','0','','','http://kad.www.wps.cn/wps/download/WPS2007.12012.exe@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('637','phpwind v8.0 社区软件（简体 GBK）','','12','101','建站软件','1','1','0','1289475859','1289475859','1','admin','','','','','0','','0','1','','0','0','0','phpwind v8.0 社区 软件 简体 GBK','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1289475883','0','0','','1289475861','0','0','0','0','','','http://download.phpwind.net/index.php?m=download&a=do&did=477@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('638','Discuz! X1.5 正式版最新下载','','12','101','建站软件','1','1','0','1289476013','1289476013','1','admin','','','','','0','','0','1','','0','0','0','Discuz X1.5 正式版 最新下载','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1289476015','0','0','0','0','','','http://download2.comsenz.com/DiscuzX/1.5/Discuz_X1.5_SC_GBK.zip@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('641','qibosoft整站V6.0简体中文版','','12','101','建站软件','3','1','0','1289476573','1289476573','1','admin','','','','','0','','0','1','','0','0','0','qibosoft 整站 V6.0 简体 中文版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303713052','0','0','0','0','','','http://down.qibosoft.com/down.php?v=v6@@@@@@','1','1','1','1','1303713038','','0');
INSERT INTO `qb_download_article` VALUES ('640','qibosoft行业B2B系统V3.0','','12','101','建站软件','0','1','0','1289476488','1289476488','1','admin','','','','','0','','0','1','','0','0','0','qibosoft 行业 B2B 系统 V3.0','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://bbs.qibosoft.com/downV6business.php@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('642','WinRAR V3.90 Final 官方简体中文版','','26','101','装机软件','0','1','0','1289476820','1289476820','1','admin','','','','','0','','0','1','','0','0','0','WinRAR V3.90 Final 官方 简体 中文版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=16060&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('643','Mydrivers驱动精灵 2010正式版 V3.5 | 完全&升级版','','26','101','装机软件','2','1','0','1289476891','1289476891','1','admin','','','','','0','','0','1','','0','0','0','Mydrivers 驱动 精灵 2010 正式版 V3.5 完全 升级版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303713032','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=106848&dlType=gf@@@@@@','1','1','1','1','1303713025','','0');
INSERT INTO `qb_download_article` VALUES ('644','搜狗拼音输入法 V4.31 正式版','','26','101','装机软件','0','1','0','1289476963','1289476963','1','admin','','','','','0','','0','1','','0','0','0','搜狗 拼音 输入法 V4.31 正式版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=80927&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('645','ACDSee Photo Manager V10.0.888 官方简体中文版','','26','101','装机软件','0','1','0','1289477041','1289477041','1','admin','','','','','0','','0','1','','0','0','0','ACDSee Photo Manager V10.0.888 官方 简体 中文版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=17460&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('646','VeryCD 电驴(easyMule) V1.1.15 101020 | 封面管理模式','','26','101','装机软件','0','1','0','1289477147','1289477147','1','admin','','','','','0','','0','1','','0','0','0','VeryCD 电驴 easyMule V1.1.15 101020 封面 管理模式','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=7453&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('647','千千静听 V5.7 Beta 3修订版 | 歌曲下载/歌词秀优化','','26','101','装机软件','0','1','0','1289477230','1289477230','1','admin','','','','','0','','0','1','','0','0','0','千千 静听 V5.7 Beta 修订 歌曲下载 歌词 优化','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=20769&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('648','谷歌金山词霸本地增强版 V2.0 2010.3.3.200','','27','101','办公软件','1','1','0','1289477316','1289477316','1','admin','','','','','0','','0','1','','0','0','0','谷歌 金山 词霸 本地 增强 V2.0 2010.3.3.200','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1300095430','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=80375&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('649','PDF文件转换王 V1.96','','27','101','办公软件','1','1','0','1289477382','1289477382','1','admin','','','','','0','','0','1','','0','0','0','PDF 文件 转换 V1.96','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1300072903','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=81009&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('650','万能五笔输入法平台 8.1 Beta5 | 测试版','','27','101','办公软件','1','1','0','1289477502','1289477502','1','admin','','','','','0','','0','1','','0','0','0','万能五笔 输入法 平台 8.1 Beta5 测试版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1300072896','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=81025&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('651','Foxmail V6.5.23 | 电子邮件客户端','','27','101','办公软件','0','1','0','1289477740','1289477740','1','admin','','','','','0','','0','1','','0','0','0','Foxmail V6.5.23 电子邮件 客户端','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=1840&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('652','Windows Live Messenger(MSN) V9.0 简体中文版(独立安装包）','','27','101','办公软件','0','1','0','1289477875','1289477875','1','admin','','','','','0','','0','1','','0','0','0','Windows Live Messenger MSN V9.0 简体 中文版 独立 安装','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=1090&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('653','QQ旋风 V2.9 Beta1(667) | 离线下载新功能/腾讯超级旋风','','27','101','办公软件','0','1','0','1289477945','1289477945','1','admin','','','','','0','','0','1','','0','0','0','旋风 V2.9 Beta1 667 下载 新功能 腾讯 超级','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=6669&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('654','急速酷6 V1.3','','27','101','办公软件','0','1','0','1289478043','1289478043','1','admin','','','','','0','','0','1','','0','0','0','急速 V1.3','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','http://down.it168.com/DownLoad.aspx?rsId=109341&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('655','360安全卫士正式版 V7.3.0.2003 | 中文官方安装版','','40','101','杀毒软件','0','1','0','1289478207','1289478207','1','admin','','','','','0','','0','1','','0','0','0','360 安全 卫士 正式版 V7.3.0.2003 中文 官方 安装','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=43634&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('656','瑞星杀毒软件2010（免费6个月）22.00.04.98','','40','101','杀毒软件','2','1','0','1289478474','1289478474','1','admin','','','','','0','','0','1','','0','0','0','瑞星 杀毒软件 2010 免费 6个月 22.00.04.98','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1307419293','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=43505&dlType=gf@@@@@@','1','1','1','1','1307419200','','0');
INSERT INTO `qb_download_article` VALUES ('657','卡巴斯基全功能安全软件2010 V9.0.0.736sch','','40','101','杀毒软件','0','1','0','1289478575','1289478575','1','admin','','','','','0','','0','1','','0','0','0','巴斯 功能 安全 软件 2010 V9.0.0.736sch','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=107344&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('658','金山毒霸','','40','101','杀毒软件','1','1','0','1289478756','1289478756','1','admin','','','','','0','','0','1','','0','0','0','金山 毒霸','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1289878940','0','0','1','0','','','http://cd001.www.duba.net/duba/install/2011/ever/KAV101109_DOWN_99_10.exe@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('659','江民杀毒软件KV2011 | 正式版','','40','101','杀毒软件','0','1','0','1289478928','1289478928','1','admin','','','','','0','','0','1','','0','0','0','江民 杀毒软件 KV2011 正式版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1303718771','0','0','','0','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=107323&dlType=gf@@@@@@','','0','0','0','0','','1303805168');
INSERT INTO `qb_download_article` VALUES ('660','诺顿防病毒软件Norton Antivirus 2011 | 轻巧极速/安全无虑','','40','101','杀毒软件','1','1','0','1289479006','1289479006','1','admin','','','','','0','','0','1','','0','0','0','诺顿 防病毒 软件 Norton Antivirus 2011 轻巧 安全','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303718313','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=15208&dlType=gf@@@@@@','','0','0','0','0','','0');
INSERT INTO `qb_download_article` VALUES ('661','金山网盾-免疫微软LNK漏洞特别版','','40','101','杀毒软件','31','1','0','1289479115','1289479115','1','admin','','','','','0','','0','1','','0','0','0','金山 免疫 微软 LNK 漏洞 特别','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1303717025','0','0','','1307419403','0','0','1','0','','','http://down.it168.com/DownLoad.aspx?rsId=125258&dlType=gf@@@@@@','1','1','1','1','1303713389','','0');
INSERT INTO `qb_download_article` VALUES ('662','江民杀毒软件KV2010 标准版','','40','101','杀毒软件','14','1','0','1289479179','1289479179','1','admin','','','','','0','','0','1','','0','0','0','江民 杀毒软件 KV2010 标准版','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1303716687','0','0','','1303719633','0','0','1','0','','','http://filedown.jiangmin.com/KV2011/KV2011_X86.EXE@@@@@@','7','7','7','7','1303718065','','0');
INSERT INTO `qb_download_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_download_config` VALUES ('module_close','0','');
INSERT INTO `qb_download_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `qb_download_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `qb_download_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `qb_download_config` VALUES ('view_sell_article','0','');
INSERT INTO `qb_download_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('showNoPassComment','1','');
INSERT INTO `qb_download_config` VALUES ('Use_FlashGet','1','');
INSERT INTO `qb_download_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `qb_download_config` VALUES ('special_show_html','html/special{$fid}/show{$id}.htm','');
INSERT INTO `qb_download_config` VALUES ('Use_XunLei','1','');
INSERT INTO `qb_download_config` VALUES ('CommentOrderType','0','');
INSERT INTO `qb_download_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `qb_download_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `qb_download_config` VALUES ('allowGuestComment','1','');
INSERT INTO `qb_download_config` VALUES ('CommentTime','5','');
INSERT INTO `qb_download_config` VALUES ('showCommentRows','8','');
INSERT INTO `qb_download_config` VALUES ('forbidComment','0','');
INSERT INTO `qb_download_config` VALUES ('showComment','1','');
INSERT INTO `qb_download_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `qb_download_config` VALUES ('allowDownMv','0','');
INSERT INTO `qb_download_config` VALUES ('photoShowType','0','');
INSERT INTO `qb_download_config` VALUES ('Private_tpl_foot','','');
INSERT INTO `qb_download_config` VALUES ('Private_tpl_head','','');
INSERT INTO `qb_download_config` VALUES ('IF_Private_tpl','0','');
INSERT INTO `qb_download_config` VALUES ('ListPageTitle_nojs','0','');
INSERT INTO `qb_download_config` VALUES ('EditSystem','2','');
INSERT INTO `qb_download_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
INSERT INTO `qb_download_config` VALUES ('showsortlogo','0','');
INSERT INTO `qb_download_config` VALUES ('ListLeng','70','');
INSERT INTO `qb_download_config` VALUES ('heart_noRecord','1','');
INSERT INTO `qb_download_config` VALUES ('Listsortnameline','2','');
INSERT INTO `qb_download_config` VALUES ('ListSonLeng','34','');
INSERT INTO `qb_download_config` VALUES ('ListSonRows','9','');
INSERT INTO `qb_download_config` VALUES ('JsListLeng','36','');
INSERT INTO `qb_download_config` VALUES ('JsListRows','5','');
INSERT INTO `qb_download_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `qb_download_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `qb_download_config` VALUES ('heart_time','30','');
INSERT INTO `qb_download_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `qb_download_config` VALUES ('special_list_html','html/special{$fid}/list{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('SortUseOtherModule','0','');
INSERT INTO `qb_download_config` VALUES ('Info_html_show','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('ArticleHeart','欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif','');
INSERT INTO `qb_download_config` VALUES ('cache_time_like','-1','');
INSERT INTO `qb_download_config` VALUES ('cache_time_com','-1','');
INSERT INTO `qb_download_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `qb_download_config` VALUES ('cache_time_new','-1','');
INSERT INTO `qb_download_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `qb_download_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `qb_download_config` VALUES ('list_cache_time','0','');
INSERT INTO `qb_download_config` VALUES ('index_cache_time','0','');
INSERT INTO `qb_download_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `qb_download_config` VALUES ('fulist_cache_time','0','');
INSERT INTO `qb_download_config` VALUES ('Limit_postOne','0','');
INSERT INTO `qb_download_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `qb_download_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `qb_download_config` VALUES ('Html_Type','0','');
INSERT INTO `qb_download_config` VALUES ('Info_html_list','html/{$fid}/{$page}.htm','');
INSERT INTO `qb_download_config` VALUES ('DefaultIndexHtml','1','');
INSERT INTO `qb_download_config` VALUES ('ForceDel','0','');
INSERT INTO `qb_download_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `qb_download_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `qb_download_config` VALUES ('postArticleMoney','1','');
INSERT INTO `qb_download_config` VALUES ('comArticleMoney','3','');
INSERT INTO `qb_download_config` VALUES ('hotArticleNum','100','');
INSERT INTO `qb_download_config` VALUES ('newArticleTime','24','');
INSERT INTO `qb_download_config` VALUES ('ListShowIcon','0','');
INSERT INTO `qb_download_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `qb_download_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `qb_download_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `qb_download_config` VALUES ('ForbidRepeatTitle','0','');
INSERT INTO `qb_download_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `qb_download_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `qb_download_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `qb_download_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `qb_download_config` VALUES ('Info_titleName','','');
INSERT INTO `qb_download_config` VALUES ('module_pre','download_','');
INSERT INTO `qb_download_config` VALUES ('module_id','30','');
INSERT INTO `qb_download_config` VALUES ('Info_webname','下载系统','');
INSERT INTO `qb_download_config` VALUES ('Info_weburl','','');
INSERT INTO `qb_download_gather_rule` VALUES ('20','0','article','article','','且听风吟原创文学空间----->散文 >> 心灵感悟','http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]','','1','3','1','0','','','','','','','','','','0','','','','','','','','','0','1165498531','1165498610','0','0','','0','0','','','','0','','<img src=images/{NO\"} border=0>\r\n                    \r\n            <a href=\"{url=NO\"}\" target=_blank>{title=NO<}</a> ','<div class=\"nr\">{content=*}</div>','','','0');
INSERT INTO `qb_download_keyword` VALUES ('1','fdsafds','0','1','1','','0');
INSERT INTO `qb_download_keyword` VALUES ('2','trew','0','1','1','','0');
INSERT INTO `qb_download_keyword` VALUES ('3','fdasfasd','0','1','1','','2');
INSERT INTO `qb_download_keyword` VALUES ('4','fda','0','1','1','','0');
INSERT INTO `qb_download_keywordid` VALUES ('3','92');
INSERT INTO `qb_download_keywordid` VALUES ('3','704');
INSERT INTO `qb_download_module` VALUES ('1','0','下载模型','0','','','','0','0','');
INSERT INTO `qb_download_reply` VALUES ('517','','1239788649','539','12','1','1','非常好用的分类信息系统','0');
INSERT INTO `qb_download_reply` VALUES ('518','','1239788777','540','12','1','1','很漂亮的博客程序','0');
INSERT INTO `qb_download_reply` VALUES ('519','','1239788863','541','12','1','1','功能非常强大.类似百度知道','0');
INSERT INTO `qb_download_reply` VALUES ('513','','1239786953','535','26','1','1','非常好用的下载工具','0');
INSERT INTO `qb_download_reply` VALUES ('514','','1239788019','536','27','1','1','版本：6.3.0.1705 (2008-09-27)<br />\r\nWindows 2000/XP/Vista(含32位、64位) ','0');
INSERT INTO `qb_download_reply` VALUES ('515','','1239788244','537','26','1','1','<p style=\"color:#333333;\">全新推出的用户操作界面，为您带来更简洁雅致的视觉体验。 </p>\r\n<p style=\"color:#333333;\">推荐功能：“好友印象”说出心中的Ta、“游戏人生”展示玩家成长经历</p>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('516','','1239788484','538','12','1','1','相当于万能模型!','0');
INSERT INTO `qb_download_reply` VALUES ('618','','0','637','12','1','1','<p>著名的免费开源BBS</p>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('619','','0','638','12','1','1','<p>著名的免费开源BBS程序</p>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('622','','0','641','12','1','1','qibosoft CMS是PHP领域当前功能最强大的开源系统，全局采用“核心+模块+系统+插件”模式， 代码全部开 源，可极其方便的进行二次开发，所有功能模块可以自由安装与删除，个人用户完全免费使用。','0');
INSERT INTO `qb_download_reply` VALUES ('621','','0','640','12','1','1','qibosoft行业B2B将为青年用户朋友提供创业平台。也是现阶段国内PHP领域唯一一家品牌的B2B开发方。<br />\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('623','','0','642','26','1','1','最多人使用的RAR软件','0');
INSERT INTO `qb_download_reply` VALUES ('624','','0','643','26','1','1','驱动精灵是一款适合绝大多数电脑用户的老牌专业驱动程序智能管理软件，驱动精灵不仅可以快速检测识别所有硬件设备，还可以智能判断硬件状态，为用户提供最快最稳定的驱动程序下载，安装、备份、还原、卸载等全套专业级驱动程序管理功能。','0');
INSERT INTO `qb_download_reply` VALUES ('625','','0','644','26','1','1','<p>搜狗拼音输入法是当前网上最流行、用户好评率最高、功能最强大的拼音输入法，并且承诺永久免费、绝无插件。</p>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('626','','0','645','26','1','1','不论您拍摄的相片是什么类型－家人与朋友的，或是作为业余爱好而拍摄的艺术照－您都需要相片管理软件来轻松快捷地整理以及查看、修正和共享这些相片。','0');
INSERT INTO `qb_download_reply` VALUES ('627','','0','646','26','1','1','以海报(封面)视图或详情模式管理下载的资源缺陷修复：下载任务进度有时意外变成0.0%且状态被置为错误缺陷修复','0');
INSERT INTO `qb_download_reply` VALUES ('628','','0','647','26','1','1','千千静听是一款完全免费的音乐播放软件，拥有自主研发的全新音频引擎，集播放、音效、转换、歌词等众多功能于一身。其小巧精致、操作简捷、功能强大的特点，深得用户喜爱，被网友评为中国十大优秀软件之一，并且成为目前国内最受欢迎的音乐播放软件。','0');
INSERT INTO `qb_download_reply` VALUES ('629','','0','648','27','1','1','《谷歌金山词霸合作版》是金山软件与全球最大的搜索引擎公司Google(谷歌)联手推出的、面向个人用户的免费词典、翻译软件。传承了金山词霸十年经典品质的同时，也给用户带来了更强的功能、更优的交互体验。','0');
INSERT INTO `qb_download_reply` VALUES ('630','','0','649','27','1','1','一款高质量的PDF文档转换工具。完全兼容PDF规格，超强转换功能。可自由地将各种文本文件迅速地转换成为PDF文件。','0');
INSERT INTO `qb_download_reply` VALUES ('631','','0','650','27','1','1','万能五笔输入法平台：你会五笔，打五笔；你会拼音，打拼音；会英语打英语；不会拼音不会英语，打笔画,你想什么就打什么，而且是一种优先选择五笔字型高速输入为主的快速输入法，各种输入法随意使用，无需转换，随心所欲，易学好用。','0');
INSERT INTO `qb_download_reply` VALUES ('632','','0','651','27','1','1','Foxmail是一款著名的电子邮件客户端软件,提供基于Internet标准的电子邮件收发功能.Foxmail 6.0致力于提供更便捷、更舒适的Foxmail产品使用体验.Foxmail6.5 正式版对 Beta3 版的主要改进 方便用户备忘、轻松管理各个事项，并可对重要事项设置提醒。','0');
INSERT INTO `qb_download_reply` VALUES ('633','','0','652','27','1','1','跳槽的时候，你的MSN聊天记录可曾带走了？工作多年，你的聊天记录可曾丢失过？公司、家庭、台式机、笔记本……多台电脑的MSN聊天记录无法合并，覆盖还是舍弃，还在艰难取舍么？个性表情带不走？传输文件没有备份？…… ','0');
INSERT INTO `qb_download_reply` VALUES ('634','','0','653','27','1','1','1.推出离线下载功能，支持HTTP，eMule，BT三大协议（暂对年费会员、Vip5及以上放量中）','0');
INSERT INTO `qb_download_reply` VALUES ('635','','0','654','27','1','1','极速酷6能够让你在观看视频时的速度有显著的提高。让你体验到很快很享受的感觉:炫酷桌面播放 极速酷6新增桌面播放功能，在为您加速的前提下还提供了脱离网页的桌面播放功能，让您可以在桌面轻松播放您喜欢的酷6视频。并且您可以根据您的喜好来调整区域的尺寸。 ','0');
INSERT INTO `qb_download_reply` VALUES ('636','','0','655','40','1','1','360安全卫士是当前功能最强、效果最好、最受用户欢迎的上网必备安全软件。由于使用方便，用户口碑好，目前4.2亿中国网民中，首选安装360的已超过3亿。','0');
INSERT INTO `qb_download_reply` VALUES ('637','','0','656','40','1','1','瑞星杀毒软件2010版产品介绍： 1、查杀病毒后台查杀：在不影响用户工作的情况下进行病毒的处理。','0');
INSERT INTO `qb_download_reply` VALUES ('638','','0','657','40','1','1','卡巴斯基全功能安全软件 2010将实时自动保护您全家的上网安全。','0');
INSERT INTO `qb_download_reply` VALUES ('639','','0','658','40','1','1','<p>2010年11月10日下午16：00开始，金山毒霸开始全面免费。从这时开始，所有用户都可以下载到没有服务期限的金山毒霸。</p>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('640','','0','659','40','1','1','江民杀毒软件KV2011是全功能专业安全软件，全面融合杀毒软件、防火墙、安全检测、漏洞修复等核心安全功能为有机整体，打破杀毒软件、防火墙等专业软件各司其职的界限，为个人电脑用户提供全面的安全防护。','0');
INSERT INTO `qb_download_reply` VALUES ('641','','0','660','40','1','1','捍卫你的每次点击&nbsp; 引领炫酷网络防护先驱诺顿防病毒软件2011立足SONAR3第三代主动行为防护','0');
INSERT INTO `qb_download_reply` VALUES ('642','','0','661','40','1','1','<div style=\"font-size: 12px; font-family: 宋体\">\r\n	金山网盾首个成功免疫微软LNK（快捷方式）漏洞</div>\r\n','0');
INSERT INTO `qb_download_reply` VALUES ('643','','0','662','40','1','1','&nbsp;江民杀毒软件KV2010系江民反病毒资深研发团队历时一年之久，悉心打造的一款新型全功能杀毒软件。','0');
INSERT INTO `qb_download_sort` VALUES ('11','0','0','0','下载中心','1','4','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/2\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `qb_download_sort` VALUES ('12','11','0','0','建站软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_download_sort` VALUES ('26','11','0','101','装机软件','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `qb_download_sort` VALUES ('27','11','0','101','办公软件','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_download_sort` VALUES ('40','11','0','101','杀毒软件','2','0','0','','0','0','','','','','','','0','','','0','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
