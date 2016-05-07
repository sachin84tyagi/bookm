<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
$obj= new database_class();
$date_obj = new common_function();
$edit_key = $_POST["editKey"];
if($edit_key != "" ) {
	$result = $obj->getAnyTableWhereData($obj->getTable("var_cms"), " and id='$edit_key'" );
}

?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<script src="../codelibrary/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
// General options
mode : "exact",
theme : "advanced",
elements : "description",
plugins : "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",

// Theme options
theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
theme_advanced_toolbar_location : "top",
theme_advanced_toolbar_align : "left",
theme_advanced_statusbar_location : "bottom",
theme_advanced_resizing : true,
 
// Example content CSS (should be your site CSS)
content_css : "css/example.css",
});
</script>
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
                                                                      User Information</h3>
																		<span></span>
																	</div>
                   <form name="userFrm" action="<?php echo ($edit_key!="")?'cms-edit-submit.php':'cms-add-submit.php';?>" method="post" enctype="multipart/form-data" >
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
                       <option value="1" <?php echo $result['page_id'] ==1?'selected=selected':'' ; ?> >Home</option>
                       <option value="2" <?php echo $result['page_id'] ==2?'selected=selected':'' ; ?>>Company</option>
                       <option value="3" <?php echo $result['page_id'] ==3?'selected=selected':'' ; ?>>About Us</option>
                       <option value="4" <?php echo $result['page_id'] ==4?'selected=selected':'' ; ?>>History</option>
                       <option value="5" <?php echo $result['page_id'] ==5?'selected=selected':'' ; ?>>Philosophy</option>
                       <option value="6" <?php echo $result['page_id'] ==6?'selected=selected':'' ; ?>>Responsibility</option>
                       <option value="7" <?php echo $result['page_id'] ==7?'selected=selected':'' ; ?>>Product</option>
                       <option value="8" <?php echo $result['page_id'] ==8?'selected=selected':'' ; ?>>News</option>
                       <option value="9" <?php echo $result['page_id'] ==9?'selected=selected':'' ; ?>>Gallery</option>
                       <option value="10" <?php echo $result['page_id'] ==10?'selected=selected':'' ; ?>>Contact Us</option>
                       <option value="11" <?php echo $result['page_id'] ==11?'selected=selected':'' ; ?>>General Terms Of Business</option>
                       <option value="12" <?php echo $result['page_id'] ==12?'selected=selected':'' ; ?>>Why To Us</option>
                       <option value="13" <?php echo $result['page_id'] ==13?'selected=selected':'' ; ?>>Contact Person</option>
                       <option value="14" <?php echo $result['page_id'] ==14?'selected=selected':'' ; ?>>User Login</option>
                       <option value="15" <?php echo $result['page_id'] ==15?'selected=selected':'' ; ?>>Dealer Login</option>
                       <option value="16" <?php echo $result['page_id'] ==16?'selected=selected':'' ; ?>>Testinomials</option>
                       <option value="17" <?php echo $result['page_id'] ==17?'selected=selected':'' ; ?>>Events</option>
                       <option value="18" <?php echo $result['page_id'] ==18?'selected=selected':'' ; ?>>Download Brochure</option>
                       <option value="19" <?php echo $result['page_id'] ==19?'selected=selected':'' ; ?>>Terms & Conditions</option>
                       <option value="20" <?php echo $result['page_id'] ==20?'selected=selected':'' ; ?>>Privacy Policy</option>
                       <option value="21" <?php echo $result['page_id'] ==21?'selected=selected':'' ; ?>>FAQs</option>
                       <option value="22" <?php echo $result['page_id'] ==22?'selected=selected':'' ; ?>>Feadback</option>
                       <option value="23" <?php echo $result['page_id'] ==23?'selected=selected':'' ; ?>>Sitemap</option>
                      </select>
                   <br  />
                   <span id="page_id_fld" style="color:#F00; display:none">Page Name Required!</span> 
                </td>
            </tr>
  <tr>
            	<td class="textform">Title[optional]</td>
            	<td>
                   <input  type="text" name="title"  value="<?php echo($_POST["title"]!='')? $_POST["title"]:trim($result["title"]);?>"  />
                </td>
            </tr>
            <tr><td colspan="2" class="textform"> Content: <br><textarea name="description" id="description" rows="5" cols="40">
			<?php echo($_POST["description"]!='')?$_POST["description"]:trim($result["description"]); ?></textarea>
            <br  />
             <span id="description_fld" style="color:#F00; display:none">Description Required!</span> 
            </td></tr>
            <?php if( file_exists("../cms_images/".$result['image']) && $result['image'] != "" ) { ?>
            <tr>
            	<td colspan="2" ><img src="../cms_images/<?php echo $result['image'] ;?>"  /> <br  />
                <input   type="checkbox"  name="delete_image" value="<?php echo $result['image'] ;?>"  />&nbsp;Delete
                <input type="hidden" name="oldimage" value="<?php echo $result['image'] ;?>"  />
                </td>
            </tr>
            <?php  } ?>
             <tr>
            	<td class="textform">Image[optional]</td>
            	<td>
                  <input type="file" name="image"  />
                </td>
            </tr>
            <tr>
            	<td class="textform">Status</td>
            	<td>
                   <select name="status" >
                     <option  value="1" <?php echo $result['status'] == 1 || $edit_key == ""?'selected=selected':'' ; ?>>Open</option>
                     <option  value="0" <?php echo $result['status'] == 0 && $edit_key != "" ?'selected=selected':'' ; ?>>Close</option>
                   </select>
                </td>
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="cmsValidation();">Save</a> </div></th>
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
document.getElementById("fname").focus();
function cmsValidation()
{
 	
      if(document.getElementById("page_id").selectedIndex == 0)
	  {
		 document.getElementById("page_id_fld").style.display = "" ;
		 document.getElementById("page_id").focus() ;
		 return false ;
	  }
	  else {
		 document.getElementById("page_id_fld").style.display = "none" ;
	  }
	   if(document.getElementById("description").value == "" )
	  {
		 document.getElementById("description_fld").style.display = "" ;
		 document.getElementById("description").focus() ;
		 return false ;
	  }
	  else {
		 document.getElementById("description_fld").style.display = "none" ;
	  }
	  document.userFrm.submit()
}

</script>

</body>
</html>
