<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="百恒网络后台管理系统 <?php echo C('ADMIN_VERSION');?>">
 <meta name="keywords" content="百恒网络后台管理系统 <?php echo C('ADMIN_VERSION');?>">
 <meta name="author" content="jxbh.cn">
 <title><?php echo ($title); ?></title>
 <link href="/bhv3.0/public/Bhadmin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/bhv3.0/public/Bhadmin/css/font-awesome.min.css" rel="stylesheet">
 <link href="/bhv3.0/public/Bhadmin/css/alert.css" rel="stylesheet">
 <link href="/bhv3.0/public/Bhadmin/css/common.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/bhv3.0/public/Bhadmin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/bhv3.0/public/Bhadmin/css/comie.css">
 <![endif]-->
 <script src="/bhv3.0/public/Bhadmin/js/jquery.min.js" type="text/javascript"></script>
 <link href="/bhv3.0/public/Bhadmin/css/minimal/minimal.css" rel="stylesheet">
 <script src="/bhv3.0/public/Bhadmin/js/icheck.min.js" type="text/javascript"></script>
 <script src="/bhv3.0/public/Bhadmin/js/jquery.scorll.js" type="text/javascript"></script>
 
</head>
<body>

 <div class="pubmain">
  <h1>编辑产品</h1>
  <form name="adminform" method="post" action="" onSubmit="return syspro(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">产品名称：</td>
    <td height="32" align="left"><?php echo input(array('name'=>'topic','scene'=>'topic','val'=>$data['topic'],'tips'=>'产品标题（*必填）'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品所属：</td>
     <td height="32" align="left"><?php echo dropdownlink($dshow['mdata'],array('ctag'),array('promtag'),2,array(gtopic('proctag',$data['ctag']),gtopic('promtag',$data['mtag'])),array($data['ctag'],$data['mtag']));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left"><?php echo uppic(array('pic'=>$data['pic'],'tips'=>'产品配图，300px*200px，没有要求可以不用上传！'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品简介：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'intro','val'=>$data['intro'],'type'=>'textarea','place'=>'资料简介，若不填写，自动截取资料详情里面的内容！'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品内容：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'content','val'=>$data['content'],'type'=>'editor'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面关键词：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'keyword','val'=>$data['keyword'],'scene'=>'key'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'metades','val'=>$data['metades'],'scene'=>'des'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否置顶：</td>
     <td height="32" align="left"><?php echo checkbox($data['istop'],0,'istop');?> <span class="text-warning"> 注：勾选表示置顶</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left"><?php echo checkbox($data['enabled']);?> <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">产品排序：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">发布日期：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'date','val'=>$data['date'],'scene'=>'date','width'=>'20','tips'=>'请按照 2017-01-01 08:00:00 格式改写发布日期'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="<?php echo ($dshow['tables']); ?>" name="tables">
     <input type="hidden" value="<?php echo ($data['Id']); ?>" name="id">
     <td height="32" align="left"><?php echo btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'));?></td>
   </tr>
  </table>
  </form>
 </div>

  <?php if(!empty($upload)): ?><div class="modal fade bh-picture" id="bh-picture">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">系统图片库</h4>
          </div>
          <div class="modal-body" style="margin:0; padding:0;">
            <div class="row modal-picture">
              
              <div class="col-md-2 col-sm-3 col-xs-4 picture-sidebar">
                <div style="height:auto; overflow:hidden;">
                <div class="list-group">
                  <?php $filelist = D('File')->getfilepath(); if ( $filelist ) { foreach( $filelist as $fkey=>$fval ) { echo '<a href="javascript:void(0)" class="list-group-item picture-litype" data-path="'.$fval['file'].'">'.$fval['file'].' <span class="badge">'.$fval['count'].'</span></a>'; } } $piclist = D('File')->getpic(); ?> 
                </div> 
                </div>
              </div>
              
              <div class="col-md-10 col-sm-9 col-xs-8 picture-main">
                <div style="height:auto; overflow:hidden;">
                <div class="picture-mblock">
                <?php if ( count($piclist['sdata']) > 0 ) { foreach( $piclist['sdata'] as $pkey=>$pval ) { echo ($pval['spic']!='') ? '<div class="picdiv picture-fname" data-path="'.$pval['spic'].'"><img src="'.ispic($pval['spic']).'" data-action="zooms"><p title="'.$pval['pic'].'">'.$pval['pic'].'</p><div class="pic-active"></div></div>' : ''; } } ?>
                </div>
                <div style=" height:10px; clear:both;"></div>
                <div class="picture-pagelist"><?php echo ($piclist['pagelist']); ?></div>
              </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <div class="pull-left"><div class="up-progress" style="margin:10px auto;"><div class="up-bar"></div></div></div>
            <input type="hidden" value="" id="picture-file">
            <input type="hidden" value="" id="picture-path">
            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><?php echo icon("off");?> 关闭</button>
            <button type="button" class="btn btn-primary btn-sm btn-choice-picture"><?php echo icon("picture");?> 选择图片</button>
          </div>
        </div>
      </div>
      <script src="/bhv3.0/public/Bhadmin/js/jqthumb.js" type="text/javascript"></script>
      <script>
	   $(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	   $('.picture-sidebar').perfectScrollbar();
	   $('.picture-main').perfectScrollbar();
      </script>
    </div><?php endif; ?>
 
 <script src="/bhv3.0/public/Bhadmin/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="/bhv3.0/public/Bhadmin/js/alert.min.js" type="text/javascript"></script>
 <script src="/bhv3.0/public/Bhadmin/js/common.js" type="text/javascript"></script>
 <script src="/bhv3.0/public/Bhadmin/js/zoom.js" type="text/javascript"></script>
 <?php if(!empty($upload)): ?><link href="/bhv3.0/public/Bhadmin/css/cropper.css" rel="stylesheet">
 <script src="/bhv3.0/public/Bhadmin/uploadify/uploadify.js" type="text/javascript" ></script>
 <script src="/bhv3.0/public/Bhadmin/js/cropper.min.js" type="text/javascript" ></script><?php endif; ?>
 <?php if(!empty($formpic)): ?><script src="/bhv3.0/public/Bhadmin/js/jquery.form.js" type="text/javascript" ></script><?php endif; ?>
 <?php if(!empty($color)): ?><script src="/bhv3.0/public/Bhadmin/js/color.js" type="text/javascript"></script>
 <link href="/bhv3.0/public/Bhadmin/css/color.css" rel="stylesheet">
 <script type="text/javascript">
  $(document).ready( function() {
	$('.colorselect').each( function() {
		$(this).minicolors({
			theme: 'bootstrap'
		});
	});
   });
 </script><?php endif; ?>
 <script type="text/javascript">
  var img     = '/bhv3.0/public/Bhadmin/images';
  var abspath = '/bhv3.0/Bhadmin';
  var upload  = '/bhv3.0/public/Bhadmin/uploadify';
  var upfile  = '/bhv3.0/uploads/';
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({container : 'body'});
    $('[data-toggle="popover"]').popover({html:true,container:'body',trigger:'focus',title:'','placement':'right'});
	$('input').iCheck({checkboxClass: 'icheckbox_minimal',radioClass: 'iradio_minimal',increaseArea: '20%'});
  });
 </script>
 <?php if(!empty($date)): ?><script src="/bhv3.0/public/Bhadmin/js/date.js" type="text/javascript"></script><?php endif; ?>
 <?php if(!empty($editor)): ?><div class="modal fade" id="meituxiuxiumodal" tabindex="-1" role="dialog" data-url="<?php echo U('Fileupload/meituxiuxiu');?>">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:730px; height:640px;">
      <div class="modal-header">
        <button type="button" class="close btn-meitu-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">美图秀秀在线处理</h4>
      </div>
      <div class="modal-body">
        <input type="hidden" value="" id="meitupic">
        <iframe name="iframexiuxiu" class="iframexiuxiu" width="700" height="550" scrolling="no" frameborder="0" src="###"></iframe>
      </div>
    </div>
  </div>
 </div>
 
 <link rel="stylesheet" href="/bhv3.0/public/kindedit/themes/default/default.css" />
 <link rel="stylesheet" href="/bhv3.0/public/kindedit/plugins/code/prettify.css" />
 <script charset="utf-8" src="/bhv3.0/public/kindedit/kindeditor.js" type="text/javascript"></script>
 <script charset="utf-8" src="/bhv3.0/public/kindedit/lang/zh_CN.js" type="text/javascript"></script>
 <script charset="utf-8" src="/bhv3.0/public/kindedit/plugins/code/prettify.js" type="text/javascript"></script>
 <script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"],textarea[name="parameter"],textarea[name="parameter2"]', {
			cssPath          : '/bhv3.0/public/kindedit/plugins/code/prettify.css',
			uploadJson       : '<?php echo U("Fileupload/editorUpload");?>',
			fileManagerJson  : '/bhv3.0/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
			  var self = this;
			  K.ctrl(document, 13, function() {
				self.sync();
				K('form[name=example]')[0].submit();
			  });
			  K.ctrl(self.edit.doc, 13, function() {
				self.sync();
				K('form[name=example]')[0].submit();
			  });
			}
		});
		prettyPrint();
	    $('#meituxiuxiumodal').on('hidden.bs.modal', function (e) {
		  var pic = $("#meitupic").val();
		  if ( pic !='' ) {
		    editor1.insertHtml('<img src="/bhv3.0/public/kindedit/attached/image/'+pic+'" alt="">');
			$("#meitupic").val('');
		  }
		});
	});
 </script><?php endif; ?>

</body>
</html>