<?php
 namespace Home\Controller;
 use Think\Controller;
 class AboutController extends HomeConfController {
   
   public function index(){
	 $sty     = 1;
	 $inftype = M('inftype')->field('Id,topic')->where(array('sty'=>$sty,'enabled'=>1))->order('ord ASC')->select();
	 $data    = M('aboutus')->field('topic,content,Id,sty,metades,keyword')->where(array('enabled'=>1,'sty'=>$sty,'Id'=>1))->find();
	 $this->assign('banner',$this->insidepic(6));
	 $this->assign('metades',($data['metades']!='') ? $data['metades'] : $data['topic']);
	 $this->assign('metakey',($data['keyword']!='') ? $data['keyword'] : $data['topic']);
	 $this->assign('inftype',$inftype);
	 $this->assign('title',$data['topic']);
	 $this->assign('mark','about');
     $this->display();
   }
   
   
 }