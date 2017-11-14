<?php
require(dirname(__FILE__).'/global.php');
//栏目导航
get_guide($fid);

require_once(ROOT_PATH."inc/encode.php");
set_time_limit(0);

if(!is_writable(Mpath."cache/htm_cache/{$cacheid}_makeShow1.php"))
{
	showerr(Mpath."cache/htm_cache/{$cacheid}_makeShow1.php文件不存在,或文件不可写");
}

$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
$fidDB[M_alias]='软件';
$fidDB[config]=unserialize($fidDB[config]);
$FidTpl=unserialize($fidDB[template]);

$titleDB[_title]	= $titleDB[title];

$fupId=intval($fidDB[type]?$fid:$fidDB[fup]);













$III=intval($III);unset($iddb,$fiddb);

require_once(Mpath."cache/htm_cache/{$cacheid}_makeShow1.php");

$id_array=explode(",",$iddb[$III]);


unset($lfjuid,$web_admin,$lfjid,$lfjdb,$groupdb);

$groupdb=@include(ROOT_PATH."data/group/2.php");		//以游客身份处理

/***********************开始***********************/
foreach( $id_array AS $key=>$value){

unset($bencandy_content);

list($id,$page)=explode("-",$value);

$aid=$id;
if(!$id){
	continue;
}
if($page<1){
	$page=1;
}

$min=intval($page)-1;
$rsdb=$db->get_one("SELECT R.*,A.* FROM {$_pre}article A LEFT JOIN {$_pre}reply R ON A.aid=R.aid WHERE A.aid=$aid ORDER BY R.topic DESC,R.orderid ASC LIMIT $min,1");


$titleDB[title]		= filtrate(strip_tags("$rsdb[title] - $fidDB[name] - $titleDB[_title]"));
$titleDB[keywords]	= filtrate($rsdb[keywords]);
$rsdb[description] || $rsdb[description]=get_word(preg_replace("/(<([^<]+)>|	|&nbsp;|\n)/is","",$rsdb[content]),250);
$titleDB[description] = filtrate($rsdb[description]);

if( $fidDB[allowviewcontent] || ($rsdb[begintime]&&$timestamp<$rsdb[begintime]) || ($rsdb[endtime]&&$timestamp>$rsdb[endtime]) || $rsdb[yz]!=1 || ($rsdb[passwd]||$fidDB[passwd]) || $rsdb[allowview] || $rsdb[jumpurl] || $rsdb[money] )
{
	$bencandy_content="<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$Mdomain/bencandy.php?&fid=$fid&id=$id&NeedCheck=1'>";
}


$STYLE = $rsdb[style] ? $rsdb[style] : ($fidDB[style] ? $fidDB[style] : $STYLE);

//相关栏目名称模板
if(is_file(html("$webdb[SideSortStyle]"))){
	$sortnameTPL=html("$webdb[SideSortStyle]");
}else{
	$sortnameTPL=html("side_sort/0");
}

if($rsdb[iframeurl])
{
	$head_tpl="template/default/none.htm";
	$main_tpl="template/default/none.htm";
	$foot_tpl="template/default/iframe.htm";
}
else
{
	$showTpl=unserialize($rsdb[template]);
	$head_tpl=$showTpl[head]?$showTpl[head]:$FidTpl['head'];
	$main_tpl=$showTpl[bencandy]?$showTpl[bencandy]:$FidTpl['bencandy'];
	$foot_tpl=$showTpl[foot]?$showTpl[foot]:$FidTpl['foot'];
}


$rsdb[content] = En_TruePath($rsdb[content],0,1);
$rsdb[content]=preg_replace("/<IMG src=\"([^\"]+)\" border=0><A href=\"([^\"]+)\" target=_blank>([^<>]+)<\/A>/eis","encode_fileurl('\\1','\\2','\\3')",$rsdb[content]);
$rsdb[content]=preg_replace("/href=\"([^\"]+)\"([^<>]+)p8name=\"p8download\">([^<>]+)<\/A>/eis","encode_fileurl('','\\1','\\3')",$rsdb[content]);


$rsdb[content]=show_keyword($rsdb[content]);	//突出显示关键字
$IS_BIZ && AvoidGather();	//防采集处理


$rsdb[posttime]=date("Y-m-d H:i:s",$rsdb[full_posttime]=$rsdb[posttime]);

if($rsdb[copyfromurl]&&!strstr($rsdb[copyfromurl],"http://")){
	$rsdb[copyfromurl]="http://$rsdb[copyfromurl]";
}

$showpage=getpage("","","bencandy.php?fid=$fid&aid=$aid",1,$rsdb[pages]);

//上一篇与下一篇
$nextdb=$db->get_one("SELECT title,aid,fid FROM {$_pre}article WHERE aid<'$id' AND fid='$fid' AND yz=1 ORDER BY aid DESC LIMIT 1");
$nextdb[subject]=get_word($nextdb[title],34);
$backdb=$db->get_one("SELECT title,aid,fid FROM {$_pre}article WHERE aid>'$id' AND fid='$fid' AND yz=1 ORDER BY aid ASC LIMIT 1");
$backdb[subject]=get_word($backdb[title],34);

//个性头部与尾部
if($webdb[IF_Private_tpl]==3){
	if(!$head_tpl&&is_file(Mpath.$webdb[Private_tpl_head])){
		$head_tpl=Mpath.$webdb[Private_tpl_head];
	}
	if(!$foot_tpl&&is_file(Mpath.$webdb[Private_tpl_foot])){
		$foot_tpl=Mpath.$webdb[Private_tpl_foot];
	}
}

//获取标签参数
$chdb[main_tpl]=getTpl("bencandy",$main_tpl);

//标签
$ch_fid	= intval($fidDB[config][label_bencandy]);	//是否定义了栏目专用标签
$ch_pagetype = 3;									//2,为list页,3,为bencandy页
$ch_module = $webdb[module_id]?$webdb[module_id]:99;//系统特定ID参数,每个系统不能雷同
$ch = 0;											//不属于任何专题
//目的是为了效率,但如果不同内容页标签不同的话.就存在问题.
if($key<2){
	require(ROOT_PATH."inc/label_module.php");
}

$rsdb[picurl]=tempdir($rsdb[picurl]);
$webdb[AutoTitleNum] && $rsdb[pages]>1 && $rsdb[title]=Set_Title_PageNum($rsdb[title],$page);
if($rsdb[keywords]){
	unset($array);
	$detail=explode(" ",$rsdb[keywords]);
	foreach( $detail AS $value){
		$_value=urlencode($value);
		$array[]="<A HREF='search.php?type=keyword&keyword=$_value' target=_blank>$value</A>";
	}
	$rsdb[keywords]=implode(" ",$array);
}
//过滤不良词语
$rsdb[content]=replace_bad_word($rsdb[content]);
$rsdb[title]=replace_bad_word($rsdb[title]);
$rsdb[subhead]=replace_bad_word($rsdb[subhead]);

ob_end_clean();
ob_start();
$MenuArray='';

$rsdb[down_time] = $rsdb[down_time]?date("Y-m-d H:i:s",$rsdb[down_time]):'';
$rsdb[update_time] = $rsdb[update_time]?date("Y-m-d H:i:s",$rsdb[update_time]):$rsdb[posttime];
show_download($rsdb);	//对下载内容的处理

//对自定义信息内容字段的处理
$Module_db->hidefield=true;
$Module_db->classidShowAll=true;
$Module_db->showfield($field_db,$rsdb,'show');

require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");

$bencandy_content || $bencandy_content=ob_get_contents();
$bencandy_content=preg_replace("/<!--include(.*?)include-->/is","\\1",$bencandy_content);
$bencandy_content=str_replace('<!---->','',$bencandy_content);

make_html($bencandy_content,'bencandy');


}
/***********************结尾***********************/

