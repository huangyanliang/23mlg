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
 <h1>编辑管理部门</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysadminuser(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">部门名称：</td>
    <td height="32" align="left"><?php echo input(array('name'=>'topic','faicon'=>'gears','val'=>$data['topic'],'width'=>18,'place'=>'部门名称','tips'=>'必填'));?></td>
   </tr>
   <?php if($adminauth != ''): ?><tr>
     <td height="32" align="right" valign="middle">管理权限：</td>
     <td height="32" align="left">
      <div class="authlist">
      <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="table">
       <tr>
         <td width="50" align="center" valign="middle" height="37">选择</td>
         <td width="60" align="center" valign="middle">栏目ID</td>
         <td align="left" valign="middle">栏目名称</td>
       </tr>
       <?php if(is_array($adminauth)): $i = 0; $__LIST__ = $adminauth;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><tr id="adminauth<?php echo ($obj['Id']); ?>" class="active">
         <td align="center" valign="middle" height="37" class="lev1"><input data-lev="1" type="checkbox" value="<?php echo ($obj["Id"]); ?>" <?php if(in_array(($obj['Id']), is_array($data['auth'])?$data['auth']:explode(',',$data['auth']))): ?>checked="checked"<?php endif; ?> name="auth[]"></td>
         <td align="center" valign="middle"><?php echo ($obj['Id']); ?></td>
         <td align="left" valign="middle"><span class="opened" data-id="<?php echo ($obj['Id']); ?>"><?php echo faicon('minus-square','font');?> <?php echo ($obj['title']?:'--'); ?></span></td>
       </tr>
       <?php if($obj['mdata'] != ''): if(is_array($obj['mdata'])): $j = 0; $__LIST__ = $obj['mdata'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$mobj): $mod = ($j % 2 );++$j;?><tr id="adminauth<?php echo ($mobj['Id']); ?>" class="adminauth<?php echo ($obj['Id']); ?>">
             <td align="center" valign="middle" height="37" class="lev2"><input data-lev="2" type="checkbox" value="<?php echo ($mobj["Id"]); ?>" <?php if(in_array(($mobj['Id']), is_array($data['auth'])?$data['auth']:explode(',',$data['auth']))): ?>checked="checked"<?php endif; ?> name="auth[]"></td>
             <td align="center" valign="middle"><?php echo ($mobj['Id']); ?></td>
             <td align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="opened" data-id="<?php echo ($mobj['Id']); ?>"><?php echo faicon('plus-square','font');?> <?php echo ($mobj['title']?:'--'); ?></span></td>
           </tr>
           <?php echo showadminauth($mobj['Id'],2,$data['auth']); endforeach; endif; else: echo "" ;endif; endif; endforeach; endif; else: echo "" ;endif; ?>
      </table>
      </div>
     </td>
   </tr><?php endif; ?>
   <tr>
     <td height="32" align="right" valign="middle">部门排序：</td>
     <td height="32" align="left"><?php echo input(array('name'=>'ord','val'=>$data['ord'],'scene'=>'ord'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="<?php echo ($data['Id']); ?>" name="id">
     <td height="32" align="left"><?php echo btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'));?></td>
   </tr>
  </table>
  </form>
 </div>
 <script type="text/javascript">
    $('.lev1 input,.lev2 input').on('ifChecked', function(event){
	  var id = $(this).val();
	  $(".adminauth"+id).find("input").iCheck('check');
    });
    $(".lev1 input,.lev2 input").on("ifUnchecked",function(event){
	  var id = $(this).val();
	  $(".adminauth"+id).find(".icheckbox_minimal").removeClass("checked");
      $(".adminauth"+id).find("input").attr("checked",false);
    }); 
    $("body").on("click",".opened",function(){
     var id  = $(this).data("id");
	 var obj = $(".adminauth"+id);
	 var $this = $(this);
	 if (obj.is(":hidden")){
	   obj.show();
	   $this.find("font").removeClass("fa-plus-square").addClass("fa-minus-square");
	 } else {
	   obj.hide();
	   $this.find("font").removeClass("fa-minus-square").addClass("fa-plus-square");
	 }
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