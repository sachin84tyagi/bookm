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
	 $action="testimonials-manage.php";
 }					
else if($_POST["author_name"]!="" && $_POST["description"] != "")
{       
		$obj= new database_class();
		$img_obj = new create_image;
		$func_obj = new common_function() ;
		$_POST["date_edited"] = $func_obj->getcurGmmktime();
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		if(isset($_POST['delete_image']) && $_POST['delete_image'] != "" ) 
		 {
		     unlink("../testinomial-images/".$_POST['oldimage']) ;
			 $_POST['image'] = "" ;
		 }
		 else {
		    $_POST['image'] = $_POST['oldimage'] ;
		 }
		 if($_FILES['image']['name'] != "" ) {
		    $fileName = time().$_FILES['image']['name'] ;
		    move_uploaded_file($_FILES['image']['tmp_name'],"../testinomial-images/".$fileName) ;
			$img_obj->resizeImage("../testinomial-images/".$fileName,"64",'64',"../testinomial-images/".$fileName);
			$_POST['image'] = $fileName  ;
		 }
		$edit_key = $_POST["editKey"];
		$obj->editData($obj->getTable("var_testimonials"),'id', $edit_key);
		$msg="Testimonial edited successfully!";
		$action="testimonials-manage.php"; 
}
else
{
	
	$field_value="Invalid access!";
	$action="testimonials-manage.php";
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

