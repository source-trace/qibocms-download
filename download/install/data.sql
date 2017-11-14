INSERT INTO `qb_module` (`id`, `type`, `name`, `pre`, `dirname`, `domain`, `admindir`, `config`, `list`, `admingroup`, `adminmember`, `ifclose`) VALUES (30, 2, '下载系统', 'download_', 'download', '', '', 'a:7:{s:12:"list_PhpName";s:18:"list.php?&fid=$fid";s:12:"show_PhpName";s:29:"bencandy.php?&fid=$fid&id=$id";s:8:"MakeHtml";N;s:14:"list_HtmlName1";N;s:14:"show_HtmlName1";N;s:14:"list_HtmlName2";N;s:14:"show_HtmlName2";N;}', 0, '', '', 0);




INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_a1', 'code', 0, '装机推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t4', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"34";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303371008, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t5', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"34";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303371046, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t3v', 'code', 0, '<div>今日更新软件:<span>5</span>款 驱动更新:<span>1</span>款</div>\r\n                <div>软件总下载量:<em>651</em>次 今日下载量:<em>103</em>次</div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481879, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t3', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:91:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303370973, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t2', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:181:"<div class="list l$i"><a href="$list_url" class="sort" target="_blank" >[{$fname}]</a><a href="$url" class="title" target="_blank" >$title</a><span>{$time_m}-{$time_d} </span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"11";s:3:"sql";s:97:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 11 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303370957, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_d2', 'code', 0, '热门推荐软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_dp2', 'code', 0, '<a href="#">最新源码</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_t1', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:91:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:97:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303370944, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_bv2', 'code', 0, '装机软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_bv3', 'code', 0, '办公软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_bv4', 'code', 0, '杀毒软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_c1', 'code', 0, '<a href="list.php?fid=12" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_c2', 'code', 0, '<a href="list.php?fid=26" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_c3', 'code', 0, '<a href="list.php?fid=27" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_c4', 'code', 0, '<a href="list.php?fid=40" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_bv1', 'code', 0, '建站软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_b4', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303371034, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_b3', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303370996, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_b2', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303371020, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_ad4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191109_shrig.gif";s:7:"imglink";s:21:"http://www.zwidc.com/";s:5:"width";s:3:"270";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"268";s:5:"div_h";s:2:"89";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292643722, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_ad5', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191153_sdera.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"270";s:6:"height";s:2:"85";}', 'a:3:{s:5:"div_w";s:3:"270";s:5:"div_h";s:2:"84";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475675, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_b1', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1303370985, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_ad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191142_bnynf.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"710";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"708";s:5:"div_h";s:2:"88";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475569, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191154_ykdyp.jpg";s:7:"imglink";s:21:"http://www.1gftp.com/";s:5:"width";s:3:"270";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"267";s:5:"div_h";s:2:"68";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292643191, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191127_zgile.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"710";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"707";s:5:"div_h";s:2:"69";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475404, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_a4', 'code', 0, '最新更新', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_a3', 'code', 0, '今日榜单', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481643, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_a2', 'code', 0, '网友推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'down_a1', 'code', 0, '装机推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 30, 0, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_7', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:67:" <div class="al1"><a href="$url" target="_blank">．$title</a></div>";s:13:"tplpart_2code";s:421:"<div style="width:100%;margin:7px"> \r\n              <div class="al"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="90" height="65" border="0" /></a></div>\r\n              <div  class="sm"> \r\n                <p><span style="font-weight:bold;">$title</span></p>\r\n                <p>　$content</p>\r\n              </div>\r\n            </div> \r\n           ";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:24:"/common_zh_pic/zh_pc.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";s:178:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"60";s:8:"titlenum";s:2:"38";s:9:"titlenum2";s:2:"30";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"304";s:5:"div_h";s:3:"303";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428550, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_6', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:75:"<div><b><a href="$url" target="_blank">$title</a></b><br>\r\n　$content</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"205";s:5:"div_h";s:3:"405";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428563, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_5', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:129:"<p><a href="$url" target="_blank">．{$title}</a> <span style="color:#727171;padding-left:10px;">({$time_m}-{$time_d})</span> </p>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"9";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"385";s:5:"div_h";s:3:"234";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428556, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_4', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:129:"<p><a href="$url" target="_blank">．{$title}</a> <span style="color:#727171;padding-left:10px;">({$time_m}-{$time_d})</span> </p>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:95:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"380";s:5:"div_h";s:3:"218";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428541, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_2', 'code', 0, '<a href="#">新闻中心</a> | <a href="#">体育新闻</a> | <a href="#">娱乐新闻</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_3', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:153:"<div class="diao_bt"><a href="$url" target="_blank">$title</a></div>\r\n            <div class="yy">$content<a href="$url" target="_blank">[详细]</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"120";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"358";s:5:"div_h";s:2:"85";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428532, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_32', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:48:" ·<a href="$url" target="_blank">$title</a><br>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"243";s:5:"div_h";s:3:"175";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428338, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_25', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:298:"<div class="spic">\r\n        <div class="auto_08"><a href="$url" target="_blank"><img src="$picurl" width=\'150\' height=\'99\' onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n        <div class="SHIPAI"><a href="$ur" target="_blank">$title</a></div>\r\n      </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:126:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"350";s:5:"div_h";s:3:"320";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428354, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_29', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:53:"<div><a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"13";s:3:"sql";s:97:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 13 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"326";s:5:"div_h";s:3:"312";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428346, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_24', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:304:"<div class="hpic">\r\n          <div class="auto_08"><a href="$url" target="_blank"><img src="$picurl" width=\'150\' height=\'99\' onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n          <div class="SHIPAI"><a href="$ur" target="_blank">$title</a></div>\r\n        </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:127:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"988";s:5:"div_h";s:3:"325";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428325, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_13', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:595:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                  <tr> \r\n                    <td class="Czhouju"> \r\n                      <div class="L left_tu"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60" /></div>\r\n                      <div class="L right_zi"> <a href="$url" target="_blank" style="color:#004276;">$title</a><br>　　$content<a href="$url" target="_blank" style="color:#98122A;">[全文]</a><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"2";s:3:"sql";s:195:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 2 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"70";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"355";s:5:"div_h";s:3:"174";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428302, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_23', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:49:"·<A HREF="$url" target=\'_blank\'  >$title</a><br>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"223";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428312, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_12', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:56:"<div><a href="$url" target="_blank">$title</a> </div>   ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"352";s:5:"div_h";s:3:"137";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428291, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_10', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:653:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                  <tr> \r\n                    <td class="Czhouju"> \r\n                      <div class="L left_tu"><a href="$url" target="_blank"><img width=\'95\' height=\'64\' src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n                      <div class="L right_zi"> <a href="$url" style="color:#004276;" target="_blank">$title</a><br>\r\n                        $content<span href="$url" style="color:#98122A;">[详细]</span><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:196:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"363";s:5:"div_h";s:3:"248";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428279, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_8', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:55:" <div><a href="$url" target="_blank">$title</a> </div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:95:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"347";s:5:"div_h";s:3:"139";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428270, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_7', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:300:"<div class="Calign"> \r\n                <div class="Text"> <span><a href="$url" target="_blank">$title</a></span></div>\r\n                <div class="line_ys"> <span style="text-indent:20px;">$content<a href="$url" style="color:#98122A;">[全文]</a></span></div>\r\n                 \r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"2";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 2 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"160";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"370";s:5:"div_h";s:3:"207";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428262, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_23', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:194:"<div class="content_list"><span>·[<a href="$list_url" target="_blank">$fname</a>]<a href="$url" target="_blank">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"468";s:5:"div_h";s:3:"450";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290134248, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_22', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:194:"<div class="content_list"><span>·[<a href="$list_url" target="_blank">$fname</a>]<a href="$url" target="_blank">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"468";s:5:"div_h";s:3:"466";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290134230, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_18', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:235:"<div class="photo_list"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="160" height="110" border="0" /></a><br />\r\n  <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"925";s:5:"div_h";s:3:"134";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133716, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_17', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"375";s:5:"div_h";s:3:"108";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133507, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_16', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"373";s:5:"div_h";s:3:"163";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133420, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_15', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"375";s:5:"div_h";s:3:"160";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133428, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_1', 'code', 0, '<a href="#">加入收藏</a> | <a href="#">设为首页</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"113";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290131646, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_2', 'code', 0, '<a href="#">新闻中心</a> | <a href="#">体育新闻</a> | <a href="#">娱乐新闻</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"191";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290131639, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119091126_q0kjm.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"960";s:6:"height";s:3:"160";}', 'a:3:{s:5:"div_w";s:3:"961";s:5:"div_h";s:3:"159";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290137907, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_4', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"306";s:6:"height";s:3:"262";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101119101151_gvdry.jpg";i:2;s:32:"label/1_20101119101155_mqgga.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"262";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132179, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_5', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XOTk1OTE2NjQ=/v.swf";s:5:"width";s:3:"305";s:6:"height";s:3:"275";}', 'a:3:{s:5:"div_w";s:3:"302";s:5:"div_h";s:3:"271";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132344, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_6', 'code', 0, '希金斯简介', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_7', 'code', 0, '<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1">\r\n					  <tr>\r\n						<td width="45%"><img src="http://www_qibosoft_com/images/special/sports/tiyu_photo3.gif" width="100" height="80" /></td>\r\n					    <td width="55%">希金斯被认为是最出色的比赛型选手，超常的技术使他得到查过20项排名赛冠军...[<a href="#">详细</a>]</td>\r\n					  </tr>\r\n					 </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"243";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132645, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_8', 'code', 0, '爆料媒体', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_9', 'code', 0, '<img src="http://www_qibosoft_com/images/special/sports/tiyu_photo4.gif" width="166" height="78" /><br />上海起火楼工程多次', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"187";s:5:"div_h";s:3:"104";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132805, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_10', 'code', 0, '网友调查', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_11', 'code', 0, '<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1 tiyu_top">\r\n					  <tr>\r\n						<td id="vote_title">你对希金斯被爆打假球这件事怎么看?</td>\r\n				      </tr>\r\n					  <tr>\r\n						<td class="vote_cont">\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 很伤心,希金斯怎能如此道德败坏</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 很郁闷,斯诺克赛场也不是干净的土</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 不可以,希金斯不可能这么做</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 无奈,球员确实光靠打球难养活自己</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 说不清，看事态进展吧</span>\r\n						</td>\r\n				      </tr>\r\n				  </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"245";s:5:"div_h";s:3:"210";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132887, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_12', 'code', 0, '<font face="黑体"><a href="#" >希金斯洗脱赌球罪</a> <a href="#">禁赛6个月罚75000英镑</a></font>\r\n\r\n\r\n ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"367";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133123, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_13', 'code', 0, '<font face="黑体"><a href="#" >希金斯赌球丑闻后露面</a> <a href="#">颁奖礼当救场嘉宾</a></font>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"366";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133184, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_14', 'code', 0, '<font face="黑体"><a href="#" >英媒曝希金斯收贿赂故输球</a> <a href="#">已遭台联禁赛</a></font> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"370";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133258, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_19', 'code', 0, '希金斯陷赌球丑闻', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"127";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133781, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_20', 'code', 0, '最新进展', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sport_21', 'code', 0, '各方声音', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_1', 'code', 0, '加入收藏 | 设为主页', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"147";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150121, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119151121_pnoj5.gif";s:7:"imglink";s:1:"#";s:5:"width";s:4:"1014";s:6:"height";s:3:"166";}', 'a:3:{s:5:"div_w";s:4:"1008";s:5:"div_h";s:3:"153";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150338, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_3', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"346";s:6:"height";s:3:"250";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101119151138_usu7n.jpg";i:2;s:32:"label/1_20101119151145_ysl0g.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"180";s:5:"div_h";s:3:"253";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150658, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_4', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XMjE3NjczMDQ0/v.swf";s:5:"width";s:3:"344";s:6:"height";s:3:"256";}', 'a:3:{s:5:"div_w";s:3:"172";s:5:"div_h";s:3:"257";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150893, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_5', 'code', 0, '奥迪A3亮相北京车展', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"154";s:5:"div_h";s:2:"17";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150943, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_6', 'code', 0, '<a href="#"><span class="STYLE1">[奥迪A3频道]</span></a> <a href="#"><span class="STYLE1">[实际车展]</span></a> \r\n                  <a href="#"><span class="STYLE1">[奥迪车友会]</span></a> <a href="#"><span class="STYLE1">[微博讨论奥迪A3]</span></a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"339";s:5:"div_h";s:2:"16";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290152789, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_9', 'code', 0, '试驾奥迪A3', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 19, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_11', 'code', 0, '奥迪A3点评', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_14', 'code', 0, '奥迪A3厂家指标价', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_15', 'code', 0, '<li>\r\n                            <div class="PA10">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="CALIGN_C2">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="PA10">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="CALIGN_C2">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li class="CANSHU">点击进入更多车型参数配置>></li>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"207";s:5:"div_h";s:3:"140";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153727, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_16', 'code', 0, '推荐指数<span>4</span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"118";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153782, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_17', 'code', 0, '<img src="http://www_qibosoft_com/news/images/special/car/c5.gif" /> <img src="http://www_qibosoft_com/news/images/special/car/c5.gif" /> \r\n                        <img src="http://www_qibosoft_com/news/images/special/car/c5.gif" /> <img src="http://www_qibosoft_com/news/images/special/car/c5.gif" /> \r\n                        <img src="http://www_qibosoft_com/news/images/special/car/c6.gif" />', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"212";s:5:"div_h";s:2:"34";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300427512, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_18', 'code', 0, '微博热议', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_19', 'code', 0, '高调上市的精品小车奥迪A3<br>\r\n                        能否赢得中国市场消费者的认可？<br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"178";s:5:"div_h";s:2:"48";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153966, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_20', 'code', 0, '调查', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_21', 'code', 0, '1.你如何看到奥迪A3？<br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        高品质时尚下车</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        又一款一炮车来袭</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        与高尔夫同平台，售价较高</label><br>\r\n                        <div style="margin-top:5px;">2.你认为奥迪的最大竞争对手是？</div>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        MINI Cper</label> <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        沃尔沃C30</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        高尔夫 GTI</label> <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        宝马1系</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        奔驰B级</label><br />\r\n                        <div style="margin:7px;"> \r\n                          <input type="button" value="提交" />\r\n                          <input type="button" value="查看" />\r\n                        </div>\r\n                      ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"210";s:5:"div_h";s:3:"197";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154073, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_22', 'code', 0, '车友会', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:149:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;">&nbsp;<A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:30:"/common_title/1title_noico.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240201322, 11, 30, 24, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'mvshow', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428507, 11, 30, 23, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_26', 'code', 0, '奥迪A3实拍图', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_27', 'code', 0, '奥迪在售车型的（部分）', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_28', 'code', 0, '竞争车型新闻', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_30', 'code', 0, '近期上市车型', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_car_31', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119161159_20k4y.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"240";s:6:"height";s:3:"130";}', 'a:3:{s:5:"div_w";s:3:"240";s:5:"div_h";s:3:"127";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154756, 11, 30, 22, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122151143_g4zey.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"960";s:6:"height";s:3:"150";}', 'a:3:{s:5:"div_w";s:3:"958";s:5:"div_h";s:3:"149";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290409679, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_2', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"298";s:6:"height";s:3:"261";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101122151110_kzqtx.jpg";i:2;s:32:"label/1_20101122151126_jorrb.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"294";s:5:"div_h";s:3:"257";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290411221, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_8', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161156_ehzhv.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"354";s:6:"height";s:3:"120";}', 'a:3:{s:5:"div_w";s:3:"354";s:5:"div_h";s:3:"119";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414265, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_12', 'code', 0, '滚动报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_19', 'code', 0, '法案的主要条例', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_20', 'code', 0, '相关报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_21', 'code', 0, '最新报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_22', 'code', 0, '追踪报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_23', 'code', 0, '汇改大事记', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_24', 'code', 0, '美元对人民币走势', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_25', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161134_anvod.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"211";s:6:"height";s:3:"133";}', 'a:3:{s:5:"div_w";s:3:"213";s:5:"div_h";s:3:"129";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414346, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_28', 'code', 0, 'admin@qibosoft.com', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161145_th99u.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"950";s:6:"height";s:3:"150";}', 'a:3:{s:5:"div_w";s:3:"948";s:5:"div_h";s:3:"149";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416100, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_2', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"300";s:6:"height";s:3:"220";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101122161104_gaaxz.jpg";i:2;s:32:"label/1_20101122161110_yoshc.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"147";s:5:"div_h";s:3:"219";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416339, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_3', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XMjIxMTM5MTMy/v.swf";s:5:"width";s:3:"301";s:6:"height";s:3:"261";}', 'a:3:{s:5:"div_w";s:3:"164";s:5:"div_h";s:3:"268";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416435, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_4', 'code', 0, '<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height:23px;">\r\n					  <tr>\r\n						\r\n                      <td width="39%"><img src="http://i1.sinaimg.cn/dy/2010/0512/S11612T1273624471182.jpg" width=82 height=98/></td>\r\n					    <td width="61%">\r\n							<div class="Cor3"><a href="#">从差生到唐宁街主人</a></div>\r\n							<div class="TEXT">贵族后裔：身为威廉四世后裔卡梅伦沿循贵族轨迹：著名私立小学—伊顿公学—牛津大学。\r\n</div>\r\n						</td>\r\n					  </tr>\r\n				  </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"237";s:5:"div_h";s:3:"106";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416780, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_5', 'code', 0, '<div class="TANGBIAOT">\r\n					   <a href="#" style="font-weight:bold;">政坛新星：</a>\r\n					 <a href="#">2005年卡梅伦在几乎无人看好的情况下，以出色的况下，以出色的况下，以出色的成功当选保况下，以出色况下，以出色的的守党党首。</a></div>\r\n					<div class="TANGBIAOT">\r\n					  <a href="#" style="font-weight:bold;">力主变革：</a>\r\n				  <a href="#">卡梅伦以“变革”的口号打动了选民，在工党领导内忧外患之下，民众最想看到的无疑就是“变革”。</a> </div>\r\n					<div class="TANGBIAOT">\r\n					  <a href="#" style="font-weight:bold;">面临破题：</a>\r\n				  <a href="#">卡梅伦称将重建民众对政治的信任，但如何实现目重建民众对政治的信任，但如何实标依然有待观察。</a></div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"248";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416775, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_16', 'code', 0, ' 应国务院总理温家宝邀请，大不列颠及北爱尔兰联合王国首相戴维·卡梅伦将于11月9日至10日对中国进行正式访问。 ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"330";s:5:"div_h";s:2:"43";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476395, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_19', 'code', 0, '访华行程', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_20', 'code', 0, '聚焦英国首相卡梅伦', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_21', 'code', 0, '图片报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_22', 'code', 0, '图文报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_23', 'code', 0, '时事追踪', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_24', 'code', 0, '大会议程', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_25', 'code', 0, '最新消息', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_26', 'code', 0, '编辑推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_9', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:424:"<div class="ren_h">\r\n                <div class="at"><img src="$webdb[www_url]/images/special/finance/finace_3.jpg" width="15" height="16" /></div>\r\n                <div class="ab"><a href="$url" target="_blank">$title</a></div>\r\n              </div>\r\n              <div class="ren_by"> \r\n                \r\n  <p>{$content} <a href="$url" target="_blank"><font color="#990000">[更多]</font></a> \r\n  </p>\r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"270";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"553";s:5:"div_h";s:3:"144";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428570, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_10', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:165:"  <div><span style="float:left;"><a href="$url" target="_blank">．$title</a></span><span style="float:right;">({$time_m} -{$time_d})</span><br />\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"459";s:5:"div_h";s:3:"320";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428578, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_finance_11', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:165:"  <div><span style="float:left;"><a href="$url" target="_blank">．$title</a></span><span style="float:right;">({$time_m} -{$time_d})</span><br />\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:95:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"371";s:5:"div_h";s:3:"306";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428584, 11, 30, 21, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_9', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:237:"<div class="photo_list">    \r\n<a href="$url" target="_blank">\r\n<img width="164" height="123" src="$picurl" border=0 onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" /></a>\r\n\r\n<a href="$url" target="_blank">$title</a>\r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:126:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"904";s:5:"div_h";s:3:"153";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428659, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_10', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:571:"<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1">\r\n					  <tr>\r\n						\r\n                <td width="37%"><a href="$url" target="_blank">\r\n				<img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" width="100" height="68" /></a></td>\r\n					    \r\n                <td width="63%"><a href="$url" style="color:#1F4363;" target="_blank">$title</a> \r\n                  <div style="color:#6A6A6A;">　$content  [<a href="$url" target="_blank">详细</a>]</div></td>\r\n					  </tr>\r\n					 </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:196:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"50";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"229";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428672, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_11', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:71:"<div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:97:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"351";s:5:"div_h";s:3:"326";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428665, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_12', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:176:"<div class="Tbiaoti"><a href="$url" target="_blank">$title</a></div>\r\n		\r\n<div class="xwzi">{$content} <a href="$url" target="_blank" style="color:#990000;">  [详情] </a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:165:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list ASC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"100";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"236";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428651, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_13', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:72:" <div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"360";s:5:"div_h";s:3:"190";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428644, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_14', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:72:" <div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:95:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"359";s:5:"div_h";s:3:"162";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428629, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_15', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:72:"<div class="BJ_ljie">· <a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:73:"<div class="BIAOTI"><a href="$url" target="_blank">$title</a></div>\r\n				";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:32:"/common_zh_title/zh_bigtitle.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"32";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"354";s:5:"div_h";s:3:"196";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428623, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_17', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:102:"<a href="$url" target="blank" class="t" style="color:#013979;">$title</a> \r\n						<div>$content </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_download_article A LEFT JOIN qb_download_reply R ON A.aid=R.aid   WHERE A.yz=1   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"235";s:5:"div_h";s:3:"186";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428615, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', 0, 0, 'special_sp1_18', 'Info_download_', 1, 'a:35:{s:13:"tplpart_1code";s:72:"<div class="BJ_ljie">· <a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:3:"CMS";s:3:"PRE";s:9:"download_";s:5:"ctype";s:7:"article";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:96:" SELECT A.*,A.aid AS id FROM qb_download_article A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"108";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1300428637, 11, 30, 20, 0, 'default');
INSERT INTO `qb_label` (`lid`, `name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES ('', '', 0, 0, 'down_cms', 'code', 0, '站内资源统计', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 30, 0, 0, 'default');




# --------------------------------------------------------

#
# 表的结构 `qb_download_article`
#

DROP TABLE IF EXISTS `qb_download_article`;
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
) TYPE=MyISAM AUTO_INCREMENT=664 ;

#
# 导出表中的数据 `qb_download_article`
#

INSERT INTO `qb_download_article` VALUES (535, '迅雷5,迅雷网络版权所有', '', 26, 101, '装机软件', 6, 1, 0, 1239786953, 1239786953, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '迅雷 网络 版权所有', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239787179, 0, 0, '', 1289453277, 0, 0, 0, 0, '', '', 'http://down.sandai.net/Thunder5.8.13.699.exe@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (537, 'QQ2009 Beta2 (兼容Windows Vista)', '', 26, 101, '装机软件', 2, 1, 0, 1239788244, 1239788244, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'QQ2009 Beta2 兼容 Windows Vista', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289453294, 0, 0, 0, 0, '', '', 'http://dl_dir.qq.com/qqfile/qq/QQ2009/QQ2009Beta2.exe@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (538, '万能文章系统', '', 12, 101, '建站软件', 2, 1, 0, 1239788484, 1239788484, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '万能 文章 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289465148, 0, 0, 0, 0, '', '', 'http://down.qibosoft.com/module/wnarticle.rar@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (539, 'qibosoft分类信息系统', '', 12, 101, '建站软件', 2, 1, 0, 1239788649, 1239788649, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 分类 信息系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240209778, 0, 0, 0, 0, '', '', 'http://down.qibosoft.com/module/wnfenlei.rar@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (540, 'qibosoft博客系统', '', 12, 101, '建站软件', 1, 1, 0, 1239788777, 1239788777, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 博客 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240192777, 0, 0, 0, 0, '', '', 'http://down.qibosoft.com/module/blog.rar@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (541, 'qibosoft知道系统', '', 12, 101, '建站软件', 3, 1, 0, 1239788863, 1239788863, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 知道 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240111969, 0, 0, 0, 0, '', '', 'http://down.qibosoft.com/module/zhidao.rar@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (536, 'WPS个人版永久免费', '', 27, 101, '办公软件', 2, 1, 0, 1239788019, 1239788019, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'WPS 个人版 永久 免费', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1239788111, 0, 0, 0, 0, '', '', 'http://kad.www.wps.cn/wps/download/WPS2007.12012.exe@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (637, 'phpwind v8.0 社区软件（简体 GBK）', '', 12, 101, '建站软件', 1, 1, 0, 1289475859, 1289475859, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'phpwind v8.0 社区 软件 简体 GBK', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1289475883, 0, 0, '', 1289475861, 0, 0, 0, 0, '', '', 'http://download.phpwind.net/index.php?m=download&a=do&did=477@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (638, 'Discuz! X1.5 正式版最新下载', '', 12, 101, '建站软件', 1, 1, 0, 1289476013, 1289476013, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'Discuz X1.5 正式版 最新下载', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289476015, 0, 0, 0, 0, '', '', 'http://download2.comsenz.com/DiscuzX/1.5/Discuz_X1.5_SC_GBK.zip@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (641, 'qibosoft整站V6.0简体中文版', '', 12, 101, '建站软件', 3, 1, 0, 1289476573, 1289476573, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 整站 V6.0 简体 中文版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1303713052, 0, 0, 0, 0, '', '', 'http://down.qibosoft.com/down.php?v=v6@@@@@@', '1', 1, 1, 1, 1303713038, '', 0);
INSERT INTO `qb_download_article` VALUES (640, 'qibosoft行业B2B系统V3.0', '', 12, 101, '建站软件', 0, 1, 0, 1289476488, 1289476488, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 行业 B2B 系统 V3.0', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://bbs.qibosoft.com/downV6business.php@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (642, 'WinRAR V3.90 Final 官方简体中文版', '', 26, 101, '装机软件', 0, 1, 0, 1289476820, 1289476820, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'WinRAR V3.90 Final 官方 简体 中文版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=16060&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (643, 'Mydrivers驱动精灵 2010正式版 V3.5 | 完全&升级版', '', 26, 101, '装机软件', 2, 1, 0, 1289476891, 1289476891, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'Mydrivers 驱动 精灵 2010 正式版 V3.5 完全 升级版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1303713032, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=106848&dlType=gf@@@@@@', '1', 1, 1, 1, 1303713025, '', 0);
INSERT INTO `qb_download_article` VALUES (644, '搜狗拼音输入法 V4.31 正式版', '', 26, 101, '装机软件', 0, 1, 0, 1289476963, 1289476963, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '搜狗 拼音 输入法 V4.31 正式版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=80927&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (645, 'ACDSee Photo Manager V10.0.888 官方简体中文版', '', 26, 101, '装机软件', 0, 1, 0, 1289477041, 1289477041, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'ACDSee Photo Manager V10.0.888 官方 简体 中文版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=17460&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (646, 'VeryCD 电驴(easyMule) V1.1.15 101020 | 封面管理模式', '', 26, 101, '装机软件', 0, 1, 0, 1289477147, 1289477147, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'VeryCD 电驴 easyMule V1.1.15 101020 封面 管理模式', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=7453&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (647, '千千静听 V5.7 Beta 3修订版 | 歌曲下载/歌词秀优化', '', 26, 101, '装机软件', 0, 1, 0, 1289477230, 1289477230, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '千千 静听 V5.7 Beta 修订 歌曲下载 歌词 优化', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=20769&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (648, '谷歌金山词霸本地增强版 V2.0 2010.3.3.200', '', 27, 101, '办公软件', 1, 1, 0, 1289477316, 1289477316, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '谷歌 金山 词霸 本地 增强 V2.0 2010.3.3.200', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1300095430, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=80375&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (649, 'PDF文件转换王 V1.96', '', 27, 101, '办公软件', 1, 1, 0, 1289477382, 1289477382, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'PDF 文件 转换 V1.96', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1300072903, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=81009&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (650, '万能五笔输入法平台 8.1 Beta5 | 测试版', '', 27, 101, '办公软件', 1, 1, 0, 1289477502, 1289477502, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '万能五笔 输入法 平台 8.1 Beta5 测试版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1300072896, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=81025&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (651, 'Foxmail V6.5.23 | 电子邮件客户端', '', 27, 101, '办公软件', 0, 1, 0, 1289477740, 1289477740, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'Foxmail V6.5.23 电子邮件 客户端', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=1840&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (652, 'Windows Live Messenger(MSN) V9.0 简体中文版(独立安装包）', '', 27, 101, '办公软件', 0, 1, 0, 1289477875, 1289477875, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'Windows Live Messenger MSN V9.0 简体 中文版 独立 安装', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=1090&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (653, 'QQ旋风 V2.9 Beta1(667) | 离线下载新功能/腾讯超级旋风', '', 27, 101, '办公软件', 0, 1, 0, 1289477945, 1289477945, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '旋风 V2.9 Beta1 667 下载 新功能 腾讯 超级', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=6669&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (654, '急速酷6 V1.3', '', 27, 101, '办公软件', 0, 1, 0, 1289478043, 1289478043, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '急速 V1.3', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=109341&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (655, '360安全卫士正式版 V7.3.0.2003 | 中文官方安装版', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478207, 1289478207, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '360 安全 卫士 正式版 V7.3.0.2003 中文 官方 安装', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=43634&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (656, '瑞星杀毒软件2010（免费6个月）22.00.04.98', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478474, 1289478474, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '瑞星 杀毒软件 2010 免费 6个月 22.00.04.98', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=43505&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (657, '卡巴斯基全功能安全软件2010 V9.0.0.736sch', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478575, 1289478575, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '巴斯 功能 安全 软件 2010 V9.0.0.736sch', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=107344&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (658, '金山毒霸', '', 40, 101, '杀毒软件', 1, 1, 0, 1289478756, 1289478756, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '金山 毒霸', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289878940, 0, 0, 1, 0, '', '', 'http://cd001.www.duba.net/duba/install/2011/ever/KAV101109_DOWN_99_10.exe@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (659, '江民杀毒软件KV2011 | 正式版', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478928, 1289478928, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '江民 杀毒软件 KV2011 正式版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1303718771, 0, 0, '', 0, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=107323&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 1303805168);
INSERT INTO `qb_download_article` VALUES (660, '诺顿防病毒软件Norton Antivirus 2011 | 轻巧极速/安全无虑', '', 40, 101, '杀毒软件', 1, 1, 0, 1289479006, 1289479006, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '诺顿 防病毒 软件 Norton Antivirus 2011 轻巧 安全', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1303718313, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=15208&dlType=gf@@@@@@', '', 0, 0, 0, 0, '', 0);
INSERT INTO `qb_download_article` VALUES (661, '金山网盾-免疫微软LNK漏洞特别版', '', 40, 101, '杀毒软件', 29, 1, 0, 1289479115, 1289479115, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '金山 免疫 微软 LNK 漏洞 特别', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1303717025, 0, 0, '', 1303717292, 0, 0, 1, 0, '', '', 'http://down.it168.com/DownLoad.aspx?rsId=125258&dlType=gf@@@@@@', '1', 1, 1, 1, 1303713389, '', 0);
INSERT INTO `qb_download_article` VALUES (662, '江民杀毒软件KV2010 标准版', '', 40, 101, '杀毒软件', 14, 1, 0, 1289479179, 1289479179, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '江民 杀毒软件 KV2010 标准版', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1303716687, 0, 0, '', 1303719633, 0, 0, 1, 0, '', '', 'http://filedown.jiangmin.com/KV2011/KV2011_X86.EXE@@@@@@', '7', 7, 7, 7, 1303718065, '', 0);

# --------------------------------------------------------

#
# 表的结构 `qb_download_collection`
#

DROP TABLE IF EXISTS `qb_download_collection`;
CREATE TABLE `qb_download_collection` (
  `id` mediumint(7) NOT NULL auto_increment,
  `aid` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

#
# 导出表中的数据 `qb_download_collection`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_comment`
#

DROP TABLE IF EXISTS `qb_download_comment`;
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
) TYPE=MyISAM AUTO_INCREMENT=15 ;

