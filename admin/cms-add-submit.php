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
    if( $_FILES['image']['name'] != "" && (($_FILES['image']['size'] / 1024 ) ) / 1024  > 1 )
     {
	 $field_value="Error! you can't upload more than 100KB!";
	 $action = "cms-manage.php";
     }
	else if($_POST['page_id'] !="" and $_POST['description'] != "" )
	{
		
		//creating database objet
		$obj= new database_class();
		$func_obj = new common_function;
		$fileName = time().$_FILES['image']['name'] ;
		$_POST['image'] = $fileName  ;
		$_POST['date_added'] = $func_obj->getcurGmmktime() ;
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		$obj->insertData($obj->getTable("var_cms"));
	    $action = "cms-manage.php";
	    $msg_val = 'Content has been addedd successfully!';
	    if($_FILES['image']['name'] != "" )
	    {
		   move_uploaded_file($_FILES['image']['tmp_name'],"../cms_images/".$fileName) ;
	    }
		
	}
	else
	{
		$action = "cms-manage.php";
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
$hdn_fields .='<input type=hidden name="msg" value="'.$msg.'">';
echo "<html><body>";
echo '<form name="subFrm" action="'.$action.'" method="POST">';
echo $hdn_fields;
echo '</form>';
echo '<script language="javascript">document.subFrm.submit();</script>';
echo "</body></html>";
?>

