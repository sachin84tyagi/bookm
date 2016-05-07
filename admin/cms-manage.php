<?php
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/jquery.js"></script>
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large">View CMS Pages  </asp:Label></div>
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
                                                                     </h3>
																		<span></span>
																	</div>
																	<table width="100%" border="0" cellspacing="0" cellpadding="3" style=" margin-top:15px;">
 
  <tr>
    <td align="center">&nbsp;</td>
    <td align="right">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="right" >
     <div class=" btnBg" align="center" style="width:120px; margin-top:5px; margin-left:5px;"><a href="cms-add.php">Add CMS</a></div> 
    </td>
  </tr>
</table>

	</fieldset>
</div>
                
            </td>
        </tr>
            <tr >
           		 <td colspan="2"  valign="top">
           		 <div id="cms_list" style="text-align:center" ></div>
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
   //  $('#cms_list').fadeOut('fast', function() {
				
		   callAjax("cms_list", "listing-cms.php", {
		
			params:parameters+"&rand="+Math.random(),
		
			meth:"post",
		
			async:true,
		
			startfunc:"process_begins();",
		
			endfunc:"",
		
			errorfunc:"" }
		
			);	
		  
	 //	  });
}

function ends()
{
	$("#cms_list").fadeIn("fast");
}

function process_begins()
{

	document.getElementById('cms_list').innerHTML="<br><br><img src='images/loading.gif' border='0'><br >Loading ...";

}
function redirect_action(frmAction, action, id)
{
	document.getElementById("user_action").value=action;
	document.getElementById("editKey").value=id;
	document.getElementById("redFrm").action=frmAction;
	if(action=='delete')
	{
		ans = confirm("Are you sure. Do you want to delete this content?");
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
	show_popup('view_cms_details.php?id='+record_id+'&btn=off');
}
showData('list');
</script>
</body>
</html>