#
# 导出表中的数据 `qb_download_comment`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_config`
#

DROP TABLE IF EXISTS `qb_download_config`;
CREATE TABLE `qb_download_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;

#
# 导出表中的数据 `qb_download_config`
#

INSERT INTO `qb_download_config` VALUES ('Info_webOpen', '1', '');
INSERT INTO `qb_download_config` VALUES ('module_id', '30', '');
INSERT INTO `qb_download_config` VALUES ('SPbencandy_filename', 'html/5special{$fid}/show{$id}.htm', '');
INSERT INTO `qb_download_config` VALUES ('ForbidShowPhpPage', '0', '');
INSERT INTO `qb_download_config` VALUES ('FlashGet_ID', '6370', '');
INSERT INTO `qb_download_config` VALUES ('view_sell_article', '0', '');
INSERT INTO `qb_download_config` VALUES ('SPlist_filename', 'html/4special{$fid}/list{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('bencandy_filename', 'html/{$fid}-{$dirid}/{$id}-{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('list_filename', 'html/{$fid}/{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('showNoPassComment', '1', '');
INSERT INTO `qb_download_config` VALUES ('Use_FlashGet', '1', '');
INSERT INTO `qb_download_config` VALUES ('XunLei_ID', '08311', '');
INSERT INTO `qb_download_config` VALUES ('special_show_html', 'html/special{$fid}/show{$id}.htm', '');
INSERT INTO `qb_download_config` VALUES ('Use_XunLei', '1', '');
INSERT INTO `qb_download_config` VALUES ('CommentOrderType', '0', '');
INSERT INTO `qb_download_config` VALUES ('allowMemberCommentPass', '1', '');
INSERT INTO `qb_download_config` VALUES ('allowGuestCommentPass', '1', '');
INSERT INTO `qb_download_config` VALUES ('allowGuestComment', '1', '');
INSERT INTO `qb_download_config` VALUES ('CommentTime', '5', '');
INSERT INTO `qb_download_config` VALUES ('showCommentRows', '8', '');
INSERT INTO `qb_download_config` VALUES ('forbidComment', '0', '');
INSERT INTO `qb_download_config` VALUES ('showComment', '1', '');
INSERT INTO `qb_download_config` VALUES ('autoPlayFirstMv', '1', '');
INSERT INTO `qb_download_config` VALUES ('allowDownMv', '0', '');
INSERT INTO `qb_download_config` VALUES ('photoShowType', '0', '');
INSERT INTO `qb_download_config` VALUES ('Private_tpl_foot', '', '');
INSERT INTO `qb_download_config` VALUES ('Private_tpl_head', '', '');
INSERT INTO `qb_download_config` VALUES ('IF_Private_tpl', '0', '');
INSERT INTO `qb_download_config` VALUES ('ListPageTitle_nojs', '0', '');
INSERT INTO `qb_download_config` VALUES ('EditSystem', '2', '');
INSERT INTO `qb_download_config` VALUES ('PostNotice', '<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>', '');
INSERT INTO `qb_download_config` VALUES ('showsortlogo', '0', '');
INSERT INTO `qb_download_config` VALUES ('ListLeng', '70', '');
INSERT INTO `qb_download_config` VALUES ('heart_noRecord', '1', '');
INSERT INTO `qb_download_config` VALUES ('Listsortnameline', '2', '');
INSERT INTO `qb_download_config` VALUES ('ListSonLeng', '34', '');
INSERT INTO `qb_download_config` VALUES ('ListSonRows', '9', '');
INSERT INTO `qb_download_config` VALUES ('JsListLeng', '36', '');
INSERT INTO `qb_download_config` VALUES ('JsListRows', '5', '');
INSERT INTO `qb_download_config` VALUES ('SideTitleStyle', 'side_tpl/2', '');
INSERT INTO `qb_download_config` VALUES ('SideSortStyle', 'side_sort/2', '');
INSERT INTO `qb_download_config` VALUES ('heart_time', '30', '');
INSERT INTO `qb_download_config` VALUES ('ArticleDownloadUseFtp', '0', '');
INSERT INTO `qb_download_config` VALUES ('special_list_html', 'html/special{$fid}/list{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('SortUseOtherModule', '0', '');
INSERT INTO `qb_download_config` VALUES ('Info_html_show', 'html/{$fid}-{$dirid}/{$id}-{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('ArticleHeart', '欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif', '');
INSERT INTO `qb_download_config` VALUES ('cache_time_like', '-1', '');
INSERT INTO `qb_download_config` VALUES ('cache_time_com', '-1', '');
INSERT INTO `qb_download_config` VALUES ('cache_time_hot', '-1', '');
INSERT INTO `qb_download_config` VALUES ('cache_time_new', '-1', '');
INSERT INTO `qb_download_config` VALUES ('showsp_cache_time', '0', '');
INSERT INTO `qb_download_config` VALUES ('bencandy_cache_time', '0', '');
INSERT INTO `qb_download_config` VALUES ('list_cache_time', '0', '');
INSERT INTO `qb_download_config` VALUES ('index_cache_time', '0', '');
INSERT INTO `qb_download_config` VALUES ('cache_time_pic', '-1', '');
INSERT INTO `qb_download_config` VALUES ('fulist_cache_time', '0', '');
INSERT INTO `qb_download_config` VALUES ('Limit_postOne', '0', '');
INSERT INTO `qb_download_config` VALUES ('UseArticleHeart', '1', '');
INSERT INTO `qb_download_config` VALUES ('UseArticleDigg', '0', '');
INSERT INTO `qb_download_config` VALUES ('Html_Type', '0', '');
INSERT INTO `qb_download_config` VALUES ('Info_html_list', 'html/{$fid}/{$page}.htm', '');
INSERT INTO `qb_download_config` VALUES ('DefaultIndexHtml', '1', '');
INSERT INTO `qb_download_config` VALUES ('ForceDel', '0', '');
INSERT INTO `qb_download_config` VALUES ('AutoTitleNum', '1', '');
INSERT INTO `qb_download_config` VALUES ('deleteArticleMoney', '-1', '');
INSERT INTO `qb_download_config` VALUES ('postArticleMoney', '1', '');
INSERT INTO `qb_download_config` VALUES ('comArticleMoney', '3', '');
INSERT INTO `qb_download_config` VALUES ('hotArticleNum', '100', '');
INSERT INTO `qb_download_config` VALUES ('newArticleTime', '24', '');
INSERT INTO `qb_download_config` VALUES ('ListShowIcon', '0', '');
INSERT INTO `qb_download_config` VALUES ('autoGetKeyword', '0', '');
INSERT INTO `qb_download_config` VALUES ('autoGetSmallPic', '1', '');
INSERT INTO `qb_download_config` VALUES ('autoCutSmallPic', '1', '');
INSERT INTO `qb_download_config` VALUES ('ForbidRepeatTitle', '0', '');
INSERT INTO `qb_download_config` VALUES ('viewNoPassArticle', '0', '');
INSERT INTO `qb_download_config` VALUES ('ArticlePicHeight', '600', '');
INSERT INTO `qb_download_config` VALUES ('ArticlePicWidth', '800', '');
INSERT INTO `qb_download_config` VALUES ('ArticleDownloadDirTime', '0', '');
INSERT INTO `qb_download_config` VALUES ('Info_titleName', '', '');
INSERT INTO `qb_download_config` VALUES ('module_pre', 'download_', '');
INSERT INTO `qb_download_config` VALUES ('module_close', '0', '');
INSERT INTO `qb_download_config` VALUES ('Info_webname', '下载系统', '');
INSERT INTO `qb_download_config` VALUES ('Info_weburl', '', '');

# --------------------------------------------------------

#
# 表的结构 `qb_download_field`
#

DROP TABLE IF EXISTS `qb_download_field`;
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
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# 导出表中的数据 `qb_download_field`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_fu_article`
#

