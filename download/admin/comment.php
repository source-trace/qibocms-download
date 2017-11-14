<?php
!function_exists('html') && exit('ERR');

ck_power('comment');

if($job=="list")
{
	!$page&&$page=1;
	$rows=20;
	$min=($page-1)*$rows;
	$SQL=" WHERE 1 ";
	if($aid){
		$SQL.=" AND aid='$aid' ";
	}
	if($type=='noyz'){
		$SQL.=" AND yz='0' ";
	}
	$showpage=getpage("{$_pre}comment","$SQL","$admin_path&job=$job&aid=$aid","$rows");
	$query=$db->query(" SELECT * FROM {$_pre}comment $SQL ORDER BY cid DESC LIMIT $min,$rows ");
	while($rs=$db->fetch_array($query)){
		$rs[content]=filtrate(get_word($rs[content],60));
		$rs[posttime]=date("Y-m-d",$rs[posttime]);
		$rs[username]=$rs[username]?$rs[username]:$rs[ip];
		if($rs[yz]==1){
			$rs[yz]="<A HREF='$admin_path&action=list&jobs=unyz&ciddb[{$rs[cid]}]=$rs[cid]' style='color:blue;' title='已通过审核,点击取消审核'><img src='../member/images/check_yes.gif'></A>";
		}elseif($rs[yz]==0){
			$rs[yz]="<A HREF='$admin_path&action=list&jobs=yz&ciddb[{$rs[cid]}]=$rs[cid]' style='color:red;' title='还没通过审核,点击通过审核'><img src='../member/images/check_no.gif'></A>";
		}
		if($rs[ifcom]==1){
			$rs[com]="<A HREF='$admin_path&action=list&jobs=uncom&ciddb[{$rs[cid]}]=$rs[cid]' style='color:red;' title='已推荐为精华,点击可取消精华'><img src='../images/default/good_ico.gif'></A>";
		}elseif($rs[ifcom]==0){
			$rs[com]="<A HREF='$admin_path&action=list&jobs=com&ciddb[{$rs[cid]}]=$rs[cid]' title='非精华,点击可推荐为精华'><img src='../member/images/nogood_ico.gif'></A>";
		}
		$listdb[]=$rs;
	}

	get_admin_html('list');
}
elseif($action=="list")
{
	if(!$ciddb){
		showmsg("请选择一条评论");
	}
	if($jobs=="delete")
	{
		foreach($ciddb AS $key=>$rs){
			$rs=$db->get_one("SELECT aid FROM {$_pre}comment WHERE cid='$key' ");
			$erp=get_id_table($rs[aid]);
			$db->query("UPDATE {$_pre}article SET comments=comments-1 WHERE aid='$rs[aid]'");
			$db->query("DELETE FROM {$_pre}comment WHERE cid='$key' ");
			$ck++;
		}
	}
	elseif($jobs=="yz"||$jobs=="unyz")
	{
		if($jobs=="yz"){
			$yz=1;
		}else{
			$yz=0;
		}
		foreach($ciddb AS $key=>$rs){
			$db->query(" UPDATE {$_pre}comment SET yz='$yz' WHERE cid='$key' ");
			$ck++;
		}
	}
	elseif($jobs=="com"||$jobs=="uncom")
	{
		if($jobs=="com"){
			$yz=1;
		}else{
			$yz=0;
		}
		foreach($ciddb AS $key=>$rs){
			$db->query(" UPDATE {$_pre}comment SET ifcom='$yz' WHERE cid='$key' ");
			$ck++;
		}
	}
	$retime=$ck==1?0:1;
	jump("操作成功","$FROMURL",$retime);
}
elseif($job=="show")
{
	$rsdb=$db->get_one("SELECT * FROM {$_pre}comment WHERE cid='$cid' ");
	$rsdb[content]=str_replace("\r\n","<br>",$rsdb[content]);

	get_admin_html('show');
}

?>