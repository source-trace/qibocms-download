<?php
!function_exists('html') && exit('ERR');
ck_power('getkeyword');

if($job=="list")
{
	if(!$page){
		$page=1;
	}
	$rows=50;
	$min=($page-1)*$rows;
	$showpage=getpage("{$_pre}keyword","","$admin_path&job=$job",$rows);
	$query = $db->query("SELECT * FROM {$_pre}keyword ORDER BY num DESC LIMIT $min,$rows");
	while($rs = $db->fetch_array($query)){
		if($rs[ifhide]){
			$rs[ifshow]='不显示';
		}else{
			$rs[ifshow]='显示';
		}
		if($rs[url]){
			$rs[ifurl]='是';
		}else{
			$rs[ifurl]='否';
		}
		$listdb[]=$rs;
	}
	$ifShowKeyword[intval($webdb[ifShowKeyword])]=' checked ';

	get_admin_html('list');
}
elseif($job=="search"){
	if(!$page){
		$page=1;
	}
	$rows=50;
	$min=($page-1)*$rows;	
	$showpage=getpage("{$_pre}keyword","WHERE BINARY `keywords` LIKE '%$keyword%' ","$admin_path&job=$job",$rows);
	$query = $db->query("SELECT * FROM {$_pre}keyword WHERE BINARY keywords LIKE '%$keyword%' ORDER BY num DESC LIMIT $min,$rows");
	while($rs = $db->fetch_array($query)){
		if($rs[ifhide]){
			$rs[ifshow]='不显示';
		}else{
			$rs[ifshow]='显示';
		}
		if($rs[url]){
			$rs[ifurl]='是';
		}else{
			$rs[ifurl]='否';
		}
		$listdb[]=$rs;
	}
	$ifShowKeyword[intval($webdb[ifShowKeyword])]=' checked ';
	get_admin_html('list');
}
elseif($action=="set")
{
	write_config_cache($webdbs);
	jump("修改成功",$FROMURL);
}
elseif($action=="del")
{
	foreach( $iddb AS $key=>$value){
		$db->query("DELETE FROM {$_pre}keyword WHERE id='$value'");
		$db->query("DELETE FROM {$_pre}keywordid WHERE id='$value'");
	}
	write_keyword_cache();
	jump("删除成功",$FROMURL,0);
}
elseif($job=="add")
{
	$rsdb['list']=0;

	get_admin_html('edit');
}
elseif($action=="add")
{
	if($url&&!strstr($url,'://')){
		$url="http://$url";
	}
	$db->query("INSERT INTO `{$_pre}keyword` (`keywords` , `list`,`url`,`ifhide` ) VALUES ( '$keywords', '$list','$url','$ifhide')");
	write_keyword_cache();
	jump("添加成功","$admin_path&job=list",1);
}
elseif($job=="edit")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}keyword WHERE id='$id'");
	$ifhide[intval($rsdb[ifhide])]=' checked ';

	get_admin_html('edit');
}
elseif($action=="edit")
{
	if($url&&!strstr($url,'://')){
		$url="http://$url";
	}
	$db->query("UPDATE `{$_pre}keyword` SET `keywords`='$keywords',`num`='$num',`url`='$url',`ifhide`='$ifhide' WHERE id='$id'");
	write_keyword_cache();
	jump("修改成功","$FROMURL",1);
}
elseif($job=="get")
{
	$fid=intval($fid);

	$sortdb=array();
	
	list_2allsort($fid,"sort");

	get_admin_html('sort',false);
}
elseif($action=="getword")
{
	//require_once(ROOT_PATH."inc/splitword.php");
	if(!$fiddb&&!$iii&&$page<2){
		showerr("请选择一个栏目");
	}
	if($maketype=="all")
	{
		$beginTime=$endTime=$beginId=$endId='';
	}
	 
	$SQL=" ";

	if($beginTime){
		$_beginTime=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$beginTime);
		$SQL.=" AND posttime>$_beginTime";
	}

	if($endTime){
		$_endTime=preg_replace("/([\d]+)-([\d]+)-([\d]+) ([\d]+):([\d]+):([\d]+)/eis","mk_time('\\4','\\5', '\\6', '\\2', '\\3', '\\1')",$endTime);
		$SQL.=" AND posttime<$_endTime";
	}

	if(is_numeric($beginId)){
		$SQL.=" AND aid>$beginId ";
	}
	if(is_numeric($endId)){
		$SQL.=" AND aid<$endId ";
	}
	$iii=intval($iii);
	if($iii==0&&$page<2)
	{
		$allfid=implode(",",$fiddb);
		//write_file("../cache/makeShow0.php",$allfid);
	}
	else
	{
		//$allfid=read_file("../cache/makeShow0.php");
		$fiddb=explode(",",$allfid);
	}
	if(!$page)
	{
		$page=1;
	}
	$rows=500;
	$min=($page-1)*$rows;
	if($fid=$fiddb[$iii])
	{
		$ck=$ids='';
		$erp=$Fid_db[iftable][$fid];
		$query = $db->query("SELECT title,keywords,aid AS id FROM {$_pre}article$erp WHERE fid=$fid $SQL LIMIT $min,$rows");
		while($rs = $db->fetch_array($query))
		{
			$ck++;
			if(!$rs[keywords])
			{
				/*
				$keywords=splitword($rs[title]);
				$detail=explode(" ",$keywords);
				foreach( $detail AS $key=>$value){
					if(strlen($value)<4){
						unset($detail[$key]);
					}
				}
				$keywords=implode(" ",$detail);
				$keywords=addslashes($keywords);
				*/
				$keywords=keyword_ck('',$rs[title]);
				$keywords=addslashes($keywords);
				$keywords && $db->query("UPDATE {$_pre}article$erp SET keywords='$keywords' WHERE aid='$rs[id]'");
				$num++;
			}
		}

		if($ck)
		{
			$page++;
		}
		else
		{
			$iii++;
			$page=0;
		}
		echo "请稍候,正在处理当中...<br>&page=$page&iii=$iii<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$admin_path&action=$action&maketype=$maketype&page=$page&iii=$iii&allfid=$allfid&num=$num&beginTime=$beginTime&endTime=$endTime&beginId=$beginId&endId=$endId'>";
		exit;
	}
	jump("提取完毕,共提取了{$num}篇文章","$admin_path&job=get",10);
}



/*栏目列表*/
function list_2allsort($fid,$table='sort'){
	global $db,$_pre,$sortdb,$webdb;
	$query=$db->query("SELECT * FROM {$_pre}$table WHERE fup='$fid' ORDER BY list DESC");
	while( $rs=$db->fetch_array($query) ){
		$icon="";
		for($i=1;$i<$rs['class'];$i++){
			$icon.="&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;";
		}
		if($icon){
			$icon=substr($icon,0,-24);
			$icon.="--";
		}
		if($rs[list_html]){
			$rs[filename]=$rs[list_html];
		}else{
			$rs[filename]=$webdb[list_filename];
		}
		$rs[filename]=preg_replace("/(.*)\/([^\/]+)/is","\\1/",$rs[filename]);
		$fid=$rs[fid];
		eval("\$rs[filename]=\"$rs[filename]\";");
		$rs[config]=unserialize($rs[config]);
		$rs[icon]=$icon;
		$sortdb[]=$rs;

		list_2allsort($rs[fid],$table);
	}
}

?>