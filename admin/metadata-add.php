<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
$obj= new database_class();
$date_obj = new common_function();
$edit_key = $_POST["editKey"];
if($edit_key != "" ) {
	$result = $obj->getAnyTableWhereData($obj->getTable("var_pages"), " and id='$edit_key'" );
}
$pages = $obj->getAnyTableAllData($obj->getTable("var_pages"), " order by id " );
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit CMS': 'Add CMS';?></asp:Label></div>
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
                                                                      Meta data Information</h3>
																		<span></span>
																	</div>
                   <form name="metadataFrm" action="<?php echo ($edit_key!="")?'metadata-edit-submit.php':'metadata-add-submit.php';?>" method="post" enctype="multipart/form-data" >
                                                                    <?php
																	
                                                                    if($edit_key!="")
																	{?>
																	 <input type="hidden" name="editKey" id="editKey" value="<?php echo $edit_key;?>"/>
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
            	<td class="textform">Page name * </td>
            	<td>
                    <select name="page_id" id="page_id" >
                       <option value="" >-Page Name-</option>
                       <?php foreach($pages as $pk=>$pv) { ?>
                       <option value="<?php echo $pv['id'] ?>" <?php echo $pv['id'] ==$result['id']?'selected=selected':'' ; ?>><?php echo $pv['pages_name'] ?></option>
                       <?php } ?>
                    </select>
                   <br  />
                   <span id="page_id_fld" style="color:#F00; display:none">Page Name Required!</span> 
                </td>
            </tr>
  
            <tr><td colspan="2" class="textform"> Meta title: <br><textarea name="meta_title" id="meta_title" rows="2" cols="60"  >
			<?php echo($_POST["meta_title"]!='')?$_POST["meta_title"]:trim($result["meta_title"]); ?></textarea>
            <br  />
             <span id="meta_title_fld" style="color:#F00; display:none">Meta title required!</span> 
            </td></tr>
            <tr><td colspan="2" class="textform"> Meta keywords: <br><textarea name="meta_keywords" id="meta_keywords" rows="2" cols="60">
			<?php echo($_POST["meta_keywords"]!='')?$_POST["meta_keywords"]:trim($result["meta_keywords"]); ?></textarea>
            <br  />
             <span id="meta_keywords_fld" style="color:#F00; display:none">Meta keywords required!</span> 
            </td></tr>
            <tr><td colspan="2" class="textform"> Meta description: <br><textarea name="meta_description" id="meta_description" rows="2" cols="60">
			<?php echo($_POST["meta_description"]!='')?$_POST["meta_description"]:trim($result["meta_description"]); ?></textarea>
            <br  />
             <span id="meta_description_fld" style="color:#F00; display:none">Meta description required!</span> 
            </td></tr> 
            
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="metadataValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="cms-manage.php" >Cancel</a> </div></th>
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
function metadataValidation()
{
 	   document.getElementById("meta_title_fld").style.display = "none" ;
	   document.getElementById("meta_keywords_fld").style.display = "none" ;
	   document.getElementById("meta_description_fld").style.display = "none" ;
      if(document.getElementById("page_id").selectedIndex == 0)
	  {
		 document.getElementById("page_id_fld").style.display = "" ;
		 document.getElementById("page_id").focus() ;
		 return false ;
	  }
	  else {
		 document.getElementById("page_id_fld").style.display = "none" ;
	  }
	   if(document.getElementById("meta_title").value == "" )
	  {
		 document.getElementById("meta_title_fld").style.display = "" ;
		 document.getElementById("meta_title").focus() ;
		 return false ;
	  }
	 
	   else if(document.getElementById("meta_keywords").value == "" )
	  {
		 document.getElementById("meta_keywords_fld").style.display = "" ;
		 document.getElementById("meta_keywords").focus() ;
		 return false ;
	  }
	 
	   else if(document.getElementById("meta_description").value == "" )
	  {
		 document.getElementById("meta_description_fld").style.display = "" ;
		 document.getElementById("meta_description").focus() ;
		 return false ;
	  }
	  document.metadataFrm.submit()
}

</script>

</body>
</html>
