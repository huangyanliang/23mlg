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
 <h1>系统栏目管理<div class="pull-right"><?php echo btn(array('vals'=>'添加栏目','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>U('system/adminauthadd')));?></div></h1>
 <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37"><?php echo ckall();?></td>
     <td width="60" align="center" valign="middle">栏目ID</td>
     <td width="230" align="left" valign="middle">栏目名称</td>
     <td align="left" width="300" valign="middle">链接</td>
     <td width="100" align="center" valign="middle">图标</td>
     <td width="100" align="center" valign="middle">图标扩展</td>
     <td width="100" align="center" valign="middle">是否展开</td>
     <td width="100" align="center" valign="middle">排序</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><tr class="maintr" id="adminauth<?php echo ($obj['Id']); ?>">
    <td align="center" valign="middle" height="37"><?php echo ckbox($obj['Id'],$i-1);?></td>
    <td align="center" valign="middle"><?php echo ($obj['Id']); ?></td>
    <td align="left" valign="middle"><span class="opened" data-id="<?php echo ($obj['Id']); ?>"><?php echo faicon('minus-square','font');?> <?php echo ($obj['title']?:'--'); ?></span></td>
    <td align="left" valign="middle"><?php echo ($obj['linkurl']?:'--'); ?></td>
    <td align="center" valign="middle">
     <?php if($obj['icon'] == ''): ?>无
     <?php else: ?>
      <?php if($obj['isext'] == 0): echo icon($obj['icon']);?>
      <?php else: ?>
       <?php echo faicon($obj['icon']); endif; endif; ?>
    </td>
    <td align="center" valign="middle"><?php echo modattr($obj['Id'],$obj['isext'],$dshow['table'],'isext',array('是','否'));?></td>
    <td align="center" valign="middle"><?php echo modattr($obj['Id'],$obj['isopen'],$dshow['table'],'isopen',array('展开','关闭'));?></td>
    <td align="center" valign="middle"><?php echo modord($obj['ord'],$obj['Id'],$dshow['table']);?></td>
    <td align="left" valign="middle"><?php echo btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','url'=>U('system/adminauthmod','id='.$obj['Id'])));?></td>
   </tr>
   <?php if($obj['mdata'] != ''): if(is_array($obj['mdata'])): $j = 0; $__LIST__ = $obj['mdata'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$mobj): $mod = ($j % 2 );++$j;?><tr id="adminauth<?php echo ($mobj['Id']); ?>" class="active adminauth<?php echo ($obj['Id']); ?>">
    <td align="center" valign="middle" height="37"><?php echo ckbox($mobj['Id'],$i-1);?></td>
    <td align="center" valign="middle"><?php echo ($mobj['Id']); ?></td>
    <td align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="opened" data-id="<?php echo ($mobj['Id']); ?>"><?php echo faicon('plus-square','font');?> <?php echo ($mobj['title']?:'--'); ?></span></td>
    <td align="left" valign="middle"><?php echo modField($mobj['linkurl'],$mobj['Id'],'linkurl',$dshow['table']);?></td>
    <td align="center" valign="middle">
     <?php if($mobj['icon'] == ''): ?>无
     <?php else: ?>
      <?php if($mobj['isext'] == 0): echo icon($mobj['icon']);?>
      <?php else: ?>
       <?php echo faicon($mobj['icon']); endif; endif; ?>
    </td>
    <td align="center" valign="middle"><?php echo modattr($mobj['Id'],$mobj['isext'],$dshow['table'],'isext',array('是','否'));?></td>
    <td align="center" valign="middle"><?php echo modattr($mobj['Id'],$mobj['isopen'],$dshow['table'],'isopen',array('展开','关闭'));?></td>
    <td align="center" valign="middle"><?php echo modord($mobj['ord'],$mobj['Id'],$dshow['table']);?></td>
    <td align="left" valign="middle">
     <?php echo btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','url'=>U('system/adminauthmod','id='.$mobj['Id'])));?>
    </td>
   </tr>
   <?php echo showadminauth($mobj['Id']); endforeach; endif; else: echo "" ;endif; endif; endforeach; endif; else: echo "" ;endif; ?>
   <tr>
    <td height="37" align="center" valign="middle"><?php echo ckall();?></td>
    <td height="35" colspan="8" align="left" valign="middle">
    <?php echo btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','icon'=>'trash','scene'=>'danger'));?>
    <font class="text-warning">&nbsp;<?php echo icon('warning-sign');?> 提示：该栏目不建议对外使用（若栏目规则一致，优先判断排序前的规则）。</font>
    <?php echo ($dshow['pageshow']); ?>
    </td>
   </tr>
   </table>
   </form>
 </div>
 <script type="text/javascript">
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