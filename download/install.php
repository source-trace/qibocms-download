<?php
require_once(dirname(__FILE__)."/"."../inc/common.inc.php");	//核心文件


if(!$job){
	if(is_file(dirname(__FILE__).'/data/install.lock')){
		showerr('请把文件/data/install.lock删除后,再执行安装程序!');
	}elseif(!$web_admin){
		showerr('你不是管理员,不能安装!');
	}
	$rand = rand(1,100);
	$atc_pre = 'download'.$rand.'_';
	$atc_name = '软件下载系统'.$rand;
	print <<<EOT
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body bgcolor="#FFFFFF" text="#000000">
<table width="100%" border="0" cellspacing="0" cellpadding="0"> <form name="form1" method="post" action="?job=sql">
  <tr> 
    <td height="50" align="right" width="42%">数据表区分符:</td>
    <td height="0" align="left" width="58%">
     
        <input type="text" name="atc_pre" value="$atc_pre">
      
    </td>
  </tr>
  <tr> 
    <td height="50" align="right" width="42%">系统名称:</td>
    <td height="0" align="left" width="58%">
        <input type="text" name="atc_name" value="$atc_name">
      </td>
  </tr>
  <tr> 
    <td height="50" align="right" width="42%">&nbsp;</td>
    <td width="58%" align="left">
        <input type="submit" name="Submit" value="立即安装">
      </td>
  </tr></form>
</table>
</body>
</html>

EOT;
}
elseif($job=='sql'){
	if(!ereg("^([a-z0-9]+)_$",$atc_pre)){
		showerr('数据表区分符只能是数字或字母加下画线结尾!');
	}elseif(!$atc_name){
		showerr('系统名称不能为空');
	}elseif($db->get_one("SELECT * FROM {$pre}module WHERE pre='$atc_pre'")){
		showerr('当前数据表前缀已经存在了,请更换一个!');
	}
	$atc_dir = basename(dirname(__FILE__));
	$rs = $db->get_one("SELECT * FROM {$pre}module ORDER BY id DESC LIMIT 1");
	$atc_id = $rs[id]+1;

	$data = read_file(dirname(__FILE__).'/install/data.sql');
	$detail = explode("\n",$data);
	foreach($detail AS $key=>$value){
		if(strstr($value,'qb_module')){
			unset($detail[$key]);
		}
	}
	$data = implode("\n",$detail);

	//母模块的区分符是news_,其它系统的话,这里要相应的修改
	$data = str_replace(array('qb_','download_'),array($pre,$atc_pre),$data);

	$rs = $db->get_one("SELECT lid FROM {$pre}label ORDER BY lid DESC LIMIT 1");
	$max = $rs[lid];

	$db->insert_file('',$data);

	$db->query("UPDATE {$pre}label SET module='$atc_id' WHERE lid>$max");
	$db->query("UPDATE {$pre}{$atc_pre}config SET c_value='$atc_id' WHERE c_key='module_id'");
	$db->query("UPDATE {$pre}{$atc_pre}config SET c_value='$atc_pre' WHERE c_key='module_pre'");
	$db->query("UPDATE {$pre}{$atc_pre}config SET c_value='$atc_name' WHERE c_key='Info_webname'");
	$db->query("INSERT INTO {$pre}module SET id='$atc_id',type='2',name='$atc_name',pre='$atc_pre',dirname='$atc_dir'");

	make_module_cache();

	write_file(dirname(__FILE__).'/data/install.lock','1');

	write_file(dirname(__FILE__).'/data/config.php',"
\$webdb['module_pre']='$atc_pre';
\$webdb['Info_webname']='$atc_name';
\$webdb['module_id']='$atc_id';
	",'a');
	
	//母模型的区分符长度是5,如果不是5的话, 这里要相应的作修改
	if(strlen($atc_pre)!=9){
		$query=$db->query("SELECT * FROM {$pre}label WHERE typesystem=1 AND lid>$max ");
		while($rs=$db->fetch_array($query)){
			$rs[code]=preg_replace("/s:([\d]+):\"(.*?)\";/eis","strlen_lable('\\1','\\2')",$rs[code]);
			$rs[code]=addslashes($rs[code]);
			$db->query("UPDATE {$pre}label SET code='$rs[code]' WHERE lid='$rs[lid]' ");
		}
	}

	echo "<META HTTP-EQUIV=REFRESH CONTENT='0;URL=?job=end'>";
	exit;

}elseif($job=='end'){
	if(is_file(dirname(__FILE__).'/data/install.lock')){
		echo '<A HREF="'.$webdb[admin_url].'/index.php?lfj=group&job=admin_gr&gid=3">安装完毕,点击进入后台设置一下权限!</A>';
		exit;
	}else{
		echo '<A HREF="'.$webdb[admin_url].'/index.php?lfj=group&job=admin_gr&gid=3">安装完毕,请手工删除此安装文件,必须要进后台设置一下权限!</A>';
		exit;
	}
}


function strlen_lable($num,$sring){
	$sring=stripslashes($sring);
	$num=strlen($sring);
	return "s:$num:\"$sring\";";
}
?>