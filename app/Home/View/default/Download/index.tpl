<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('download/index')}">下载专栏</a> > {$title}
		</div>
		<div class="menuBox">
			<volist name="downloadMenu" id="downloadMenus">
				<a class="hvr-radial-out" <if condition="$type eq $downloadMenus['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('download/index','type='.$downloadMenus['Id'])}">{$downloadMenus['topic']}</a>
			</volist>
		</div>
		<ul class="new_ul">
			<volist name="news" id="newobj">
				<a href="{:U('download/downloadShow','id='.$newobj['Id'])}"><li>{$newobj['topic']}<span>[<?php echo date('Y-m-d',strtotime($newobj['date']));?>]</span></li></a>
			</volist>
		</ul>
	</div>
</block>