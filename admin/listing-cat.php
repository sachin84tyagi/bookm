<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
if($_POST['parent_id'] != "" ) {
   $search_item .= " and  parent_id = '".$_POST["parent_id"]."' ";
}
if($_POST["category"]!="")
{
	$search_item .= " and  category like '%".$_POST["category"]."%' ";
}

$category_paging=$GL_category_paging;

if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$category_paging;

$qry = "select * from ".$obj->getTable("var_category")." where 1=1  $search_item  order by  id desc" ;	
$rec      = $obj->my_query($qry) ;
$totalRow = mysql_num_rows($rec);
$from     = $pagenum*$category_paging;

$qry = "select * from ".$obj->getTable("var_category")." where 1=1  $search_item  order by  id desc limit $from, $paging "	; 
$rec = $obj->my_query($qry) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>Category Information <span></span>
        </h3>
</div>
<?php if(mysql_num_rows($rec) > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="center">Category</th>
        <th width="15%" scope="col"  align="center">Added Date</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec) )
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
           
            <td align="left" ><?php echo $v["title"];?> </td>
            <td align="left"><?php echo date('M j Y',$v["date_added"]);?></td>
            <td align="center">
                <a href="javascript:void(0);" title="Child Category" onclick="redirect_action('cat-manage.php','childdetail','<?php echo $v["id"];?>','<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;
             <a href="javascript:void(0);" title="View" onclick="view_detail('<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;&nbsp;
			 <?php 
			   if($v['status'] == 1 ) {
			 ?>
             <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('cat-activate.php','deactivate','<?php echo $v["id"];?>','<?php echo $v["parent_id"];?>') ;"><img src="images/active.gif" border="0"></a>
             <?php }else { ?>
             <a href="javascript:void(0);" title="Activate" onclick="redirect_action('cat-activate.php','activate','<?php echo $v["id"];?>','<?php echo $v["parent_id"];?>') ;"><img src="images/deactive.gif" border="0"></a>
             <?php } ?>
             <a href="javascript:void(0);" title="Edit" onclick="redirect_action('cat-add.php?parent_id=<?php echo $parent_id  ?>','edit','<?php echo $v["id"];?>','<?php echo $v["parent_id"];?>') ;"><img src="images/icon_edit.gif" border="0"></a>

              <a href="javascript:void(0);" title="Delete" onclick="redirect_action('cat-delete.php','delete','<?php echo $v["id"];?>','<?php echo $v["parent_id"];?>') ;"><img src="images/remove.png" border="0"></a>
             </td>
            </tr>
		<?php
		$i++;
        }
		?>
    </table>
    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:15px;">
 <tr><td align="right" >
 <?php
   	$page_text=$obj_paging->admin_paging($totalRow,$paging,$pagenum);
    echo $page_text;
	?>
 </td></tr>
 </table>
<?php }
else
{?>
 <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:15px;">
 <tr><td align="center" class='msg'> No category found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															