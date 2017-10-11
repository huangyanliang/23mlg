<?php
 namespace Home\Controller;
 use Think\Controller;
 class IndexController extends HomeConfController {
   
   public function index(){
	 $this->assign('mark','index');
     $this->display();
   }
   
   //在线统计
   public function visitStatistics(){
	 if (IS_AJAX) {
	   $result = D('Home')->recordBrower();
	   $this->ajaxReturn($result);
	 } else {
	   $this->ajaxReturn('Illegal operation');
	 }
   }
   
 } 