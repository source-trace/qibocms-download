<?php
!function_exists('html') && exit('ERR');

$modulename=$ModuleDB[str_replace("Info_","",$inc)][name];

$label_rsdb = get_label();
$array=unserialize($label_rsdb[code]);

if($hand_choose==1){
	require("head.php");
	require(dirname(__FILE__)."/template/label/choose.htm");
	require("foot.php");
}elseif($_GET[cms_type]&&ereg("^([-_a-z0-9]+)$",$_GET[cms_type])){
	require(dirname(__FILE__)."/label/$cms_type.php");
}elseif(is_file(dirname(__FILE__)."/label/$array[ctype].php")){	//修改的时候,直接跳过去
	require(dirname(__FILE__)."/label/$array[ctype].php");
}


require("head.php");
require(dirname(__FILE__)."/template/label/choose.htm");
require("foot.php");

?>