DROP TABLE IF EXISTS `qb_download_fu_article`;
CREATE TABLE `qb_download_fu_article` (
  `fid` int(7) NOT NULL default '0',
  `aid` int(10) NOT NULL default '0',
  KEY `fid` (`fid`),
  KEY `aid` (`aid`)
) TYPE=MyISAM;

#
# 导出表中的数据 `qb_download_fu_article`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_fu_sort`
#

DROP TABLE IF EXISTS `qb_download_fu_sort`;
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
) TYPE=MyISAM AUTO_INCREMENT=4 ;

#
# 导出表中的数据 `qb_download_fu_sort`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_gather_rule`
#

DROP TABLE IF EXISTS `qb_download_gather_rule`;
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
) TYPE=MyISAM AUTO_INCREMENT=30 ;

#
# 导出表中的数据 `qb_download_gather_rule`
#

INSERT INTO `qb_download_gather_rule` VALUES (20, 0, 'article', 'article', '', '且听风吟原创文学空间----->散文 >> 心灵感悟', 'http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]', '', 1, 3, 1, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 1165498531, 1165498610, 0, 0, '', 0, 0, '', '', '', 0, '', '<img src=images/{NO"} border=0>\r\n                    \r\n            <a href="{url=NO"}" target=_blank>{title=NO<}</a> ', '<div class="nr">{content=*}</div>', '', '', 0);

