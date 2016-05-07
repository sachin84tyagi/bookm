<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
$parent_id = $_POST["parent_id"] > 0 ?$_POST["parent_id"]:0 ;
if($_POST["parent_id"]!="")
{
	$search_item .= " and c.id = '".$_POST["parent_id"]."' ";
}

$category_paging=$GL_category_paging;

if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$city_paging;

$qry = "select * from ".$obj->getTable("var_category")." c where 1=1 $search_item  order by c.id desc" ;	
$rec      = $obj->my_query($qry) ;
$totalRow = mysql_num_rows($rec);
$from     = $pagenum*$user_paging;

$qry = "select * from ".$obj->getTable("var_category")." c where 1=1 $search_item   order by ct.id desc limit $from, $paging "	; 
$rec = $obj->my_query($qry) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>City Information <span></span>
        </h3>
</div>
<?php if(mysql_num_rows($rec) > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="left">Category</th>
        <th width="15%" scope="col"  align="left">Added Date</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec) )
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
           
            <td><?php echo $v["category"];?> </td>
            <td><?php echo date('M j Y',$v["added_date"]);?></td>
            <td align="center">
             <a href="javascript:void(0);" title="View" onclick="view_detail('<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;&nbsp;
			 <?php 
			   if($v['status'] == 1 ) {
			 ?>
             <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('cat-activate.php','deactivate','<?php echo $v["id"];?>') ;"><img src="images/active.gif" border="0"></a>
             <?php }else { ?>
             <a href="javascript:void(0);" title="Activate" onclick="redirect_action('cat-activate.php','activate','<?php echo $v["id"];?>') ;"><img src="images/deactive.gif" border="0"></a>
             <?php } ?>
                           <a href="javascript:void(0);" title="Edit" onclick="redirect_action('cat-add.php','edit','<?php echo $v["id"];?>') ;"><img src="images/edit.png" border="0"></a>

              <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('user-delete.php','delete','<?php echo $v["id"];?>') ;"><img src="images/remove.png" border="0"></a>
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
														
                                                                    
																
															