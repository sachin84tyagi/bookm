<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
$edit_key = $_REQUEST["userid"] == ""?0:$_REQUEST["userid"] ;
$obj= new database_class();	
$res = $obj->getAnyTableWhereData($obj->getTable("var_user")," and id=$edit_key");
$style_photo = $res['photo'] == ""?"":"display:none" ;
?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="851" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col">
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <th align="center" scope="col">
        <div align="left" style="padding-top:10px">
      <table  width="99%">
													<tr>
														<td colspan="2" >
															<div id="Div2">
																<fieldset id="Fieldset2">
																  <div style="margin-top:10px;" align="left">
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit User': 'Add User';?></asp:Label></div>
																</fieldset>
															</div>
														</td>
													</tr>
													<tr >
														<td colspan="2"  valign="top">
                                                        <?php
                                                            if($_POST["msg"]!="")
															{
															?>
                                                            <p class="msg" align="center"><?php echo $_POST["msg"];?></p>
                                                            <?php
															}
															?>
															<div id="Div3" >
															  <fieldset  >
																<div class="sectionHeader" style="font-family: Arial">
																		<h3>
                                                                      User Information</h3>
																		<span></span>
																	</div>
    <form name="userFrm" enctype="multipart/form-data" action="<?php echo ($edit_key!="")?'user-edit-submit.php':'user-add-submit.php';?>" method="post" >
                                                                    <?php
																	
                                                                    if($edit_key!="")
																	{?>
																	 <input type="hidden" name="userid" id="userid" value="<?php echo $edit_key;?>"/>
																	<?php
                                                                    }?>
                                                                    
																	<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <th width="15%" scope="col">&nbsp;</th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="40%" align="left" scope="col">&nbsp;</th>
    <th width="25%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td align="right">User type :</td>
    <td>
      <label>
       <select name="user_type" id="user_type" >
          <option value="1" >Dealer</option>
          <option value="2" >Visiter</option>
       </select>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="first_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">First Name :</td>
    <td>
      <label>
        <input type="text" name="fname" id="fname"  value="<?php echo ($_POST["fname"]!="")? $_POST["lname"]:$res["fname"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="first_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Last Name :</td>
    <td><input type="text" name="lname" id="lname" value="<?php echo ($_POST["lname"]!="")? $_POST["lname"]:$res["lname"];?>"  maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="last_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Email :</td>
    <td><input type="text" name="email" id="email"  value="<?php echo ($_POST["email"]!="")? $_POST["email"]:$res["email"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="email_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
   </tr>
   <tr>
    <td align="right">Phone No :</td>
    <td><input type="text" name="phone" id="phone" value="<?php echo ($_POST["phone"]!="")? $_POST["phone"]:$res["phone"];?>"  maxlength="10" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
   <td align="left"><div style="color:#F00" id="phone_no_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Mobile :</td>
    <td><input type="text" name="mobile" id="mobile" value="<?php echo ($_POST["mobile"]!="")? $_POST["mobile"]:$res["mobile"];?>"  maxlength="10" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
   <td align="left"><div style="color:#F00" id="mobile_no_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">City :</td>
    <td><input type="text" name="city" id="city" value="<?php echo ($_POST["city"]!="")? $_POST["city"]:$res["city"];?>"  maxlength="10" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
   <td align="left"><div style="color:#F00" id="city_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">State :</td>
    <td><input type="text" name="state" id="state" value="<?php echo ($_POST["state"]!="")? $_POST["state"]:$res["state"];?>"  maxlength="10" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
   <td align="left"><div style="color:#F00" id="state_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Post code :</td>
    <td><input type="text" name="zip_code" id="zip_code" value="<?php echo ($_POST["zip_code"]!="")? $_POST["zip_code"]:$res["zip_code"];?>"  maxlength="10" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
   <td align="left"><div style="color:#F00" id="zip_code_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td align="right">Profile Picture :</td>
    <td>
        <?php
	     
	      if(!empty($res["photo"])) {
	   ?>
       <img src="user-picture.php?id=<?php echo $v['id'] ?>" width="80" height="80"  />
       <?php } ?>
       <input type="file" name="photo" id="photo"  />
    </td>
   <td align="left"></td>
    <td>&nbsp;</td>
  </tr>
  </table>
  </form>
</fieldset>
</div></td>
                                                        
					  </tr>
													<tr>
														<td colspan="2" style="width: 745px" >
															
														</td>
													</tr>
												</table>
      </div>&nbsp;</th>
  </tr>

  <tr>
    <td><div id="Div1">
      <fieldset id="Fieldset3" >
        <div style="width:200px; float:left; margin-left:100px;"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:20px;">
																    <tr>
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="userValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="user-manage.php" >Cancel</a> </div></th>
															        </tr>
															      </table></div>
        
        </fieldset>
      </div>
   </td>

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
<script>
document.getElementById("fname").focus();
function userValidation()
{
 	
	  document.getElementById("first_name_fld").style.display='none';
	  document.getElementById("email_fld").style.display='none';
	 
	if(document.getElementById("fname").value=="")
	{
		document.getElementById("first_name_fld").style.display='';
		document.getElementById("first_name_fld").innerHTML="Please enter First Name!";
		document.getElementById("fname").focus();
		return false;
	}
	email = document.getElementById("email");
	if(email.value!="")
	{	
		
		var filter = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/
		if (filter.test(email.value)==false)
		 {
			document.getElementById("email_fld").style.display="";
			document.getElementById("email_fld").innerHTML='Invalid E-mail!';
			email.focus();
			return false;
		}
		
		
	}
	else
	{
		document.getElementById("email_fld").style.display="";
		document.getElementById("email_fld").innerHTML="Please enter E-mail!";
		document.getElementById("email").focus();
		return false;
	}
	
    document.userFrm.submit()
}
</script>

</body>
</html>
