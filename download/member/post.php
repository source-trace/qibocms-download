<?php
require(dirname(__FILE__)."/"."global.php");
require_once(ROOT_PATH."inc/class.inc.php");
$Guidedb=new Guide_DB;

unset($Article_Module);

$Guidedb->ifpost=1;
$Guidedb->forbidpost=1;

if(!$aid&&!$rid){
	$aid=$id;
}
if($rid)
{
	if(!$aid){
		showerr("aid不存在!");
	}
	//修改主题或修改多页都可
	$rsdb=$db->get_one("SELECT R.*,A.* FROM {$_pre}article A LEFT JOIN {$_pre}reply R ON A.aid=R.aid WHERE R.rid='$rid'");
	$aid=$rsdb[aid];
	$fid=$rsdb[fid];
}
elseif($aid)
{
	//只能是修改主题/续发软件
	$rsdb=$db->get_one("SELECT R.*,A.* FROM {$_pre}article A LEFT JOIN {$_pre}reply R ON A.aid=R.aid WHERE A.aid='$aid' ORDER BY R.rid ASC LIMIT 1");
	isset($_POST[fid]) || $fid=$rsdb[fid];
}


if($fid||$step){
	$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$fid'");
	!$fidDB && showerr("栏目有误");
	$fidDB[type]!=0 && showerr("你只能选择子栏目发表内容!");
}

$job=='postnew' && !$mid && $mid=$fidDB[fmid];

if($lfjid&&@in_array($lfjid,explode(',',$fidDB[admin])))
{
	$web_admin=1;
}
if($fidDB&&!$web_admin&&!in_array($groupdb[gid],explode(',',$fidDB[allowpost])))
{
	showerr("你所在用户组无权在本栏目“{$fidDB[name]}”有任何操作");
}

if(!$lfjid&&$job!='postnew')
{
	showerr("游客无权操作");
}

$atc_power=0;
if($lfjid){
	if($web_admin||$lfjuid==$rsdb[uid]){
		$atc_power=1;
	}
}
$uid=isset($rsdb[uid])?$rsdb[uid]:$lfjuid;

if($job=='endHTML')
{
	$htmlurldb=m_html_url();
	//首页生成静态
	@unlink(Mpath."index.htm.bak");
	rename(Mpath."index.htm",Mpath."index.htm.bak");
	refreshto("myarticle.php?job=myarticle","<CENTER>[<A HREF='?job=postnew&fid=$fid'>发表新主题</A>] [<A HREF='?job=post_more&aid=$aid'>续发本主题</A>] [<A HREF='myarticle.php?job=myarticle&fid=$fid'>返回软件列表</A>] [<A HREF='{$htmlurldb[showurl]}' target=_blank>查看软件</A>] [<A HREF='?job=manage&aid=$aid'>修改软件</A>]</CENTER><div style='display:none;'><iframe src='$Mdomain/job.php?job=article_html&fid=$fid&aid=$aid' width=0 height=0></iframe></div>",60);
}
elseif($job=='manage')
{
	if(!$atc_power)showerr("你没权限");
	if($rsdb[pages]<2){
		header("location:post.php?job=edit&aid=$aid");exit;
	}
	if($step==2){
		asort($orderDB);
		$i=0;
		foreach( $orderDB AS $key=>$value){
			$i++;
			$db->query("UPDATE {$_pre}reply SET orderid=$i WHERE aid='$aid' AND rid='$key'");
		}
		refreshto("$FROMURL","排序成功",1);
	}
	if($rsdb[pages]>1){
		$MSG="修改内容";
		$i=0;
		$query = $db->query("SELECT * FROM {$_pre}reply WHERE aid='$aid' ORDER BY topic DESC,orderid ASC");
		while($rs = $db->fetch_array($query)){
			if(!$rs[subhead]){
				$rs[subhead]=$rsdb[title];
			}
			$rs[postdate]='';
			if($rs[postdate]){
				$rs[postdate]=date("Y-m-d H:i:s",$rs[postdate]);
			}
			$rs[i]=++$i;
			$listdb[]=$rs;
		}
		require(ROOT_PATH."member/head.php");
		require(dirname(__FILE__)."/template/post_set.htm");
		require(ROOT_PATH."member/foot.php");
		exit;
	}
}
elseif($action=="delete")
{
	if(!$atc_power)showerr("你没权限");
	//删除软件的函数
	delete_m_article($rsdb[aid],$rsdb[rid]);
	refreshto("myarticle.php?job=myarticle","删除成功",1);
}

if($job=='edit'||$job=='post_more'||$job=='edit_more'){
	if(!$atc_power)showerr("你没权限");
}

//对发表前与发表前做处理
require_once(Mpath."inc/check.postarticle.php");

