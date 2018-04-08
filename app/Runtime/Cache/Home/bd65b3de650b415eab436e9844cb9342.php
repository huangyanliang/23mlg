<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title><?php if($title != ''): echo ($title); else: echo ($metatitle); endif; ?></title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit" />
<meta name="description" content="<?php echo ($metades); ?>" />
<meta name="keywords" content="<?php echo ($metakey); ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/23mlg/public/Home/css/common.css" />
<link rel="shortcut icon" href="/23mlg/public/Home/images/favicon.ico" />
<link rel="stylesheet" href="/23mlg/public/Home/css/animate.css" />
<script src="/23mlg/public/Home/js/jquery.min.js"></script>
<script src="/23mlg/public/Home/js/common.js"></script>
<link rel="stylesheet" href="/23mlg/public/Home/css/swiper.min.css" />
<link rel="stylesheet" href="/23mlg/public/Home/css/index.css" />
<script type="text/javascript" src="/23mlg/public/Home/js/index.js"></script>
<script type="text/javascript" src="/23mlg/public/Home/js/swiper.min.js"></script>

<script type="text/javascript">
 var think   = '/23mlg/Home';
 var img     = '/23mlg/public/Home/images';
 var pic     = '/23mlg/uploads/images/';
</script>
</head>
<body>
<head>
	<div class="head_top">
		<div class="main">
			<p><img src="/23mlg/public/Home/images/message_top.gif" />欢迎登录湖南环保设备知名厂商</p>
			<dl>
				<dt><img src="/23mlg/public/Home/images/tell.png"/>服务热线：</dt>
				<dd><?php echo ($sysconf['mobile']); ?></dd>
			</dl>
		</div>
	</div>
	<div class="navBox">
		<div class="logo">
			<a href="<?php echo U('index/index');?>"><img src="/23mlg/public/Home/images/logo.jpg" class="hvr-wobble-horizontal" /></a>
		</div>
		<div class="nav">
			<a href="<?php echo U('index/index');?>">
				<dl>
					<dt>首页</dt>
					<dd>Home</dd>
				</dl>
			</a>
			<a href="<?php echo U('about/index');?>">
				<dl>
					<dt>走进澳菲</dt>
					<dd>About us</dd>
					<i><img src="/23mlg/public/Home/images/down.png"/></i>
					<ul>
						<?php if(is_array($aboutMenu)): $i = 0; $__LIST__ = $aboutMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$aboutMenuts): $mod = ($i % 2 );++$i;?><a href="<?php echo U('about/index','id='.$aboutMenuts['Id']);?>">
								<li><?php echo ($aboutMenuts['topic']); ?></li>
							</a><?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
				</dl>
			</a>
			<a href="<?php echo U('product/index');?>">
				<dl>
					<dt>产品中心</dt>
					<dd>Product</dd>
				</dl>
			</a>
			<a href="<?php echo U('case/index');?>">
				<dl>
					<dt>工程案例</dt>
					<dd>ngineering</dd>
				</dl>
			</a>
			<a href="<?php echo U('honor/index');?>">
				<dl>
					<dt>荣誉资质</dt>
					<dd>Honorary</dd>
				</dl>
			</a>
			<a href="<?php echo U('download/index');?>">
				<dl>
					<dt>下载专栏</dt>
					<dd>Download</dd>
				</dl>
			</a>
			<a href="<?php echo U('news/index');?>">
				<dl>
					<dt>新闻资讯</dt>
					<dd>News</dd>
				</dl>
			</a>
			<a href="<?php echo U('about/index','id=3');?>">
				<dl>
					<dt>加入我们</dt>
					<dd>Join us</dd>
				</dl>
			</a>
			<a href="<?php echo U('about/index','id=2');?>">
				<dl>
					<dt>联系方式</dt>
					<dd>Contact</dd>
				</dl>
			</a>
		</div>

	</div>
