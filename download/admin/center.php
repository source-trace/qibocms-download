<?php
!function_exists('html') && exit('ERR');

if(!function_exists('editor_replace')&&!function_exists('CMS_special')){
	showmsg('请重新下载程序替换/inc/function.inc.php,/inc/label_funcation.php,这两个文件!!!');
}

if($job)
{
	$query=$db->query(" SELECT * FROM {$_pre}config ");
	while( $rs=$db->fetch_array($query) ){
		$webdb[$rs[c_key]]=$rs[c_value];
	}
}
if($job=="label"&&ck_power('center_label')){
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0;URL=$Murl/index.php?jobs=show'>";
	exit;
}
elseif($job=="config"&&ck_power('center_config'))
{

	$module_close[intval($webdb[module_close])]=" checked ";
	$Limit_postOne[intval($webdb[Limit_postOne])]=" checked ";
	$Html_Type[intval($webdb[Html_Type])]=' checked ';
 
 	$webdb[viewNoPassArticle]==='0' || $webdb[viewNoPassArticle]=1;
	$viewNoPassArticle[$webdb[viewNoPassArticle]]=" checked ";

	$webdb[ifContribute]==='0' || $webdb[ifContribute]=1;
	$ifContribute[$webdb[ifContribute]]=" checked ";

	$webdb[autoGetSmallPic]=(int)$webdb[autoGetSmallPic];
	$autoGetSmallPic[$webdb[autoGetSmallPic]]=" checked ";

	$autoGetKeyword[intval($webdb[autoGetKeyword])]=" checked ";

	$SortUseOtherModule[intval($webdb[SortUseOtherModule])]=" checked ";

	$allowGuestSearch[$webdb[allowGuestSearch]]=" checked ";

	$adminPostEditType[$webdb[adminPostEditType]]=" checked ";
	$ListShowIcon[intval($webdb[ListShowIcon])]=" checked ";
	$webdb[newArticleTime] || $webdb[newArticleTime]=24;
	$webdb[hotArticleNum] || $webdb[hotArticleNum]=100;
	$yzImgComment[$webdb[yzImgComment]]=" checked ";
	$yzImgContribute[$webdb[yzImgContribute]]=" checked ";
	$ForceDel[intval($webdb[ForceDel])]=" checked ";

	$HideNopowerPost[intval($webdb[HideNopowerPost])]=" checked ";

	$UseArticleHeart[intval($webdb[UseArticleHeart])]=" checked ";

	$UseArticleDigg[intval($webdb[UseArticleDigg])]=" checked ";

	$ForbidRepeatTitle[intval($webdb[ForbidRepeatTitle])]=" checked ";
	$AutoTitleNum[intval($webdb[AutoTitleNum])]=" checked ";

	$autoCutSmallPic[intval($webdb[autoCutSmallPic])]=" checked ";
	$ArticleDownloadUseFtp[intval($webdb[ArticleDownloadUseFtp])]=" checked ";

	$webdb[PostNotice]=editor_replace($webdb[PostNotice]);

	if($webdb[ArticleDownloadDirTime]){
		$ArticleDownloadDirTime[$webdb[ArticleDownloadDirTime]]=' checked ';
	}else{
		$ArticleDownloadDirTime[0]=' checked ';
	}
	
	$showsortlogo[intval($webdb[showsortlogo])]=" checked ";

	$EditSystem[intval($webdb[EditSystem])]=" checked ";

	
	$ListPageTitle_nojs[intval($webdb[ListPageTitle_nojs])]=" checked ";
	$view_sell_article[intval($webdb[view_sell_article])]=" checked ";

	$allowDownMv[intval($webdb[allowDownMv])]=" checked ";
	$autoPlayFirstMv[intval($webdb[autoPlayFirstMv])]=" checked ";
	
	$Use_FlashGet[intval($webdb[Use_FlashGet])]=" checked ";

	$Use_XunLei[intval($webdb[Use_XunLei])]=' checked ';

	$IF_Private_tpl[intval($webdb[IF_Private_tpl])]=' checked ';

	

	$getLabelTpl=getLabelTpl();
	$get_S_LabelTpl=get_S_LabelTpl();

	get_admin_html('config',true);
}

