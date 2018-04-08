<?php
 namespace Home\Controller;
 use Think\Controller;
 class HonorController extends HomeConfController {
   
   public function index(){
   	$domain    = I('get.domain','');
	 $type      = I('get.type',0,'intval');
	 $sty       = 3;
	 $mark      = 'mark';
	 $title     = '资质荣誉';
	 if ($type)         $type = (D('Home')->cktype('inftype',$type)) ? $type : 0;
	 if ($domain != '') $type = D('Home')->ckdomain('inftype',$domain);
	 $kwd       = isset($_GET['key']) ? $_GET['key'] : '';
	 $kwd       = iconv('GB2312', 'UTF-8', $kwd);
	 $kwd       = D('home')->dosqlxss($kwd);
	 if ($type)         $type = (D('Home')->cktype('inftype',$type)) ? $type : 0;
	 if ($domain != '' && $domain!='index') $type = D('Home')->ckdomain('inftype',$domain);
	 $where     = 'sty='.$sty.' AND enabled=1';
	 if ($type) $where .= ' AND inftype='.$type;
	 if ($kwd)  $where .= " AND ( topic LIKE '%".$kwd."%' OR intro LIKE '%".$kwd."%')";
	 $newsType  = M('inftype')->field('topic,Id')->where(array('sty'=>$sty,'enabled'=>1))->order('ord ASC')->select();
	 $news      = M('information')->field('inftype,Id,pic,topic,intro,date,linkurl')->where($where)->order('istop DESC,date DESC')->select();
	 $title     = ($type) ? D('Home')->gettopic('inftype',$type) : $title;
	 $this->assign('kwd',$kwd);
	 $this->assign("newsType",$newsType);
	 $this->assign("honors",$news);
	 $this->assign('title',$title);
	 $this->assign('type',$type);
	 $this->assign('banner',$this->insidepic(9));
	 $this->assign('mark',$mark);
     $this->display();
   }
   
   
 }