# --------------------------------------------------------

#
# 表的结构 `qb_download_keyword`
#

DROP TABLE IF EXISTS `qb_download_keyword`;
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
) TYPE=MyISAM AUTO_INCREMENT=5 ;

#
# 导出表中的数据 `qb_download_keyword`
#

INSERT INTO `qb_download_keyword` VALUES (1, 'fdsafds', 0, 1, 1, '', 0);
INSERT INTO `qb_download_keyword` VALUES (2, 'trew', 0, 1, 1, '', 0);
INSERT INTO `qb_download_keyword` VALUES (3, 'fdasfasd', 0, 1, 1, '', 2);
INSERT INTO `qb_download_keyword` VALUES (4, 'fda', 0, 1, 1, '', 0);

# --------------------------------------------------------

#
# 表的结构 `qb_download_keywordid`
#

DROP TABLE IF EXISTS `qb_download_keywordid`;
CREATE TABLE `qb_download_keywordid` (
  `id` mediumint(7) NOT NULL default '0',
  `aid` mediumint(7) NOT NULL default '0',
  KEY `id` (`id`),
  KEY `aid` (`aid`)
) TYPE=MyISAM;

#
# 导出表中的数据 `qb_download_keywordid`
#

INSERT INTO `qb_download_keywordid` VALUES (3, 92);
INSERT INTO `qb_download_keywordid` VALUES (3, 704);