elseif($action=="config"&&ck_power('center_config'))
{
	if($webdbs[IF_Private_tpl]){
		if(!$webdbs[Private_tpl_head]&&!$webdbs[Private_tpl_foot]){
			showmsg('你选择个性模板的话,头部与尾部模板不能同时为空!');
		}
		if($webdbs[Private_tpl_head]&&!is_file(Mpath.$webdbs[Private_tpl_head])){
			showmsg('模板文件路径有误!');
		}
		if($webdbs[Private_tpl_foot]&&!is_file(Mpath.$webdbs[Private_tpl_foot])){
			showmsg('模板文件路径有误!');
		}
	}
	if(isset($webdbs['Html_Type'])){
		Make_htmltype();
	}
	if(isset($webdbs['Info_weburl'])){
		if($webdbs['Info_weburl']){
			if(ereg("\/$",$webdbs['Info_weburl'])){
				showmsg("二级域名结尾不要加/号");
			}elseif(!ereg("^http:",$webdbs['Info_weburl'])){
				showmsg("二级域名必须是http:开头");
			}			
		}
		$db->query("UPDATE {$pre}module SET domain='{$webdbs[Info_weburl]}' WHERE id='{$webdb[module_id]}'");
		make_module_cache();
	}

	module_write_config_cache($webdbs);
	refreshto($FROMURL,"修改成功");
}
//真静态URL设置
elseif($job=="htmltype"&&ck_power('center_config'))
{
	$Html_Type[intval($webdb[Html_Type])]=' checked ';
	$ForbidShowPhpPage[intval($webdb[ForbidShowPhpPage])]=' checked ';
	$DefaultIndexHtml[intval($webdb[DefaultIndexHtml])]=' checked ';
	get_admin_html('htmltype',true);
}
//缓存设置
elseif($job=="cache"&&ck_power('center_config'))
{
	get_admin_html('cache',true);
}
//评论设置
elseif($job=="comment"&&ck_power('center_config'))
{
	$showComment[$webdb[showComment]]=' checked ';
	$allowGuestComment[$webdb[allowGuestComment]]=' checked ';
	$allowGuestCommentPass[$webdb[allowGuestCommentPass]]=' checked ';
	$allowMemberCommentPass[$webdb[allowMemberCommentPass]]=' checked ';
	$showNoPassComment[$webdb[showNoPassComment]]=' checked ';
	$forbidComment[$webdb[forbidComment]]=' checked ';


	$CommentOrderType[intval($webdb[CommentOrderType])]=' checked ';

	$logShowComment[$webdb[logShowComment]]=' checked ';
	$downShowComment[$webdb[downShowComment]]=' checked ';
	$photoShowComment[$webdb[photoShowComment]]=' checked ';
	$mvShowComment[$webdb[mvShowComment]]=' checked ';
	$shopShowComment[$webdb[shopShowComment]]=' checked ';
	$musicShowComment[$webdb[musicShowComment]]=' checked ';
	$flashShowComment[$webdb[flashShowComment]]=' checked ';

	get_admin_html('comment',true);
}








