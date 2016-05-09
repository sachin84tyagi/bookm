<?php
include('codelibrary/inc/variables.php'); 
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
if($_POST["title"]!="" )
{       
	$obj= new database_class();	
	$func_obj = new common_function();
	$hdn_fields = $func_obj->hidden_fields();
	$img_obj = new create_image;
	$_POST["category"] = implode(",",$_POST["category"]);
	$_POST["category_id"] = implode(",",$_POST["category_id"]);
	echo $_POST["category"];
	echo $_POST["category_id"];
	echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
	$_POST["added_on"] = date("Y-m-d H:i:s"); 
	if($_FILES['image']['name'] != "" ) { 
		$fileName = time().$_FILES['image']['name'] ;
		//echo "products/".$fileName;echo "image";
		move_uploaded_file($_FILES['image']['tmp_name'],"products/".$fileName) ;
		$img_obj->resizeImage("products/".$fileName,"64",'64',"products/".$fileName);//define file path into constant file.
		$_POST['image'] = $fileName ; 
	}
	$obj->insertData($obj->getTable("var_book"));
	$obj->my_insert_id($obj->getTable("var_book"));
	$msg="Category created successfully!";
	$action="add-book.php"; 

	
} else {
	
	$field_value="Invalid access!";
	$action="add-book.php"; 
	
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
$hdn_fields .='<input type=hidden name="parent_id" value="'.$parent_id.'">';
echo "<html><body>";
echo '<form name="subFrm" action="'.$action.'" method="POST">';
echo $hdn_fields;
echo '</form>';
echo '<script language="javascript">document.subFrm.submit();</script>';
echo "</body></html>";
?>

