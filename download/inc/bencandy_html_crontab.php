<?php
!function_exists('html') && exit('ERR');

@include_once(ROOT_PATH."data/label_hf.php");		//标签头部与底部变量缓存文件
@include_once(Mpath."data/all_fid.php");		//全部栏目配置文件

require_once(Mpath."inc/artic_function.php");		//涉及到软件方面的函数


require_once(Mpath."inc/module.class.php");		//自定义模块
require_once(Mpath."data/module_db.php");		//自定义模块
$_pre="{$pre}{$webdb[module_pre]}";					//数据表前缀
$groupdb=array_merge($groupdb,$groupdb["power_{$_pre}"]);	//权限特别处理
$Murl=$webdb[www_url].'/'.Mdirname;					//本模块的访问地址
$Mdomain=$ModuleDB[$webdb[module_pre]][domain]?$ModuleDB[$webdb[module_pre]][domain]:$Murl;

$Module_db=new Module_Field(Mpath);						//自定义模型相关
$field_db = $module_DB[1][field];


unset($lfjuid,$web_admin,$lfjid,$lfjdb,$groupdb,$bencandy_foot,$bencandy_head);
$groupdb=@include( ROOT_PATH."data/group/2.php");		//以游客身份处理

require_once(ROOT_PATH."inc/encode.php");
set_time_limit(0);

//相关栏目名称模板
if(is_file(html("$webdb[SideSortStyle]"))){
	$sortnameTPL=html("$webdb[SideSortStyle]");
}else{
	$sortnameTPL=html("side_sort/0");
}

