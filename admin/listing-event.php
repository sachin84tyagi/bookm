<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';
if($_POST["event_name"]!="")
{
	$search_item .= " and event_name like'%".trim($_POST["event_name"])."%'";
}

if($_POST["location"]!="")
{
	$search_item .= " and location like'%".trim($_POST["location"])."%'";
}

if($_POST["arival_date"]!="")
{
	$search_item .= " arival_date = '".strtotime($_POST["arival_date"])."'";
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

$query = "select e.* from ".$obj->getTable("var_events")." e  where 1=1 $search_item  order by id desc" ;

$result   = $obj->my_query($query);
$totalRow = mysql_num_rows($result);
$from     = $pagenum*$user_paging;
$query = "select e.* from ".$obj->getTable("var_events")." e  where 1=1 $search_item $search_item order by id desc limit $from, $paging " ;
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
        <th width="10%" scope="col"  align="center">Event Name</th>
        <th width="15%" scope="col"  align="center">Location</th>
        <th width="10%" scope="col"  align="center">Arival Date</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($result))
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
            <td align="left"><?php echo $v["event_name"];?> </td>
            <td align="left"><?php echo $v["locations"];?></td>
            <td align="left"><?php echo date('M j Y',$v['arival_date']) ; ?></td>
            <td align="center">
             <a href="javascript:void(0);" title="View" onclick="view_detail('<?php echo $v["id"];?>') ;"><img src="images/icon_detail.gif" border="0"></a>&nbsp;&nbsp;
			 <?php 
			   if($v['status'] == 1 ) {
			 ?>
             <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('event-activate.php','deactivate','<?php echo $v["id"];?>') ;"><img src="images/active.gif" border="0"></a>
             <?php }else { ?>
             <a href="javascript:void(0);" title="Activate" onclick="redirect_action('event-activate.php','activate','<?php echo $v["id"];?>') ;"><img src="images/deactive.gif" border="0"></a>
             <?php } ?>
             <a href="event-add.php?eventid=<?php echo $v["id"];?>"><img src="images/icon_edit.gif" border="0"></a> &nbsp;&nbsp;
              <a href="javascript:void(0);" title="De-Activate" onclick="redirect_action('event-delete.php','delete','<?php echo $v["id"];?>') ;"><img src="images/remove.png" border="0"></a>
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
 <tr><td align="center" class='msg'> No event found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															