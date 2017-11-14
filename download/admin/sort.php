<?php
!function_exists('html') && exit('ERR');

ck_power('sort_listsort');

//取消固定分类固定模型功能
if($webdb[SortUseOtherModule]){
	unset($only);
}

if($job=="addsort")
{
	if($fup){
		$rsdb=$db->get_one(" SELECT * FROM {$_pre}sort WHERE fid='$fup' ");
		$typedb[0]=' checked ';
	}else{
		$typedb[1]=' checked ';
	}
	
	$sort_fup=$Guidedb->Select("{$_pre}sort","fup",$fup);
	
	if($only){
		$readonly2=' onbeforeactivate="return false" onfocus="this.blur()" onmouseover="this.setCapture()" onmouseout="this.releaseCapture()" ';
	}


	get_admin_html('addsort',true);
}
elseif($job=="listsort")
{
	$fid=intval($fid);	
	$sortdb=array();
	list_m_allsort($fid,'sort',1);
	$sort_fup=$Guidedb->Select("{$_pre}sort","fup",$fid);
	get_admin_html('listsort',true);
}
elseif($job=='showsort')
{
	$webdbs[article_show_step]=$step;
	write_config_cache($webdbs);
	jump("修改成功",$FROMURL,0);
}
elseif($action=="addsort")
{
	if(!$name){
		showerr("名称不能为空");
	}
	if($fup){
		$rs=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fup' ");
		if($rs[type]!=1){
			showerr("只有大分类下,才可创建");
		}
		$class=$rs['class'];
		$db->query("UPDATE {$_pre}sort SET sons=sons+1 WHERE fid='$fup'");
		//$type=0;
	}else{
		//$type=1;	/*分类标志*/
		$class=0;
	}
	$class++;
	$detail=explode("\r\n",$name);
	foreach( $detail AS $key=>$name){
		if(!$name){
			continue;
		}
		$name=filtrate($name);
		$db->query("INSERT INTO `{$_pre}sort` (name,fup,class,type,allowcomment,fmid) VALUES ('$name','$fup','$class','$postdb[type]',1,'$postdb[fmid]') ");
	}
	@extract($db->get_one("SELECT fid FROM {$_pre}sort ORDER BY fid DESC LIMIT 0,1"));
	
	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("创建成功","$admin_path&job=editsort&fid=$fid&only=$only&mid=$mid");
}

