<?php
require(dirname(__FILE__).'/global.php');

//栏目导航
get_guide($fid);

unset($lfjuid,$web_admin,$lfjid,$lfjdb,$groupdb);

$groupdb=@include(ROOT_PATH."data/group/2.php");		//以游客身份处理

if(!is_writable(Mpath."cache/htm_cache/{$cacheid}_makelist.php")){
	showerr(Mpath."cache/htm_cache/{$cacheid}_makelist.php文件不存在,或文件不可写");
}

set_time_limit(0);

$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
$fidDB[M_alias]='软件';
$fidDB[config]=unserialize($fidDB[config]);
$fidDB[descrip]=En_TruePath($fidDB[descrip],0);
//if($fidDB[type]==2){
//	$rsdb[content]=$fidDB[descrip];
//}

$fupId=intval($fidDB[type]?$fid:$fidDB[fup]);

//相关栏目名称模板
if(is_file(html("$webdb[SideSortStyle]"))){
	$sortnameTPL=html("$webdb[SideSortStyle]");
}else{
	$sortnameTPL=html("side_sort/0");
}

//栏目介绍模板
$aboutsortTPL=html("aboutsort_tpl/0");

//大分类显示方式
$fidDB[config][ListShowBigType] || $fidDB[config][ListShowBigType]=0;
unset($bigsortTPL);

if(!$bigsortTPL){
	$bigsortTPL=html("bigsort_tpl/0",ROOT_PATH."template/default/{$fidDB[config][ListShowBigType]}.htm");
}

//内容列表显示方式.
$fidDB[config][ListShowType] || $fidDB[config][ListShowType]=0;

$listTPL=html("list_tpl/0",ROOT_PATH."template/default/{$fidDB[config][ListShowType]}.htm");


$atc_content='';


//跳转到外部地址
if( $fidDB[jumpurl] ){
	$atc_content="<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$fidDB[jumpurl]'>";
	$atc_content=str_replace("?","?&",$atc_content);
}



//SEO
$titleDB[title]			= filtrate("$fidDB[name] - $webdb[webname]");
$titleDB[keywords]		= filtrate("$fidDB[metakeywords]  $webdb[metakeywords]");
$titleDB[description]	= filtrate("$fidDB[descrip]");

$fidDB[style] && $STYLE=$fidDB[style];

//个性头部与尾部
if($webdb[IF_Private_tpl]==2&&$webdb[IF_Private_tpl]==3){
	if(is_file(Mpath.$webdb[Private_tpl_head])){
		$head_tpl=Mpath.$webdb[Private_tpl_head];
	}
	if(is_file(Mpath.$webdb[Private_tpl_foot])){
		$foot_tpl=Mpath.$webdb[Private_tpl_foot];
	}
}

/*模板*/
$FidTpl=unserialize($fidDB[template]);
$FidTpl['head'] && $head_tpl=$FidTpl['head'];
$FidTpl['foot'] && $foot_tpl=$FidTpl['foot'];

/**
*获取标签参数,其他模块的列表可以是$ch='2';$chtype=2,3,4,5,6,7,8,;
**/
$chdb[main_tpl]=getTpl("list",$FidTpl['list']);

/**
*标签
**/
$ch_fid	= intval($fidDB[config][label_list]);		//是否定义了栏目专用标签
$ch_pagetype = 2;									//2,为list页,3,为bencandy页
$ch_module = $webdb[module_id]?$webdb[module_id]:99;//系统特定ID参数,每个系统不能雷同
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");





//显示子分类
$listdb_moresort=ListMoreSort();

//列表页多少条软件
$Lrows=$fidDB[maxperpage]?$fidDB[maxperpage]:($webdb[list_row]?$webdb[list_row]:20);



@extract($db->get_one("SELECT COUNT(aid) AS NUM FROM {$_pre}article WHERE fid=$fid AND yz=1"));














