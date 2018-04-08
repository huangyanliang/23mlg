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
			<a href="">
				<dl>
					<dt>下载专栏</dt>
					<dd>Download</dd>
				</dl>
			</a>
			<a href="">
				<dl>
					<dt>新闻资讯</dt>
					<dd>News</dd>
				</dl>
			</a>
			<a href="">
				<dl>
					<dt>加入我们</dt>
					<dd>Join us</dd>
				</dl>
			</a>
			<a href="">
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
			<a href="<?php echo U('honor/index');?>">荣誉资质</a> > <?php echo ($title); ?>
		</div>
		<div class="menuBox">
			<?php if(is_array($honorMenu)): $i = 0; $__LIST__ = $honorMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$honorMenuobj): $mod = ($i % 2 );++$i;?><a class="hvr-radial-out" <?php if($id == $honorMenuobj['Id']): ?>style="background-color:#05B181;color:#fff;"
					<?php else: endif; ?> href="<?php echo U('honor/index','type='.$honorMenuobj['Id']);?>"><?php echo ($honorMenuobj['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
		</div>

		<div class="wrap">
			<div class='poster-main carousel' data-setting='{"width":1156,"height":469,"posterWidth":332,"posterHeight":469,
             "verticalAlign":"middle","autoPlay":true,"speed":1000,"delay":1000,"scale":0.9}'>
				<div class='poster-btn poster-prev-btn'></div>
				<ul class='poster-list'>
					<?php if(is_array($honors)): $i = 0; $__LIST__ = $honors;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$honorsobj): $mod = ($i % 2 );++$i;?><li class="list-item">
						<a><img src="/23mlg/uploads/images//<?php echo ($honorsobj['pic']); ?>" alt="<?php echo ($honorsobj['topic']); ?>" onclick="honorShow(this.src)"></a>
					</li><?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
				<div class='poster-btn poster-next-btn'></div>
			</div>

		</div>
		<script type="text/javascript" src="/23mlg/public/Home/js/index.js"></script>
		<script src="/23mlg/public/Home/js/carousel.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" charset="utf-8">
			$(function() {
				Carousel.init($('.carousel'));
			})
		</script>
	</div>
	<div class="blackBg">
		<div class="honorPicShow">
			<img src="/23mlg/public/Home/images/honorss.jpg" />
		</div>
	</div>


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
						<?php if(is_array($newMenu)): $i = 0; $__LIST__ = $newMenu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newMenus): $mod = ($i % 2 );++$i;?><a href=""><dd><?php echo ($newMenus['topic']); ?></dd></a><?php endforeach; endif; else: echo "" ;endif; ?>
					</dl>
					<div class="footer_li"></div>
					<dl>
						<dt><a href="">加入我们</a></dt>
						<dd><a href="">招贤纳士</a></dd>
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