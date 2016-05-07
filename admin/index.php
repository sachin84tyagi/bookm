<?php
include_once("../codelibrary/inc/admin-header.php");
?> 
  <tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="851" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" style="background-image:url(images/login.jpg); background-repeat:no-repeat;">
          <th scope="col"><div style=" width:516px; height:126px; margin-left:240px; margin-top:180px; float:left;">
       
       <?php
		if($_POST["msg"]!="")
		{
		?>
		<span class="msg1" id="dispMsg"><?php echo $_POST["msg"];?></span>
		<?php
		} ?>
           <form name="loginfrm" action="login_submit.php" method="post" >
          <table width="100%"  border="0" cellpadding="5" cellspacing="0">
  <tr>
    <th width="26%" align="center" style="color:white;" scope="col">Login ID :</th>
    <th colspan="2" align="left" scope="col">
      <label sty>
        <input type="text" name="user_name" id="user_name" maxlength="100" style="border:1px solid #40c2f4;" size="40"/>       
      </label>
      <br><div id="user_name_fld" style="display:none;"></div>
 </th>
  </tr>
  <tr>
    <td align="center" style="color:white;">Password :</td>
    <td colspan="2" align="left">
    <input type="password" name="password" id="password" maxlength="15"size="40" style="border:1px solid #40c2f4;" onkeyup="if(event && event.keyCode == 13) loginSubmit();"/>
    <br><div id="password_fld" style="display:none;"></div>
    
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="48%" align="right"><a href="javascript:;"  onclick="loginSubmit();"><img src="images/loginBtn.png" width="125" height="36" border="0" /></a></td>
    <td width="26%">&nbsp;</td>
  </tr>
</table>
</form>
</div></th>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
</html>

<script>
document.getElementById("user_name").focus();

function loginSubmit()
{
	document.getElementById("user_name_fld").style.display='none';
	document.getElementById("password_fld").style.display='none';
	if(document.getElementById("dispMsg"))
	{
		document.getElementById("dispMsg").style.display='none';
	}
	
	if(document.getElementById("user_name").value=="")
	{
		document.getElementById("user_name_fld").style.display='';
		document.getElementById("user_name_fld").innerHTML="Please enter Login ID!";
		document.getElementById("user_name").focus();
		return false;
	}
	
	if(document.getElementById("password").value=="")
	{
		document.getElementById("password_fld").style.display='';
		document.getElementById("password_fld").innerHTML="Please enter Password !";
		document.getElementById("password").focus();
		return false;
	}
	
	document.loginfrm.submit();
}
</script>
