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
    if($_POST['user_action']!="" && $_POST['editKey'] != "" )
	{
		
		
		//creating database objet
		$obj= new database_class();
		$func_obj = new common_function;
		echo "<br><br><br><img src='images/loading.gif' border='0'><br>Processing...";
		$hdn_fields = $func_obj->hidden_fields();
		$id = $_REQUEST["editKey"];
		$_POST["status"] = $_REQUEST["user_action"] =="activate"?$GL_active:$GL_not_active;
		$result = $obj->editData($obj->getTable("var_category") , "id" ,"$id");
		if($_POST["status"]==1)
		{
			$action = "cat-manage.php";
			$msg_val = 'Category activated successfully!';
			$parent_id = $_POST['parent_id'] ;
		}
		else
		{
			$action = "cat-manage.php";
			$msg_val = 'Category de-activated successfully!';
			$parent_id = $_POST['parent_id'] ;
					
		}				
			
	}
	else
	{
		$action = "cat-manage.php";
		$msg_val = 'Invalid Access!';
		$parent_id = $_POST['parent_id'] ;
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
    <input type=hidden name="parent_id" value="<?php echo $parent_id;?>">
</form>
	<script>document.f1.submit();</script>
</body>
</html>
