<?php
define('Mpath',dirname(__FILE__).'/');
define( 'Mdirname' , preg_replace("/(.*)\/([^\/]+)/is","\\2",str_replace("\\","/",dirname(__FILE__))) );

require(Mpath."../inc/common.inc.php");
require(Mpath."data/config.php");			//系统全局变量
require(Mpath."data/all_fid.php");			//栏目的名称
require(Mpath."inc/artic_function.php");	//涉及到软件方面的函数
require(Mpath."inc/module.class.php");		//自定义模块
require(Mpath."data/module_db.php");		//自定义模块
$Html_Type=@include(Mpath."data/htmltype.php");		//栏目的URL个性样式


@include_once(ROOT_PATH."data/ad_cache.php");	//全站广告变量缓存文件
@include_once(ROOT_PATH."data/label_hf.php");	//标签的头与底的变量值
@include_once(ROOT_PATH."data/module.php");		//模块系统的参数变量值




$_pre="{$pre}{$webdb[module_pre]}";					//数据表前缀

$groupdb=array_merge($groupdb,$groupdb["power_{$_pre}"]);	//权限特别处理


$Murl=$webdb[www_url].'/'.Mdirname;					//本模块的访问地址
$Mdomain=$ModuleDB[$webdb[module_pre]][domain]?$ModuleDB[$webdb[module_pre]][domain]:$Murl;

$Module_db=new Module_Field(Mpath);						//自定义模型相关
$field_db = $module_DB[1][field];
/**
*前台是否开放
**/
if($webdb[module_close])
{
	$webdb[Info_closeWhy]=str_replace("\r\n","<br>",$webdb[Info_closeWhy]);
	showerr("本系统暂时关闭:$webdb[Info_closeWhy]");
}


unset($foot_tpl,$head_tpl,$index_tpl,$list_tpl,$bencandy_tpl);
$ch=intval($ch);
$fid=intval($fid);
$id=intval($id);
$page=intval($page);

unset($listdb,$rs);
//加载JS时的提示语,你可以换成图片,'号要加\
$Load_Msg="<img alt=\"内容加载中,请稍候...\" src=\"$webdb[www_url]/images/default/ico_loading3.gif\">";


/**
*获取模板的函数
**/
function getTpl($html,$tplpath=''){
	global $STYLE;
	if($tplpath&&file_exists($tplpath)){
		return $tplpath;
	}elseif($tplpath&&file_exists(Mpath.$tplpath)){
		return Mpath.$tplpath;
	}elseif(file_exists(Mpath."template/$STYLE/$html.htm")){
		return Mpath."template/$STYLE/$html.htm";
	}else{
		return Mpath."template/default/$html.htm";
	}
}



?>