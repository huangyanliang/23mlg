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
   <?php echo btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'primary','url'=>U('system/sysmod')));?>
   <?php echo btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>U('system/syscompany')));?>
   <?php echo btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>U('system/syswater')));?>
   <?php echo btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'default','url'=>U('system/sysupload')));?>
   <?php echo btn(array('vals'=>'后台目录设置','size'=>3,'icon'=>'folder-open','scene'=>'default','url'=>U('system/sysAdmin')));?>
  </div></h1>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="132" height="42" align="right" valign="middle">　站点名称：</td>
        <td height="42" align="left"><?php echo input(array('name'=>'metatitle','val'=>$data['metatitle'],'scene'=>'topic','tips'=>'( 应用程序名称，用在站点显示中 )'));?></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点ICP备案号：</td>
        <td height="32"><?php echo input(array('name'=>'icpnote','val'=>$data['icpnote'],'units'=>'ICP','tips'=>'(申请过程是免费的,没有ICP备案号表示该网站不合法) '));?></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　描述信息：</td>
        <td height="82" align="left"><?php echo input(array('name'=>'metades','type'=>'textarea','val'=>$data['metades']));?></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　站点关键字：</td>
        <td height="82" align="left"><?php echo input(array('name'=>'metakey','type'=>'textarea','val'=>$data['metakey']));?></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　可放代码：</td>
        <td height="82" align="left"><?php echo input(array('name'=>'sys_code','type'=>'textarea','val'=>$data['sys_code'],'place'=>'您可以把第三方的代码放在这里，例如：百度统计代码','tips'=>'(您可以把第三方的代码放在这里，例如：百度统计代码)'));?></td>
      </tr>
      <tr class="hide">
        <td width="132" height="32" align="right" valign="middle">　开启在线客服：</td>
        <td height="32" align="left"><?php echo checkbox($data['isqq'],0,'isqq');?><span class="text-warning">&nbsp;注：勾选表示开启在线客服功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　开启访问统计：</td>
        <td height="32" align="left"><?php echo checkbox($data['isonline'],0,'isonline');?><span class="text-warning">&nbsp;注：勾选表示开启访问统计。</span></td>
      </tr>    
      <tr>
        <td width="132" height="32" align="right" valign="middle">　是否关闭项目：</td>
        <td height="32" align="left"><?php echo checkbox($data['c_site'],0,'c_site');?><span class="text-warning">&nbsp;注：勾选表示关闭项目。</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　关闭说明：</td>
        <td height="82" align="left"><?php echo input(array('name'=>'c_text','type'=>'textarea','val'=>$data['c_text'],'tips'=>'(若项目选择关闭，显示该属性内容)'));?></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　后台分页值：</td>
        <td height="32" align="left"><?php echo input(array('name'=>'adminpage','val'=>$data['adminpage'],'scene'=>'ord','tips'=>'(设置后台资料管理分页值，大于1的整数，清除缓存后生效)'));?></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50"><?php echo btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'));?></td>
      </tr>
  </table>
  </form>
 <script type="text/javascript">
  function sysck(td){
    if($.trim(td.metatitle.value)==''){swal('请输入站点名称','','error');return false;}
	if($.trim(td.metades.value)==''){swal('请输入站点描述','','error');return false;}
	if($.trim(td.metakey.value)==''){swal('请输入站点关键词','','error');return false;}
  }
 </script>
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