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
if($_POST["category_id"] != "" && $_POST['title'] != ""  )
{       
		$obj= new database_class();	
		$func_obj = new common_function;
		$hdn_fields = $func_obj->hidden_fields();
		echo "<br><br><br><strong>Processing...</strong>";
	    $_POST["date_edited"] = $func_obj->getcurGmmktime() ; 
		
		$obj->editData($obj->getTable("var_product"),'id',$_POST['editKey']);
	    $_POST['product_id'] = $_POST['editKey'] ;
			
			/* insert property images */
			$qry = $obj->my_query("SELECT img.* from temp_img img where img.user_id = '".$_SESSION["sess_admin_id"]."'") ;
			if(mysql_num_rows($qry) > 0 )
			{
				while($imgData = mysql_fetch_array($qry))
				{
					$_POST['image_name'] = $imgData['image_name'] ;
					$obj->insertData($obj->getTable("var_product_images"));
					
				}
				$obj->my_query("delete from temp_img  where user_id = ".$_SESSION["sess_admin_id"]." ") ;
				//$obj->my_query("delete from temp_pdf  where user_id = ".$_SESSION["sess_admin_id"]." ") ;
			}
			/* end */
			$msg="Product edit successfully!";
		    $action="product-manage.php";
		
	
}
else
{
	
	$field_value="Invalid access!";
	 $action="product-manage.php";
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

