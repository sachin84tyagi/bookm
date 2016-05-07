<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["editKey"]==""?"":$_REQUEST["editKey"] ;
$obj= new database_class();
$position = $obj->my_insert_id($obj->getTable("var_images_gallery")); 
if($edit_key != "" )
{
 $v   =  $obj->getAnyTableWhereData($obj->getTable("var_images_gallery"), " and id = '$edit_key' ") ; 
}
$style_front = "";
?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/jquery.js"></script>
<script language="javascript" src="../codelibrary/js/common.js"></script>
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit Gallery': 'Add Gallery';?></asp:Label></div>
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
                                                                      Product Information</h3>
																		<span></span>
																	</div>
  <form name="galleryFrm" action="<?php echo ($edit_key!="")?'gallery-edit-submit.php':'gallery-add-submit.php';?>" method="post" >
  <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <th width="15%" scope="col">&nbsp;</th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="40%" align="left" scope="col">&nbsp;</th>
    <th width="25%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td align="right">Caption :</td>
    <td>
      <label>
        <input type="text" name="caption"  id="caption" value="<?php echo $v['caption'] ; ?>" >
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="caption_fld"></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr >
    <td align="right">Position :</td>
    <td>
     <label>
        <input type="text" name="position"  id="position" value="<?php echo $v['position'] !=""? $v['position']:$position ; ?>" style="width:50px;" >
     </label>
  </td>
    <td align="left"><div style="color:#F00" id="position_fld"></div></td>
    <td>&nbsp;</td> 
  </tr> 
   <tr>
    <td align="right"></td>
      <td colspan="3" >
    <?php if ($edit_key == "" ) { ?>
  <div class="uploaded-images" id="FWB_AVUPLOADER" >
     <IFRAME SRC="gallery-uploader.php" name="frontImg"  id="frontImg" WIDTH=100% HEIGHT=150 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF);" scrolling="no" allowtransparency="true"> 
     </IFRAME>
      <input type="hidden" name="front_img" id="front_img"  />
  </div>
  <?php }else { ?>
  <!--
   <div class="uploaded-images" id="PROFINE-OLDPRODUCT-IMAGES"></div> 
  <div class="uploaded-images" id="FWB_AVUPLOADER_EDIT" style="display:block" >
  <IFRAME SRC="gallery-uploader.php" name="frontImg_edit"  id="frontImg_edit" WIDTH=100% HEIGHT=150 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF);" scrolling="no" allowtransparency="true"> 
  </IFRAME>
      <input type="hidden" name="front_img_edit" id="front_img_edit"  />
   </div>
   -->
     <input type="hidden" name="editKey" id="editKey" value="<?php echo $edit_key ?>"  />
<?php } ?>
  
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="galleryValidation();">Save</a> </div></th>
																      <th width="86%" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="product-manage.php" >Cancel</a> </div></th>
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
<script language="javascript" >
function galleryValidation()
{
 	
	document.getElementById("position_fld").style.display = "none" ;
	if(document.getElementById("position").value=="")
	{
		document.getElementById("position_fld").style.display='';
		document.getElementById("position_fld").innerHTML="Please enter the display position for first image gallery!";
		document.getElementById("position").focus();
		return false;
	}
	document.galleryFrm.submit()
}
</script>
<?php if ($edit_key != "" ) { ?>
<script language="javascript" >
function disp_img_upload_edit(param)
{
	
	if(param=='front_image_edit')
	{
		if(document.getElementById("delete_front_img_edit").checked==true) {
		   document.getElementById("frontImg_edit").style.display='';
		}
		 else {  
		   document.getElementById("frontImg_edit").style.display='none';
		 }
	}
  
}
function front_img_edit(img_width, img_height)
{
	
	//document.getElementById("frontImg").width = img_width*1+100;
	document.getElementById("frontImg_edit").height = img_height*1;
	if(document.getElementById("front_img_holder_edit"))
	{
			document.getElementById("front_img_holder_edit").style.display='none';
	}
	
}
function front_pdf_edit(pdf_width, pdf_height)
{
	
	document.getElementById("frontVideo_edit").height = pdf_height*1;
	
}

function DeleteproductImages(product_id, images_id)
{
    parameters="";
	parameters = parameters+"&product_id="+product_id+"&images_id="+images_id ;
    $('#PROFINE-OLDPRODUCT-IMAGES').fadeOut('fast', function() {
				
		   callAjax("PROFINE-OLDPRODUCT-IMAGES", "previous-product-images.php", {
		
			params:parameters+"&rand="+Math.random(),
		
			meth:"post",
		
			async:true,
		
			startfunc:"delete_process_begins();",
		
			endfunc:"delete_ends();",
		
			errorfunc:"" }
		
			);	
		  
		  });   
}
function delete_ends()
{
	$("#PROFINE-OLDPRODUCT-IMAGES").fadeIn("fast");
}
function delete_process_begins()
{
	document.getElementById('PROFINE-OLDPRODUCT-IMAGES').innerHTML="<img src='images/loading.gif' border='0'>";
	
}
function DeleteProductPdf(product_id, pdf_id)
{
    parameters="";
	parameters = parameters+"&product_id="+product_id+"&pdf_id="+pdf_id ;
    $('#PROFINE-OLDPRODUCT-PDF').fadeOut('fast', function() {
				
		   callAjax("PROFINE-OLDPRODUCT-PDF", "previous-product-pdf.php", {
		
			params:parameters+"&rand="+Math.random(),
		
			meth:"post",
		
			async:true,
		
			startfunc:"delete_pdf_process_begins();",
		
			endfunc:"delete_pdf_ends();",
		
			errorfunc:"" }
		
			);	
		  
		  });   
}
function delete_pdf_ends()
{
	$("#PROFINE-OLDPRODUCT-PDF").fadeIn("fast");
}
function delete_pdf_process_begins()
{
	document.getElementById('PROFINE-OLDPRODUCT-PDF').innerHTML="<img src='images/loading.gif' border='0'>";
	
}
</script>
<script >
DeleteproductImages('<?php echo $edit_key ;  ?>','0') ;
DeleteProductPdf('<?php echo $edit_key ;  ?>','0') ;
</script>
<?php }else { ?>
<script language="javascript" >
function disp_img_upload(param)
{
	
	if(param=='front_image')
	{
		if(document.getElementById("delete_front_img").checked==true) {
		   document.getElementById("frontImg").style.display='';
		}
		 else {  
		   document.getElementById("frontImg").style.display='none';
		 }
	}
	
}
<?php } ?>
</body>
</html>
