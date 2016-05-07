<?php
session_start();
include('../codelibrary/inc/variables.php'); 
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
?>
  <tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="851" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col">
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <th align="center" scope="col">    <div align="left" style="padding-top:10px">
     <table  width="99%" border="0">
            
            <tr>
                <td colspan="2" style="width: 745px" align="center"><br><br><br><br>
                   <?php
    
	if($_POST['page_id'] !="" )
	{
		
		
		//creating database objet
		$obj= new database_class();
		$func_obj = new common_function;
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		
	   $obj->editData($obj->getTable("var_pages"),'id',$_POST["editKey"] );
	   $action = "metadata-manage.php";
	   $msg_val = 'Metadata has been edited successfully!';
		
						
			
	}
	else
	{
		$action = "metadata-manage.php";
		$msg_val = 'Invalid Access!';
	}
	
	?>
                      
                </td>
            </tr>
        </table>
      </div>&nbsp;</th>
  </tr>

  <tr>
    <td>&nbsp;</td>

  <tr >
    <td align="center"></td>
  </tr>
</table>
</th>
        </tr>
        <tr  >
          <th valign="top" scope="col"></th>
                                                            
        </tr>
      </table>
    </td>
  </tr>
</table>
<?php
$hflds ='<input type=hidden name="msg" value="'.$msg.'">';
echo "<html><body>";
echo '<form name="subFrm" action="'.$action.'" method="POST">';
echo $hflds;
echo '</form>';
echo '<script language="javascript">document.subFrm.submit();</script>';
echo "</body></html>";
?>

