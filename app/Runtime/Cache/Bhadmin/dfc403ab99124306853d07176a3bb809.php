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
 <h1>
  <div class="pull-right">
   <?php echo btn(array('vals'=>'最近7天','size'=>3,'icon'=>'calendar','scene'=>$scene[0],'url'=>U('index/dataonline','act=1&chart='.$chartindex)));?>
   <?php echo btn(array('vals'=>'最近30天','size'=>3,'icon'=>'calendar','scene'=>$scene[1],'url'=>U('index/dataonline','act=2&chart='.$chartindex)));?>
   <?php echo btn(array('vals'=>'本月','size'=>3,'icon'=>'calendar','scene'=>$scene[2],'url'=>U('index/dataonline','act=3&chart='.$chartindex)));?>
   <?php echo btn(array('vals'=>'折线图','size'=>3,'faicon'=>'line-chart','scene'=>$chartscene[0],'url'=>U('index/dataonline','chart=1&act='.$act)));?>
   <?php echo btn(array('vals'=>'柱型图','size'=>3,'faicon'=>'bar-chart','scene'=>$chartscene[1],'url'=>U('index/dataonline','chart=2&act='.$act)));?>
   <?php echo btn(array('vals'=>'面积图','size'=>3,'faicon'=>'area-chart','scene'=>$chartscene[2],'url'=>U('index/dataonline','chart=3&act='.$act)));?>
  </div>
  <div class="pull-left">
  <form name="pubserch" method="post" action="">
  &nbsp;时间段：<input type="text" value="<?php echo ($sday); ?>" name="sday" onClick="laydate({istime:true,format: 'YYYY-MM-DD'})" class="textsort">
  至&nbsp;<input type="text" value="<?php echo ($eday); ?>" name="eday" onClick="laydate({istime:true,format: 'YYYY-MM-DD'})" class="textsort">
  &nbsp;<?php echo btn(array('vals'=>'查看','type'=>'submit','icon'=>'search','name'=>'searchdata','line'=>1,'scene'=>'primary'));?>
  </form>
  </div>
 </h1> 
  <script type="text/javascript">
   $(function () {
	 $('#container').highcharts({
			title: {
				text: '<?php echo ($subtitle); ?>',
				x: -20
			},
			chart: {
               type: '<?php echo ($type); ?>'
            },
			subtitle: {
				text: '',
				x: -20
			},
			xAxis: {
				categories: [<?php echo ($chartx); ?>]
			},
			yAxis: {
				title: {
					text: '数量 (个)'
				},
				plotLines: [{
					value: 0,
					width: 1,
					color: '#808080'
				}]
			},
			tooltip: {
				valueSuffix: '个'
			},
			legend: {
				layout: 'vertical',
				align: 'right',
				verticalAlign: 'middle',
				borderWidth: 0
			},
			series: [{
				name: 'PV量',
				data: [<?php echo ($pvcount); ?>]
			}, {
				name: 'IP数',
				data: [<?php echo ($ipcount); ?>]
			}]
	});
 });
 </script>
 </div>
 <script src="/bhv3.0/public/Bhadmin/js/highcharts.js"></script>
 <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
 <div class="pubmain">
  <h1>详细数据</h1>  
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="120" align="left" valign="middle">统计时间</td>
     <td align="left" valign="middle"><span<?php echo tooltip('访客在一次访问中，平均打开网站的时长。即每次访问中，打开第一个页面到关闭最后一个页面的平均值，打开一个页面时计算打开关闭的时间差。','auto');?>>平均访问时长 <?php echo icon('info-sign');?></span></td>
     <td width="200" align="left" valign="middle"<?php echo tooltip('当天内点击连最多模块','auto');?>>访问量最多 <?php echo icon('info-sign');?></td>
     <td width="100" align="center" valign="middle"<?php echo tooltip('即通常说的Page View(PV)，用户每打开一个网站页面就被记录1次。用户多次打开同一页面，浏览量值累计。','auto');?>>浏览量/PV <?php echo icon('info-sign');?></td>
     <td width="100" align="center" valign="middle"<?php echo tooltip('您网站的独立访问ip数');?>>IP数 <?php echo icon('info-sign');?></td>
     <td width="100" align="center" valign="middle">操作</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><tr>
     <td align="left" valign="middle"><?php echo ($obj['weekday']); ?></td>
     <td align="left" valign="middle"><?php echo ($obj['time']?:'00:00:00'); ?></td>
     <td align="left" valign="middle"><?php echo ($obj['action']); ?></td>
     <td align="center" valign="middle"><?php echo ($obj['pv']); ?></td>
     <td align="center" valign="middle"><?php echo ($obj['ipcount']); ?></td>
     <td align="center" valign="middle"><?php echo btn(array('vals'=>'详细','faicon'=>'bar-chart-o','scene'=>'primary','url'=>U('index/onlinedetail','day='.$obj['day'])));?></td>
   </tr><?php endforeach; endif; else: echo "" ;endif; ?>
   </table>
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