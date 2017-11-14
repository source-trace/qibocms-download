<?php
!function_exists('html') && exit('ERR');

ck_power('fu_sort');


if($job=="addsort")
{
	if($fup){
		$rsdb=$db->get_one(" SELECT * FROM {$_pre}fu_sort WHERE fid='$fup' ");
		$typedb[0]=' checked ';
	}else{
		$typedb[1]=' checked ';
	}
	
	$sort_fup=$Guidedb->Select("{$_pre}fu_sort","fup",$fup);
	
	if($only){
		$readonly2=' onbeforeactivate="return false" onfocus="this.blur()" onmouseover="this.setCapture()" onmouseout="this.releaseCapture()" ';
	}

	get_admin_html('addsort',true);
}
elseif($job=="listsort")
{

	$fid=intval($fid);
	
	$sortdb=array();		
	list_allsort2($fid,'fu_sort',1);



	if($fid){
		$rsdb=$db->get_one(" SELECT * FROM {$_pre}fu_sort WHERE fid='$fid' ");
	}
	$sort_fup=$Guidedb->Select("{$_pre}fu_sort","fup",$fid);
	$article_show_step[$webdb[article_show_step]]='red;';

	get_admin_html('sort',true);
}
elseif($action=="addsort")
{
	if(!$name){
		showerr("名称不能为空");
	}
	if($fup){
		$rs=$db->get_one("SELECT * FROM {$_pre}fu_sort WHERE fid='$fup' ");
		if($rs[type]!=1){
			showerr("只有大分类下,才可创建");
		}
		$class=$rs['class'];
		$db->query("UPDATE {$_pre}fu_sort SET sons=sons+1 WHERE fid='$fup'");
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
		$db->query("INSERT INTO `{$_pre}fu_sort` (name,fup,class,type,allowcomment,fmid) VALUES ('$name','$fup','$class','$postdb[type]',1,'$postdb[fmid]') ");
	}
	$fid = $db->insert_id();
	
	mod_sort_class("{$_pre}fu_sort",0,0);		//更新class
	mod_sort_sons("{$_pre}fu_sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("创建成功","$admin_path&job=editsort&fid=$fid&only=$only&mid=$mid");
}

//修改栏目信息
elseif($job=="editsort")
{
	$postdb[fid] && $fid=$postdb[fid];
	$rsdb=$db->get_one("SELECT * FROM {$_pre}fu_sort WHERE fid='$fid'");
	$rsdb[config]=unserialize($rsdb[config]);
	//$sort_fid=$Guidedb->Select("{$_pre}fu_sort","postdb[fid]",$fid,"index.php?lfj=$lfj&job=$job");
	$Guidedb->getfup=1;
	$sort_fup=$Guidedb->Select("{$_pre}fu_sort","postdb[fup]",$rsdb[fup]);

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
	



	if($rsdb[type]==1){
		$getLabelTpl=getLabelTpl('template/default/fu_bigsort_tpl');
	}elseif($rsdb[type]==0){
		$getLabelTpl=getLabelTpl('template/default/list_tpl');
	}
	$rsdb[descrip]=str_replace("<","&lt;",$rsdb[descrip]);
	$rsdb[descrip]=str_replace(">","&gt;",$rsdb[descrip]);

	get_admin_html('editsort',true);
}
elseif($action=="editsort")
{
	if($postdb[type]!=2&&$postdb[tpl]['list']=='template/default/alonepage.htm'){
		$postdb[tpl]['list']='';
	}
	//检查父栏目是否有问题
	check_fup("{$_pre}fu_sort",$postdb[fid],$postdb[fup]);
	$postdb[allowpost]=@implode(",",$postdb[allowpost]);
	$postdb[allowviewtitle]=@implode(",",$postdb[allowviewtitle]);
	$postdb[allowviewcontent]=@implode(",",$postdb[allowviewcontent]);
	$postdb[allowdownload]=@implode(",",$postdb[allowdownload]);
	$postdb[template]=@serialize($postdb[tpl]);
	unset($SQL);

	$rs_fid=$db->get_one("SELECT * FROM {$_pre}fu_sort WHERE fid='$postdb[fid]'");
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
		$rs_fup=$db->get_one("SELECT class FROM {$_pre}fu_sort WHERE fup='$postdb[fup]' ");
		$newclass=$rs_fup['class']+1;
		$db->query("UPDATE {$_pre}fu_sort SET sons=sons+1 WHERE fup='$postdb[fup]' ");
		$db->query("UPDATE {$_pre}fu_sort SET sons=sons-1 WHERE fup='$rs_fid[fup]' ");
		$SQL=",class=$newclass";
	}
	/*缺少对版主有效用户名的检测*/
	$postdb[admin]=str_Replace("，",",",$postdb[admin]);


	
	$postdb[descrip]=En_TruePath($postdb[descrip]);

	$postdb[name]=filtrate($postdb[name]);

	$db->query("UPDATE {$_pre}fu_sort SET fup='$postdb[fup]',name='$postdb[name]',type='$postdb[type]',admin='$postdb[admin]',passwd='$postdb[passwd]',logo='$postdb[logo]',descrip='$postdb[descrip]',style='$postdb[style]',template='$postdb[template]',jumpurl='$postdb[jumpurl]',listorder='$postdb[listorder]',maxperpage='$postdb[maxperpage]',allowcomment='$postdb[allowcomment]',allowpost='$postdb[allowpost]',allowviewtitle='$postdb[allowviewtitle]',allowviewcontent='$postdb[allowviewcontent]',allowdownload='$postdb[allowdownload]',forbidshow='$postdb[forbidshow]',config='$postdb[config]',list_html='$postdb[list_html]',bencandy_html='$postdb[bencandy_html]',fmid='$postdb[fmid]',domain='$postdb[domain]',metakeywords='$postdb[metakeywords]',domain_dir='$postdb[domain_dir]'$SQL WHERE fid='$postdb[fid]' ");

	
	mod_sort_class("{$_pre}fu_sort",0,0);		//更新class
	mod_sort_sons("{$_pre}fu_sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	//get_htmltype();
	jump("修改成功",$FROMURL);
}
elseif($job=="label")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}article WHERE fid='$fid' LIMIT 1");
	get_admin_html('label',true);
}

