<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';

$query = "SELECT * FROM ".$obj->getTable("var_pages")." order by  id desc";					
$result = $obj->my_query($query);
?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>User Information <span></span>
        </h3>
</div>
<?php if(mysql_num_rows($result) > 0 ){?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >
        <th width="10%" scope="col"  align="center">Page Name</th>       
        <th width="10%" scope="col"  align="center">Title</th>
        <th width="15%" scope="col"  align="center">Post Date</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($result))
		{	
		    $class = ($i%2==0)?'even':'odd';
		?>
           
            <tr class="<?php echo $class;?>">
            <td align="left"><?php echo $v["pages_name"];?> </td>
            <td align="left"><?php echo substr($v["title"],0,30);?><?php echo strlen($v["title"]) >30?"...":"" ; ?> </td>
            <td align="left"><?php echo date("j M Y",$v["date_added"]) ;?></td>
            <td align="center">

           <a href="javascript:void(0);"  onclick="redirect_action('metadata-add.php', 'edit', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" ><img src="images/icon_edit.gif" border="0"></a>&nbsp;&nbsp;
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
 <tr><td align="center" class='msg'> No metadata found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															