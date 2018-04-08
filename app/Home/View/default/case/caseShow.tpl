<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('case/index')}">工程案例</a> >
			<a href="{:U('case/index','type='.$data['inftype'])}">{$inftype}</a> > {$data['topic']}
		</div>
		<div class="menuBox">
			<volist name="caseMenu" id="caseMenuobj">
				<a class="hvr-radial-out" <if condition="$data['inftype'] eq $caseMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('case/index','type='.$caseMenuobj['Id'])}">{$caseMenuobj['topic']}</a>
			</volist>
		</div>
		<link rel="stylesheet" href="__css__/cloudzoom.css" />
		<script src="__js__/cloudzoom.js"></script>
		<div class="proShow">
			<div class="casePic"><img src="__pic__/{$data['pic']}"/></div>
			<div class="proShow_tr">
				<h3>{$data['topic']}</h3>
				<div class="proShow_tr_c">
					<div>
						<span>案例简介：</span>
						<p style="max-height:180px;overflow: hidden;">{$data['intro']}</p>
					</div>
					<div class="tell">
						<span>联系方式：</span>
						<p>{$sysconf['mobile']}</p>
					</div>
				</div>
			</div>
		</div>
		<div class="pubBox_t" style="margin-bottom: 20px;">
				<div class="pubTitle">案例详情</div>
		</div>
		<div class="content">
			{$data['content']}
		</div>
	</div>
	<script type="text/javascript">CloudZoom.quickStart();</script>
</block>