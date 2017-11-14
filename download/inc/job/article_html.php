<?php
!function_exists('html') && exit('ERR');

//本文件给发布软件的时候生成静态调用

$bid=$fid;
if($bid&&$aid){
	require_once(Mpath."inc/bencandy_html_crontab.php");
	require_once(Mpath."inc/list_html_crontab.php");
}

//被后台调用
if($web_admin){
	@ignore_user_abort(TRUE);
	@set_time_limit(0);
	if($type=='show'){
		require_once(Mpath."inc/bencandy_html_crontab.php");
	}elseif($type=='list'){
		require_once(Mpath."inc/list_html_crontab.php");		
	}else{
		require_once(Mpath."inc/bencandy_html_crontab.php");
		require_once(Mpath."inc/list_html_crontab.php");
	}
}

?>