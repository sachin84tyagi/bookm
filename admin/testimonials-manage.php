<?php
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/jquery.js"></script>
<script src="../facebox/facebox.js" type="text/javascript"></script>
<link href="../facebox/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script> 
//function to showing popup
function show_popup(url,isAlert)
{
	if(isAlert)
		jQuery.facebox(url);
	else
		jQuery.facebox({ ajax:url}); 
}

function hide_popup()
{

	jQuery.facebox.close();
	
}
</script>
  <tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="95%" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col">
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <th align="center" scope="col">    <div align="left" style="padding-top:10px">
      <table  width="99%">
													
                                                    
                                                    <tr>
														<td colspan="2" >
															<div id="Div2">
																<fieldset id="Fieldset2">
																  <div style="margin-top:10px;" align="left">
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large">View Testimonials  </asp:Label></div>
																</fieldset>
															</div>
                                                            <?php
                                                            if($_POST["msg"]!="")
															{
															?>
                                                            <p  style=" padding-left:20px;" class="msg" align="center" id="disp_msg"><?php echo $_POST["msg"];?></p>
                                                            <?php
															}
															?>
                                                             <p  style="padding-left:40px; display:none;" class="msg" align="center" id="disp_msg2"></p>
                                                            <div id="Div3" >
															  <fieldset  >
																<div class="sectionHeader" style="font-family: Arial">
																		<h3>
                                                                      Search Testimonials</h3>
																		<span></span>
																	</div>
																	<table width="100%" border="0" cellspacing="0" cellpadding="3" style=" margin-top:15px;">
  <!--<tr><td id="disp_msg" colspan="4" class="msg" style="display:none; padding-left:80px;"></td></tr>-->                                                                  
  <tr>
    <th width="7%" align="right" scope="col">Auther Name :</th>
    <th width="15%" align="left" scope="col">
      <label>
        <input type="text" name="auther_name" id="auther_name" maxlength="100"/>
      </label>
 </th>
    <th  align="right" width="6%"  scope="col">Title :</th>
    <th align="left" scope="col"><input type="text" name="testimonials_title" id="testimonials_title"  maxlength="100" /></th>
  </tr>
  
  <tr>
    <td align="center">&nbsp;</td>
    <td align="right"><div class=" btnBg" align="center" style="width:50px; margin-top:5px; margin-left:5px;"><a href="javascript:;" onclick="showData('search');">Search</a></div></td>
    <td align="center">&nbsp;</td>
    <td align="right" >
     <div class=" btnBg" align="center" style="width:120px; margin-top:5px; margin-left:5px;"><a href="testimonials-add.php">Add Testimonials</a></div>
    </td>
  </tr>
</table>
	</fieldset>
</div>
                
            </td>
        </tr>
            <tr >
           		 <td colspan="2"  valign="top">
           		 <div id="testimonials_list" style="text-align:center" ></div>
                 </td>
            
            </tr>
        <tr>
            <td colspan="2" style="width: 745px" >
                
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
<form name="redFrm" id="redFrm" method="POST">
<input type="hidden" name="user_action" id="user_action"  />
<input type="hidden" name="editKey"  id="editKey"/>
</form>
<script>
function showData(param , pageId)
{
	parameters="";
    
    if(pageId!='')
  	{
  		parameters= parameters+"&pagenum="+pageId;
  	}
	if(param=='search')
	{
		  document.getElementById("disp_msg2").style.display='none';
		  
		  if( document.getElementById("disp_msg"))
		     document.getElementById("disp_msg").style.display='none';
			 
	if(document.getElementById("auther_name").value=="" && document.getElementById("testimonials_title").value=="" )
	{
		document.getElementById("disp_msg2").style.display='';
		document.getElementById("disp_msg2").innerHTML="Please enter atleast one search criteria Name!";
		document.getElementById("event_name").focus();
		return false;
	}
		if(document.getElementById("auther_name").value!="")
		{
			parameters = parameters+"&auther_name="+document.getElementById("auther_name").value;
		}
		if(document.getElementById("testimonials_title").value!="")
		{
			parameters = parameters+"&testimonials_title="+document.getElementById("testimonials_title").value;
		}
		//alert(parameters);
	}
 //	$('#testimonials_list').fadeOut('fast', function() {
				
		   callAjax("testimonials_list", "listing-testimonials.php", {
		
			params:parameters+"&rand="+Math.random(),
		
			meth:"post",
		
			async:true,
		
			startfunc:"process_begins();",
		
			endfunc:"",
		
			errorfunc:"" }
		
			);	
		  
		//  });
}

function ends()
{
	$("#testimonials_list").fadeIn("fast");
}

function process_begins()
{
	document.getElementById('testimonials_list').innerHTML="<br><br><img src='images/loading.gif' border='0'><br>Loading ...";
}
function redirect_action(frmAction, action, id)
{
	document.getElementById("user_action").value=action;
	document.getElementById("editKey").value=id;
	document.getElementById("redFrm").action=frmAction;
	
	
	
	if(action=='delete')
	{
		ans = confirm("Are you sure. Do you want to delete this Testimonials?");
		if(ans==true)
			document.redFrm.submit();
		
	}
	else
	{
		document.redFrm.submit();
	}
}

function view_detail(record_id)
{
	show_popup('view_testimonials_details.php?id='+record_id+'&btn=off');
}
showData('list');
</script>
</body>
</html>