if($job=='postnew')
{

	if($step=='post')
	{
		post_new();

		//生成静态
		make_article_html("$Murl/member/post.php?job=endHTML&aid=$aid");

		$mid && $mid<106 && $none='none';

		refreshto("?job=postnew&fid=$fid","<CENTER>[<A HREF='?job=postnew&fid=$fid'>继续发表新主题</A>] <span style='display:$none;'>[<A HREF='?job=post_more&fid=$fid&aid=$aid'>续发本主题</A>]</span> [<A HREF='myarticle.php?job=myarticle&fid=$fid'>返回主题列表</A>] [<A HREF='$Mdomain/bencandy.php?fid=$fid&aid=$aid' target=_blank>查看主题</A>] [<A HREF='?job=edit&aid=$aid'>点击修改</A>]</CENTER>",60);
	}
	$MSG='新发表内容';

	$select_fid=$Guidedb->SelectIn("{$_pre}sort",0,$fid);

	require(ROOT_PATH."member/head.php");
	require(dirname(__FILE__)."/template/post.htm");
	require(ROOT_PATH."member/foot.php");
}
elseif($job=='edit')
{
	if($rsdb[yz]&&!$web_admin&&$groupdb[EditPassPower]==2){
		showerr("已审核的软件,你不能再修改");
	}
	if($step=='post')
	{
		post_edit();

		//生成静态
		make_article_html("$Murl/member/post.php?job=endHTML&aid=$aid");

		$mid && $mid<106 && $none='none';

		refreshto("$FROMURL","<CENTER>[<A HREF='?job=postnew&fid=$fid'>发表新主题</A>] <span style='display:$none;'>[<A HREF='?job=post_more&aid=$aid'>续发本主题</A>]</span> [<A HREF='myarticle.php?job=myarticle&fid=$fid'>返回主题列表</A>] [<A HREF='$Mdomain/bencandy.php?fid=$fid&aid=$aid' target=_blank>查看主题</A>] [<A HREF='?job=edit&aid=$aid'>继续修改</A>]</CENTER>",60);
	}
	$MSG='修改内容';

	$select_fid=$Guidedb->SelectIn("{$_pre}sort",0,$fid);

	require(ROOT_PATH."member/head.php");
	require(dirname(__FILE__)."/template/post.htm");
	require(ROOT_PATH."member/foot.php");
}
elseif($job=='post_more')
{
	if($step=='post')
	{
		//添加内容
		query_reply($aid,'','');

		//生成静态
		make_article_html("$Murl/member/post.php?job=endHTML&aid=$aid");

		refreshto("$FROMURL","<CENTER>[<A HREF='?job=postnew&fid=$fid'>发表新主题</A>] [<A HREF='?job=post_more&aid=$aid'>续发本主题</A>] [<A HREF='myarticle.php?job=myarticle&fid=$fid'>返回软件列表</A>] [<A HREF='$Murl/bencandy.php?fid=$fid&aid=$aid' target=_blank>查看软件</A>] [<A HREF='?job=manage&aid=$aid'>修改软件</A>]</CENTER>",60);
	}
	$MSG='续发软件';
	unset($rsdb[content],$rsdb[subhead]);

	require(ROOT_PATH."member/head.php");
	require(dirname(__FILE__)."/template/post.htm");
	require(ROOT_PATH."member/foot.php");
}
elseif($job=='edit_more')
{
	if($step=='post')
	{
		//修改内容
		query_reply($aid,$rid,'edit');

		//生成静态
		make_article_html("$Murl/member/post.php?job=endHTML&aid=$aid");

		refreshto("$FROMURL","<CENTER>[<A HREF='?job=postnew&fid=$fid'>发表新主题</A>] [<A HREF='?job=post_more&aid=$aid'>续发本主题</A>] [<A HREF='myarticle.php?job=myarticle&fid=$fid'>返回软件列表</A>] [<A HREF='$Mdomain/bencandy.php?fid=$fid&aid=$aid' target=_blank>查看软件</A>] [<A HREF='?job=edit_more&aid=$aid&rid=$rid'>修改软件</A>]</CENTER>",60);
	}
	$MSG='修改软件';
	require(ROOT_PATH."member/head.php");
	require(dirname(__FILE__)."/template/post.htm");
	require(ROOT_PATH."member/foot.php");
}



/**
*用户组选择
**/
function group_box($name="postdb[group]",$ckdb=array()){
	global $db,$pre;
	$query=$db->query("SELECT * FROM {$pre}group ORDER BY gid ASC");
	while($rs=$db->fetch_array($query))
	{
		$checked=in_array($rs[gid],$ckdb)?"checked":"";
		$show.="<input type='checkbox' name='{$name}[]' value='{$rs[gid]}' $checked>&nbsp;{$rs[grouptitle]}&nbsp;&nbsp;";
	}
	return $show;
}

/**
*模板选择
**/
function select_template($cname,$type=1,$ck=''){
	global $db,$pre;
	$show="<select name='$cname' $reto><option value='' style='color:red;'>请选择模板</option>";
	if($type==7||$type==8){
		//$show.="<option value='template/default/none.htm'>我要屏蔽</option>";
	}
	$query=$db->query("SELECT * FROM {$pre}template WHERE type='$type'");
	while($rs=$db->fetch_array($query))
	{
		if(!$rs[name]){
			$rs[name]="模板$rs[id]";
		}
		$rs[filepath]==$ck?$ckk='selected':$ckk='';
		$show.="  <option value='$rs[filepath]' $ckk>$rs[name]</option>";
	}
	 return $show." </select>";
}

/**
*风格选择
**/
function select_style($name='stylekey',$ck='',$url='',$select=''){
	if($url) 
	$reto=" onchange=\"window.location=('{$url}&{$name}='+this.options[this.selectedIndex].value+'')\"";
	$show="<select name='$name' $reto><option value=''>选择风格</option>";
	$filedir=opendir(ROOT_PATH."data/style/");
	while($file=readdir($filedir)){
		if(ereg("\.php$",$file)){
			include ROOT_PATH."data/style/$file";
			$ck==$styledb[keywords]?$ckk='selected':$ckk='';	//指定的某个
			/*只选定一个
			if($select){
				if($style_web!=$select){
					continue;
				}
			}
			*/
			$show.="<option value='$styledb[keywords]' $ckk style='color=blue'>$styledb[name]</option>";
		}
	}
	return $show." </select>";   
}

?>