ob_end_clean();

$III++;

if($fid=$fiddb[$III])
{
	//非批量生成静态,不需要看进度状况
	if($JumpUrl){
		header("location:?III=$III&fid=$fid&cacheid=$cacheid");exit;
	}
	$havemake=floor((100*$III)/count($fiddb));
	write_file(Mpath."cache/htm_cache/{$cacheid}_makeShow_record.php","?III=$III&fid=$fid&cacheid=$cacheid");
	echo '<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />';
	echo "请稍候,正在生成内容页静态,已完成<a style='color:red;'>{$havemake}%</a>...<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?III=$III&fid=$fid&cacheid=$cacheid'>";
	exit;
}
else
{
	unlink(Mpath."cache/htm_cache/{$cacheid}_makeShow1.php");
	//非批量生成静态,不需要看进度状况
	if($JumpUrl){
		header("location:$JumpUrl");exit;
	}
	unlink(Mpath."cache/htm_cache/{$cacheid}_makeShow_record.php");
	echo '<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />';
	if( $webdb[TheSameMakeIndexHtml] ){
		echo "<div style='display:none'><iframe src=index.php?MakeIndex=1></iframe></div>";
	}
	echo "<A HREF='$weburl'>静态页生成完毕,请点击返回</A>";
	exit;
}
?>