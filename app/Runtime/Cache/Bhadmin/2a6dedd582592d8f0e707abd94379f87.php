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
  <h1>清除缓存</h1>
  <div class="alert alert-warning" style="margin-bottom:10px">
    <p>清除缓存须知.</p>
    <p>1.什么是缓存，本站缓存是指项目在运行一次之后缓存下来的数据，模板，字段，及文件静态缓存。</p>
    <p>2.缓存有什么用，缓存的作用主要是为了减轻服务器的压力，通过IO开销来均衡数据库服务器的压力。</p>
    <p>3.清除缓存的作用，清除缓存主要是为了重新渲染数据库和服务器最新更新资源。</p>
  </div>
  <form name="cacheForm" method="post" action="">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="10%" height="30" align="left" valign="middle">参数说明</td>
        <td height="30" align="left" valign="middle">参数值</td>
      </tr>
      <tr>
        <td width="10%" height="25" align="left" valign="middle">缓存类型</td>
        <td height="25" align="left" valign="middle">
         <input type="checkbox" value="1" name="cachetype[]"> 字段缓存<span class="text-warning">(数据库字段缓存，通常不需要清除)</span>&nbsp;&nbsp;
         <input type="checkbox" value="2" name="cachetype[]" checked> 数据缓存<span class="text-warning">（系统做的缓存资料）</span>&nbsp;&nbsp;
         <input type="checkbox" value="3" name="cachetype[]" checked> 模板缓存(前台)&nbsp;&nbsp;
         <input type="checkbox" value="4" name="cachetype[]"> 模板缓存(后台)&nbsp;&nbsp;
         <input type="checkbox" value="5" name="cachetype[]"> 静态缓存&nbsp;&nbsp;
         <input type="checkbox" value="6" name="cachetype[]"> 全部（清除全部缓存）
        </td>
      </tr>
      <tr>
        <td height="35" align="left" valign="middle"></td>
        <td height="35" align="left" valign="middle"><?php echo btn(array('vals'=>'清楚缓存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'));?></td>
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