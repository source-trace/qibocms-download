<?php
defined('ROOT_PATH') || exit('ERR');

$__SQL="CREATE TABLE `{$pre}copyfrom` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `keywords` (`name`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;
";

if(!is_table("{$pre}copyfrom")){
	$db->insert_file('',$__SQL);
}


?>