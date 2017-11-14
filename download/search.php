<?php
require(dirname(__FILE__).'/global.php');
require_once(ROOT_PATH."inc/class.inc.php");
$Guidedb=new Guide_DB;

$keyword=str_replace("%","\%",$keyword);
$keyword=trim($keyword);
$rows=20;


if( ($_GET[type]||$_POST[type]) && !$keyword ){
	showerr("关键字不能为空");
}


if( $_GET[keyword] || $_POST[keyword] ){

	$search_module=0;
	if(!$type)
	{
		$type='title';
	}
	if(!$web_admin)
	{
		if(!$groupdb[SearchArticleType]){
			showerr("你所在用户组,无权使用搜索!");
		}
		elseif($type=='content'&&$groupdb[SearchArticleType]!=2){
			showerr("你所在用户组,无权搜索软件内容!");
		}
	}

	if($_POST[keyword]&&($timestamp-$_COOKIE[searchTime]<3))
	{
		showerr("3秒钟内,请不要重复提交查询");
	}
	setcookie("searchTime",$timestamp,$timestamp+3);

	$SQL=" A.yz=1 ";

	if($type=='keyword')
	{
		unset($array);
		$query = $db->query("SELECT B.aid FROM {$_pre}keywordid B LEFT JOIN {$_pre}keyword A ON A.id=B.id WHERE A.keywords='$keyword'");
		while($rs = $db->fetch_array($query)){
			$array[]=$rs[aid];
		}
		if($array){
			$SQL.=" AND A.aid IN (".implode(',',$array).") ";
		}else{
			$SQL.=" AND 0 ";
		}
	}
	elseif($type=='title')
	{
		$SQL.=" AND BINARY A.title LIKE '%$keyword%' ";
	}
	elseif($type=='id')
	{
		$SQL.=" AND A.aid = '$keyword' ";
	}
	elseif($type=='username')
	{
		$SQL.=" AND BINARY A.username = '$keyword' ";
	}
	elseif($type=='content')
	{
		$SQL.=" AND BINARY B.content LIKE '%$keyword%' ";
	}

	//搜索按照时间来处理-开始
	if($starttijd&&$eindtijd){
		$starttijd=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$starttijd);
		$eindtijd=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$eindtijd);
		if($starttijd<$eindtijd){
			$SQL.=" AND A.posttime>$starttijd AND A.posttime<$eindtijd";
		}else{
			showerr("时间格式不对");
		}
	}
	if($starttijd){
		$starttijd=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$starttijd);
		$SQL.=" AND A.posttime>$starttijd";
	}
	if($eindtijd){
		$eindtijd=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$eindtijd);
		$SQL.=" AND A.posttime<$eindtijd";
	}//搜索按照时间来处理-结束


	if($page<1)
	{
		$page=1;
	}
	$min=($page-1)*$rows;

	$_SQL=" AND B.topic=1 ";
	if($fid){
		$_SQL=" AND A.fid='$fid' ";
	}	
	
	

	unset($listdb);
	$query = $db->query("SELECT SQL_CALC_FOUND_ROWS B.*,A.* FROM {$_pre}article A LEFT JOIN {$_pre}reply B ON A.aid=B.aid  WHERE $SQL $_SQL ORDER BY A.aid DESC LIMIT $min,$rows");
	$RS=$db->get_one("SELECT FOUND_ROWS()");
	$totalNum=$RS['FOUND_ROWS()'];	$showpage=getpage('','',"search.php?fid=$fid&type=$type&$search_url&keyword=".urlencode($_POST[keyword]).urlencode($_GET[keyword])."",$rows,$totalNum);

	while($rs = $db->fetch_array($query))
	{
		$rs[posttime] = date("Y-m-d",$rs[posttime]);
		if( $webdb[path] && ($webdb[Html_Type]==1) ){
			$webdb[path]='';
		}
		$rs[url]="bencandy.php?fid=$rs[fid]&id=$rs[aid]";
		$listdb[] = $rs;
	}
	
	if(!$listdb)
	{
		showerr("很抱歉,没有找到你要查询的内容");
	}
	
	$typedb[$type]=' selected ';
}



$fid_select="<select name='fid' onChange=\"if(this.options[this.selectedIndex].value=='-1'){alert('你不能选择大分类');}\"><option value='0' style='color:#aaa;'>所有栏目</option>";
$fid_select.=list_allsort(0,1,$fid,$mid);
$fid_select.="</select>";	


/**
*为获取标签参数
**/
$chdb[main_tpl]=getTpl("digg");

/**
*标签
**/
$ch_fid	= intval($fidDB[config][label_list]);		//是否定义了栏目专用标签
$ch_pagetype = 6;									//2,为list页,3,为bencandy页
$ch_module = 0;										//软件模块,默认为0
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");


$type||$type='title';
$typedb[$type]=" checked ";

require(ROOT_PATH."inc/head.php");
require(getTpl("search"));
require(ROOT_PATH."inc/foot.php");



//真静态
if($webdb[Html_Type]==1)
{
	$content=ob_get_contents();
	ob_end_clean();
	ob_start();			//备用
	$content=make_html($content,'N');
	echo "$content";
}


/*栏目列表 取决模型相关栏目*/
function list_allsort($fid,$Class,$ckfid,$fmid="0"){
	global $db,$_pre,$listdb;
	$Class++;
	if(!$fmid){
		$query=$db->query("SELECT * FROM {$_pre}sort WHERE fup='$fid' ORDER BY list DESC");
	}else{
		$query=$db->query("SELECT * FROM {$_pre}sort WHERE fup='$fid' AND fmid ='$fmid'ORDER BY list DESC");
	}
	while( $rs=$db->fetch_array($query) ){
		$icon="";
		for($i=1;$i<$Class;$i++){
			$icon.="&nbsp;|&nbsp;&nbsp;";
		}
 		if($icon){
			$icon=substr($icon,0,-12);
			$icon.="--";
		}
 		if($rs[type]){
			$fid_select.="<option value='-1' style='color:red;'>$icon$rs[name]</option>";
 		}else{
 			$ckk=$ckfid==$rs[fid]?' selected ':' ';
			$fid_select.="<option value='$rs[fid]' $ckk>$icon$rs[name]</option>";
 		}
		$fid_select.=list_allsort($rs[fid],$Class,$ckfid);
	}
	return $fid_select;
}

?>