</head>

	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="/23mlg/public/Home/images/home.png" />
			<a href="<?php echo U('index/index');?>">首页</a> >
			<a href="<?php echo U('product/index');?>">产品中心</a> >
			<a href="<?php echo U('product/index','type='.$data['inftype']);?>"><?php echo ($inftype); ?></a> > <?php echo ($data['topic']); ?>
		</div>
		<div class="menuBox">
			<?php if(is_array($proMenu)): $i = 0; $__LIST__ = $proMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$proMenuobj): $mod = ($i % 2 );++$i;?><a class="hvr-radial-out" <?php if($data['inftype'] == $proMenuobj['Id']): ?>style="background-color:#05B181;color:#fff;"
					<?php else: endif; ?> href="<?php echo U('product/index','type='.$proMenuobj['Id']);?>"><?php echo ($proMenuobj['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
		</div>
		<link rel="stylesheet" href="/23mlg/public/Home/css/cloudzoom.css" />
		<script src="/23mlg/public/Home/js/cloudzoom.js"></script>
		<div class="proShow">
			<div class="proShow_tl">
				<?php echo proImgShow($data['atlas']);?>
			</div>
			<div class="proShow_tr">
				<h3><?php echo ($data['topic']); ?></h3>
				<div class="proShow_tr_c">
					<div>
						<span>产品简介：</span>
						<p style="max-height:180px;overflow: hidden;"><?php echo ($data['intro']); ?></p>
					</div>
					<div class="tell">
						<span>联系方式：</span>
						<p><?php echo ($sysconf['mobile']); ?></p>
					</div>
					<div>
						<span>供货数量：</span>
						<p>999</p>
					</div>
				</div>
			</div>
		</div>
		<div class="pubBox_t" style="margin-bottom: 20px;">
				<div class="pubTitle">产品详情</div>
		</div>
		<div class="content">
			<?php echo ($data['content']); ?>
		</div>
	</div>
	<script type="text/javascript">CloudZoom.quickStart();</script>


<footer>
			<div class="footer_t">
				<div class="main">
					<div class="ewm">
						<p>官方微信公众号</p>
						<img src="/23mlg/uploads/images//<?php echo ($sysconf['weixinpic']); ?>"/>
						<p>扫一扫，了解更多</p>
					</div>
					<div class="footer_li"></div>
					<dl>
						<dt>走进澳菲</dt>
						<?php if(is_array($aboutMenu)): $i = 0; $__LIST__ = $aboutMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$aboutMenus): $mod = ($i % 2 );++$i;?><a href="<?php echo U('about/index','id='.$aboutMenus['Id']);?>"><dd><?php echo ($aboutMenus['topic']); ?></dd></a><?php endforeach; endif; else: echo "" ;endif; ?>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt>产品中心</dt>
						<?php if(is_array($proMenu)): $i = 0; $__LIST__ = $proMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$proMenuobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('product/index','type='.$proMenuobj['Id'].'&sty=4');?>"><?php echo ($proMenuobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt>工程案例</dt>
						<?php if(is_array($caseMenu)): $i = 0; $__LIST__ = $caseMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$caseMenus): $mod = ($i % 2 );++$i;?><a href="<?php echo U('case/index','type='.$caseMenus['Id']);?>"><dd><?php echo ($caseMenus['topic']); ?></dd></a><?php endforeach; endif; else: echo "" ;endif; ?>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt>新闻资讯</dt>
						<?php if(is_array($newMenu)): $i = 0; $__LIST__ = $newMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newMenus): $mod = ($i % 2 );++$i;?><a href="<?php echo U('news/index','type='.$newMenus['Id']);?>"><dd><?php echo ($newMenus['topic']); ?></dd></a><?php endforeach; endif; else: echo "" ;endif; ?>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt>加入我们</dt>
						<dd><a href="<?php echo U('about/index','id=3');?>">招贤纳士</a></dd>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt>联系方式</dt>
						<dd><a href="">QQ联系</a></dd>
						<dd><a href="">在线留言</a></dd>
					</dl>
				</div>
			</div>
			<div class="footer_b">
				<div class="main">
					<p>Copyright © 2012-2018     备案号：<?php echo ($sysconf['icpnote']); ?> </p>
					<span><?php echo ($sysconf['address']); ?></span>
				</div>
			</div>
		</footer>
<?php if(!empty($sysconf)): echo ($sysconf['sys_code']); endif; ?>
</body>
</html>