elseif($action=="delete")
{
	$db->query("DELETE FROM {$_pre}fu_sort WHERE fid='$fid'");
	$db->query("DELETE FROM {$_pre}fu_article WHERE fid='$fid'");
	
	mod_sort_class("{$_pre}fu_sort",0,0);		//更新class
	mod_sort_sons("{$_pre}fu_sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("删除成功","$admin_path&job=listsort");
}
elseif($action=="editlist")
{
	foreach( $order AS $key=>$value){
		$db->query("UPDATE {$_pre}fu_sort SET list='$value' WHERE fid='$key' ");
	}
	mod_sort_class("{$_pre}fu_sort",0,0);		//更新class
	mod_sort_sons("{$_pre}fu_sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("修改成功","$FROMURL",1);
}
/**
*修复网站栏目
**/
elseif($job=='save')
{
	$errsort=sort_error("{$_pre}fu_sort",'fid');
 	$sort_fup=$Guidedb->Select("{$_pre}fu_sort","fup",$rsdb[fup]);

	get_admin_html('save',true);
}

/**
*处理修复出错栏目
**/
elseif($action=='save'){
	if(!$fid){
		showmsg("请选择一个栏目");
	}
	$db->query("UPDATE {$_pre}fu_sort SET fup='$fup' WHERE fid='$fid' ");
	mod_sort_class("{$_pre}fu_sort",0,0);			//更新class
	mod_sort_sons("{$_pre}fu_sort",0);			//更新sons
	/*更新导航缓存*/
	cache_guide();
	jump("本栏目修正成功","$FROMURL",1);
}



/**
*更新导航缓存
**/
function cache_guide(){
	global $Guidedb,$_pre;
	$Guidedb->GuideFidCache("{$_pre}fu_sort",Mpath.'data/fu_guide_fid.php',1);
	All_fid_cache2();
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
	$rs=$db->get_one("SELECT fup,name FROM {$_pre}fu_sort WHERE fid='$fup'");
	if($rs){
		$show=" -> <A HREF='$admin_path&job=$job&only=$only&mid=$mid&fid=$fup'>$rs[name]</A> ";
		$show=list_sort_guide($rs[fup]).$show;
	}
	return $show;
}


/*栏目列表*/
function list_allsort2($fid,$table='sort',$getnum=''){
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
			@extract($db->get_one("SELECT COUNT(*) AS NUM FROM {$_pre}fu_article WHERE fid='$rs[fid]'"));
			$rs[NUM]=intval($NUM);
		}
		$sortdb[]=$rs;

		list_allsort2($rs[fid],$table,$getnum);
	}
}

function All_fid_cache2(){
	global $db,$_pre,$webdb;
	//隐藏栏目
	//$detail=explode(",",$webdb['hideFid']);
	$show="<?php\r\nunset(\$Fid_db);\r\n";
	$query = $db->query("SELECT S.fid,S.fup,S.name FROM {$_pre}fu_sort S ORDER BY S.list DESC");
	while($rs = $db->fetch_array($query)){
		if(in_array($rs[fid],$detail)){
			//continue;
		}
		//$_s=$rs[iftable]?"\$Fid_db[iftable][{$rs[fid]}]='$rs[iftable]';":'';
		$rs[name]=addslashes($rs[name]);
		$show.="\$Fu_Fid_db[{$rs[fup]}][{$rs[fid]}]='$rs[name]';
		\$Fu_Fid_db[name][{$rs[fid]}]='$rs[name]';
		$_s";
	}
	write_file(Mpath."data/fu_all_fid.php",$show.'?>');
}

?>