<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key  = $_REQUEST['editKey'] ;
$parent_id = $_REQUEST['parent_id']?$_REQUEST['parent_id']:'0' ;
$obj= new database_class();	

if($edit_key != "" ) {
$res = $obj->getAnyTableWhereData($obj->getTable("var_category")," and id = '".$edit_key."' ");
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large">
																	<?php $subcategory = $parent_id > 0?'&nbsp;&raquo;&nbsp;Child Category':'' ; ?>
																	<?php echo ($edit_key!="")? 'Edit Category': 'Add Category'.$subcategory;?>
                                                                    
                                                                    </asp:Label></div>
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
                                                                      Category Information</h3>
																		<span></span>
																	</div>
                                                                  <form name="categoryFrm" action="<?php echo ($edit_key!="")?'cat-edit-submit.php':'cat-add-submit.php';?>" method="post" >
                                                                  <input type="hidden" name="parent_id" id="parent_id" value="<?php echo $parent_id; ?>"  />
                                                                  <input type="hidden" name="editKey" id="editKey" value="<?php echo $edit_key ; ?>"  />
 <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <th width="15%" scope="col">&nbsp;</th>
    <th width="19%" scope="col">&nbsp;</th>
    <th width="55%" align="left" scope="col">&nbsp;</th>
    <th width="11%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td align="right">Category :</td>
 
        <td><input type="text" name="category" id="category" value="<?php echo ($_POST["category"]!="")? $_POST["category"]:$res["category"];?>"  maxlength="100" autocorrect="off" autocapitalize="off" autocomplete="off"/></td>
     
    <td align="left"><div style="color:#F00" id="category_fld"></div>&nbsp;</td>
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="categoryValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="cat-manage.php" >Cancel</a> </div></th>
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
document.getElementById("category").focus();
function categoryValidation()
{
 	
	document.getElementById("category_fld").style.display='none';
	if(document.getElementById("category").value=="")
	{
		document.getElementById("category_fld").style.display='';
		document.getElementById("category_fld").innerHTML="Please select a category name!";
		document.getElementById("category").focus();
		return false;
	}
	document.categoryFrm.submit()
}
</script>

</body>
</html>
