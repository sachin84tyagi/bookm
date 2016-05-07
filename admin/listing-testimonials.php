<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
if($_POST["author_name"]!="")
{
	$search_item .= " and author_name like'%".trim($_POST["author_name"])."%'";
}
if($_POST["testimonials_title"]!="")
{
	$search_item .= " and testimonials_title like'%".trim($_POST["testimonials_title"])."%'";
}

$user_paging=$GL_user_paging;

if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$user_paging;

$query = "select t.* from ".$obj->getTable("var_testimonials")." t  where 1=1 $search_item  order by id desc" ;

$result   = $obj->my_query($query);
$totalRow = mysql_num_rows($result);
$from     = $pagenum*$user_paging;
$query = "select t.* from ".$obj->getTable("var_testimonials")." t  where 1=1 $search_item order by id desc limit $from, $paging " ;
$result = $obj->my_query($query) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>Testimonials Information <span></span>
        </h3>
</div>
<?php if($totalRow > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >
        <th width="10%" scope="col"  align="center">Auther Name</th>
         <th width="10%" scope="col"  align="center">Location</th>
        <th width="10%" scope="col"  align="center">Photo</th>
        <th width="15%" scope="col"  align="center">Title</th>
        <th width="10%" scope="col"  align="center">Post Date</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($result))
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
            <td align="left"><?php echo $v["author_name"];?> </td>
            <td align="left"><?php echo $v["location"];?> </td>
            <td align="center">
			<?php if( file_exists("../testinomial-images/".$v['image']) ) { ?>
            <img src="../testinomial-images/<?php echo $v['image'] ; ?>"  />
            <?php } ?>
            </td>
            <td align="left"><?php echo $v["testimonials_title"];?></td>
            <td align="left"><?php echo date('M j Y',$v['date_added']) ; ?></td>
            <td align="center">
             <a href="javascript:void(0);" title="View" onclick="view_detail('<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;&nbsp;
			 <?php 
			   if($v['status'] == 1 ) {
			 ?>
        <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('testimonials-activate.php','deactivate','<?php echo $v["id"];?>') ;"><img src="images/active.gif" border="0"></a>
             <?php }else { ?>
     <a href="javascript:void(0);" title="Edit" onclick="redirect_action('testimonials-activate.php','activate','<?php echo $v["id"];?>');"><img src="images/deactive.gif" border="0"></a>
             <?php } ?>
 <a href="javascript:void(0);" title="Edit" onclick="redirect_action('testimonials-add.php','edit','<?php echo $v["id"];?>') ;"><img src="images/icon_edit.gif" border="0"></a>
              <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('testimonials-delete.php','delete','<?php echo $v["id"];?>') ;"><img src="images/remove.png" border="0"></a>
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
 <tr><td align="center" class='msg'> No Testimonials found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															