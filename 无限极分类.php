

CatModel（Model层）:
//获取数据库中的Cat树，$level代表层数，0代码顶层
public function getCat($parent_id=0 ,$level=0){
			//分层目录定义为$catLevel
			$catLevel = array();
			foreach($this->cat as $cat){
				if($cat['parent_id'] == $parent_id){
					$cat['$level'] = $level;
					$catLevel[] = $cat;
					$catLevel = array_merge($catLevel,$this->getCat($cat['cat_id'],$level+1));
				}
			}
			return $catLevel;
		}

CatController（Controller层）
function catlist{
	$catlist =$catModel->getCat();
	$this ->assign('catlist',$catlist);
	$this->display();
}

catlist.html（View层）
<table width="100%" cellspacing="1" cellpadding="2" id="list-table">

  <tr>
    <th>分类名称</th>
    <th>商品数量</th>
    <th>数量单位</th>
    <th>导航栏</th>
    <th>是否显示</th>

    <th>价格分级</th>
    <th>排序</th>
    <th>操作</th>
  </tr>
  <foreach name="catlist" item="v">
      <tr align="center" class="0" id="0_1" id = 'tr_1'>
    <td align="left" class="first-cell" style = 'padding-left="0"'>
            <img src="__PUBLIC__/Admin/images/menu_minus.gif" id="icon_0_1" width="9" height="9" border="0" style="margin-left:0em" />

            <span><a href="#" >{$v['cat_name']}</a></span>
        </td>
    <td width="10%">0</td>
    <td width="10%"><span>&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    <td width="10%"><img src="__PUBLIC__/Admin/images/no.gif" /></td>
    <td width="10%"><img src="__PUBLIC__/Admin/images/yes.gif" /></td>
    <td><span>5</span></td>

    <td width="10%" align="right"><span>50</span></td>
    <td width="24%" align="center">
      <a href="#">转移商品</a> |
      <a href="{:U('Admin/Cat/cateedit',array('cat_id'=>$v['cat_id']))}">编辑</a> |
      <a href="{:U('Admin/Cat/del',array('cat_id'=>$v['cat_id']))}" title="移除">移除</a>
    </td>
  </tr>
</foreach>    
  </table>