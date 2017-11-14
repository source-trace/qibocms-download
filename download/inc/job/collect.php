<?php
!function_exists('html') && exit('ERR');
if(!$lfjid){
	showerr("请先登录");
}elseif(!$id){
	showerr("ID不存在");
}
if($db->get_one("SELECT * FROM `{$_pre}collection` WHERE `aid`='$id' AND uid='$lfjuid'")){
	showerr("请不要重复收藏本文",1); 
}
if(!$web_admin){
	if($groupdb[CollectArticleNum]<1){
		$groupdb[CollectArticleNum]=50;
	}
	$rs=$db->get_one("SELECT COUNT(*) AS NUM FROM `{$_pre}collection` WHERE uid='$lfjuid'");
	if($rs[NUM]>=$groupdb[CollectArticleNum]){
		showerr("你所在用户组最多只能收藏{$groupdb[CollectArticleNum]}篇软件",1);
	}
}
$db->query("INSERT INTO `{$_pre}collection` (  `aid` , `uid` , `posttime`) VALUES ('$id','$lfjuid','$timestamp')");

refreshto($FROMURL,"收藏成功!",1);
?>