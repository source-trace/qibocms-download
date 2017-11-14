<?php
if(file_exists(dirname(__FILE__).'/../install.php')){
	header("location:install.php");exit;
}elseif(file_exists(dirname(__FILE__).'/../upgrade.php')){
	header("location:upgrade.php");exit;
}
require(dirname(__FILE__)."/global.php");

$Cache_FileName=ROOT_PATH."cache/list_cache/index.php";
if(!$jobs&&!$MakeIndex&&$ch<2&&$webdb[index_cache_time]&&(time()-filemtime($Cache_FileName))<($webdb[index_cache_time]*60)){
	echo read_file($Cache_FileName);
	exit;
}

require(ROOT_PATH."data/friendlink.php");


/**
*fid栏目FID定为0,pagetype页面类型定义0(其实为1的,省略方便些),module定义为0
**/
$ch_fid	= $ch_pagetype = $ch_module = $ch = 0;
require(ROOT_PATH."inc/label_module.php");


require(ROOT_PATH."inc/head.php");
require(html("index"));
require(ROOT_PATH."inc/foot.php");


if(!$jobs&&!$MakeIndex&&$webdb[index_cache_time]&&(time()-filemtime($Cache_FileName))>($webdb[index_cache_time]*60)){
	if(!is_dir(dirname($Cache_FileName))){
		makepath(dirname($Cache_FileName));
	}
	write_file($Cache_FileName,$content);
}elseif($jobs=='show'){
	@unlink($Cache_FileName);
}

/*首页生静态*/
if( $MakeIndex ){
	write_file(ROOT_PATH.'index.htm',$content);
	ob_end_clean();
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$webdb[www_url]/index.htm'>";
}

?>