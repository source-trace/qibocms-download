<?php
!function_exists('html') && exit('ERR');

ck_power('special');

//所有专题列表
if($job=="list")
{
	$rows=30;
	!$page && $page=1;
	$min=($page-1)*$rows;
	$rsdb=$db->get_one("SELECT * FROM {$_pre}spsort WHERE fid='$fid' ");
	$aids=explode(",",$rsdb[aids]);
	$aids=implode("\r\n",$aids);
	if($fid){
		$SQL=" WHERE SP.fid='$fid' ";
	}else{
		$SQL=' WHERE 1 ';
	}
	if($yz=='yes'){
		$SQL.=' AND SP.yz=1 ';
	}elseif($yz=='no'){
		$SQL.=' AND SP.yz=0 ';
	}
	if($com=='yes'){
		$SQL.=' AND SP.levels=1 ';
	}elseif($com=='no'){
		$SQL.=' AND SP.levels=0 ';
	}
	$showpage=getpage("{$_pre}special SP LEFT JOIN {$_pre}spsort S ON SP.fid=S.fid","$SQL","$admin_path&job=$job&fid=$fid&yz=$yz&com=$com",$rows);
	$query = $db->query("SELECT SP.*,S.name FROM {$_pre}special SP LEFT JOIN {$_pre}spsort S ON SP.fid=S.fid $SQL ORDER BY list DESC LIMIT $min,$rows");
	while($rs = $db->fetch_array($query)){
		$rs[tidnum]=$rs[tids]?count(explode(',',$rs[tids])):0;
		$rs[aidnum]=$rs[aids]?count(explode(',',$rs[aids])):0;
		$rs[posttime]=date("Y-m-d",$rs[posttime]);
		if($rs[levels]){
			$rs[com]="<a href='$admin_path&job=com&levels=0&id=$rs[id]' style='color:red;'><img alt='已推荐为精华,点击可取消精华' src='../images/default/good_ico.gif'></a>";
		}else{
			$rs[com]="<a href='$admin_path&job=com&levels=1&id=$rs[id]' style=''><img alt='非精华,点击可推荐为精华' src='../member/images/nogood_ico.gif'></a>";
		}
		if($rs[yz]){
			$rs[_yz]="<a href='$admin_path&job=yz&yz=0&id=$rs[id]' style='color:red;'><img alt='已审核,点击可取消审核' src='../member/images/check_yes.gif'></a>";
		}else{
			$rs[_yz]="<a href='$admin_path&job=yz&yz=1&id=$rs[id]' style=''><img alt='未审核,点击可通过审核' src='../member/images/check_no.gif'></a>";
		}
		$listdb[]=$rs;
	}
	$sort_fid=$Guidedb->Select("{$_pre}spsort","fid",$fid);

	if($onlyshow=='style'){
		get_admin_html('list_style');
	}elseif($onlyshow=='label'){
		get_admin_html('list_label');
	}else{
		get_admin_html('list');
	}
}
//新增专题
elseif($action=="addsp")
{
	if(!$title){
		showmsg("专题名称不能为空");
	}
	if(!$fid){
		showmsg("请选择一个分类");
	}
	$db->query("INSERT INTO `{$_pre}special` ( `fid` , `title` , `picurl` , `content` , `aids` , `uid` , `username` , `posttime` , `list` , `yz`) VALUES ('$fid','$title','$picurl','$content','$aids','$userdb[uid]','$userdb[username]','$timestamp','$timestamp','1')");
	$id = $db->insert_id();
	jump("创建成功","$admin_path&job=editsp&id=$id");
}
//修改专题设置
elseif($job=="editsp")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}special WHERE id='$id'");
	$rsdb[config]=unserialize($rsdb[config]);
	$sort_fid=$Guidedb->Select("{$_pre}spsort","postdb[fid]",$rsdb[fid],"");
	$style_select=select_style('postdb[style]',$rsdb[style]);
	$group_post=group_box("postdb[allowpost]",explode(",",$rsdb[allowpost]));

	$tpl=unserialize($rsdb[template]);
	$tpl_head=select_template("",7,$tpl[head]);
	$tpl_head=str_replace("<select","<select onChange='get_obj(\"tpl_head\").value=this.options[this.selectedIndex].value;'",$tpl_head);

	$tpl_foot=select_template("",8,$tpl[foot]);
	$tpl_foot=str_replace("<select","<select onChange='get_obj(\"tpl_foot\").value=this.options[this.selectedIndex].value;'",$tpl_foot);

	$tpl_list=select_template("",10,$tpl['list']);
	$tpl_list=str_replace("<select","<select onChange='get_obj(\"tpl_list\").value=this.options[this.selectedIndex].value;'",$tpl_list);

	$tpl_bencandy=select_template("",11,$tpl[bencandy]);
	$tpl_bencandy=str_replace("<select","<select onChange='get_obj(\"tpl_bencandy\").value=this.options[this.selectedIndex].value;'",$tpl_bencandy);

	$allowpost=group_box("postdb[allowpost]",explode(",",$rsdb[allowpost]));

	$ifbase[$rsdb[ifbase]]=' checked ';

	get_admin_html('editsp');
}
//修改专题设置
elseif($action=="editsp")
{
	if(!$postdb[fid]){
		showerr("请选择一个分类");
	}
	if(!$postdb[title]){
		showerr("名称不能为空");
	}
	
	//有的专题不使用系统的头与底部
	if($postdb[tpl][bencandy]){
		$rs=$db->get_one("SELECT * FROM {$pre}template WHERE filepath='{$postdb[tpl][bencandy]}'");
		if(strstr($rs[name],'白板')){
			$postdb[tpl][head]=$postdb[tpl][foot]='template/default/none.htm';
		}
	}
	
	$postdb[template]=@serialize($postdb[tpl]);
	$postdb[allowpost]=@implode(",",$postdb[allowpost]);

	$db->query("UPDATE `{$_pre}special` SET fid='$postdb[fid]',title='$postdb[title]',picurl='$postdb[picurl]',content='$postdb[content]',style='$postdb[style]',template='$postdb[template]',list='$postdb[list]',banner='$postdb[banner]',allowpost='$postdb[allowpost]',ifbase='$postdb[ifbase]',htmlname='$postdb[htmlname]',keywords='$postdb[keywords]' WHERE id='$id' ");
	Make_htmltype();
	jump("修改成功!","$FROMURL");
}
//删除专题
elseif($action=="delete")
{
	if($id){
		$idDB[]=$id;
	}
	if(!$idDB){
		showmsg("请选择一个专题");
	}
	$query = $db->query("SELECT * FROM `{$_pre}special` WHERE id IN (".implode(",",$idDB).")");
	while($rs = $db->fetch_array($query)){
		delete_attachment($rs[uid], tempdir($rs[picurl]) );
		delete_attachment($rs[uid], tempdir($rs[banner]) );
		$fidDB=$db->get_one("SELECT * FROM {$_pre}spsort WHERE fid='$rs[fid]'");
		$array=get_SPhtml_url($fidDB,$rs[id],$rs[posttime]);
		//$array[showurl]=str_replace("$webdb[www_url]/",ROOT_PATH,$array[showurl]);
		//$array[listurl]=str_replace("$webdb[www_url]/",ROOT_PATH,$array[listurl]);
		//@unlink($array[showurl]);
		//@unlink($array[listurl]);
		$db->query(" DELETE FROM `{$_pre}special` WHERE id='$rs[id]' ");
		$db->query(" DELETE FROM `{$pre}label` WHERE ch='0' AND pagetype='11' AND module='0' AND fid='$rs[id]' AND chtype='0' ");
	}

	jump("删除成功",$FROMURL);
}
//推荐专题
elseif($job=="com"){
	$db->query("UPDATE `{$_pre}special` SET levels='$levels',levelstime='$timestamp' WHERE id='$id' ");
	jump("处理成功",$FROMURL,0);
}
//审核专题
elseif($job=="yz"){
	$db->query("UPDATE `{$_pre}special` SET yz='$yz' WHERE id='$id' ");
	jump("处理成功",$FROMURL,0);
}
//专题的论坛贴子管理
elseif($job=="edit_bbs")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}special WHERE id='$id'");
	get_admin_html('edit_bbs');
}
//论坛贴子
elseif($job=="show_BBSiframe"){

	$rsdb=$db->get_one("SELECT * FROM {$_pre}special WHERE id='$id'");
	if(!$rsdb){
		showerr("资料不存在",1);
	}

	//专题内的贴子排序
	if($act=="order")
	{
		unset($array);
		foreach( $listdb AS $aid=>$list){
			$list=$list*1000000+$aid;
			$array[$list]=$aid;
		}
		ksort($array);
		$rsdb[tids]=implode(",",$array);
		$db->query("UPDATE {$_pre}special SET tids='$rsdb[tids]' WHERE id='$id'");
	}
	
	//添加贴子到专题
	if($act=="add"&&$aid)
	{
		unset($_detail);
		$detail=explode(",",$rsdb[tids]);
		if(!in_array($aid,$detail)){
			if($detail[0]==''){unset($detail[0]);}
			$_detail[a]=$aid;
			$rsdb[tids]=$string=implode(",",array_merge($_detail,$detail));
			$db->query("UPDATE {$_pre}special SET tids='$string' WHERE id='$id'");
		}
	}

	//移除专题里的贴子
	if($act=="del"&&$aid)
	{
		$detail=explode(",",$rsdb[tids]);
		foreach( $detail AS $key=>$value){
			if($value==$aid){
				unset($detail[$key]);
			}
		}
		$rsdb[tids]=$string=implode(",",$detail);
		$db->query("UPDATE {$_pre}special SET tids='$string' WHERE id='$id'");
	}
	
	//$type=='all'初始化列出专题里的贴子,$type=="list_atc"删除与添加时列出专题里的贴子
	if($type=="list_atc"||$type=='all')
	{
		unset($_listdb,$show);
		$detail=explode(",",$rsdb[tids]);
		$string=0;
		foreach( $detail AS $key=>$value){
			if($value>0){
				$string.=",$value";
			}
		}
		if(ereg("^pwbbs",$webdb[passport_type])){
			$query = $db->query("SELECT * FROM {$TB_pre}threads WHERE tid IN ($string)");
			while($rs = $db->fetch_array($query)){
				$rs[subject]="<a href='$webdb[passport_url]/read.php?tid=$rs[tid]' target=_blank>$rs[subject]</a>";
				$_listdb[$rs[tid]]=$rs;
			}
		}
		$aidsdb=explode(",",$rsdb[tids]);
		$NUM=0;
		foreach($aidsdb AS $key=>$value){
			$NUM++;
			if($_listdb[$value]){
				$show.="<tr align='center' class='trA' onmouseover=\"this.className='trB'\" onmouseout=\"this.className='trA'\"> 
                <td width='5%' style='border-bottom:1px dotted #ccc;'>{$_listdb[$value][tid]}</td>
                <td width='74%' style='border-bottom:1px dotted #ccc;' align='left'>{$_listdb[$value][subject]}</td>
				<td width='10%' style='border-bottom:1px dotted #ccc;'><input type='text' name='listdb[{$value}]' size='5' value='{$NUM}0'></td>
                <td width='11%' style='border-bottom:1px dotted #ccc;'><A HREF='index.php?lfj=$lfj&job=show_BBSiframe&id=$id&type=list_atc&act=del&aid={$_listdb[$value][tid]}' target='spiframe'>移除</A></td>
              </tr>";
			}
		}
		$show="<table width='100%' border='0' cellspacing='1' cellpadding='3'>
              <tr align='center'> 
                <td width='5%' bgcolor='#eeeeee'>ID</td>
                <td width='74%' bgcolor='#eeeeee'>标 题</td>
				  <td width='10%' bgcolor='#eeeeee'>排序值</td>
                <td width='11%' bgcolor='#eeeeee'>移除 </td>
				  $show
              </tr>
			  
            </table>";
		$show=str_replace("\r","",$show);
		$show=str_replace("\n","",$show);
		$show=str_replace('"','\"',$show);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('sp_atclist').innerHTML=\"$show\";
		//-->
		</SCRIPT>";
	}

	//
	if($type=='myatc'||$type=='all')
	{
		$detail=explode(",",$rsdb[tids]);
		$show='';
		if($page<1){
			$page=1;
		}
		$rows=15;
		$min=($page-1)*$rows;
		if($keywords){//搜索时
			$SQL=" BINARY subject LIKE '%$keywords%' ";
		}elseif($ismy){
			$SQL=" authorid='$lfjuid' ";
		}else{
			$SQL=' 1 ';
		}
		
		if($fid>0){
			$SQL.=" AND fid='$fid' ";
		}
		$showpage=getpage("{$TB_pre}threads","WHERE $SQL","",$rows);
		$query = $db->query("SELECT * FROM {$TB_pre}threads WHERE $SQL ORDER BY tid DESC LIMIT $min,$rows");
		if(ereg("^pwbbs",$webdb[passport_type])){			
			while($rs = $db->fetch_array($query)){
				$add="&nbsp;";
				if(!in_array($rs[tid],$detail)){
					$add="<A HREF='$admin_path&job=show_BBSiframe&id=$id&type=list_atc&act=add&aid={$rs[tid]}' target='spiframe' onclick=closedo(this)>添加</A>";
				}
				$show.="<tr align='center' class='trA' onmouseover=\"this.className='trB'\" onmouseout=\"this.className='trA'\"> 
					<td width='5%' style='border-bottom:1px dotted #ccc;'>{$rs[tid]}</td>
					<td width='84%' style='border-bottom:1px dotted #ccc;' align='left'><a href='$webdb[passport_url]/read.php?tid=$rs[tid]' target=_blank>$rs[subject]</a></td>
					<td width='11%' style='border-bottom:1px dotted #ccc;'>&nbsp;$add</td>
				  </tr>";
			}
		}elseif(ereg("^dzbbs",$webdb[passport_type])){
			while($rs = $db->fetch_array($query)){
				$add="&nbsp;";
				if(!in_array($rs[tid],$detail)){
					$add="<A HREF='$admin_path&job=show_BBSiframe&id=$id&type=list_atc&act=add&aid={$rs[tid]}' target='spiframe' onclick=closedo(this)>添加</A>";
				}
				$show.="<tr align='center' class='trA' onmouseover=\"this.className='trB'\" onmouseout=\"this.className='trA'\"> 
					<td width='5%' style='border-bottom:1px dotted #ccc;'>{$rs[tid]}</td>
					<td width='84%' style='border-bottom:1px dotted #ccc;' align='left'><a href='$webdb[passport_url]/viewthread.php?tid=$rs[tid]' target=_blank>$rs[subject]</a></td>
					<td width='11%' style='border-bottom:1px dotted #ccc;'>&nbsp;$add</td>
				  </tr>";
			}
		}
		
		$show="<table width='100%' border='0' cellspacing='1' cellpadding='3'>
              <tr align='center'> 
                <td width='5%' bgcolor='#eeeeee'>ID</td>
                <td width='84%' bgcolor='#eeeeee'>标 题</td>
                <td width='11%' bgcolor='#eeeeee'>添加</td>
				  $show
              </tr>
			  
            </table>";
		$show=str_replace("\r","",$show);
		$show=str_replace("\n","",$show);
		$show=str_replace('"','\"',$show);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc').innerHTML=\"$show\";
		//-->
		</SCRIPT>";		
		$showpage=str_replace("\r","",$showpage);
		$showpage=str_replace("\n","",$showpage);
		$showpage=str_replace('"',"",$showpage);
		$showpage=str_replace("href=&page=","target='spiframe' href=$admin_path&job=show_BBSiframe&id=$id&fid=$fid&type=myatc&ismy=$ismy&keywords=".urlencode($keywords)."&page=",$showpage);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc_page').innerHTML=\"$showpage\";
		//-->
		</SCRIPT>";

		//论坛栏目
		$sort_fid=$Guidedb->Select_PW("fid",$fid);

		$sort_fid=str_replace("\r","",$sort_fid);
		$sort_fid=str_replace("\n","",$sort_fid);
		$sort_fid=str_replace('"',"",$sort_fid);
		$ismy?$color_me='red':$color_all='red';
		$sort_fid=str_replace("<select name='fid'","[<A target='spiframe'  HREF='$admin_path&job=show_BBSiframe&id=$id&type=myatc&fid=$fid&ismy=1' style='color:$color_me;'>我的贴子</A>] [<A target='spiframe'  HREF='$admin_path&job=show_BBSiframe&id=$id&type=myatc&fid=$fid' style='color:$color_all;'>所有贴子</A>] <select onChange='fid_jumpMenu(this)'",$sort_fid);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc_fid').innerHTML=\"$sort_fid\";
		//-->
		</SCRIPT>";
	}	
}
//专题里的软件管理
elseif($job=="edit_atc")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}special WHERE id='$id'");
	get_admin_html('edit_atc');
}

