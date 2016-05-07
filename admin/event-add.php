<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["eventid"] == ""?0:$_REQUEST["eventid"] ;
$obj= new database_class();	
if($edit_key) {
	$res = $obj->getAnyTableWhereData($obj->getTable("var_events")," and id=$edit_key");
}
?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<link rel="stylesheet" href="../calendar/themes/base/jquery.ui.all.css">
	<script src="../calendar/jquery-1.4.4.js"></script>
	<script src="../calendar/ui/jquery.ui.core.js"></script>
	<script src="../calendar/ui/jquery.ui.widget.js"></script>
	<script src="../calendar/ui/jquery.ui.datepicker.js"></script>
<script>
	$(function() {
		$("#arival_date").datepicker();
	});
</script>
<style type="text/css" >
.comdata { background:url(../calendar/images/calendar.gif) no-repeat right 4px ;  }
</style>
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit Event': 'Add Event';?></asp:Label></div>
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
    <form name="eventFrm" enctype="multipart/form-data" action="<?php echo ($edit_key!="")?'event-edit-submit.php':'event-add-submit.php';?>" method="post" >
                                                                    <?php
																	
                                                                    if($edit_key!="")
																	{?>
																	 <input type="hidden" name="eventid" id="eventid" value="<?php echo $edit_key;?>"/>
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
    <td align="right">Event Name :</td>
    <td>
      <label>
        <input type="text" name="event_name" id="event_name"  value="<?php echo ($_POST["event_name"]!="")? $_POST["event_name"]:$res["event_name"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="event_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Date :</td>
    <td><input type="text" name="arival_date" id="arival_date" class="comdata" value="<?php echo ($_POST["arival_date"]!="")?$_POST["arival_date"]:date('m/d/Y',$res["arival_date"]) ;?>"  maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="arival_date_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Location :</td>
    <td><input type="text" name="locations" id="locations"  value="<?php echo ($_POST["locations"]!="")? $_POST["locations"]:$res["locations"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="locations_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
   </tr>
   <tr>
    <td align="right">Description:</td>
    <td colspan="2" >
        <?php
      	$CKEditor = new CKEditor();
		//$CKEditor->basePath = '/ckeditor/';
		$CKEditor->config['height'] = 200;
		$CKEditor->config['width'] = 600;
		$CKEditor->config['removePlugins'] = 'elementspath';
		$config = array();
	    $config['toolbar'] = array(
	     array('Bold', 'Italic', 'Underline','Link','Source'),
		);
		//$config['FontSizes'] = '10px/10;12px/12;14px/14;18px/18;36px/36;48px/48;72px/72' ;
		echo $CKEditor->editor("description", html_entity_decode($res['description']) , $config );
      ?>
      <input type="hidden" name="edit_key" value="<?php echo $edit_key ;  ?>"  />
  <br  />
   <div style="color:#F00" id="description_fld"></div>
    </td>
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="eventValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="event-manage.php" >Cancel</a> </div></th>
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
document.getElementById("event_name").focus();
function eventValidation()
{
 	
	  document.getElementById("event_name_fld").style.display='none';
	  document.getElementById("arival_date_fld").style.display='none';
	  document.getElementById("locations_fld").style.display='none';
	  
	if(document.getElementById("event_name").value=="")
	{
		document.getElementById("event_name_fld").style.display='';
		document.getElementById("event_name_fld").innerHTML="Please enter Event Name!";
		document.getElementById("event_name").focus();
		return false;
	}
	else if(document.getElementById("arival_date").value=="")
	{
		document.getElementById("arival_date_fld").style.display='';
		document.getElementById("arival_date_fld").innerHTML="Please enter Event Date!";
		document.getElementById("arival_date").focus();
		return false;
	}
	else if(document.getElementById("locations").value == "" )
	{
	    document.getElementById("locations_fld").style.display = "" ;
		document.getElementById("locations_fld").innerHTML = "Please enter the location name!" ;
		return false ;
	}
    document.eventFrm.submit()
}
</script>

</body>
</html>