if($aid){
	$ASQL=" AND aid='$aid' ";
}else{
	$ASQL=" ";
}
if(is_array($bfid_array)){
	$SQL=" WHERE fid IN (".implode(',',$bfid_array).") ";
}elseif(is_numeric($bfid)){
	$SQL=" WHERE fid='$bfid' ";
}else{
	$SQL=" ";
}
$query_fid = $db->query("SELECT * FROM {$_pre}sort $SQL");
while($fidDB = $db->fetch_array($query_fid)){

$fid = $fidDB[fid];
get_guide($fid);	//栏目导航
$fidDB[M_alias]='软件';
$fidDB[config]=unserialize($fidDB[config]);
$FidTpl=unserialize($fidDB[template]);
$fupId=intval($fidDB[type]?$fid:$fidDB[fup]);
$erp=$Fid_db[iftable][$fid]?$Fid_db[iftable][$fid]:'';

$Frows = 100;	//此数值不可太大,否则服务器内存支持不了
$steps = 0;

do{

$ifdo = false;
$steps++;
$min = ($steps-1)*$Frows;
$query_id = $db->query("SELECT * FROM {$_pre}article WHERE fid=$fid $ASQL ORDER BY aid DESC LIMIT $min,$Frows");
while($rsdb = $db->fetch_array($query_id)){
	$ifdo = true;
	$aid = $id = $rsdb[aid];
	$titleDB[title]		= filtrate(strip_tags("$rsdb[title] - $fidDB[name] - $webdb[webname]"));
	$titleDB[keywords]	= filtrate($rsdb[keywords]);
	$rsdb[description] || $rsdb[description]=get_word(preg_replace("/(<([^<]+)>|	|&nbsp;|\n)/is","",$rsdb[content]),250);
	$titleDB[description] = filtrate($rsdb[description]);

	if( $fidDB[allowviewcontent] || ($rsdb[begintime]&&$timestamp<$rsdb[begintime]) || ($rsdb[endtime]&&$timestamp>$rsdb[endtime]) || $rsdb[yz]!=1 || ($rsdb[passwd]||$fidDB[passwd]) || $rsdb[allowview] || $rsdb[jumpurl] || $rsdb[money] ){		
		$bencandy_content="<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$Mdomain/bencandy.php?&fid=$fid&id=$id&NeedCheck=1'>";
	}else{
		$bencandy_content='';
	}

	$STYLE = $rsdb[style] ? $rsdb[style] : ($fidDB[style] ? $fidDB[style] : $STYLE);

	if($rsdb[iframeurl]){	
		$head_tpl="template/default/none.htm";
		$main_tpl="template/default/none.htm";
		$foot_tpl="template/default/iframe.htm";
	}else{	
		$showTpl=unserialize($rsdb[template]);
		$head_tpl=$showTpl[head]?$showTpl[head]:$FidTpl['head'];
		$main_tpl=$showTpl[bencandy]?$showTpl[bencandy]:$FidTpl['bencandy'];
		$foot_tpl=$showTpl[foot]?$showTpl[foot]:$FidTpl['foot'];
	}
	//个性头部与尾部
	if($webdb[IF_Private_tpl]==3){
		if(!$head_tpl&&is_file(Mpath.$webdb[Private_tpl_head])){
			$head_tpl=Mpath.$webdb[Private_tpl_head];
		}
		if(!$foot_tpl&&is_file(Mpath.$webdb[Private_tpl_foot])){
			$foot_tpl=Mpath.$webdb[Private_tpl_foot];
		}
	}
	$rsdb[posttime]=date("Y-m-d H:i:s",$rsdb[full_posttime]=$rsdb[posttime]);
	if($rsdb[copyfromurl]&&!strstr($rsdb[copyfromurl],"http://")){
		$rsdb[copyfromurl]="http://$rsdb[copyfromurl]";
	}

	//上一篇与下一篇
	$nextdb=$db->get_one("SELECT title,aid,fid FROM {$_pre}article WHERE aid<'$id' AND fid='$fid' AND yz=1 ORDER BY aid DESC LIMIT 1");
	$nextdb[subject]=get_word($nextdb[title],34);
	$backdb=$db->get_one("SELECT title,aid,fid FROM {$_pre}article WHERE aid>'$id' AND fid='$fid' AND yz=1 ORDER BY aid ASC LIMIT 1");
	$backdb[subject]=get_word($backdb[title],34);

	$rsdb[picurl]=tempdir($rsdb[picurl]);

	if($rsdb[keywords]){
		unset($array);
		$detail=explode(" ",$rsdb[keywords]);
		foreach( $detail AS $value){
			$_value=urlencode($value);
			$array[]="<A HREF='$Mdomain/search.php?type=keyword&keyword=$_value' target=_blank>$value</A>";
		}
		$rsdb[keywords]=implode(" ",$array);
	}
	$rsdb[down_time] = $rsdb[down_time]?date("Y-m-d H:i:s",$rsdb[down_time]):'';
	$rsdb[update_time] = $rsdb[update_time]?date("Y-m-d H:i:s",$rsdb[update_time]):$rsdb[posttime];
	//过滤不良词语
	$rsdb[title]=replace_bad_word($rsdb[title]);
	show_download($rsdb);	//对下载内容的处理

	//对自定义信息内容字段的处理
	$Module_db->hidefield=true;
	$Module_db->classidShowAll=true;
	$Module_db->showfield($field_db,$rsdb,'show');


	$chdb[main_tpl]=getTpl("bencandy",$main_tpl);

	//获取标签参数$chdb[main_tpl]
	$ch_fid	= intval($fidDB[config][label_bencandy]);	//是否定义了栏目专用标签
	$ch_pagetype = 3;									//2,为list页,3,为bencandy页
	$ch_module = $webdb[module_id]?$webdb[module_id]:99;//系统特定ID参数,每个系统不能雷同
	$ch = 0;											//不属于任何专题
	if($bencandy_tpl != $chdb[main_tpl]){
		require(ROOT_PATH."inc/label_module.php");
	}
	$bencandy_tpl = $chdb[main_tpl];
	ob_end_clean();

	if($foot_tpl!=$bencandy_foot||!isset($bencandy_foot)){
		ob_end_clean();
		ob_start();
		require(ROOT_PATH."inc/foot.php");
		$content_foot=ob_get_contents();
		ob_end_clean();
	}
	$bencandy_foot = $foot_tpl;

	ob_start();
	
	$_rsdb = $rsdb;
	$rsdb = '';
	$page = 1;
	do{
		$RMIN = $page-1;
		$reply = $db->get_one("SELECT * FROM {$_pre}reply WHERE aid=$aid ORDER BY topic DESC,orderid ASC LIMIT $RMIN,1");

		$rsdb=$_rsdb+$reply;
		
		//过滤不良词语
		$rsdb[content]=replace_bad_word($rsdb[content]);
		$rsdb[subhead]=replace_bad_word($rsdb[subhead]);
	
		$webdb[AutoTitleNum] && $rsdb[pages]>1 && $rsdb[title]=Set_Title_PageNum($rsdb[title],$page);
		$rsdb[content] = En_TruePath($rsdb[content],0,1);
		$rsdb[content]=preg_replace("/<IMG src=\"([^\"]+)\" border=0><A href=\"([^\"]+)\" target=_blank>([^<>]+)<\/A>/eis","encode_fileurl('\\1','\\2','\\3')",$rsdb[content]);
		$rsdb[content]=preg_replace("/href=\"([^\"]+)\"([^<>]+)p8name=\"p8download\">([^<>]+)<\/A>/eis","encode_fileurl('','\\1','\\3')",$rsdb[content]);


		$rsdb[content]=show_keyword($rsdb[content]);	//突出显示关键字
		$IS_BIZ && AvoidGather();	//防采集处理

		$showpage=getpage("","","bencandy.php?fid=$fid&aid=$aid",1,$rsdb[pages]);

		if(!$bencandy_content){
			ob_end_clean();
			ob_start();
			$MenuArray='';
			
			require(ROOT_PATH."inc/head.php");
			require($chdb[main_tpl]);

			$bencandy_content=ob_get_contents().$content_foot;
			$bencandy_content=preg_replace("/<!--include(.*?)include-->/is","\\1",$bencandy_content);
			$bencandy_content=str_replace('<!---->','',$bencandy_content);
		}
		make_html($bencandy_content,'bencandy');
		$bencandy_content = '';
		$page++;
		$ifpage=($page>$rsdb[pages])?false:true;
		$STEPS++;
		if($STEPS%100){
			sleep(1);	//每生成100篇后要暂停一下,防止服务器负荷太大
		}
	}
	while($ifpage);

}//对应上面的批量读取软件query
}while($ifdo); //对应上面的DO

/***********************结尾***********************/

ob_end_clean();


}//对应上面的栏目query
?>