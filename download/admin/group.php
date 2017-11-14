<?php
!function_exists('html') && exit('ERR');

ck_power('group_power');

if($job=="list")
{
	$query=$db->query("SELECT * FROM `{$pre}group` WHERE gid!=3 AND gid!=4 ORDER BY gptype DESC,levelnum ASC");
	while( $rs=$db->fetch_array($query) ){
		if($rs[gptype]){
			$listdb_1[]=$rs;
			$rs[ifSystem]='高级系统组';
		}else{
			$listdb_0[]=$rs;
			$rs[ifSystem]='普通会员组';
		}
		$listdb[]=$rs;
	}
	get_admin_html('listgroup');
}

elseif($action=="edit")
{
	$query = $db->query("SELECT * FROM {$_pre}sort");
	while($rs = $db->fetch_array($query)){
		$detail=explode(",",$rs[allowpost]);
		if(@in_array($gid,$detail)){
			if(!in_array($rs[fid],$fiddb)){
				foreach( $detail AS $key=>$value){
					if($value==$gid){
						unset($detail[$key]);
					}
				}
				$allowpost=implode(",",$detail);
				$db->query("UPDATE {$_pre}sort SET allowpost='$allowpost' WHERE fid='$rs[fid]' ");
			}
		}
		elseif(in_array($rs[fid],$fiddb))
		{
			$detail[]=$gid;
			$allowpost=implode(",",$detail);
			$db->query("UPDATE {$_pre}sort SET allowpost='$allowpost' WHERE fid='$rs[fid]' ");
		}
	}

	$rsdb=$db->get_one(" SELECT powerdb FROM `{$pre}group` WHERE gid='$gid' ");
	$array=@unserialize($rsdb[powerdb]);
	$array["power_{$_pre}"] = $powerdb;
	$_powerdb=addslashes(@serialize($array));
	$db->query(" UPDATE `{$pre}group` SET powerdb='$_powerdb' WHERE gid='$gid' ");
	write_group_cache();
	jump("修改成功",$FROMURL);
}

elseif($job=="edit")
{
	$rsdb=$db->get_one(" SELECT * FROM `{$pre}group` WHERE gid='$gid' ");
	$array=@unserialize($rsdb[powerdb]);

	$powerdb=array_merge($array,$array["power_{$_pre}"]);

	$PassContribute[intval($powerdb[PassContribute])]=" checked ";
	$EditPassPower[intval($powerdb[EditPassPower])]=' checked ';
	$SearchArticleType[intval($powerdb[SearchArticleType])]=' checked ';
	$SetTileColor[intval($powerdb[SetTileColor])]=' checked ';
	$SetSellArticle[intval($powerdb[SetSellArticle])]=' checked ';
	$SetSmallTitle[intval($powerdb[SetSmallTitle])]=' checked ';
	$SetSpecialArticle[intval($powerdb[SetSpecialArticle])]=' checked ';
	$SetArticleKeyword[intval($powerdb[SetArticleKeyword])]=' checked ';
	$PostArticleYzImg[intval($powerdb[PostArticleYzImg])]=' checked ';
	$SelectArticleTpl[intval($powerdb[SelectArticleTpl])]=' checked ';
	$SetArticleTpl[intval($powerdb[SetArticleTpl])]=' checked ';
	$SelectArticleStyle[intval($powerdb[SelectArticleStyle])]=' checked ';
	$SetArticlePosttime[intval($powerdb[SetArticlePosttime])]=' checked ';
	$SetArticleViewtime[intval($powerdb[SetArticleViewtime])]=' checked ';
	$SetArticleHitNum[intval($powerdb[SetArticleHitNum])]=' checked ';
	$SetArticlePassword[intval($powerdb[SetArticlePassword])]=' checked ';
	$SetArticleDownGroup[intval($powerdb[SetArticleDownGroup])]=' checked ';
	$SetArticleViewGroup[intval($powerdb[SetArticleViewGroup])]=' checked ';
	$SetArticleJumpurl[intval($powerdb[SetArticleJumpurl])]=' checked ';
	$SetArticleIframeurl[intval($powerdb[SetArticleIframeurl])]=' checked ';
	$SetArticleDescription[intval($powerdb[SetArticleDescription])]=' checked ';
	$SetArticleTopCom[intval($powerdb[SetArticleTopCom])]=' checked ';
	$CommentArticleYzImg[intval($powerdb[CommentArticleYzImg])]=' checked ';
	$SetHtmlName[intval($powerdb[SetHtmlName])]=' checked ';
	$SetVote[intval($powerdb[SetVote])]=' checked ';
	$PostNoDelCode[intval($powerdb[PostNoDelCode])]=' checked ';
	$PassContributeSP[intval($powerdb[PassContributeSP])]=' checked ';
	$allowMemberCommentPass[intval($powerdb[allowMemberCommentPass])]=' checked ';
	$query = $db->query("SELECT * FROM {$_pre}sort");
	while($rs = $db->fetch_array($query)){
		if($rs[allowpost]){
			$detail=explode(",",$rs[allowpost]);
			if(in_array($gid,$detail)){
				$fiddb[]=$rs[fid];
			}
		}
	}
	$sort_fid=$Guidedb->Select("{$_pre}sort",'fiddb[]',$fiddb,'','0','',1,'20');

	get_admin_html('mod');
}

?>