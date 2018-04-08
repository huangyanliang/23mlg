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
  <h1>添加栏目权限</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysauth(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目名称：</td>
     <td height="32" align="left"><?php echo input(array('units'=>'注','name'=>'title','tips'=>'栏目名称','width'=>20,'place'=>'栏目名称'));?></td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目图标：</td>
     <td height="32" align="left" class="icontd"><?php echo input(array('faicon'=>'code','name'=>'icon','add'=>'code','tips'=>'栏目图标','width'=>20,'place'=>'栏目图标'));?></td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">图标类型：</td>
     <td height="32" align="left" class="icontype"><?php echo checkbox(1,0,'isext');?> <span class="text-warning"> 注：勾选表示扩展图标</span> </td>
   </tr>
   <tr>
     <td width="10%" height="32" align="right" valign="middle">栏目所属：</td>
     <td height="32" align="left">
       <?php echo btn(array('vals'=>'顶级栏目','size'=>3,'add'=>'lev1','scene'=>'primary'));?>
       <?php echo btn(array('vals'=>'次级栏目','size'=>3,'add'=>'lev2','scene'=>'default'));?>
       <?php echo btn(array('vals'=>'小栏目','size'=>3,'add'=>'lev3','scene'=>'default'));?>
     </td>
   </tr>
   <tr class="topmenu" style="display:none;">
     <td width="10%" height="32" align="right" valign="middle">选择栏目：</td>
     <td height="32" align="left">
       <?php echo dropdown($topmenu,0,'选择顶级栏目','lid');?>
       <div class="mmenu" style="background:#fff; min-height:30px; width:80%; padding:10px; margin:5px auto 0 0; border:dotted 1px #ddd; display:none;"></div>
     </td>
   </tr>
   
   <tr class="linktr" style="display:none;">
     <td width="10%" height="32" align="right" valign="middle">栏目链接：</td>
     <td height="32" align="left"><?php echo input(array('faicon'=>'link','name'=>'linkurl','tips'=>'参数和方法名之间用,隔开 例如：Website/datalist,tables=information&sty=2','width'=>40,'place'=>'栏目链接 Website/datalist,tables=information&sty=2'));?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">栏目排序：</td>
     <td height="32" align="left"><?php echo input(array('type'=>'text','scene'=>'ord','name'=>'ord','val'=>0));?></td>
   </tr>
   <tr class="importanttr" style="display:none;">
     <td height="32" align="right" valign="middle">是否重要：</td>
     <td height="32" align="left">
     <?php echo checkbox(0,0,'isimportant');?> <span class="text-warning"> 注：勾选表示权限比较重要</span>
     &nbsp;&nbsp;&nbsp;&nbsp;
     特殊权限：<?php echo checkbox(0,0,'isspecial');?> <span class="text-warning"> 注：勾选表示特殊权限</span>
     <div class="alert alert-warning" style="margin:10px auto 0px auto;">
      <p class="text-danger">特殊权限添加须知</p>
      <p>1.勾选了特殊权限的栏目，系统不会控制显示在对应的栏目下。</p>
      <p>2.存在特殊权限，但是部门没有该权限的话，仍然没有权限查看。</p>
      <p>3.例如：添加一个 产品添加 的特殊权限，若是您想控制部门拥有查看产品的权限，但是无法添加产品的权限。您可以把添加产品设定为特殊权限</p>
     </div> 
     </td>
   </tr>
   <tr class="opentr" style="display:none;">
     <td height="32" align="right" valign="middle">是否展开：</td>
     <td height="32" align="left"><?php echo checkbox(1,0,'isopen');?> <span class="text-warning"> 注：是否默认展开项目。</span></td>
   </tr>
   <input type="hidden" id="mpid" name="mpid" value="1" />
   <input type="hidden" id="pid" name="pid" value="0" />
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left"><?php echo btn(array('vals'=>'添加栏目','size'=>3,'type'=>'submit','faicon'=>'code','scene'=>'primary'));?></td>
   </tr>
  </table>
  </form>
 </div>
 <script type="text/javascript">
  function sysauth(td) {
	if (td.title.value == '') { swal('请输入栏目名称','系统提示','error');td.title.focus(); return false;}
	var mpid = $("#mpid").val();
	if (mpid == 2) {
	  if ($("#lid").val() == 0) {swal('请至少选择一个顶级栏目','','error');return false;}
	}
	if (mpid == 3) {
	  if ($("#pid").val() == 0) {swal('请至少选择一个次级栏目','','error');return false;}
	}
  }
  $(".lev1").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(1);
    $(".lev2,.lev3").removeClass("btn-primary").addClass("btn-default");
	$(".importanttr,.linktr,.opentr,.topmenu").hide();
  });
  $(".lev2").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(2);
    $(".lev1,.lev3").removeClass("btn-primary").addClass("btn-default");
	$(".opentr,.linktr,.topmenu").show();
	$(".importanttr,.mmenu").hide();
	$("#pid").val(0);
  });
  $(".lev3").click(function(e) {
	$(this).removeClass("btn-default").addClass("btn-primary");
	$("#mpid").val(3);
    $(".lev1,.lev2").removeClass("btn-primary").addClass("btn-default");
	$(".opentr").hide();
	$(".importanttr,.linktr,.topmenu").show();
	if ($("#lid").val()!=0) {
	  showMenu($("#lid").val());
	}
  });
  //
  $(".topmenu .dropdown-menu li a").click(function(e) {
    var id = $(this).data("id");
	if ( $("#mpid").val() == 3 && id !=0 ) {
	  showMenu(id);
	}
  });
  //
  function showMenu(id) {
    if ( id ) {
	  $.post("<?php echo U('Admin/getMenu');?>",{'id':id},function(data){
	    if (data!='') {
		  $(".mmenu").show().html(data);
		} else {
		  $(".mmenu").hide().html('');
		  $("#pid").val(0);
		}
	  },'json');
	} else {
	  return false;
	}
  }
  
  //
  $("body").on("click",".btn-menu",function(){
    var id = $(this).data("id");
	$(".btn-menu button").addClass("btn-default").removeClass("btn-success");
	$(this).find(".btn").removeClass("btn-success").addClass("btn-success");
	$("#pid").val(id);
  });
  
  $(".code").on("blur",function(){
    showicon();
  });
  $('.icontype input').on('ifChecked', function(event){
    showicon();
  });
  $(".icontype input").on("ifUnchecked",function(event){
    showicon();
  });
  function showicon() {
   var icon = $('.code').val();
   if ( icon !='' ) {
	 isext = $(":input[name='isext']").is(":checked");
	 if ( isext ) {
	   $(".icontd .input-group-addon").html('<span class="fa fa-'+icon+'">&nbsp;</span>');
	 } else {
	   $(".icontd .input-group-addon").html('<span class="glyphicon glyphicon-'+icon+'"></span>');
	 }
   }
  }
  
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