//获取标题标签模板
function getLabelTpl($path='template/default/side_tpl'){
	global $webdb,$rsdb;
	$pictitledb[]=$f1="默认模板";
	$picurldb[]=$f2="$webdb[www_url]/$path/0.jpg";
	
	$select="<option value='$f2'>$f1</option>";
	$dir=opendir(ROOT_PATH.$path);
	while($file=readdir($dir)){
		if(eregi("\.htm$",$file)&&$file!='0.htm'){
			$pictitledb[]=str_replace(".htm","",$file);
			$picurldb[]=$f2="$webdb[www_url]/$path/".str_replace(".htm",".jpg",$file);
			$select.="<option value='$f2'>".str_replace(".htm","",$file)."</option>";
		}
	}

	$picurldb=implode('","',$picurldb);
	$pictitledb=implode('","',$pictitledb);
	$myurl=str_replace(array(".","/"),array("\.","\/"),$webdb[www_url]);
$show=<<<EOT
<table  border="0" cellspacing="0" cellpadding="0">
<tr><td style="padding-left:20px;padding-bottom:10px;"><select id="selectTyls" onChange="selectTpl(this)">
    $select<option value='-2' style='color:red;'>新建一个</option>
  </select> [<a href="#LOOK" onclick="show_MorePic(-1)">上一个</a>] 
      【<span id="upfile_PicNum">1/2</span>】[<a href="#LOOK" onclick="show_MorePic(1)">下一个</a>]  
       


	
</td></tr>
  <tr>
    <td height="30" style="padding-left:20px;"><div id="showpicdiv" class="showpicdiv"  ><A style="border:2px solid #fff;display:block;" HREF="javascript::" id="showPicID" target="_blank"><img border="0" onerror="this.src=replace_img(this.src);" onload="if(this.height>200)this.height='200'" id="upfile_PicUrl"></A></div></td>

    

  </tr>
</table>

	
<SCRIPT LANGUAGE="JavaScript">
var ImgLinks= new Array("$picurldb");
var ImgTitle= new Array("$pictitledb");
function replace_img(url){
	//如果图片不存在,就去官方获取图片,如果还是不存在,就使用默认的无图片.
	reg=/http:\/\/down\.qibosoft\.com/g
	if(reg.test(url)){
		return "$webdb[www_url]/images/default/nopic.jpg";
	}
	re   = /$myurl/g;
	links = url.replace(re, "http://down.qibosoft.com");
	return links;
}
</SCRIPT>
EOT;
	return $show;
}

//获取栏目标签模板
function get_S_LabelTpl($path='template/default/side_sort'){
	global $webdb,$rsdb;
	$pictitledb[]=$f1="默认模板";
	$picurldb[]=$f2="$webdb[www_url]/$path/0.jpg";
	
	$select="<option value='$f2'>$f1</option>";
	$dir=opendir(ROOT_PATH.$path);
	while($file=readdir($dir)){
		if(eregi("\.htm$",$file)&&$file!='0.htm'){
			$pictitledb[]=str_replace(".htm","",$file);
			$picurldb[]=$f2="$webdb[www_url]/$path/".str_replace(".htm",".jpg",$file);
			$select.="<option value='$f2'>".str_replace(".htm","",$file)."</option>";
		}
	}

	$picurldb=implode('","',$picurldb);
	$pictitledb=implode('","',$pictitledb);
	$myurl=str_replace(array(".","/"),array("\.","\/"),$webdb[www_url]);
$show=<<<EOT
<table  border="0" cellspacing="0" cellpadding="0">
<tr><td style="padding-left:20px;padding-bottom:10px;"><select id="select_S_Tyls" onChange="select_S_Tpl(this)">
    $select<option value='-2' style='color:red;'>新建一个</option>
  </select> [<a href="#LOOK" onclick="show_S_MorePic(-1)">上一个</a>] 
      【<span id="upfile__S_PicNum">1/2</span>】[<a href="#LOOK" onclick="show_S_MorePic(1)">下一个</a>]  
       


	
</td></tr>
  <tr>
    <td height="30" style="padding-left:20px;"><div id="show_S_picdiv" class="showpicdiv"  ><A style="border:2px solid #fff;display:block;" HREF="javascript::" id="show_S_PicID" target="_blank"><img border="0" onerror="this.src=replace_S_img(this.src);" onload="if(this.height>200)this.height='200'" id="upfile_s_PicUrl"></A></div></td>

    

  </tr>
</table>

	
<SCRIPT LANGUAGE="JavaScript">
var Img_S_Links= new Array("$picurldb");
var Img_S_Title= new Array("$pictitledb");
function replace_S_img(url){
	//如果图片不存在,就去官方获取图片,如果还是不存在,就使用默认的无图片.
	reg=/http:\/\/down\.qibosoft\.com/g
	if(reg.test(url)){
		return "$webdb[www_url]/images/default/nopic.jpg";
	}
	re   = /$myurl/g;
	links = url.replace(re, "http://down.qibosoft.com");
	return links;
}
</SCRIPT>
EOT;
	return $show;
}


?>