//专题里的软件管理
elseif($job=="show_iframe"){

	$rsdb=$db->get_one("SELECT * FROM {$_pre}special WHERE id='$id'");
	if(!$rsdb){
		showerr("资料不存在",1);
	}
	if($act=="order")
	{
		unset($array);
		foreach( $listdb AS $aid=>$list){
			$list=$list*1000000+$aid;
			$array[$list]=$aid;
		}
		ksort($array);
		$rsdb[aids]=implode(",",$array);
		$db->query("UPDATE {$_pre}special SET aids='$rsdb[aids]' WHERE id='$id'");
	}
	if($act=="add"&&$aid)
	{
		unset($_detail);
		$detail=explode(",",$rsdb[aids]);
		if(!in_array($aid,$detail)){
			if($detail[0]==''){unset($detail[0]);}
			$_detail[a]=$aid;
			$rsdb[aids]=$string=implode(",",array_merge($_detail,$detail));
			$db->query("UPDATE {$_pre}special SET aids='$string' WHERE id='$id'");
		}
	}
	if($act=="del"&&$aid)
	{
		$detail=explode(",",$rsdb[aids]);
		foreach( $detail AS $key=>$value){
			if($value==$aid){
				unset($detail[$key]);
			}
		}
		$rsdb[aids]=$string=implode(",",$detail);
		$db->query("UPDATE {$_pre}special SET aids='$string' WHERE id='$id'");
	}
	
	//列出本专题下的软件,$type=='all',初始化时.$type=="list_atc",增加软件或移除软件时
	if($type=="list_atc"||$type=='all')
	{
		unset($_listdb,$show);
		$detail=explode(",",$rsdb[aids]);
		$string=0;
		foreach( $detail AS $key=>$value){
			if($value>0){
				$string.=",$value";
			}
		}
		$query = $db->query("SELECT * FROM {$_pre}article WHERE aid IN ($string)");
		while($rs = $db->fetch_array($query)){
			$rs[subject]="<a href='$Murl/bencandy.php?fid=$rs[fid]&id=$rs[aid]' target='_blank'>$rs[title]</a>";
			$_listdb[$rs[aid]]=$rs;
		}
		$aidsdb=explode(",",$rsdb[aids]);
		$NUM=0;
		foreach($aidsdb AS $key=>$value){
			$NUM++;
			if($_listdb[$value]){
				$show.="<tr align='center' class='trA' onmouseover=\"this.className='trB'\" onmouseout=\"this.className='trA'\"> 
                <td width='5%' style='border-bottom:1px dotted #ccc;'>{$_listdb[$value][aid]}</td>
                <td width='74%' style='border-bottom:1px dotted #ccc;' align='left'>{$_listdb[$value][subject]}</td>
					<td width='10%' style='border-bottom:1px dotted #ccc;'><input type='text' name='listdb[{$value}]' size='5' value='{$NUM}0'></td>
                <td width='11%' style='border-bottom:1px dotted #ccc;'><A HREF='$admin_path&job=show_iframe&id=$id&type=list_atc&act=del&aid={$_listdb[$value][aid]}' target='spiframe'>移除</A></td>
              </tr>";
			}
		}
		$show="<table width='100%' border='0' cellspacing='1' cellpadding='3'>
              <tr align='center'> 
                <td width='5%' bgcolor='#eeeeee'>ID</td>
                <td width='74%' bgcolor='#eeeeee'>标 题</td>
				  <td width='10%' bgcolor='#eeeeee'>排序值</td>
                <td width='11%' bgcolor='#eeeeee'>移除 </td>
				  $show
              </tr>
			  
            </table>";
		$show=str_replace("\r","",$show);
		$show=str_replace("\n","",$show);
		$show=str_replace('"','\"',$show);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('sp_atclist').innerHTML=\"$show\";
		//-->
		</SCRIPT>";
	}

	//$type=='all',初始化时,$type=='myatc'筛选时
	if($type=='myatc'||$type=='all')
	{
		$SQL='';
		$detail=explode(",",$rsdb[aids]);
		$show='';
		if($page<1){
			$page=1;
		}
		$rows=15;
		$min=($page-1)*$rows;
		
		if($search_type&&$keywords){//搜索时
			if($search_type=='title'){
				$SQL=" BINARY title LIKE '%$keywords%' ";
			}elseif($search_type=='keyword'){
				$SQL=" BINARY keywords LIKE '%$keywords%' ";
			}
		}elseif($ismy){//只列出我的软件
			$SQL=" uid='$lfjuid' ";
		}else{
			$SQL=' 1 ';
		}
		
		if($fid>0){
			$SQL.=" AND fid='$fid' ";
		}
		$showpage=getpage("{$_pre}article","WHERE $SQL","",$rows);
		$query = $db->query("SELECT * FROM {$_pre}article WHERE $SQL ORDER BY list DESC LIMIT $min,$rows");
		while($rs = $db->fetch_array($query)){
			$add="&nbsp;";
			if(!in_array($rs[aid],$detail)){
				$add="<A HREF='$admin_path&job=show_iframe&id=$id&type=list_atc&act=add&aid={$rs[aid]}' target='spiframe' onclick=closedo(this)>添加</A>";
			}
			$show.="<tr align='center' class='trA' onmouseover=\"this.className='trB'\" onmouseout=\"this.className='trA'\"> 
                <td width='5%' style='border-bottom:1px dotted #ccc;'>{$rs[aid]}</td>
                <td width='84%' style='border-bottom:1px dotted #ccc;' align='left'><A HREF='$Murl/bencandy.php?fid=$rs[fid]&id=$rs[aid]' target=_blank>{$rs[title]}</A></td>
                <td width='11%' style='border-bottom:1px dotted #ccc;'>&nbsp;$add</td>
              </tr>";
		}
		$show="<table width='100%' border='0' cellspacing='1' cellpadding='3'>
              <tr align='center'> 
                <td width='5%' bgcolor='#eeeeee'>ID</td>
                <td width='84%' bgcolor='#eeeeee'>标 题</td>
                <td width='11%' bgcolor='#eeeeee'>添加</td>
				  $show
              </tr>
			  
            </table>";
		$show=str_replace("\r","",$show);
		$show=str_replace("\n","",$show);
		$show=str_replace('"','\"',$show);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc').innerHTML=\"$show\";
		//-->
		</SCRIPT>";		
		$showpage=str_replace("\r","",$showpage);
		$showpage=str_replace("\n","",$showpage);
		$showpage=str_replace('"',"",$showpage);
		$showpage=str_replace("href=&page=","target=spiframe href=$admin_path&job=show_iframe&id=$id&fid=$fid&type=myatc&ismy=$ismy&search_type=$search_type&keywords=".urlencode($keywords)."&page=",$showpage);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc_page').innerHTML=\"$showpage\";
		//-->
		</SCRIPT>";

		if($webdb[sortNUM]<500)$sort_fid=$Guidedb->Select("{$_pre}sort","fid",$fid,"");
		$sort_fid=str_replace("\r","",$sort_fid);
		$sort_fid=str_replace("\n","",$sort_fid);
		$sort_fid=str_replace('"',"",$sort_fid);
		$ismy?$color_me='red':$color_all='red';

		$sort_fid=str_replace("<select name='fid'","[<A target='spiframe'  HREF='$admin_path&job=show_iframe&id=$id&type=myatc&fid=$fid&ismy=1' style='color:$color_me;'>我的软件</A>] [<A target='spiframe'  HREF='$admin_path&job=show_iframe&id=$id&type=myatc&fid=$fid' style='color:$color_all;'>所有软件</A>]<select onChange='fid_jumpMenu(this)'",$sort_fid);
		echo "<SCRIPT LANGUAGE='JavaScript'>
		<!--
		parent.document.getElementById('show_myatc_fid').innerHTML=\"$sort_fid\";
		//-->
		</SCRIPT>";
	}
}
?>