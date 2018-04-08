<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('product/index')}">产品中心</a> >
			<a href="{:U('product/index','type='.$data['inftype'])}">{$inftype}</a> > {$data['topic']}
		</div>
		<div class="menuBox">
			<volist name="proMenu" id="proMenuobj">
				<a class="hvr-radial-out" <if condition="$data['inftype'] eq $proMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('product/index','type='.$proMenuobj['Id'])}">{$proMenuobj['topic']}</a>
			</volist>
		</div>
		<link rel="stylesheet" href="__css__/cloudzoom.css" />
		<script src="__js__/cloudzoom.js"></script>
		<div class="proShow">
			<div class="proShow_tl">
				{:proImgShow($data['atlas'])}
			</div>
			<div class="proShow_tr">
				<h3>{$data['topic']}</h3>
				<div class="proShow_tr_c">
					<div>
						<span>产品简介：</span>
						<p style="max-height:180px;overflow: hidden;">{$data['intro']}</p>
					</div>
					<div class="tell">
						<span>联系方式：</span>
						<p>{$sysconf['mobile']}</p>
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
			{$data['content']}
		</div>
	</div>
	<script type="text/javascript">CloudZoom.quickStart();</script>
</block>