<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';

if($_POST["category_id"]!="")
{
	$search_item .= " and c.id = '".trim($_POST["category_id"])."' ";
}
if($_POST["name"]!="")
{
	$search_item .= " and p.name like '%".trim($_POST["locations_id"])."%' ";
}
if($_POST["product_code"]!="")
{
	$search_item .= " and p.product_code like '%".trim($_POST["product_code"])."%' ";
}

$product_paging=$GL_product_paging;
if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$product_paging;
		//check if he is not putting image.
$qry = "select  pimg.image_name , p.*, c.title from bm_book p inner join bm_category c on p.category_id = c.id inner join bm_book_images pimg on pimg.product_id = p.id  where 1=1 $search_item  group by pimg.product_id " ;

$rec = $obj->my_query($qry) ;
$totalRow = mysql_num_rows($rec);
$from = $pagenum*$product_paging;

$qry = "select  pimg.image_name , p.*, c.title from bm_book p inner join bm_category c on p.category_id = c.id inner join bm_book_images pimg on pimg.product_id = p.id  where 1=1 $search_item   group by pimg.product_id  desc limit $from, $paging "	;	
$rec = $obj->my_query($qry) ;

?>
<fieldset>
<div class="sectionHeader" style="font-family: Arial">
        <h3>Property  Information <span></span>
        </h3>
</div>
<?php if($totalRow > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="center">Image</th>
        <th width="10%" scope="col"  align="center">Product Name</th>
        <th width="10%" scope="col"  align="center">Code</th>
        <th width="10%" scope="col"  align="center">Price</th>
        <th width="10%" scope="col"  align="center">Post Date</th>
        <th width="20%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec))
		{
		          	
		?>
           
            <tr class="<?php echo $class;?>">
           
            <td align="left"><img src="../products/<?php echo str_replace(":","_",$v['image']); ?>" width="150" height="150"  /></td>
            <td align="left"><?php echo $v['title'] ; ?></td>
             <td align="left"><?php echo html_entity_decode($v['description']); ?></td>
             <td align="left"><?php echo $v['contact'] ; ?></td>
            <td align="left"><?php echo date("M j Y",$v['date_added']) ; ?></td>
            <td align="center">
           
			 <?php
			    
                 if( $v['status'] == '1' )
				 {?>
                                <a href="javascript:void(0);"  onclick="redirect_action('product-activate.php', 'deactivate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to De-Active"><img src='images/active.gif' border='0' /></a>
                                <?php
                 }
				 else
				 {?>
                              
                                <a href="javascript:void(0);"  onclick="redirect_action('product-activate.php', 'activate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to Active"><img src='images/deactive.gif' border='0' /></a>
                                <?php
                 }
				 ?>
                 
           <a href="javascript:void(0);"  onclick="redirect_action('product-add.php', 'edit', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" ><img src="images/icon_edit.gif" border="0"></a>&nbsp;&nbsp;
            <a href="javascript:void(0);"  onclick="redirect_action('product-delete.php', 'delete', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');"><img src="images/icon_delete.gif" border="0"></a> &nbsp;&nbsp;
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
 <tr><td align="center" class='msg'> No product found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															