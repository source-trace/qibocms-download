<?php
require(dirname(__FILE__)."/global.php");

//删除软件
if($do=='del'){
	$rs=$db->get_one("SELECT * FROM {$_pre}article WHERE aid='$id' AND uid='$lfjuid' ");
	if(!$rs){
		showerr("软件不存在");
	}
	delete_m_article($id,$rid);
	//静态页处理
	make_article_html("$FROMURL",'del',$rs);
	refreshto("$FROMURL","删除成功",1);
}

if($page<1){
	$page=1;
}
$rows=20;
$min=($page-1)*$rows;

$_sql="";
if($fid>0){
	$_sql=" AND fid='$fid' ";
	$erp=$Fid_db[iftable][$fid];
}elseif($mid>0){
	$_sql=" AND mid='$mid' ";
	$erp=$article_moduleDB[$mid][iftable]?$article_moduleDB[$mid][iftable]:'';
}elseif($mid==-1){
	$_sql=" AND mid='0' ";
}
if($only){
	$_sql.=" AND mid='$mid' ";
}



$SQL="WHERE uid=$lfjuid AND yz!=2 $_sql ORDER BY aid DESC LIMIT $min,$rows";
$which='*';
$showpage=getpage("{$_pre}article","WHERE uid=$lfjuid AND yz!=2 $_sql","?job=$job&fid=$fid&mid=$mid&only=$only",$rows);
$listdb=list_article($SQL,$which,50,$erp);
$listdb || $listdb=array();
foreach( $listdb AS $key=>$rs){
	if($rs[pages]<1){
		$rs[pages]=1;
		$db->query("UPDATE {$_pre}article SET pages=1 WHERE aid='$rs[aid]'");
	}
	$rs[state]="";
	if($rs[yz]==2){
		$rs[state]="作废";
	}elseif($rs[yz]==1){
		$rs[state]="<A style='color:red;'>已审</A>";
	}elseif(!$rs[yz]){
		$rs[state]="<A style='color:blue;'>待审</A>";
	}
	if($rs[levels]){
		$rs[levels]="<A style='color:red;'>已推荐</A>";
	}else{
		$rs[levels]="未推荐";
	}
	
	$listdb[$key]=$rs;
}
$_MSG='我的稿件';
require(ROOT_PATH."member/head.php");
require(dirname(__FILE__)."/"."template/myarticle.htm");
require(ROOT_PATH."member/foot.php");
?>