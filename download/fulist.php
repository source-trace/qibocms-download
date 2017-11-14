<?php
require(dirname(__FILE__).'/global.php');
$page<1 && $page=1;

$Cache_FileName=Mpath."cache/fulist_cache/{$fid}_{$page}.php";
if(!$jobs&&$webdb[fulist_cache_time]&&(time()-filemtime($Cache_FileName))<($webdb[fulist_cache_time]*60)){
	echo read_file($Cache_FileName);
	exit;
}
@include_once(Mpath."data/fu_all_fid.php");
@include_once(Mpath."data/fu_guide_fid.php");	//栏目导航

$GuideFid[$fid]=str_replace("list.php?","fulist.php?",$GuideFid[$fid]);

if(!$fid){
	showerr("栏目FID不存在");
}

//栏目配置文件
$fidDB=$db->get_one("SELECT * FROM {$_pre}fu_sort WHERE fid='$fid'");
if(!$fidDB){
	showerr("栏目ID有误");
}
$fidDB[M_alias]='软件';
$fidDB[config]=unserialize($fidDB[config]);
$fidDB[descrip]=En_TruePath($fidDB[descrip],0);


$fupId=intval($fidDB[type]?$fid:$fidDB[fup]);


/**
*栏目配置文件检查
**/
check_fid($fidDB);

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

/**
*为获取标签参数
**/
$chdb[main_tpl]=getTpl("fulist",$FidTpl['list']);

/**
*标签
**/
$ch_fid	= intval($fidDB[config][label_list]);		//是否定义了栏目专用标签
$ch_pagetype = 8;									//2,为list页,3,为bencandy页
$ch_module = 0;										//软件模块,默认为0
$ch = 0;											//不属于任何专题
require(ROOT_PATH."inc/label_module.php");

//显示子分类
$listdb_moresort=fuListMoreSort();

//列表页多少篇软件,栏目设置的话.以栏目为标准,否则与系统为标准,系统不存在就默认20
$rows=$fidDB[maxperpage]?$fidDB[maxperpage]:($webdb[list_row]?$webdb[list_row]:20);	

$listdb=fuListThisSort($rows,$webdb[ListLeng]?$webdb[ListLeng]:50);		//本栏目软件列表
$page_sql=$webdb[viewNoPassArticle]?'':' AND yz=1 ';


$showpage=getpage("{$_pre}article A LEFT JOIN {$_pre}fu_article F ON A.aid=F.aid","WHERE F.fid=$fid $page_sql","fulist.php?fid=$fid",$rows);	//软件列表分页

//相关栏目名称模板
if(is_file(html("fu_$webdb[SideSortStyle]"))){
	$sortnameTPL=html("fu_$webdb[SideSortStyle]");
}else{
	$sortnameTPL=html("fu_side_sort/0");
}

//栏目介绍模板
$aboutsortTPL=html("aboutsort_tpl/0");

//大分类显示方式
$fidDB[config][ListShowBigType] || $fidDB[config][ListShowBigType]=0;
$bigsortTPL=html("fu_bigsort_tpl/0",ROOT_PATH."template/default/{$fidDB[config][ListShowBigType]}.htm");



//内容列表显示方式.
$fidDB[config][ListShowType] || $fidDB[config][ListShowType]=0;
$listTPL=html("list_tpl/0",ROOT_PATH."template/default/{$fidDB[config][ListShowType]}.htm");


//多模型扩展接口
//@include(ROOT_PATH."inc/list_{$fidDB[fmid]}.php");

require(ROOT_PATH."inc/head.php");
require($chdb[main_tpl]);
require(ROOT_PATH."inc/foot.php");

//真静态
if($webdb[Html_Type]==1){
	$content=ob_get_contents();
	ob_end_clean();
	ob_start();			//备用
	$content=make_html($content,'N');
	echo "$content";
}


if(!$jobs&&$webdb[list_cache_time]&&(time()-filemtime($Cache_FileName))>($webdb[list_cache_time]*60)){
	
	if(!is_dir(dirname($Cache_FileName))){
		makepath(dirname($Cache_FileName));
	}
	write_file($Cache_FileName,$content);
}elseif($jobs=='show'){
	@unlink($Cache_FileName);
}


/**
*栏目配置文件检查
**/
function check_fid($fidDB){
	global $web_admin,$groupdb,$fid;
	if(!$fidDB)
	{
		showerr("栏目不存在");
	}

	//跳转到外部地址
	if( $fidDB[jumpurl] )
	{
		header("location:$fidDB[jumpurl]");
		exit;
	}

	//栏目密码
	if( $fidDB[passwd] )
	{
		if( $_POST[password] )
		{
			if( $_POST[password] != $fidDB[passwd] )
			{
				echo "<A HREF=\"?fid=$fid\">密码不正确,点击返回</A>";
				exit;
			}
			else
			{
				setcookie("sort_passwd_$fid",$fidDB[passwd]);
				$_COOKIE["sort_passwd_$fid"]=$fidDB[passwd];
			}
		}
		if( $_COOKIE["sort_passwd_$fidDB[fid]"] != $fidDB[passwd] )
		{
			echo "<CENTER><form name=\"form1\" method=\"post\" action=\"\">请输入栏目密码:<input type=\"password\" 	name=\"password\"><input type=\"submit\" name=\"Submit\" value=\"提交\"></form></CENTER>";
			exit;
		}
	}

	if( $fidDB[allowviewtitle] || $fidDB[allowviewcontent] )
	{
		if(!$web_admin&&!in_array($groupdb[gid],explode(",","$fidDB[allowviewtitle],$fidDB[allowviewcontent]")))
		{
			showerr("你所在用户组不允许浏览标题");
		}
	}
}