if($Ppage<1){
	$Ppage=1;
}
$Rows=20;
$Min=($Ppage-1)*$Rows;

//多模型扩展接口
//@include(ROOT_PATH."inc/list_{$fidDB[fmid]}.php");

require(ROOT_PATH."inc/head.php");
$content_head=ob_get_contents();

ob_end_clean();
ob_start();
require(ROOT_PATH."inc/foot.php");
$content_foot=ob_get_contents();
ob_end_clean();
ob_start();
unset($ckk);
unset($lfjuid,$web_admin,$lfjid,$lfjdb);
for($I=$Min;$I<$Min+$Rows;$I++){
	$page=$I+1;
	if($page!=1&&$page>ceil($NUM/$Lrows)){
		break;
	}

	if( $fidDB[passwd] ){//栏目密码
		$atc_content="<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$Mdomain/list.php?page=$page&fid=$fid&NeedCheck=1'>";
	}elseif( $fidDB[allowviewtitle] || $fidDB[allowviewcontent] ){//浏览权限
		$atc_content="<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$Mdomain/list.php?page=$page&fid=$fid&NeedCheck=1'>";
	}else{
		$listdb=ListThisSort($Lrows,$webdb[ListLeng]?$webdb[ListLeng]:50);	//本栏目软件列表
		$listdb || $hide_listnews='none';				//如果是大分类的话,就不存在标题,就把标题框隐藏
		$showpage=getpage("","","list.php?fid=$fid",$Lrows,$NUM);
	}

	ob_end_clean();
	ob_start();
	require($chdb[main_tpl]);


	
	$content=$atc_content?$atc_content:($content_head.ob_get_contents().$content_foot);
	$content=preg_replace("/<!--include(.*?)include-->/is","\\1",$content);
	$content=str_replace('<!---->','',$content);
	
	make_html($content,'list');
	$ckk++;
}
ob_end_clean();

require_once(Mpath."cache/htm_cache/{$cacheid}_makelist.php");
if($ckk)
{
	$Ppage++;
	//非批量生成静态,不需要看进度状况
	if($JumpUrl){
		//如果是一个栏目的话,只处理前几页就行了
		if(is_numeric($allfid)){
			unlink(Mpath."cache/htm_cache/{$cacheid}_makelist.php");
			header("location:$JumpUrl");exit;
		}
		//header("location:?fid=$fid&Ppage=$Ppage&III=$III");exit;
	}
	write_file(Mpath."cache/htm_cache/{$cacheid}_makelist_record.php","?fid=$fid&Ppage=$Ppage&III=$III&cacheid=$cacheid");
	echo "请稍候,正在生成列表页静态...$Ppage<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?fid=$fid&Ppage=$Ppage&III=$III&cacheid=$cacheid'>";
	exit;
}
else
{
	$III++;
	$Ppage=0;
	$fiddb=explode(",", $allfid);
	if($fid=$fiddb[$III]){
		//非批量生成静态,不需要看状况
		if($JumpUrl){
			//header("location:?fid=$fid&Ppage=$Ppage&III=$III");exit;
		}
		write_file(Mpath."cache/htm_cache/{$cacheid}_makelist_record.php","?fid=$fid&Ppage=$Ppage&III=$III&cacheid=$cacheid");
		echo '<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />';
		echo "请稍候,正在生成列表页静态...$fid<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?fid=$fid&Ppage=$Ppage&III=$III&cacheid=$cacheid'>";
		exit;
	}else{
		unlink(Mpath."cache/htm_cache/{$cacheid}_makelist_record.php");
		unlink(Mpath."cache/htm_cache/{$cacheid}_makelist.php");
		//非批量生成静态,不需要看状况
		if($JumpUrl){
			header("location:$JumpUrl");exit;
		}
		echo '<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />';
		echo "列表静态页生成完毕,继续生成内容页<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$weburl'>";
		exit;
	}
}
?>