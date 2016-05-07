<?php
session_start();
include_once("../codelibrary/inc/variables.php");
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
                <td colspan="2" style="width: 745px" align="center">
   <?php
    if($_POST['user_action']=="delete" && $_POST['editKey'] != "" )
	{
		//creating database objet
		$obj= new database_class();
		$func_obj = new common_function;
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		$hdn_fields = $func_obj->hidden_fields();
		$edit_key = $_POST["editKey"];
		//$result = $obj->deleteData($obj->getTable("var_event") , " and id=$edit_key ");
		$res = $obj->getAnyTableWhereData($obj->getTable("var_images_gallery"), " and id = '".$edit_key."' ") ;
		$disp_img   = str_replace("thumb","disp",$res['image_name']) ;
		$small_img  = str_replace("thumb","small",$res['image_name']) ;
		$origin_img = str_replace("thumb_","",$res['image_name']) ; 
		if(file_exists("../gallery/".$res['image_name'])) { unlink("../gallery/".$res['image_name']); }
		if(file_exists("../gallery/".$disp_img))  { unlink("../gallery/".$disp_img);   }
		if(file_exists("../gallery/".$small_img)) { unlink("../gallery/".$small_img);  }
		if(file_exists("../gallery/".$origin_img)){ unlink("../gallery/".$origin_img); }
		$obj->my_query("delete from ".$obj->getTable("var_images_gallery")." where id = '".$edit_key."' ") ;
		
		if($result==true)
		{
			$action = "gallery-manage.php";
			$msg_val = 'Gallery has been deleted successfully!';
		}
		else
		{
			$action = "gallery-manage.php";
			$msg_val = 'Sorry, Unable to delete gallery!';					
					
		}				
			
	}
	else
	{
		$action = "gallery-manage.php";
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
<form name="f1" action="<?php echo $action;?>" method="post">
    <input type=hidden name="msg" value="<?php echo $msg_val;?>">
	</form>
	<script>document.f1.submit();</script>
</body>
</html>
