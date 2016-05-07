<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["newsid"] == ""?0:$_REQUEST["newsid"] ;
$obj= new database_class();	
if($edit_key) {
	$res = $obj->getAnyTableWhereData($obj->getTable("var_news")," and id=$edit_key");
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
		$("#news_date").datepicker();
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit News': 'Add News';?></asp:Label></div>
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
    <form name="newsFrm" enctype="multipart/form-data" action="<?php echo ($edit_key!="")?'news-edit-submit.php':'news-add-submit.php';?>" method="post" >
                                                                    <?php
																	
                                                                    if($edit_key!="")
																	{?>
																	 <input type="hidden" name="newsid" id="newsid" value="<?php echo $edit_key;?>"/>
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
    <td align="right">News Category :</td>
    <td>
      <label>
        <select name="news_id" id="news_id" >
          <option value="1" <?php echo $res['news_id'] == 1?'selected=selected':'' ; ?> >Press News</option>
          <option value="2" <?php echo $res['news_id'] == 2?'selected=selected':'' ; ?>  >Trade Fairs & Events</option>
          <option value="3" <?php echo $res['news_id'] == 3?'selected=selected':'' ; ?>  >Latest Openings</option>
        </select>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="news_title_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">News Title :</td>
    <td>
      <label>
        <input type="text" name="news_title" id="news_title"  value="<?php echo ($_POST["news_title"]!="")? $_POST["news_title"]:$res["news_title"];?>"  style="width:585px;" autocorrect="off" autocapitalize="off" autocomplete="off"/>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="news_title_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">News Date :</td>
    <td><input type="text" name="news_date" id="news_date" class="comdata" value="<?php echo ($_POST["news_date"]!="")?$_POST["news_date"]:date('m/d/Y',$res["news_date"]) ;?>"  maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="news_date_fld"></div>&nbsp;</td>
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="newsValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="news-manage.php" >Cancel</a> </div></th>
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
document.getElementById("news_title").focus();
function newsValidation()
{
 	
	  document.getElementById("news_title_fld").style.display='none';
	  document.getElementById("news_date_fld").style.display='none';
	  if(document.getElementById("news_title").value=="")
	{
		document.getElementById("news_title_fld").style.display='';
		document.getElementById("news_title_fld").innerHTML="Please enter news Name!";
		document.getElementById("news_title").focus();
		return false;
	}
	else if(document.getElementById("news_date").value=="")
	{
		document.getElementById("news_date_fld").style.display='';
		document.getElementById("news_date_fld").innerHTML="Please enter news Date!";
		document.getElementById("news_date").focus();
		return false;
	}
	document.newsFrm.submit()
}
</script>

</body>
</html>
