<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('news/index')}">新闻资讯</a> > <a href="{:U('news/index','type='.$data['inftype'])}">{$inftype}</a> > {$data['topic']}
		</div>
		<div class="menuBox">
			<volist name="newMenu" id="newMenuobj">
				<a class="hvr-radial-out" <if condition="$data['inftype'] eq $newMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('news/index','type='.$newMenuobj['Id'])}">{$newMenuobj['topic']}</a>
			</volist>
		</div>
		<div class="right_con">
             <div class="right_main_T">
                <h3>{$data['topic']}</h3>
                <h2>更新时间：{$data['date']}&nbsp;&nbsp;阅读：{$data['hit']}</h2>
            </div>
            {$data['content']}
        </div>
	</div>
</block>