<?php
require(dirname(__FILE__).'/global.php');

/**
*为获取标签参数
**/
$chdb[main_tpl]=getTpl("digg");

/**
*标签
**/
$ch_fid	= intval($fidDB[config][label_list]);		//是否定义了栏目专用标签
$ch_pagetype = 7;									//2,为list页,3,为bencandy页
$ch_module = 0;										//软件模块,默认为0
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");


//列表页多少篇软件
$rows=20;	

$fidDB[listorder]=8;
$listdb=ListThisSort($rows,50);		//本栏目软件列表
$showpage=getpage("{$_pre}article","WHERE yz=1","?",$rows);	//软件列表分页

require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");


?>