function fuListMoreSort(){
	global $db,$_pre,$fid,$webdb,$fidDB,$Fid_db;
	//排序
	if($fidDB[config][sonListorder]==1){
		$order='A.list';
	}elseif($fidDB[config][sonListorder]==2){
		$order='A.hits';
	}elseif($fidDB[config][sonListorder]==3){
		$order='A.lastview';
	}elseif($fidDB[config][sonListorder]==4){
		$order='rand()';
	}else{
		$order='A.list';
	}
	$_order=" ORDER BY $order DESC ";

	//显示几行
	if($fidDB[config][sonTitleRow]>0){
		$rows=$fidDB[config][sonTitleRow];
	}elseif($webdb[ListSonRows]>0){
		$rows=$webdb[ListSonRows];
	}else{
		$rows=10;
	}

	//每个标题显示几个字
	if($fidDB[config][sonTitleLeng]>0){
		$leng=$fidDB[config][sonTitleLeng];
	}elseif($webdb[ListSonLeng]>0){
		$leng=$webdb[ListSonLeng];
	}else{
		$leng=30;
	}

	if(!$webdb[viewNoPassArticle]){
		$SQL_yz=' AND A.yz=1 ';
	}
	$query=$db->query("SELECT * FROM {$_pre}fu_sort WHERE fup=$fid AND forbidshow!=1 ORDER BY list DESC");
	while($rs=$db->fetch_array($query)){
		$erp='';
		$SQL="A LEFT JOIN {$_pre}fu_article F ON A.aid=F.aid LEFT JOIN {$_pre}reply$erp R ON F.aid=R.aid WHERE F.fid=$rs[fid] AND R.topic=1 $SQL_yz $_order LIMIT $rows";
		$which='A.*,R.content';
		$rs[article]=list_article($SQL,$which,$leng,$erp);

		//如果本栏目不能获取到软件,将获取其所有子栏目的软件
		if(!$rs[article])
		{
			$array_fid=Get_SonFid("{$_pre}sort",$rs[fid]);
			if($array_fid)
			{
				//分表后,如果子栏目不是同一模型的话.将不能获取资料
				$SQL="A LEFT JOIN {$_pre}fu_article F ON A.aid=F.aid LEFT JOIN {$_pre}reply$erp R ON F.aid=R.aid WHERE R.topic=1 AND F.fid IN (".implode(',',$array_fid).") $SQL_yz $_order LIMIT $rows";
				$rs[article]=list_article($SQL,$which,$leng,$erp);
			}
		}
		$rs[logo] && $rs[logo]=tempdir($rs[logo]);
		$listdb[]=$rs;
	}
	return $listdb;
}


function fuListThisSort($rows,$leng=50){
	global $page,$fid,$fidDB,$webdb,$_pre,$Fid_db;
	if($page<1){
		$page=1;
	}
	$min=($page-1)*$rows;
	if($fidDB[listorder]==1){
		$DESC='DESC';
		$ORDER='A.posttime';
	}elseif($fidDB[listorder]==2){
		$DESC='ASC';
		$ORDER='A.posttime';
	}elseif($fidDB[listorder]==3){
		$DESC='DESC';
		$ORDER='A.hits';
	}elseif($fidDB[listorder]==4){
		$DESC='ASC';
		$ORDER='A.hits';
	}elseif($fidDB[listorder]==5){
		$DESC='DESC';
		$ORDER='A.lastview';
	}elseif($fidDB[listorder]==7){
		$DESC='DESC';
		$ORDER='A.digg_num';
	}elseif($fidDB[listorder]==8){
		$DESC='DESC';
		$ORDER='A.digg_time';
	}elseif($fidDB[listorder]==6){
		$DESC='DESC';
		$ORDER='rand()';
	}else{
		$DESC='DESC';
		$ORDER='A.list';
	}
	if(!$webdb[viewNoPassArticle]){
		$SQL_yz=' AND A.yz=1 ';
	}
	if($fid){
		$_fid_sql=" AND F.fid=$fid ";
	}else{
		$_fid_sql=" AND 1 ";
	}

	$SQL="A LEFT JOIN {$_pre}fu_article F ON A.aid=F.aid LEFT JOIN {$_pre}reply R ON F.aid=R.aid WHERE R.topic=1 $_fid_sql $SQL_yz ORDER BY $ORDER $DESC LIMIT $min,$rows";
	$which='A.*,R.content';
	$listdb=list_article($SQL,$which,$leng,$erp);
	return $listdb;
}

?>