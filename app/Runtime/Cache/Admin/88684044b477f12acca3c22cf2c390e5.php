<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="明良广后台管理系统 <?php echo C('ADMIN_VERSION');?>">
 <meta name="keywords" content="明良广后台管理系统 <?php echo C('ADMIN_VERSION');?>">
 <title><?php echo ($title); ?></title>
 <link href="/23mlg/public/Admin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/23mlg/public/Admin/css/font-awesome.min.css" rel="stylesheet">
 <link href="/23mlg/public/Admin/css/alert.css" rel="stylesheet">
 <link href="/23mlg/public/Admin/css/common.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/23mlg/public/Admin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/23mlg/public/Admin/css/comie.css">
 <![endif]-->
 <script src="/23mlg/public/Admin/js/jquery.min.js" type="text/javascript"></script>
 <link href="/23mlg/public/Admin/css/minimal/minimal.css" rel="stylesheet">
 <script src="/23mlg/public/Admin/js/icheck.min.js" type="text/javascript"></script>
 <script src="/23mlg/public/Admin/js/jquery.scorll.js" type="text/javascript"></script>
 
</head>
<body>

 <div class="pubmain">
  <h1><div class="pull-left">
   <?php echo btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','url'=>U('system/sysmod')));?>
   <?php echo btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>U('system/syscompany')));?>
   <?php echo btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>U('system/syswater')));?>
   <?php echo btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'default','url'=>U('system/sysupload')));?>
   <?php echo btn(array('vals'=>' 后台目录设置','size'=>3,'icon'=>'folder-open','scene'=>'primary','url'=>U('system/sysAdmin')));?>
  </div></h1>
  <form name="sysmod" method="post" action="" onSubmit="return sysap(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="132" height="42" align="right" valign="middle">后台目录保护：</td>
        <td height="42" align="left">
          <div class="input-group input-group-sm" style="width:250px" data-toggle="tooltip" data-placement="right" title="" data-original-title="2~25个字符，不支持中文，英文加数字的组合，第一个字符必须是英文"><input type="text" value="<?php echo ($data['adminpath']); ?>" name="adminpath" placeholder="请输入后台目录保护" class="form-control"><span class="input-group-addon"><span class="glyphicon glyphicon-folder-open"></span></span></div>
        </td>
      </tr>
      <?php if($data['adminpath'] != ''): ?><tr>
        <td width="132" height="42" align="right" valign="middle">当前后台管理：</td>
        <td height="42" align="left">
          <div class="alert alert-success" style="margin:0;">
            <p>1，您的后台登录链接为：<a href="<?php echo ($domain); echo ($data['adminpath']); ?>" target="_blank"><?php echo icon('link');?> <?php echo ($domain); echo ($data['adminpath']); ?></a></p>
            <p>2，我不想启用后台目录保护，点击 <a href="javascript:void(0)" class="clearAdmin"><?php echo icon('cog');?>这里</a> 关闭</p>
          </div>
        </td>
      </tr><?php endif; ?>
      <tr>
       <td width="132" height="32" align="right" valign="middle">设置须知</td>
       <td valign="middle">
        <div class="alert alert-warning" style="margin:0;">
          <p>1，设置之后原来的登录接口失效，以您设置的目录为准。</p>
          <p>2，系统默认登录链接为： <?php echo ($domain); ?>admin/index/login.html。</p>
          <p>3，变更之后的登录链接为：<?php echo ($domain); ?>您填写的后台目录保护。</p>
        </div>
       </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <input type="hidden" value="<?php echo ($data['adminpath']); ?>" name="oldadminpath" />
        <td height="50"><?php echo btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'folder-open','scene'=>'primary'));?></td>
      </tr>
    </table>
   </form>
 </div>
 <script type="text/javascript">
  $(".clearAdmin").click(function(e) {
    var repath = $(this).data("path");
	swal({
		title: "还原后台目录保护",
		text: "您确定要还原后台目录保护吗？",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#DD6B55',
		confirmButtonText: '确定还原',
		cancelButtonText: "取消",
		closeOnConfirm: false,
	},
	function(){
		window.location.href = "<?php echo U('System/clearAdmin');?>"
	}); 
  }); 
 </script>

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
      <script src="/23mlg/public/Admin/js/jqthumb.js" type="text/javascript"></script>
      <script>
	   $(".picture-mblock img").jqthumb({width:128,height:128,classname:'jqthumb'});
	   $('.picture-sidebar').perfectScrollbar();
	   $('.picture-main').perfectScrollbar();
      </script>
    </div><?php endif; ?>
 
 <script src="/23mlg/public/Admin/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="/23mlg/public/Admin/js/alert.min.js" type="text/javascript"></script>
 <script src="/23mlg/public/Admin/js/common.js" type="text/javascript"></script>
 <script src="/23mlg/public/Admin/js/zoom.js" type="text/javascript"></script>
 <?php if(!empty($upload)): ?><link href="/23mlg/public/Admin/css/cropper.css" rel="stylesheet">
 <script src="/23mlg/public/Admin/uploadify/uploadify.js" type="text/javascript" ></script>
 <script src="/23mlg/public/Admin/js/cropper.min.js" type="text/javascript" ></script><?php endif; ?>
 <?php if(!empty($formpic)): ?><script src="/23mlg/public/Admin/js/jquery.form.js" type="text/javascript" ></script><?php endif; ?>
 <?php if(!empty($color)): ?><script src="/23mlg/public/Admin/js/color.js" type="text/javascript"></script>
 <link href="/23mlg/public/Admin/css/color.css" rel="stylesheet">
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
  var img     = '/23mlg/public/Admin/images';
  var abspath = '/23mlg/Admin';
  var upload  = '/23mlg/public/Admin/uploadify';
  var upfile  = '/23mlg/uploads/';
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({container : 'body'});
    $('[data-toggle="popover"]').popover({html:true,container:'body',trigger:'focus',title:'','placement':'right'});
	$('input').iCheck({checkboxClass: 'icheckbox_minimal',radioClass: 'iradio_minimal',increaseArea: '20%'});
  });
 </script>
 <?php if(!empty($date)): ?><script src="/23mlg/public/Admin/js/date.js" type="text/javascript"></script><?php endif; ?>
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
 
 <link rel="stylesheet" href="/23mlg/public/kindedit/themes/default/default.css" />
 <link rel="stylesheet" href="/23mlg/public/kindedit/plugins/code/prettify.css" />
 <script charset="utf-8" src="/23mlg/public/kindedit/kindeditor.js" type="text/javascript"></script>
 <script charset="utf-8" src="/23mlg/public/kindedit/lang/zh_CN.js" type="text/javascript"></script>
 <script charset="utf-8" src="/23mlg/public/kindedit/plugins/code/prettify.js" type="text/javascript"></script>
 <script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"],textarea[name="parameter"],textarea[name="parameter2"]', {
			cssPath          : '/23mlg/public/kindedit/plugins/code/prettify.css',
			uploadJson       : '<?php echo U("Fileupload/editorUpload");?>',
			fileManagerJson  : '/23mlg/public/kindedit/php/file_manager_json.php',
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
		    editor1.insertHtml('<img src="/23mlg/public/kindedit/attached/image/'+pic+'" alt="">');
			$("#meitupic").val('');
		  }
		});
	});
 </script><?php endif; ?>

</body>
</html>