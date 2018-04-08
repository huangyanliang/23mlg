<extend name="default/Base/common" />
<block name="main">
	<div class="pic_n"></div>
	<div class="main">
		<div class="addressBox">
			<img src="__img__/home.png" />
			<a href="{:U('index/index')}">首页</a> >
			<a href="{:U('product/index')}">产品中心</a> > {$title}
		</div>
		<div class="menuBox">
			<volist name="proMenu" id="proMenuobj">
				<a class="hvr-radial-out" <if condition="$type eq $proMenuobj['Id']">style="background-color:#05B181;color:#fff;"
					<else/>
					</if> href="{:U('product/index','type='.$proMenuobj['Id'])}">{$proMenuobj['topic']}</a>
			</volist>
		</div>
		<div class="products">
			<volist name="poducts" id="productsobj">
				<a href="{:U('product/product','id='.$productsobj['Id'])}">
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