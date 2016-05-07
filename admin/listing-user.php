<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
if($_POST["fname"]!="")
{
	$search_item .= " and f_name like'%".trim($_POST["fname"])."%'";
}

if($_POST["lname"]!="")
{
	$search_item .= " and l_name like'%".trim($_POST["lname"])."%'";
}
if($_POST["email"]!="")
{
	$search_item .= " and email like '%".trim($_POST["email"])."%'";
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

$query = "select u.* from ".$obj->getTable("var_user")." u where 1=1 $search_item  order by id desc" ;

$result   = $obj->my_query($query);
$totalRow = mysql_num_rows($result);
$from     = $pagenum*$user_paging;
$query = "select u.* from ".$obj->getTable("var_user")." u where 1=1 $search_item order by id desc limit $from, $paging " ;
$result = $obj->my_query($query) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>User Information <span></span>
        </h3>
</div>
<?php if($totalRow > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >
        <th width="10%" scope="col"  align="center">Picture</th>       
        <th width="10%" scope="col"  align="center">First Name</th>
        <th width="15%" scope="col"  align="center">Last Name</th>
        <th width="10%" scope="col"  align="center">Type</th>
        <th width="16%" scope="col"  align="center">Email</th>
        <th width="21%" scope="col"  align="center">Phone No</th>
         <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($result))
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
            <td align="left"><img src="user-picture.php?id=<?php echo $v['id'] ?>" width="50" height="50"  /> </td>
            <td align="left"><?php echo $v["f_name"];?> </td>
            <td align="left"><?php echo $v["l_name"];?></td>
            <td align="left"><?php echo $v['user_type'] ?></td>
            <td align="left"><?php echo $v["email"];?></td>
            <td align="left"><?php
			$phone1 = substr($v["contact"],0,3);
			$phone2 = substr($v["contact"],3,3);
			$phone3 = substr($v["contact"],6,4);			
			echo "{$phone1}-{$phone2}-{$phone3}";
			// has user created any invoice? don't get him deleted.
			?></td>
             <td align="center">
             <a href="javascript:void(0);" title="View" onclick="view_detail('<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;&nbsp;
			 <?php 
			   if($v['status'] == 1 ) {
			 ?>
             <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('user-activate.php','deactivate','<?php echo $v["id"];?>') ;"><img src="images/active.gif" border="0"></a>
             <?php }else { ?>
             <a href="javascript:void(0);" title="Activate" onclick="redirect_action('user-activate.php','activate','<?php echo $v["id"];?>') ;"><img src="images/deactive.gif" border="0"></a>
             <?php } ?>
             <a href="user-add.php?userid=<?php echo $v["id"];?>"><img src="images/icon_edit.gif" border="0"></a> &nbsp;&nbsp;
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
 <tr><td align="center" class='msg'> No user found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															