# --------------------------------------------------------

#
# 表的结构 `qb_download_module`
#

DROP TABLE IF EXISTS `qb_download_module`;
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
) TYPE=MyISAM AUTO_INCREMENT=2 ;

#
# 导出表中的数据 `qb_download_module`
#

INSERT INTO `qb_download_module` VALUES (1, 0, '下载模型', 0, '', '', '', 0, 0, '');

# --------------------------------------------------------

#
# 表的结构 `qb_download_reply`
#

DROP TABLE IF EXISTS `qb_download_reply`;
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
) TYPE=MyISAM AUTO_INCREMENT=645 ;

#
# 导出表中的数据 `qb_download_reply`
#

INSERT INTO `qb_download_reply` VALUES (517, '', 1239788649, 539, 12, 1, 1, '非常好用的分类信息系统', 0);
INSERT INTO `qb_download_reply` VALUES (518, '', 1239788777, 540, 12, 1, 1, '很漂亮的博客程序', 0);
INSERT INTO `qb_download_reply` VALUES (519, '', 1239788863, 541, 12, 1, 1, '功能非常强大.类似百度知道', 0);
INSERT INTO `qb_download_reply` VALUES (513, '', 1239786953, 535, 26, 1, 1, '非常好用的下载工具', 0);
INSERT INTO `qb_download_reply` VALUES (514, '', 1239788019, 536, 27, 1, 1, '版本：6.3.0.1705 (2008-09-27)<br />\r\nWindows 2000/XP/Vista(含32位、64位) ', 0);
INSERT INTO `qb_download_reply` VALUES (515, '', 1239788244, 537, 26, 1, 1, '<p style="color:#333333;">全新推出的用户操作界面，为您带来更简洁雅致的视觉体验。 </p>\r\n<p style="color:#333333;">推荐功能：“好友印象”说出心中的Ta、“游戏人生”展示玩家成长经历</p>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (516, '', 1239788484, 538, 12, 1, 1, '相当于万能模型!', 0);
INSERT INTO `qb_download_reply` VALUES (618, '', 0, 637, 12, 1, 1, '<p>著名的免费开源BBS</p>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (619, '', 0, 638, 12, 1, 1, '<p>著名的免费开源BBS程序</p>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (622, '', 0, 641, 12, 1, 1, 'qibosoft CMS是PHP领域当前功能最强大的开源系统，全局采用“核心+模块+系统+插件”模式， 代码全部开 源，可极其方便的进行二次开发，所有功能模块可以自由安装与删除，个人用户完全免费使用。', 0);
INSERT INTO `qb_download_reply` VALUES (621, '', 0, 640, 12, 1, 1, 'qibosoft行业B2B将为青年用户朋友提供创业平台。也是现阶段国内PHP领域唯一一家品牌的B2B开发方。<br />\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (623, '', 0, 642, 26, 1, 1, '最多人使用的RAR软件', 0);
INSERT INTO `qb_download_reply` VALUES (624, '', 0, 643, 26, 1, 1, '驱动精灵是一款适合绝大多数电脑用户的老牌专业驱动程序智能管理软件，驱动精灵不仅可以快速检测识别所有硬件设备，还可以智能判断硬件状态，为用户提供最快最稳定的驱动程序下载，安装、备份、还原、卸载等全套专业级驱动程序管理功能。', 0);
INSERT INTO `qb_download_reply` VALUES (625, '', 0, 644, 26, 1, 1, '<p>搜狗拼音输入法是当前网上最流行、用户好评率最高、功能最强大的拼音输入法，并且承诺永久免费、绝无插件。</p>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (626, '', 0, 645, 26, 1, 1, '不论您拍摄的相片是什么类型－家人与朋友的，或是作为业余爱好而拍摄的艺术照－您都需要相片管理软件来轻松快捷地整理以及查看、修正和共享这些相片。', 0);
INSERT INTO `qb_download_reply` VALUES (627, '', 0, 646, 26, 1, 1, '以海报(封面)视图或详情模式管理下载的资源缺陷修复：下载任务进度有时意外变成0.0%且状态被置为错误缺陷修复', 0);
INSERT INTO `qb_download_reply` VALUES (628, '', 0, 647, 26, 1, 1, '千千静听是一款完全免费的音乐播放软件，拥有自主研发的全新音频引擎，集播放、音效、转换、歌词等众多功能于一身。其小巧精致、操作简捷、功能强大的特点，深得用户喜爱，被网友评为中国十大优秀软件之一，并且成为目前国内最受欢迎的音乐播放软件。', 0);
INSERT INTO `qb_download_reply` VALUES (629, '', 0, 648, 27, 1, 1, '《谷歌金山词霸合作版》是金山软件与全球最大的搜索引擎公司Google(谷歌)联手推出的、面向个人用户的免费词典、翻译软件。传承了金山词霸十年经典品质的同时，也给用户带来了更强的功能、更优的交互体验。', 0);
INSERT INTO `qb_download_reply` VALUES (630, '', 0, 649, 27, 1, 1, '一款高质量的PDF文档转换工具。完全兼容PDF规格，超强转换功能。可自由地将各种文本文件迅速地转换成为PDF文件。', 0);
INSERT INTO `qb_download_reply` VALUES (631, '', 0, 650, 27, 1, 1, '万能五笔输入法平台：你会五笔，打五笔；你会拼音，打拼音；会英语打英语；不会拼音不会英语，打笔画,你想什么就打什么，而且是一种优先选择五笔字型高速输入为主的快速输入法，各种输入法随意使用，无需转换，随心所欲，易学好用。', 0);
INSERT INTO `qb_download_reply` VALUES (632, '', 0, 651, 27, 1, 1, 'Foxmail是一款著名的电子邮件客户端软件,提供基于Internet标准的电子邮件收发功能.Foxmail 6.0致力于提供更便捷、更舒适的Foxmail产品使用体验.Foxmail6.5 正式版对 Beta3 版的主要改进 方便用户备忘、轻松管理各个事项，并可对重要事项设置提醒。', 0);
INSERT INTO `qb_download_reply` VALUES (633, '', 0, 652, 27, 1, 1, '跳槽的时候，你的MSN聊天记录可曾带走了？工作多年，你的聊天记录可曾丢失过？公司、家庭、台式机、笔记本……多台电脑的MSN聊天记录无法合并，覆盖还是舍弃，还在艰难取舍么？个性表情带不走？传输文件没有备份？…… ', 0);
INSERT INTO `qb_download_reply` VALUES (634, '', 0, 653, 27, 1, 1, '1.推出离线下载功能，支持HTTP，eMule，BT三大协议（暂对年费会员、Vip5及以上放量中）', 0);
INSERT INTO `qb_download_reply` VALUES (635, '', 0, 654, 27, 1, 1, '极速酷6能够让你在观看视频时的速度有显著的提高。让你体验到很快很享受的感觉:炫酷桌面播放 极速酷6新增桌面播放功能，在为您加速的前提下还提供了脱离网页的桌面播放功能，让您可以在桌面轻松播放您喜欢的酷6视频。并且您可以根据您的喜好来调整区域的尺寸。 ', 0);
INSERT INTO `qb_download_reply` VALUES (636, '', 0, 655, 40, 1, 1, '360安全卫士是当前功能最强、效果最好、最受用户欢迎的上网必备安全软件。由于使用方便，用户口碑好，目前4.2亿中国网民中，首选安装360的已超过3亿。', 0);
INSERT INTO `qb_download_reply` VALUES (637, '', 0, 656, 40, 1, 1, '瑞星杀毒软件2010版产品介绍： 1、查杀病毒后台查杀：在不影响用户工作的情况下进行病毒的处理。', 0);
INSERT INTO `qb_download_reply` VALUES (638, '', 0, 657, 40, 1, 1, '卡巴斯基全功能安全软件 2010将实时自动保护您全家的上网安全。', 0);
INSERT INTO `qb_download_reply` VALUES (639, '', 0, 658, 40, 1, 1, '<p>2010年11月10日下午16：00开始，金山毒霸开始全面免费。从这时开始，所有用户都可以下载到没有服务期限的金山毒霸。</p>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (640, '', 0, 659, 40, 1, 1, '江民杀毒软件KV2011是全功能专业安全软件，全面融合杀毒软件、防火墙、安全检测、漏洞修复等核心安全功能为有机整体，打破杀毒软件、防火墙等专业软件各司其职的界限，为个人电脑用户提供全面的安全防护。', 0);
INSERT INTO `qb_download_reply` VALUES (641, '', 0, 660, 40, 1, 1, '捍卫你的每次点击&nbsp; 引领炫酷网络防护先驱诺顿防病毒软件2011立足SONAR3第三代主动行为防护', 0);
INSERT INTO `qb_download_reply` VALUES (642, '', 0, 661, 40, 1, 1, '<div style="font-size: 12px; font-family: 宋体">\r\n	金山网盾首个成功免疫微软LNK（快捷方式）漏洞</div>\r\n', 0);
INSERT INTO `qb_download_reply` VALUES (643, '', 0, 662, 40, 1, 1, '&nbsp;江民杀毒软件KV2010系江民反病毒资深研发团队历时一年之久，悉心打造的一款新型全功能杀毒软件。', 0);

# --------------------------------------------------------

#
# 表的结构 `qb_download_report`
#

DROP TABLE IF EXISTS `qb_download_report`;
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
) TYPE=MyISAM AUTO_INCREMENT=1 ;

#
# 导出表中的数据 `qb_download_report`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_sort`
#

DROP TABLE IF EXISTS `qb_download_sort`;
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
) TYPE=MyISAM AUTO_INCREMENT=41 ;

#
# 导出表中的数据 `qb_download_sort`
#

INSERT INTO `qb_download_sort` VALUES (11, 0, 0, 0, '下载中心', 1, 4, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:13:"bigsort_tpl/2";s:10:"label_list";s:0:"";}', '', '', '', '');
INSERT INTO `qb_download_sort` VALUES (12, 11, 0, 0, '建站软件', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:15:"ListShowBigType";N;}', '', '', '', '');
INSERT INTO `qb_download_sort` VALUES (26, 11, 0, 101, '装机软件', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '', '', '', '');
INSERT INTO `qb_download_sort` VALUES (27, 11, 0, 101, '办公软件', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:15:"ListShowBigType";N;}', '', '', '', '');
INSERT INTO `qb_download_sort` VALUES (40, 11, 0, 101, '杀毒软件', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:0:"";s:15:"ListShowBigType";N;}', '', '', '', '');

# --------------------------------------------------------

#
# 表的结构 `qb_download_special`
#

DROP TABLE IF EXISTS `qb_download_special`;
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
) TYPE=MyISAM AUTO_INCREMENT=28 ;

#
# 导出表中的数据 `qb_download_special`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_special_comment`
#

DROP TABLE IF EXISTS `qb_download_special_comment`;
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
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# 导出表中的数据 `qb_download_special_comment`
#


# --------------------------------------------------------

#
# 表的结构 `qb_download_spsort`
#

DROP TABLE IF EXISTS `qb_download_spsort`;
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
) TYPE=MyISAM AUTO_INCREMENT=7 ;

#
# 导出表中的数据 `qb_download_spsort`
#

