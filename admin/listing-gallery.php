<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
if($_POST["caption"]!="")
{
	$search_item .= " and caption = '".trim($_POST["caption"])."' ";
}
$product_paging=$GL_product_paging;
if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$GL_product_paging;
		
$qry = "select * from ".$obj->getTable("var_images_gallery")."  where 1=1 $search_item  order by id desc" ;		
$rec = $obj->my_query($qry) ;

$totalRow = mysql_num_rows($rec);
$from = $pagenum*$product_paging ;

$qry = "select * from ".$obj->getTable("var_images_gallery")."  where 1=1  $search_item  order by id desc limit $from, $paging "	;	
$rec = $obj->my_query($qry) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>Gallery  Information <span></span>
        </h3>
</div>
<?php if($totalRow > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="center">Images</th>
        <th width="10%" scope="col"  align="center">Caption</th>
        <th width="10%" scope="col"  align="center">Post Date</th>
        <th width="10%" scope="col"  align="center">Position</th>
        <th width="20%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec))
		{
			
			
		?>
           
            <tr class="<?php echo $class;?>">
           
            <td align="left"><?php echo "<img src='../gallery/".str_replace('thumb','small',$v['image_name'])."' >" ; ?></td>
           
            <td align="left"><?php echo $v['caption'] ; ?></td>
            <td align="left"><?php echo $v['position'] ; ?></td>
            <td align="left"><?php echo date("M j Y",$v['date_added']) ; ?></td>
            <td align="center">
			 <?php
			    
                 if( $v['status'] == '1' )
				 {?>
                                <a href="javascript:void(0);"  onclick="redirect_action('gallery-activate.php', 'deactivate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to De-Active"><img src='images/active.gif' border='0' /></a>
                                <?php
                 }
				 else
				 {?>
                              
                                <a href="javascript:void(0);"  onclick="redirect_action('gallery-activate.php', 'activate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to Active"><img src='images/deactive.gif' border='0' /></a>
                                <?php
                 }
				 ?>
                 
           <a href="javascript:void(0);"  onclick="redirect_action('gallery-add.php', 'edit', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" ><img src="images/icon_edit.gif" border="0"></a>&nbsp;&nbsp;
            <a href="javascript:void(0);"  onclick="redirect_action('gallery-delete.php', 'delete', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');"><img src="images/icon_delete.gif" border="0"></a> &nbsp;&nbsp;
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
 <tr><td align="center" class='msg'> No gallery found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															