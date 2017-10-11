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
  <h1><div class="pull-left">
   <?php echo btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','url'=>U('system/sysmod')));?>
   <?php echo btn(array('vals'=>'公司设置','size'=>3,'icon'=>'map-marker','scene'=>'default','url'=>U('system/syscompany')));?>
   <?php echo btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'primary','url'=>U('system/syswater')));?>
   <?php echo btn(array('vals'=>'上传设置','size'=>3,'icon'=>'paperclip','scene'=>'default','url'=>U('system/sysupload')));?>
   <?php echo btn(array('vals'=>'后台目录设置','size'=>3,'icon'=>'folder-open','scene'=>'default','url'=>U('system/sysAdmin')));?>
  </div></h1>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="132" height="42" align="right" valign="middle">水印图片：</td>
        <td height="42" align="left"><?php echo uppic(array('pic'=>$data['waterpic'],'tips'=>'请上传.gif,.png,.jpg格式的水印图片，图片大小不要过大。','iswater'=>1,'choice'=>1,'iscrop'=>0));?></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印位置：</td>
        <td height="42" align="left">
         <div class="waterpos">
          <input type="hidden" value="<?php echo ($data['waterpos']); ?>" name="waterpos">
          <div data-id="1" <?php if($data['waterpos'] == 1): ?>class="selected"<?php endif; ?>>左上</div>
          <div data-id="2" <?php if($data['waterpos'] == 2): ?>class="selected"<?php endif; ?>>正上</div>
          <div data-id="3" <?php if($data['waterpos'] == 3): ?>class="selected"<?php endif; ?>>右上</div>
          <div data-id="4" <?php if($data['waterpos'] == 4): ?>class="selected"<?php endif; ?>>左中</div>
          <div data-id="5" <?php if($data['waterpos'] == 5): ?>class="selected"<?php endif; ?>>中间</div>
          <div data-id="6" <?php if($data['waterpos'] == 6): ?>class="selected"<?php endif; ?>>右中</div>
          <div data-id="7" <?php if($data['waterpos'] == 7): ?>class="selected"<?php endif; ?>>左下</div>
          <div data-id="8" <?php if($data['waterpos'] == 8): ?>class="selected"<?php endif; ?>>中下</div>
          <div data-id="9" <?php if($data['waterpos'] == 9): ?>class="selected"<?php endif; ?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印透明值：</td>
        <td height="42" align="left"><?php echo input(array('name'=>'wateralpha','val'=>$data['wateralpha'],'tips'=>'水印透明度，1-100的整数','icon'=>'tint','width'=>'10'));?></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字：</td>
        <td height="42" align="left"><?php echo input(array('name'=>'fonttext','val'=>$data['fonttext'],'tips'=>'水印文字，建议用字母或文字','units'=>'文','width'=>'20'));?></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字大小：</td>
        <td height="42" align="left"><?php echo input(array('name'=>'fontsize','val'=>$data['fontsize'],'tips'=>'水印文字的大小','units'=>'px','width'=>'10'));?></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字颜色：</td>
        <td height="42" align="left">
         <input type="text" value="<?php echo ($data['fontcolor']); ?>" name="fontcolor" class="textsort colorselect"<?php echo tooltip('水印文字的颜色');?> style="width:120px;">
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">字体水印样式：</td>
        <td height="42" align="left">
         <div class="text-warning"><?php echo icon('info-sign');?> 从左到右 分别是水印字体A~G的水印样式，字体(B~G)由 THINKPHP 提供，样式生成 字体大小皆为：10px 颜色：#1ea5d7。</div>
         <div class="waterview">
          <input type="hidden" value="<?php echo ($data['facetype']); ?>" name="facetype">
          <div data-id="0" class="waterdemo <?php if($data['facetype'] == 0): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式A');?>><img src="/bhv3.0/public/Bhadmin/images/water/A.jpg"></div>
          <div data-id="1" class="waterdemo <?php if($data['facetype'] == 1): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式B');?>><img src="/bhv3.0/public/Bhadmin/images/water/B.jpg"></div>
          <div data-id="2" class="waterdemo <?php if($data['facetype'] == 2): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式C');?>><img src="/bhv3.0/public/Bhadmin/images/water/C.jpg"></div>
          <div data-id="3" class="waterdemo <?php if($data['facetype'] == 3): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式D');?>><img src="/bhv3.0/public/Bhadmin/images/water/D.jpg"></div>
          <div data-id="4" class="waterdemo <?php if($data['facetype'] == 4): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式E');?>><img src="/bhv3.0/public/Bhadmin/images/water/E.jpg"></div>
          <div data-id="5" class="waterdemo <?php if($data['facetype'] == 5): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式F');?>><img src="/bhv3.0/public/Bhadmin/images/water/F.jpg"></div>
          <div data-id="6" class="waterdemo <?php if($data['facetype'] == 6): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式G');?>><img src="/bhv3.0/public/Bhadmin/images/water/G.jpg"></div>
          <div data-id="7" class="waterdemo <?php if($data['facetype'] == 7): ?>selected<?php endif; ?>"<?php echo tooltip('字体样式H');?>><img src="/bhv3.0/public/Bhadmin/images/water/H.jpg"></div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字位置：</td>
        <td height="42" align="left">
        <div class="waterpos">
          <input type="hidden" value="<?php echo ($data['fontpos']); ?>" name="fontpos">
          <div data-id="1" <?php if($data['fontpos'] == 1): ?>class="selected"<?php endif; ?>>左上</div>
          <div data-id="2" <?php if($data['fontpos'] == 2): ?>class="selected"<?php endif; ?>>正上</div>
          <div data-id="3" <?php if($data['fontpos'] == 3): ?>class="selected"<?php endif; ?>>右上</div>
          <div data-id="4" <?php if($data['fontpos'] == 4): ?>class="selected"<?php endif; ?>>左中</div>
          <div data-id="5" <?php if($data['fontpos'] == 5): ?>class="selected"<?php endif; ?>>中间</div>
          <div data-id="6" <?php if($data['fontpos'] == 6): ?>class="selected"<?php endif; ?>>右中</div>
          <div data-id="7" <?php if($data['fontpos'] == 7): ?>class="selected"<?php endif; ?>>左下</div>
          <div data-id="8" <?php if($data['fontpos'] == 8): ?>class="selected"<?php endif; ?>>中下</div>
          <div data-id="9" <?php if($data['fontpos'] == 9): ?>class="selected"<?php endif; ?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">开启水印功能：</td>
        <td height="42" align="left"><?php echo checkbox($data['iswater'],0,'iswater');?><span class="text-warning"> &nbsp;注：勾选表示开启水印功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50"><?php echo btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'tint','scene'=>'primary'));?></td>
      </tr>
    </table>
    </form>
    <script type="text/javascript">
     $(".waterpos div,.waterview div").click(function(e) {
       var id = $(this).data("id");
	   $(this).parent().find("input").val(id);
	   $(this).parent().find("div").removeClass("selected");
	   $(this).addClass("selected"); 
     });
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