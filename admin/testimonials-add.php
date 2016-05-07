<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["editKey"] == ""?0:$_REQUEST["editKey"] ;
$obj= new database_class();	
if($edit_key) {
	$res = $obj->getAnyTableWhereData($obj->getTable("var_testimonials")," and id=$edit_key");
}
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit Testimonial': 'Add Testimonial';?></asp:Label></div>
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
                                                                      Testimonials Information</h3>
																		<span></span>
																	</div>
    <form name="testimonialsFrm" enctype="multipart/form-data" action="<?php echo ($edit_key!="")?'testimonials-edit-submit.php':'testimonials-add-submit.php';?>" method="post" >
                                                                    <?php
																	
                                                                    if($edit_key!="")
																	{?>
																	 <input type="hidden" name="editKey" id="editKey" value="<?php echo $edit_key;?>"/>
																	<?php
                                                                    }?>
                                                                    
																	<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <th width="25%" scope="col">&nbsp;</th>
    <th width="28%" scope="col">&nbsp;</th>
    <th width="25%" align="left" scope="col">&nbsp;</th>
    <th width="22%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td align="right">Auther Name :</td>
    <td>
      <label>
        <input type="text" name="author_name" id="author_name"  value="<?php echo ($_POST["author_name"]!="")? $_POST["author_name"]:$res["author_name"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="author_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Location[ optional ] :</td>
    <td>
      <label>
        <input type="text" name="location" id="location"  value="<?php echo ($_POST["location"]!="")? $_POST["location"]:$res["location"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="author_name_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td align="right">Title[ optional ] :</td>
    <td><input type="text" name="testimonials_title" id="testimonials_title"  value="<?php echo ($_POST["testimonials_title"]!="")? $_POST["testimonials_title"]:$res["testimonials_title"];?>" maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
    <td align="left"><div style="color:#F00" id="testimonials_title_fld"></div>&nbsp;</td>
    <td>&nbsp;</td>
   </tr>
   <tr>
    <td align="right">Description :</td>
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
   <?php if( file_exists("../testinomial-images/".$result['image']) && $result['image'] != "" ) { ?>
            <tr>
            	<td colspan="2" ><img src="../testinomial-images/<?php echo $result['image'] ;?>"  /> <br  />
                <input   type="checkbox"  name="delete_image" value="<?php echo $result['image'] ;?>"  />&nbsp;Delete
                <input type="hidden" name="oldimage" value="<?php echo $result['image'] ;?>"  />
                </td>
            </tr>
            <?php  } ?>
             <tr>
            	<td class="textform">Image[ optional ] :</td>
            	<td>
                  <input type="file" name="image"  />
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="testimonialsValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="testimonials-manage.php" >Cancel</a> </div></th>
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
document.getElementById("author_name").focus();
function testimonialsValidation()
{
 	
	 document.getElementById("author_name_fld").style.display='none';
	 document.getElementById("description_fld").style.display='none';
	  
	if(document.getElementById("author_name").value=="")
	{
		document.getElementById("author_name_fld").style.display='';
		document.getElementById("author_name_fld").innerHTML="Please enter Auther Name!";
		document.getElementById("author_name").focus();
		return false;
	}
    document.testimonialsFrm.submit()
}
</script>

</body>
</html>
