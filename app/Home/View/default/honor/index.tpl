<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('honor/index')}">荣誉资质</a> > {$title}
		</div>
		<div class="menuBox">
			<volist name="honorMenu" id="honorMenuobj">
				<a class="hvr-radial-out" <if condition="$id eq $honorMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('honor/index','type='.$honorMenuobj['Id'])}">{$honorMenuobj['topic']}</a>
			</volist>
		</div>

		<div class="wrap">
			<div class='poster-main carousel' data-setting='{"width":1156,"height":469,"posterWidth":332,"posterHeight":469,
             "verticalAlign":"middle","autoPlay":true,"speed":1000,"delay":1000,"scale":0.9}'>
				<div class='poster-btn poster-prev-btn'></div>
				<ul class='poster-list'>
					<volist name="honors" id="honorsobj">
					<li class="list-item">
						<a><img src="__pic__/{$honorsobj['pic']}" alt="{$honorsobj['topic']}" onclick="honorShow(this.src)"></a>
					</li>
					</volist>
				</ul>
				<div class='poster-btn poster-next-btn'></div>
			</div>

		</div>
		<script type="text/javascript" src="__js__/index.js"></script>
		<script src="__js__/carousel.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" charset="utf-8">
			$(function() {
				Carousel.init($('.carousel'));
			})
		</script>
	</div>
	<div class="blackBg">
		<div class="honorPicShow">
			<img src="__img__/honorss.jpg" />
		</div>
	</div>
</block>