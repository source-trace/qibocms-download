<?php
require(dirname(__FILE__).'/global.php');

if(!$id){
	$id=$aid;
}elseif(!$aid){
	$aid=$id;
}

$rsdb=$db->get_one("SELECT A.*,S.* FROM {$_pre}article A LEFT JOIN {$_pre}sort S ON A.fid=S.fid WHERE A.aid='$id'");

$fid=$rsdb[fid];
if(!$rsdb){
	die("地址有误,请检查之");
}
get_guide($fid);	//栏目导航


/**
*为获取标签参数
**/
$chdb[main_tpl]=getTpl("comment");

/**
*标签
**/
$ch_fid	= intval($fidDB[config][label_list]);		//是否定义了栏目专用标签
$ch_pagetype = 5;									//2,为list页,3,为bencandy页
$ch_module = 0;										//软件模块,默认为0
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");

require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");

?>