//修改栏目信息
elseif($job=="editsort")
{
	$postdb[fid] && $fid=$postdb[fid];
	$rsdb=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
	$rsdb[config]=unserialize($rsdb[config]);
	$Guidedb->getfup=1;
	$sort_fup=$Guidedb->Select("{$_pre}sort","postdb[fup]",$rsdb[fup]);

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

	$tpl_type=$rsdb[type]==2?9:2;
	$tpl_list=select_template("",$tpl_type,$tpl['list']);
	$tpl_list=str_replace("<select","<select onChange='get_obj(\"tpl_list\").value=this.options[this.selectedIndex].value;'",$tpl_list);

	$tpl_bencandy=select_template("",3,$tpl[bencandy]);
	$tpl_bencandy=str_replace("<select","<select onChange='get_obj(\"tpl_bencandy\").value=this.options[this.selectedIndex].value;'",$tpl_bencandy);

	$listorder[$rsdb[listorder]]=" selected ";


	$sonListorder[$rsdb[config][sonListorder]]=" selected ";
	$ListShowType[$rsdb[config][ListShowType]]=" selected ";
	$ListShowBigType[$rsdb[config][ListShowBigType]]=" selected ";

	$rsdb[descrip]=En_TruePath($rsdb[descrip],0);

	require_once(ROOT_PATH."inc/pinyin.php");
	$htmldirname=change2pinyin($rsdb[name],1);
	
	if($only){
		$readonly2=' onbeforeactivate="return false" onfocus="this.blur()" onmouseover="this.setCapture()" onmouseout="this.releaseCapture()" ';
	}

	if($rsdb[type]==1){
		$getLabelTpl=getLabelTpl('template/default/bigsort_tpl');
	}elseif($rsdb[type]==0){
		$getLabelTpl=getLabelTpl('template/default/list_tpl');
	}

	$rsdb[descrip]=str_replace("<","&lt;",$rsdb[descrip]);
	$rsdb[descrip]=str_replace(">","&gt;",$rsdb[descrip]);

	get_admin_html('editsort',true);
}
elseif($action=="editsort")
{
	//检查父栏目是否有问题
	check_fup("{$_pre}sort",$postdb[fid],$postdb[fup]);
	$postdb[allowpost]=@implode(",",$postdb[allowpost]);
	$postdb[allowviewtitle]=@implode(",",$postdb[allowviewtitle]);
	$postdb[allowviewcontent]=@implode(",",$postdb[allowviewcontent]);
	$postdb[allowdownload]=@implode(",",$postdb[allowdownload]);
	$postdb[template]=@serialize($postdb[tpl]);
	unset($SQL);

	$rs_fid=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$postdb[fid]'");
	//这样处理是其他地方也修改过这个值.比如标签里
	$rs_fid[config]=unserialize($rs_fid[config]);
	$rs_fid[config][sonTitleRow]=$sonTitleRow;
	$rs_fid[config][sonTitleLeng]=$sonTitleLeng;
	$rs_fid[config][cachetime]=$cachetime;
	$rs_fid[config][sonListorder]=$sonListorder;
	$rs_fid[config][listContentNum]=$listContentNum;
	$rs_fid[config][ListShowType]=$ListShowType;
	$rs_fid[config][ListShowBigType]=$ListShowBigType;
	$postdb[config]=addslashes( serialize($rs_fid[config]) );

	if($rs_fid[fup]!=$postdb[fup])
	{
		$rs_fup=$db->get_one("SELECT class FROM {$_pre}sort WHERE fup='$postdb[fup]' ");
		$newclass=$rs_fup['class']+1;
		$db->query("UPDATE {$_pre}sort SET sons=sons+1 WHERE fup='$postdb[fup]' ");
		$db->query("UPDATE {$_pre}sort SET sons=sons-1 WHERE fup='$rs_fid[fup]' ");
		$SQL=",class=$newclass";
	}
	/*缺少对版主有效用户名的检测*/
	$postdb[admin]=str_Replace("，",",",$postdb[admin]);
	
	$postdb[descrip]=En_TruePath($postdb[descrip]);

	$postdb[name]=filtrate($postdb[name]);

	$db->query("UPDATE {$_pre}sort SET fup='$postdb[fup]',name='$postdb[name]',type='$postdb[type]',admin='$postdb[admin]',passwd='$postdb[passwd]',logo='$postdb[logo]',descrip='$postdb[descrip]',style='$postdb[style]',template='$postdb[template]',jumpurl='$postdb[jumpurl]',listorder='$postdb[listorder]',maxperpage='$postdb[maxperpage]',allowcomment='$postdb[allowcomment]',allowpost='$postdb[allowpost]',allowviewtitle='$postdb[allowviewtitle]',allowviewcontent='$postdb[allowviewcontent]',allowdownload='$postdb[allowdownload]',forbidshow='$postdb[forbidshow]',config='$postdb[config]',list_html='$postdb[list_html]',bencandy_html='$postdb[bencandy_html]',fmid='$postdb[fmid]',domain='$postdb[domain]',metakeywords='$postdb[metakeywords]',domain_dir='$postdb[domain_dir]'$SQL WHERE fid='$postdb[fid]' ");

	//修改栏目名称之后,软件的也要跟着修改
	if($rs_fid[name]!=$postdb[name])
	{
		$db->query(" UPDATE {$_pre}article SET fname='$postdb[name]' WHERE fid='$postdb[fid]' ");
	}
	
	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	Make_htmltype();
	jump("修改成功","$FROMURL");
}
elseif($job=='batch_edit')
{
	if(!$fiddb){
		showmsg("请选择一个栏目");
	}
	$sort_fup=$Guidedb->Select("{$_pre}sort","postdb[fup]",$rsdb[fup]);
	$style_select=select_style('postdb[style]',$rsdb[style]);
	$group_post=group_box("postdb[allowpost]",explode(",",$rsdb[allowpost]));
	$group_viewtitle=group_box("postdb[allowviewtitle]",explode(",",$rsdb[allowviewtitle]));
	$group_viewcontent=group_box("postdb[allowviewcontent]",explode(",",$rsdb[allowviewcontent]));
	$group_download=group_box("postdb[allowdownload]",explode(",",$rsdb[allowdownload]));
	$typedb[$rsdb[type]]=" checked ";

	$forbidshow[intval($rsdb[forbidshow])]=" checked ";

	$tpl=unserialize($rsdb[template]);
	//$tpl_head=select_template("postdb[tpl][head]",7,$tpl[head]);
	//$tpl_foot=select_template("postdb[tpl][foot]",8,$tpl[foot]);
	//$tpl_list=select_template("postdb[tpl][list]",2,$tpl['list']);
	//$tpl_bencandy=select_template("postdb[tpl][bencandy]",3,$tpl[bencandy]);
	$tpl_head=select_template("",7,$tpl[head]);
	$tpl_head=str_replace("<select","<select onChange='get_obj(\"tpl_head\").value=this.options[this.selectedIndex].value;'",$tpl_head);

	$tpl_foot=select_template("",8,$tpl[foot]);
	$tpl_foot=str_replace("<select","<select onChange='get_obj(\"tpl_foot\").value=this.options[this.selectedIndex].value;'",$tpl_foot);

	$tpl_list=select_template("",2,$tpl['list']);
	$tpl_list=str_replace("<select","<select onChange='get_obj(\"tpl_list\").value=this.options[this.selectedIndex].value;'",$tpl_list);

	$tpl_bencandy=select_template("",3,$tpl[bencandy]);
	$tpl_bencandy=str_replace("<select","<select onChange='get_obj(\"tpl_bencandy\").value=this.options[this.selectedIndex].value;'",$tpl_bencandy);

	$listorder[$rsdb[listorder]]=" selected ";


	get_admin_html('batch_edit',true);
}
elseif($action=='batch_edit')
{
	if(!$ifchang&&!$db_index_showtitle&&!$db_sonTitleRow&&!$db_sonTitleLeng&&!$db_cachetime){
		showmsg("请选择要修改哪个属性");
	}
	$postdb[allowpost]=@implode(",",$postdb[allowpost]);
	$postdb[allowviewtitle]=@implode(",",$postdb[allowviewtitle]);
	$postdb[allowviewcontent]=@implode(",",$postdb[allowviewcontent]);
	$postdb[allowdownload]=@implode(",",$postdb[allowdownload]);
	$postdb[template]=@serialize($postdb[tpl]);

	/*缺少对版主有效用户名的检测*/
	$postdb[admin]=str_Replace("，",",",$postdb[admin]);
	
	foreach( $fiddb AS $fid=>$name){
		unset($SQL);
		$postdb[fid]=$fid;
		//检查父栏目是否有问题
		$ifchang[fup] && check_fup("{$_pre}sort",$postdb[fid],$postdb[fup]);
		$ifchang[fup] && $rs_fid=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$postdb[fid]'");
		if($ifchang[fup] && $rs_fid[fup]!=$postdb[fup])
		{
			$rs_fup=$db->get_one("SELECT class FROM {$_pre}sort WHERE fup='$postdb[fup]' ");
			$newclass=$rs_fup['class']+1;
			$db->query("UPDATE {$_pre}sort SET sons=sons+1 WHERE fup='$postdb[fup]' ");
			$db->query("UPDATE {$_pre}sort SET sons=sons-1 WHERE fup='$rs_fid[fup]' ");
			$SQL=",class=$newclass";
		}


		if($db_sonTitleRow||$db_sonTitleLeng||$db_cachetime){
			$rs_fid=$db->get_one("SELECT config FROM {$_pre}sort WHERE fid='$postdb[fid]'");

			//这样处理是其他地方也修改过这个值.比如标签里
			$rs_fid[config]=unserialize($rs_fid[config]);
			$db_sonTitleRow && $rs_fid[config][sonTitleRow]=$sonTitleRow;
			$db_sonTitleLeng && $rs_fid[config][sonTitleLeng]=$sonTitleLeng;
			$db_cachetime && $rs_fid[config][cachetime]=$cachetime;
			$postdb[config]=addslashes( serialize($rs_fid[config]) );
			$ifchang[config]=1;
		}
		
		foreach( $ifchang AS $key=>$value){
			$SQL.=",$key='{$postdb[$key]}'";
		}
		$SQL && $db->query("UPDATE {$_pre}sort SET fid='$postdb[fid]'$SQL WHERE fid='$postdb[fid]' ");		
	}

	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("修改成功","$admin_path&job=listsort");
}
elseif($job=="label")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}article WHERE fid='$fid' LIMIT 1");

	get_admin_html('label',true);
}
//修改栏目频道
elseif($job=='edit_channel')
{
	$rs_fid=$db->get_one("SELECT config FROM {$_pre}sort WHERE fid='$fid'");
	@extract(unserialize($rs_fid[config]));

	get_admin_html('edit_channel',true);
}
elseif($action=='edit_channel')
{
	$rs_fid=$db->get_one("SELECT config FROM {$_pre}sort WHERE fid='$fid'");
	$rs_fid[config]=unserialize($rs_fid[config]);

	if( $channelDir && !eregi("^([a-z0-9_/]+)$",$channelDir) ){
		showmsg("频道目录字符只能是:a-z0-9_/");
	}

	//当用户重命名后
	if( $channelDir && ($channelDir!=$rs_fid[config][channelDir]) ){
		if(is_dir(ROOT_PATH.$channelDir)){
			showmsg("$channelDir,此目录已经存在了.请换一个吧");
		}
		makepath(ROOT_PATH.$channelDir);

		$paths='';
		$detail=explode("/",$channelDir);
		foreach( $detail AS $key=>$value){
			if($value){
				$paths.='../';
			}
		}
		write_file(ROOT_PATH."$channelDir/index.php","<?php
\$fid='$fid';
if(is_file('index.htm')){header('location:index.htm');exit;}
require_once(\"list.php\");
		");

		write_file(ROOT_PATH."$channelDir/list.php","<?php
require_once(\"global.php\");
require_once(THIS_PATH.\"list.php\");
		");

		write_file(ROOT_PATH."$channelDir/bencandy.php","<?php
require_once(\"global.php\");
require_once(THIS_PATH.\"bencandy.php\");
		");

		write_file(ROOT_PATH."$channelDir/global.php","<?php
defined(\"THIS_PATH\") || define(\"THIS_PATH\",\"$paths\");
require_once(THIS_PATH.\"global.php\");	
		");
		
	}

	$rs_fid[config][channelDir]=$channelDir;
	$rs_fid[config][channelDomain]=$channelDomain;
	$config=addslashes( serialize($rs_fid[config]) );
	$db->query("UPDATE {$_pre}sort SET config='$config' WHERE fid='$fid'");
	jump("[修改成功] [<A HREF='$webdb[www_url]/$channelDir' target=_blank>浏览此频道</A>]","$FROMURL",20);
}
elseif($action=="delete")
{

	$db->query(" DELETE FROM {$_pre}sort WHERE fid='$fid' ");
	$db->query(" DELETE FROM {$_pre}article WHERE fid='$fid' ");
	$db->query(" DELETE FROM {$_pre}reply WHERE fid='$fid' ");
	$db->query(" DELETE FROM {$_pre}comment WHERE fid='$fid' ");
	
	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("删除成功","$admin_path&job=listsort&only=$only&mid=$mid");
}
elseif($action=="editlist")
{
	foreach( $order AS $key=>$value){
		$db->query("UPDATE {$_pre}sort SET list='$value' WHERE fid='$key' ");
	}
	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("修改成功","$FROMURL",1);
}
/**
*修复网站栏目
**/
elseif($job=='save')
{
	$errsort=sort_error("{$_pre}sort",'fid');
 	$sort_fup=$Guidedb->Select("{$_pre}sort","fup",$rsdb[fup]);

	get_admin_html('save',true);
}

/**
*处理修复出错栏目
**/
elseif($action=='save'){
	if(!$fid){
		showmsg("请选择一个栏目");
	}
	$db->query("UPDATE {$_pre}sort SET fup='$fup' WHERE fid='$fid' ");
	mod_sort_class("{$_pre}sort",0,0);			//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("本栏目修正成功","$FROMURL",1);
}

/**
*合拼网站栏目
**/
elseif($job=='toget')
{
	$selectname_1=$Guidedb->Select("{$_pre}sort",'ofid');
	$selectname_2=$Guidedb->Select("{$_pre}sort",'nfid');

	get_admin_html('toget',true);
}

/**
*合拼网站栏目
**/
elseif($action=='toget'){
	if(!$ofid){
		showmsg("请选择一个源栏目");
	}elseif(!$nfid){
		showmsg("请选择一个目标栏目");
	}
	if($ofid==$nfid){
		showmsg("出错了，栏目本身不能合并为自己,请选择合并到其他栏目去吧");
	}

	$db->query("UPDATE {$_pre}article SET fid='$nfid',fname='{$Fid_db[name][$nfid]}' WHERE fid='$ofid'");
	$db->query("UPDATE {$_pre}reply SET fid='$nfid' WHERE fid='$ofid'");
	$db->query("UPDATE {$_pre}comment SET fid='$nfid' WHERE fid='$ofid'");
	$db->query("DELETE FROM {$_pre}sort WHERE fid='$ofid'");
	mod_sort_class("{$_pre}sort",0,0);		//更新class
	mod_sort_sons("{$_pre}sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("操作完毕","$FROMURL",1);
}

//更新标签处理
elseif($action=='updatelabel')
{
	if($label_type=='list')
	{
		if(!$fid)
		{
			showmsg("请选择一个栏目");
		}
		
		if($step==2)
		{
			$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
			$config=unserialize($fidDB[config]);
			$config[label_list]=$fup;
			$db->query("UPDATE {$pre}sort SET config='".addslashes(serialize($config))."' WHERE fid='$fid' ");
			header("location:$Murl/list.php?fid=$fid&jobs=show");
			exit;
		}
		else
		{
			$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
			$fidDB[config]=unserialize($fidDB[config]);

			$sort_fup=$Guidedb->Select("{$_pre}sort","fup",$fidDB[config][label_list]);

			get_admin_html('choose_label',true);
		}
	}
	if($label_type=='bencandy')
	{
		if($step==2)
		{
			if(!$aid){
				showmsg("ID不存在,请先在本栏目发表一篇软件,再设置标签");
			}
			
			//处理用户自定义ID后.不一定是原来的栏目.
			@extract($db->get_one("SELECT fid FROM {$_pre}article WHERE aid='$aid'"));

			$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
			$config=unserialize($fidDB[config]);
			$config[label_bencandy]=$fup;
			$db->query("UPDATE {$_pre}sort SET config='".addslashes(serialize($config))."' WHERE fid='$fid' ");
			header("location:$Murl/bencandy.php?fid=$fid&aid=$aid&jobs=show");
			exit;
		}
		else
		{
			@extract($db->get_one("SELECT aid FROM {$_pre}article WHERE fid='$fid' ORDER BY aid DESC LIMIT 1"));

			$fidDB=$db->get_one("SELECT * FROM `{$_pre}sort` WHERE fid='$fid'");
			$fidDB[config]=unserialize($fidDB[config]);

			$sort_fup=$Guidedb->Select("{$_pre}sort","fup",$fidDB[config][label_bencandy]);

			get_admin_html('choose_label',true);
		}
	}
}



/**
*更新导航缓存
**/
function cache_guide(){
	global $Guidedb,$_pre;
	$Guidedb->GuideFidCache("{$_pre}sort",Mpath.'data/guide_fid.php',1);
	All_m_fid_cache();
}


//获取标签模板
function getLabelTpl($path='template/default/list_tpl'){
	global $webdb,$rsdb;
	$pictitledb[]=$f1="默认模板";
	if($rsdb[fmid]&&is_file(ROOT_PATH."$path/mod_{$rsdb[fmid]}.htm")){
		$picurldb[]=$f2="$webdb[www_url]/$path/mod_{$rsdb[fmid]}.jpg";
	}else{
		$picurldb[]=$f2="$webdb[www_url]/$path/0.jpg";
	}	
	$select="<option value='$f2'>$f1</option>";
	$dir=opendir(ROOT_PATH.$path);
	while($file=readdir($dir)){
		if(eregi("\.htm$",$file)&&!eregi("^mod_([0-9]+)\.htm$",$file)&&$file!='0.htm'){
			$pictitledb[]=str_replace(".htm","",$file);
			$picurldb[]=$f2="$webdb[www_url]/$path/".str_replace(".htm",".jpg",$file);
			$select.="<option value='$f2'>".str_replace(".htm","",$file)."</option>";
		}
	}

	$picurldb=implode('","',$picurldb);
	$pictitledb=implode('","',$pictitledb);
	$myurl=str_replace(array(".","/"),array("\.","\/"),$webdb[www_url]);
$show=<<<EOT
<table  border="0" cellspacing="0" cellpadding="0">
<tr><td style="padding-left:20px;padding-bottom:10px;"><select id="selectTyls" onChange="selectTpl(this)">
    $select<option value='-2' style='color:red;'>新建一个</option>
  </select> [<a href="#LOOK" onclick="show_MorePic(-1)">上一个</a>] 
      【<span id="upfile_PicNum">1/2</span>】[<a href="#LOOK" onclick="show_MorePic(1)">下一个</a>]  
       


	
</td></tr>
  <tr>
    <td height="30" style="padding-left:20px;"><div id="showpicdiv" class="showpicdiv" style="width:10px;height:3px;"><A style="border:2px solid #fff;display:block;" HREF="javascript::" id="showPicID" target="_blank"><img border="0" onerror="this.src=replace_img(this.src);" onload="this.height='200'" id="upfile_PicUrl"></A></div></td>

    

  </tr>
</table>

	
<SCRIPT LANGUAGE="JavaScript">
var ImgLinks= new Array("$picurldb");
var ImgTitle= new Array("$pictitledb");
function replace_img(url){
	//如果图片不存在,就去官方获取图片,如果还是不存在,就使用默认的无图片.
	reg=/http:\/\/down\.qibosoft\.com/g
	if(reg.test(url)){
		return "$webdb[www_url]/images/default/nopic.jpg";
	}
	re   = /$myurl/g;
	links = url.replace(re, "http://down.qibosoft.com");
	return links;
}
</SCRIPT>
EOT;
	return $show;
}


function list_sort_guide($fup){
	global $db,$_pre,$mid,$only,$job,$admin_path;
	$rs=$db->get_one("SELECT fup,name FROM {$_pre}sort WHERE fid='$fup'");
	if($rs){
		$show=" -> <A HREF='$admin_path&job=$job&only=$only&mid=$mid&fid=$fup'>$rs[name]</A> ";
		$show=list_sort_guide($rs[fup]).$show;
	}
	return $show;
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


function All_m_fid_cache(){
	global $db,$_pre;
	$show="<?php\r\nunset(\$Fid_db);\r\n";
	$query = $db->query("SELECT * FROM {$_pre}sort ORDER BY list DESC");
	while($rs = $db->fetch_array($query)){
		$rs[name]=addslashes($rs[name]);
		$show.="\$Fid_db[{$rs[fup]}][{$rs[fid]}]='$rs[name]';
		\$Fid_db[name][{$rs[fid]}]='$rs[name]';
		";
	}
	write_file(Mpath."data/all_fid.php",$show.'?>');
}

?>