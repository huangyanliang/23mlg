<extend name="default/public/common" />
<block name="main">
 <div class="pubmain">
 <h1>资料管理<div class="pull-right">{:btn(array('vals'=>'添加产品','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>U('Product/productadd','sty='.$sty.'&tables='.$dshow['table'].'&martables='.$dshow['martable'])))}</div></h1>
 <form name="pubserch" method="get" action=""> 
  <div class="search">
   <div class="pull-left">
   资料名称：<input type="text" class="text" name="topic" placeholder="资料名称" style="width:150px;">
   &nbsp;资料分类：
   </div>
   <div class="pull-left">
   {:dropdownlink($infdata,array('ctag'),array('promtag'))}
   </div>
   &nbsp;是否启用：{:dropdown(1,0,'请选择','enabled')}
   <input type="hidden" value="{$dshow['table']}" name="tables">
   <input type="hidden" value="{$sty}" name="sty">
   &nbsp;{:btn(array('vals'=>'查询','type'=>'submit','icon'=>'search','name'=>'searchdata','line'=>1,'scene'=>'primary'))}
  </div>
  </form>
  <if condition="$data neq ''">
  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">序号</td>
     <td align="left" valign="middle">名称</td>
     <td width="150" align="left" valign="middle">类别</td>
     <td width="100" align="center" valign="middle">排序</td>
     <td width="110" align="center" valign="middle">置顶</td>
     <td width="120" align="center" valign="middle">启用</td>
     <td width="120" align="center" valign="middle">更新日期</td>
     <td width="100" align="center" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle">
     <if condition="$obj['pic'] neq ''">
      <a href="javascript:void(0)"{:imgshow($obj['pic'])}>{:icon('picture')}</a>
     </if>
     {:modField($obj['topic'],$obj['Id'],'topic',$dshow['table'])}
     </td>
    <td align="left" valign="middle">{:gtopic('proctag',$obj['ctag'])} > {:gtopic('promtag',$obj['mtag'])} </td>
    <td align="center" valign="middle">{:modord($obj['ord'],$obj['Id'],$dshow['table'])}</td>
    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['istop'],$dshow['table'],'istop',array('置顶','取消'))}</td>
    <td align="center" valign="middle">{:modattr($obj['Id'],$obj['enabled'],$dshow['table'])}</td>
    <td align="center" valign="middle">{:showdate($obj['date'])}</td>
    <td align="center" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','url'=>U('Product/productmod','tables='.$dshow['table'].'&martables='.$dshow['martable'].'&id='.$obj['Id'])))}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall()}</td>
    <td height="35" colspan="8" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','icon'=>'trash','scene'=>'danger'))}
    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，任何形式删除的数据都无法找回，请谨慎操作！</font>
    {$dshow['pageshow']}
    </td>
   </tr>
   </table>
   </form>
   <else/>
    <div class="alert alert-danger">条件下暂无资料，您可以点击添加按钮添加一条数据。</div>
   </if>
 </div>
</block>