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
if($_POST["fname"] !="" )
{       
		$obj= new database_class();
		$func_obj = new common_function() ;
		$_POST["date_edited"] = $func_obj->getcurGmmktime();
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		$edit_key = $_POST["userid"];
		
		$obj->editData($obj->getTable("var_user"),'id', $edit_key);
		$msg="User edited successfully!";
		$action="user-manage.php"; 
		
		if($_FILES['photo']['name'] != "" ) {
		
		  $tmpName             =  $_FILES['photo']['tmp_name'];  
		  $_POST['photo_type'] =  addslashes($_FILES['photo']['type']) ;
		  // Read the file 
		  $fp                  = fopen($tmpName, 'r');
		  $data                = fread($fp, filesize($tmpName));
		  $data                = addslashes($data);
		  fclose($fp); 
		  $qry = "update ".$obj->getTable("var_user")."  set photo = '$data' , photo_type = '".$_POST['photo_type']."' where id = '".$edit_key."' " ;
		  $obj->my_query($qry) ;
		}
		
		
}
else
{
	
	$field_value="Invalid access!";
	$action="user-manage.php";
}?>
                      
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

