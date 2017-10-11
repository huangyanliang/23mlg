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
   <h1>图片管理
  <div class="pull-right">
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'th-list','scene'=>$scene[0],'url'=>U('system/syspic','act=1')));?>
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'th','scene'=>$scene[1],'url'=>U('system/syspic','act=2')));?>
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'folder-open','scene'=>$scene[2],'url'=>U('system/syspic','act=3')));?>
   <?php echo btn(array('vals'=>'统计','size'=>3,'icon'=>'signal','scene'=>'default','tips'=>'统计文件夹内上传文件大小，文件夹数量，文件数量','dir'=>'bottom','add'=>'mysignal'));?>
  </div></h1>
  <?php if($act == 1): ?><form name="publist" method="post" action="<?php echo U('system/sysdelpic');?>" onSubmit="return pubdel(document.publist)">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="30"><?php echo ckall('top');?></td>
     <td width="35%" align="left" valign="middle">文件夹/图片名称</td>
     <td width="100" align="left" valign="middle">大小</td>
     <td width="150" align="left" valign="middle">上传时间</td>
     <td width="80" align="left" valign="middle">是否冗余</td>
     <td align="left" valign="middle">查看</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i; if($obj['isou'] == 1): ?><tr class="maintr">
   <?php else: ?>
   <tr class="maintr info"><?php endif; ?>
    <td align="center" valign="middle" height="25">
    <?php if($obj['isou'] == 1): echo ckbox($obj['pic'],$i-1,0,1);?>
    <?php else: ?>
     <?php echo ckbox($obj['pic'],$i-1,1); endif; ?>
    </td>
    <td align="left" valign="middle"><?php echo ($obj['spic']); ?></td>
    <td align="left" valign="middle"><?php echo ($obj['size']); ?></td>
    <td align="left" valign="middle"><?php echo ($obj['time']); ?></td>
    <td align="left" valign="middle">
     <?php if($obj['isou'] == 1): ?><font color="green">正常</font>
     <?php else: ?>
      <font color="red">冗余</font><?php endif; ?>
    </td>
    <td align="left" valign="middle">
     <div class="zomm-pic"><img src="/bhv3.0/<?php echo ($obj['pic']); ?>" data-action="zoom"></div>
    </td>
   </tr><?php endforeach; endif; else: echo "" ;endif; ?>
   <tr>
    <td align="center" valign="middle"><?php echo ckall();?></td>
    <td height="35" align="left" valign="middle" colspan="5">
	 <?php echo btn(array('vals'=>'删除','type'=>'submit','icon'=>'trash','name'=>'deldata','scene'=>'danger'));?>&nbsp;
     <font class="text-warning">&nbsp;<?php echo icon('warning-sign');?> 提示，任何图片删除都无法找回，建议只删除冗余的图片！</font>
     <?php echo ($dshow['pageshow']); ?>
    </td>
   </tr>
  </table>
  </form><?php endif; ?>
  
  <?php if(($act == 2) OR ($act == 4)): ?><form name="publist" method="post" action="<?php echo U('system/sysdelpic');?>" onSubmit="return pubdel(document.publist)">
  <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><div class="syspicshow">
       <div class="sysmypic"><img src="/bhv3.0/<?php echo ($obj['pic']); ?>" class="img-thumbnail" data-action="zoom"></div>
       <div class="sysmypic-foot">
	     <?php if($obj['isou'] == 1): ?><font color="green">正常</font>  <?php echo ckbox($obj['pic'],$i-1,0,1);?>
         <?php else: ?>
          <font color="red">冗余</font>  <?php echo ckbox($obj['pic'],$i-1,1); endif; ?>
       </div>
      </div><?php endforeach; endif; else: echo "" ;endif; ?>
  <div style="height:10px; clear:both;"></div>
  <div class="delmostdiv" style="margin:5px auto 0px 10px; clear:both;">
   <?php echo ckall($type='bottom').btn(array('vals'=>'选中删除','type'=>'submit','size'=>3,'icon'=>'trash','name'=>'deldata','scene'=>'danger'));?>
   <?php echo ($dshow['pageshow']); ?>
  </div>
  </form><?php endif; ?>
  
  <?php if($act == 3): if(is_array($file)): $i = 0; $__LIST__ = $file;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fobj): $mod = ($i % 2 );++$i; if($fobj['count'] == 0): ?><a href="javascript:void(0)">
    <?php else: ?>
    <a href="<?php echo U('system/syspic','act=4&path='.$fobj['file']);?>"><?php endif; ?>
    <div class="myfolder">
     <div class="myfilenum"><span><?php echo ($fobj['count']); ?></span></div>
     <div class="myicon"><?php echo icon('folder-open');?></div>
     <div class="mytips"><?php echo ($fobj['file']); ?></div>
    </div></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
  <div class="filesignal">
   <h2>文件统计 <b>&times;</b></h2>
   <p>统计路径：<?php echo icon('file');?><b><?php echo ($upTotal['file']); ?></b></p>
   <p>目录大小：<?php echo faicon('info');?><b><?php echo ($upTotal['size']); ?></b></p>
   <p>　文件数：<?php echo icon('folder-open');?><b><?php echo ($upTotal['count']); ?> 个</b></p>
   <p>　目录数：<?php echo faicon('list');?><b><?php echo ($upTotal['dircount']); ?> 个</b></p>
  </div>
  <script type="text/javascript">
    $(".mysignal").click(function(e) {
      if ($(".filesignal").is(":hidden")) {
	    $(".filesignal").show().animate({"right":"10px"},500,function(){});
	  }    
   });
   $(".filesignal h2 b").click(function(e) {
	  $(".filesignal").animate({"right":"-380px"},500,function(){
	    $(".filesignal").hide();
	  });
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