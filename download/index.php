<?php

if(!is_file(dirname(__FILE__).'/data/install.lock')&&is_file(dirname(__FILE__).'/install.php')){
	header("location:install.php");exit;
}elseif(is_file('index.htm')&&!$_GET[job]&&!$_GET[jobs]&&!$_GET[MakeIndex]){
	header("location:index.htm");exit;
}

require(dirname(__FILE__).'/global.php');

//SEO
$titleDB[title]		= "$webdb[Info_webname] - $titleDB[title]";
$titleDB[keywords]	= $titleDB[description] = "$webdb[Info_webname] - $webdb[Info_metakeywords] - $titleDB[keywords]";

//个性头部与尾部
$head_tpl=html('head');
$foot_tpl=html('foot');
if($webdb[IF_Private_tpl]){
	if(is_file(Mpath.$webdb[Private_tpl_head])){
		$head_tpl=Mpath.$webdb[Private_tpl_head];
	}
	if(is_file(Mpath.$webdb[Private_tpl_foot])){
		$foot_tpl=Mpath.$webdb[Private_tpl_foot];
	}
}

/**
*标签使用
**/
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;//系统特定ID参数,每个系统不能雷同
require(ROOT_PATH."inc/label_module.php");


require(ROOT_PATH."inc/head.php");
require(getTpl("index"));
require(ROOT_PATH."inc/foot.php");

unset($content);
if($webdb[Html_Type]==1){		//生成真静态
	$content=ob_get_contents();
	ob_end_clean();
	ob_start();			//备用
	$content=make_html($content,'N');
	echo "$content";
}

if($MakeIndex){
	if(!$content){
		$content=ob_get_contents();
	}
	ob_end_clean();
	//$content=str_replace("</body>","<div style='display:none'><iframe src=job.php?job=makeindex></iframe></div></body>",$content);
	write_file("index.htm",$content);
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0;URL=index.htm'>";
	exit;
}

?>