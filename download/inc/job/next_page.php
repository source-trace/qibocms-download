<?php
!function_exists('html') && exit('ERR');

$rs=$db->get_one("SELECT aid,fid FROM {$_pre}article WHERE fid=$fid AND aid<$aid ORDER BY aid DESC LIMIT 1");

if($rs[aid]){
	header("location:$Mdomain/bencandy.php?fid=$fid&aid=$rs[aid]");exit;
}else{
	header("location:$Mdomain/list.php?fid=$fid");exit;
	//showerr("已到尽头了");
}
?>