<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('news/index')}">新闻资讯</a> > {$title}
		</div>
		<div class="menuBox">
			<volist name="newMenu" id="newMenuobj">
				<a class="hvr-radial-out" <if condition="$type eq $newMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('news/index','type='.$newMenuobj['Id'])}">{$newMenuobj['topic']}</a>
			</volist>
		</div>
		<ul class="new_ul">
			<volist name="news" id="newobj">
				<a href="{:U('news/newShow','id='.$newobj['Id'])}"><li>{$newobj['topic']}<span>[<?php echo date('Y-m-d',strtotime($newobj['date']));?>]</span></li></a>
			</volist>
		</ul>
	</div>
</block>