<?php
 namespace Home\Controller;
 use Think\Controller;
 class DownloadController extends HomeConfController {
   
   public function index(){
	 $domain    = I('get.domain','');
	 $type      = I('get.type',0,'intval');
	 $sty       = 5;
	 $pagesize  = 12;
	 $mark      = 'mark';
	 $title     = '下载专栏';
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
	 $count     = M('information')->where($where)->count();
	 $page      = new \Think\HomePage($count,$pagesize);
	 $news      = M('information')->field('inftype,Id,pic,topic,intro,date,linkurl')->where($where)->order('istop DESC,date DESC')->limit($page->limit)->select();
	 $title     = ($type) ? D('Home')->gettopic('inftype',$type) : $title;
	 $this->assign('kwd',$kwd);
	 $this->assign('pageshow',($count>$pagesize) ? $page->showpage() : '');
	 $this->assign("newsType",$newsType);
	 $this->assign("news",$news);
	 $this->assign('title',$title);
	 $this->assign('type',$type);
	 $this->assign('banner',$this->insidepic(9));
	 $this->assign('mark',$mark);
     $this->display();
   }
   
   public function downloadShow(){
     $id     = I('get.id',0,'intval');
	 $tables = 'information';
	 if (!$id) $this->error('页面不存在');
	 $data   = M($tables)->field('inftype,topic,author,date,content,keyword,metades,sty,hit,source,intro,pic,linkurl')->where(array('enabled'=>1,'Id'=>$id))->find();
	 if (!$data) $this->error('页面不存在');
	 M($tables)->where(array('enabled'=>1,'Id'=>$id))->limit(1)->setInc('hit');
	 if ($data['linkurl'] !='' ) header("Location:".$data['linkurl']);
	 $data['date']    = date('Y-m-d',strtotime($data['date']));
	 $data['author']  = ($data['author']=='admin') ? '' : $data['author'];
	 $inftype     = D('Home')->gettopic('inftype',$data['inftype']);
	 $this->assign('data',$data);
	 $this->assign('inftype',$inftype);
	 $this->assign('title',$data['topic']);
	 $this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
	 $this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
	 $this->assign('mark','news');
	 $this->display();
   }
   
 }