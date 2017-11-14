<?php
!function_exists('html') && exit('ERR');

ck_power('spsort');

if($job=="listsort")
{
	$fid=intval($fid);
	
	$sortdb=array();
	list_m_allsort($fid,$table='spsort');

	$sort_fup=$Guidedb->Select("{$_pre}spsort","fup",$fid);

	get_admin_html('sort',true);
}
elseif($action=="addsort")
{
	if($fup){
		$rs=$db->get_one("SELECT name,class FROM {$_pre}spsort WHERE fid='$fup' ");
		$class=$rs['class'];
		$db->query("UPDATE {$_pre}spsort SET sons=sons+1 WHERE fid='$fup'");
		$type=0;
	}else{
		
		$class=0;
	}
	$type=1;	/*分类标志*/
	$class++;
	$db->query("INSERT INTO {$_pre}spsort (name,fup,class,type,allowcomment) VALUES ('$name','$fup','$class','$type',1) ");
	@extract($db->get_one("SELECT fid FROM {$_pre}spsort ORDER BY fid DESC LIMIT 0,1"));
	
	mod_sort_class("{$_pre}spsort",0,0);		//更新class
	mod_sort_sons("{$_pre}spsort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("创建成功","$admin_path&job=editsort&fid=$fid");
}

//修改栏目信息
elseif($job=="editsort")
{
	$postdb[fid] && $fid=$postdb[fid];
	$rsdb=$db->get_one("SELECT * FROM {$_pre}spsort WHERE fid='$fid'");
	$rsdb[config]=unserialize($rsdb[config]);
	$sort_fid=$Guidedb->Select("{$_pre}spsort","postdb[fid]",$fid,"index.php?lfj=$lfj&job=$job");
	$sort_fup=$Guidedb->Select("{$_pre}spsort","postdb[fup]",$rsdb[fup]);
	$style_select=select_style('postdb[style]',$rsdb[style]);
	$group_post=group_box("postdb[allowpost]",explode(",",$rsdb[allowpost]));
	$group_viewtitle=group_box("postdb[allowviewtitle]",explode(",",$rsdb[allowviewtitle]));
	$group_viewcontent=group_box("postdb[allowviewcontent]",explode(",",$rsdb[allowviewcontent]));
	$group_download=group_box("postdb[allowdownload]",explode(",",$rsdb[allowdownload]));
	$typedb[$rsdb[type]]=" checked ";

	$forbidshow[intval($rsdb[forbidshow])]=" checked ";
	$allowcomment[intval($rsdb[allowcomment])]=" checked ";

	$tpl=unserialize($rsdb[template]);
	$tpl_head=select_template("",7,$tpl[head]);
	$tpl_head=str_replace("<select","<select onChange='get_obj(\"tpl_head\").value=this.options[this.selectedIndex].value;'",$tpl_head);

	$tpl_foot=select_template("",8,$tpl[foot]);
	$tpl_foot=str_replace("<select","<select onChange='get_obj(\"tpl_foot\").value=this.options[this.selectedIndex].value;'",$tpl_foot);

	$tpl_list=select_template("",10,$tpl['list']);
	$tpl_list=str_replace("<select","<select onChange='get_obj(\"tpl_list\").value=this.options[this.selectedIndex].value;'",$tpl_list);

	$tpl_bencandy=select_template("",11,$tpl[bencandy]);
	$tpl_bencandy=str_replace("<select","<select onChange='get_obj(\"tpl_bencandy\").value=this.options[this.selectedIndex].value;'",$tpl_bencandy);

	$listorder[$rsdb[listorder]]=" selected ";


	$sonListorder[$rsdb[config][sonListorder]]=" selected ";


	get_admin_html('editsort',true);
}
elseif($action=="editsort")
{
	//检查父栏目是否有问题
	check_fup("{$_pre}spsort",$postdb[fid],$postdb[fup]);
	$postdb[allowpost]=@implode(",",$postdb[allowpost]);
	$postdb[allowviewtitle]=@implode(",",$postdb[allowviewtitle]);
	$postdb[allowviewcontent]=@implode(",",$postdb[allowviewcontent]);
	$postdb[allowdownload]=@implode(",",$postdb[allowdownload]);
	$postdb[template]=@serialize($postdb[tpl]);
	unset($SQL);

	$rs_fid=$db->get_one("SELECT * FROM {$_pre}spsort WHERE fid='$postdb[fid]'");
	//这样处理是其他地方也修改过这个值.比如标签里
	$rs_fid[config]=unserialize($rs_fid[config]);
	$rs_fid[config][sonTitleRow]=$sonTitleRow;
	$rs_fid[config][sonTitleLeng]=$sonTitleLeng;
	$rs_fid[config][cachetime]=$cachetime;
	$rs_fid[config][sonListorder]=$sonListorder;
	$postdb[config]=addslashes( serialize($rs_fid[config]) );

	if($rs_fid[fup]!=$postdb[fup])
	{
		$rs_fup=$db->get_one("SELECT class FROM {$_pre}spsort WHERE fup='$postdb[fup]' ");
		$newclass=$rs_fup['class']+1;
		$db->query("UPDATE {$_pre}spsort SET sons=sons+1 WHERE fup='$postdb[fup]' ");
		$db->query("UPDATE {$_pre}spsort SET sons=sons-1 WHERE fup='$rs_fid[fup]' ");
		$SQL=",class=$newclass";
	}
	
	$db->query("UPDATE {$_pre}spsort SET fup='$postdb[fup]',name='$postdb[name]',type='$postdb[type]',admin='$postdb[admin]',passwd='$postdb[passwd]',logo='$postdb[logo]',descrip='$postdb[descrip]',style='$postdb[style]',template='$postdb[template]',jumpurl='$postdb[jumpurl]',listorder='$postdb[listorder]',maxperpage='$postdb[maxperpage]',allowcomment='$postdb[allowcomment]',allowpost='$postdb[allowpost]',allowviewtitle='$postdb[allowviewtitle]',allowviewcontent='$postdb[allowviewcontent]',allowdownload='$postdb[allowdownload]',forbidshow='$postdb[forbidshow]',metakeywords='$postdb[metakeywords]',config='$postdb[config]',list_html='$postdb[list_html]',bencandy_html='$postdb[bencandy_html]'$SQL WHERE fid='$postdb[fid]' ");

	mod_sort_class("{$_pre}spsort",0,0);		//更新class
	mod_sort_sons("{$_pre}spsort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	Make_htmltype();
	jump("修改成功","$FROMURL");
}
elseif($action=="delete")
{
	$db->query(" DELETE FROM `{$_pre}spsort` WHERE fid='$fid' ");
	
	mod_sort_class("{$_pre}spsort",0,0);		//更新class
	mod_sort_sons("{$_pre}spsort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("删除成功",$FROMURL);
}
elseif($action=="editlist")
{
	foreach( $order AS $key=>$value){
		$db->query("UPDATE {$_pre}spsort SET list='$value' WHERE fid='$key' ");
	}
	mod_sort_class("{$_pre}spsort",0,0);		//更新class
	mod_sort_sons("{$_pre}spsort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("修改成功","$FROMURL",1);
}
/**
*修复网站栏目
**/
elseif($job=='save')
{
	$errsort=sort_error("{$_pre}spsort",'fid');
 	$sort_fup=$Guidedb->Select("{$_pre}spsort","fup",$rsdb[fup]);

	get_admin_html('save',true);
}

/**
*处理修复出错栏目
**/
elseif($action=='save'){
	if(!$fid){
		showmsg("请选择一个栏目");
	}
	$db->query("UPDATE {$_pre}spsort SET fid='$fup' WHERE fid='$fid' ");
	mod_sort_class("{$_pre}spsort",0,0);			//更新class
	mod_sort_sons("{$_pre}spsort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("本栏目修正成功","$FROMURL",1);
}

/**
*更新导航缓存
**/
function cache_guide(){
	global $Guidedb,$_pre;
	//$Guidedb->FidSonCache("{$_pre}spsort","../data/special_guide_fid.php",1);
	$Guidedb->GuideFidCache("{$_pre}spsort",Mpath."data/special_guide_fid.php",1);
}

/*栏目列表*/
function list_m_allsort($fid,$table='sort',$getnum=''){
	global $db,$_pre,$sortdb,$Fid_db;
	$query=$db->query("SELECT * FROM {$_pre}$table where fup='$fid' ORDER BY list DESC");
	while( $rs=$db->fetch_array($query) ){
		$icon="";
		for($i=1;$i<$rs['class'];$i++){
			$icon.="&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;";
		}
		if($icon){
			$icon=substr($icon,0,-24);
			$icon.="--";
		}
		$rs[config]=unserialize($rs[config]);
		$rs[icon]=$icon;
		$NUM=0;
		if($getnum&&!$rs[type]){
			@extract($db->get_one("SELECT COUNT(*) AS NUM FROM {$_pre}article WHERE fid='$rs[fid]'"));
			$rs[NUM]=intval($NUM);
		}
		$sortdb[]=$rs;

		list_m_allsort($rs[fid],$table,$getnum);
	}
}
?>