<?php
!function_exists('html') && exit('ERR');
if(!$id){
	showerr("ID不存在");
}

$rsdb=$db->get_one("SELECT A.*,B.* FROM {$_pre}article A LEFT JOIN `{$_pre}reply` B ON A.aid=B.aid WHERE A.aid='$id'");
$fidDB=$db->get_one("SELECT * FROM {$_pre}sort WHERE fid='$rsdb[fid]'");
$fid=$rsdb[fid];

if($fidDB[admin]&&$lfjid){
	$detail=explode(",",$fidDB[admin]);
	if( in_array($lfjid,$detail) ){
		$web_admin=1;
	}
}

if($fidDB[allowdownload]&&!$web_admin&&$lfjuid!==$rsdb[uid]){
	$detail=explode(",",$fidDB[allowdownload]);
	if( !in_array($groupdb['gid'],$detail) ){
		showerr("你所在的用户组在本栏目无权限下载");
	}
}
if($rsdb[allowdown]&&!$web_admin&&$lfjuid!==$rsdb[uid]){
	$detail=explode(",",$rsdb[allowdown]);
	if( !in_array($groupdb['gid'],$detail) ){
		showerr("你所在的用户组本文设置无权限下载");
	}
}

$detail=explode("\n",$rsdb[softurl]);
unset($rsdb[softurl]);
list($url,$true_name,$fen)=explode("@@@",$detail[$file_id]);

list($TI,$Aid)=explode("\t",mymd5($_COOKIE["down_$rsdb[aid]"],'DE'));

if( !$web_admin&&$lfjuid!==$rsdb[uid]&&$fen>0 )
{
	$fen=intval($fen);
	if($Aid!=$rsdb[aid]||$TI!=$ti){
		if(get_money($lfjuid)<$fen){
			showerr("你的{$webdb[MoneyName]}不足{$fen}{$webdb[MoneyDW]}");
		}else{
			add_user($lfjuid,-$fen,'下载文件扣分');
			//1小时内不重复扣积分
			setcookie("down_$rsdb[aid]",mymd5("$ti\t$rsdb[aid]"),$timestamp+3600);
		}
	}
}
elseif( !$web_admin&&$lfjuid!==$rsdb[uid]&&$rsdb[money]>0 )
{
	if($Aid!=$rsdb[aid]||$TI!=$ti){
		if(get_money($lfjuid)<$rsdb[money]){
			showerr("你的{$webdb[MoneyName]}不足{$rsdb[money]}{$webdb[MoneyDW]}");
		}else{
			add_user($lfjuid,-$rsdb[money],'下载文件扣分');
			//1小时内不重复扣积分
			setcookie("down_$rsdb[aid]",mymd5("$ti\t$rsdb[aid]"),$timestamp+3600);
		}
	}
}

//更新点击量
update_hits($id,$rsdb[down_time]);

if(!$true_name){
	$true_name=str_replace(strrchr($url,'.'),'',basename($url));
}

$true_url=tempdir($url);
if(eregi('.php',$url)){	
	header("location:$true_url");
	exit;
}

if(file_exists(ROOT_PATH."$webdb[updir]/$url")&&filesize(ROOT_PATH."$webdb[updir]/$url")<1024*1024*10)
{
	$filetype=substr(strrchr($url,'.'),1);
	ob_end_clean();
	header('Last-Modified: '.gmdate('D, d M Y H:i:s',time()).' GMT');
	header('Pragma: no-cache');
	header('Content-Encoding: none');
	header('Content-Disposition: attachment; filename='."$true_name.$filetype");
	header('Content-type: '.$filetype);
	header('Content-Length: '.filesize(ROOT_PATH."$webdb[updir]/$url"));
	readfile(ROOT_PATH."$webdb[updir]/$url");
	exit;
}else{

	header("location:$true_url");
	exit;

	/*
	$filetype=substr(strrchr($url,'.'),1);
	ob_end_clean();
	header('Last-Modified: '.gmdate('D, d M Y H:i:s',time()).' GMT');
	header('Pragma: no-cache');
	header('Content-Encoding: none');
	header('Content-Disposition: attachment; filename='."$true_name.$filetype");
	header('Content-type: '.$filetype);
	readfile($true_url);
	exit;
	*/
}

//更新点击率
function update_hits($aid,$time){
	global $lfjid,$db,$_pre,$timestamp;

	if(date("W",$time)!=date("W",$timestamp)){
		$SQL.=",week_down=1";
	}else{
		$SQL.=",week_down=week_down+1";
	}
	if(date("md",$time)!=date("md",$timestamp)){
		$SQL.=",day_down=1";
	}else{
		$SQL.=",day_down=day_down+1";
	}
	if(date("m",$time)!=date("m",$timestamp)){
		$SQL.=",month_down=1";
	}else{
		$SQL.=",month_down=month_down+1";
	}
	$db->query("UPDATE {$_pre}article SET total_down=total_down+1,down_time='$timestamp',down_user=''$SQL WHERE aid='$aid'");

}
?>