<?php
require(dirname(__FILE__).'/global.php');
@include(Mpath."data/special_guide_fid.php");		//专题栏目配置文件


$GuideFid[$fid]=str_replace("list.php?fid=","listsp.php?fid=",$GuideFid[$fid]);

//栏目配置文件
$fidDB=$db->get_one("SELECT * FROM {$_pre}spsort WHERE fid='$fid'");
if(!$fidDB){
	showerr("栏目有误");
}
$fidDB[config]=unserialize($fidDB[config]);

//强制跳转到静态页
if($webdb[ForbidShowPhpPage]&&!$NeedCheck&&!$jobs){
	$detail=get_m_SPhtml_url($fidDB);
	if(is_file(Mpath.$detail[_listurl])){
		header("location:$detail[_listurl]");
		exit;
	}
}

//SEO
$titleDB[title]			= filtrate("$fidDB[name] - $webdb[webname]");
$titleDB[keywords]		= filtrate("$fidDB[metakeywords]  $webdb[metakeywords]");
$titleDB[description]	= filtrate("$fidDB[descrip]");

//以栏目风格为标准
$fidDB[style] && $STYLE=$fidDB[style];

/*模板*/
$FidTpl=unserialize($fidDB[template]);
$head_tpl=$FidTpl['head'];
$foot_tpl=$FidTpl['foot'];


$chdb[main_tpl]=getTpl("listsp",$FidTpl['list']);	//获取标签参数

$ch_fid	= intval($id);								//每个专题的标签不一样
$ch_pagetype = 10;									//2,为list页,3,为bencandy页
$ch_module = $webdb[module_id]?$webdb[module_id]:99;//系统特定ID参数,每个系统不能雷同
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");


//显示子分类
$listdb_moresort=ListMoreSp();

//列表页多少篇专题
$rows=10;	

$listdb=ListThisSp($rows,$leng=50);		//本栏目专题列表
$showpage=getpage("{$_pre}special","WHERE fid=$fid AND yz=1","listsp.php?fid=$fid",$rows);	//专题列表分页

require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");



/**
*子栏目
**/
function ListMoreSp(){
	global $db,$_pre,$fid,$webdb,$fidDB;
	$order='list';
	$order && $_order=" ORDER BY $order DESC ";
	$rows=4;
	$leng=30;
	$query=$db->query("SELECT * FROM {$_pre}spsort WHERE fup=$fid ORDER BY list DESC");
	while($rs=$db->fetch_array($query)){
		$SQL="WHERE fid=$rs[fid] $_order LIMIT $rows";
		$which='*';
		$rs[article]=list_special($SQL,$which,$leng);
		//如果本栏目不能获取到专题,将获取其所有子栏目的专题
		if(!$rs[article])
		{
			$array_fid=Get_SonFid("{$_pre}spsort",$rs[fid]);
			if($array_fid)
			{
				$SQL="WHERE fid IN (".implode(',',$array_fid).") $_order LIMIT $rows";
				$rs[article]=list_special($SQL,$which,$leng);
			}
		}
		$rs[logo] && $rs[logo]=tempdir($rs[logo]);
		$listdb[]=$rs;
	}
	return $listdb;
}



function ListThisSp($rows,$leng=50){
	global $page,$fid,$fidDB,$webdb;
	if($page<1){
		$page=1;
	}
	$min=($page-1)*$rows;
	$DESC='DESC';
	$ORDER='list';
	$SQL="WHERE fid=$fid AND yz=1 ORDER BY $ORDER $DESC LIMIT $min,$rows";
	$which='*';
	$listdb=list_special($SQL,$which,$leng);
	return $listdb;
}
?>