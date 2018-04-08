<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('case/index')}">工程案例</a> > {$title}
		</div>
		<div class="menuBox">
			<volist name="caseMenu" id="caseMenuobj">
				<a class="hvr-radial-out" <if condition="$type eq $caseMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('case/index','type='.$caseMenuobj['Id'])}">{$caseMenuobj['topic']}</a>
			</volist>
		</div>
		<div class="products">
			<volist name="poducts" id="productsobj">
				<a href="{:U('case/caseShow','id='.$productsobj['Id'])}">
					<dl>
						<dt><img src="__pic__/{$productsobj['pic']}" title="{$productsobj['topic']}" alt="{$productsobj['topic']}" width="100%" /></dt>
						<dd>
							<h3 class="ell">{$productsobj['topic']}</h3>
							<p class="ell2">{$productsobj['intro']}</p>
						</dd>
					</dl>
				</a>
			</volist>
		</div>

		<div class="jogger">{$pageshow}</div>
	</div>
</block>