<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include("../codelibrary/ckeditor/ckeditor.php");
$edit_key = $_REQUEST["editKey"]==""?"":$_REQUEST["editKey"] ;
$obj= new database_class();
if($edit_key != "" )
{
 // $qry = "select p.* from ".$obj->getTable("var_profine_product")." p where 1=1 and p.id = '$edit_key'  order by p.id desc" ;	
 $v   =  $obj->getAnyTableWhereData($obj->getTable("var_product"), " and id = '$edit_key' ") ; 
 $subcategoryRec  =  $obj->getAnyTableWhereData($obj->getTable("var_category"), " AND status = '1' AND id = '".$v['category_id']."' ") ;  

}
$categoryRec = $obj->my_query("select * from ".$obj->getTable("var_category")." where  status = '1' AND parent_id = '0' order by id ") ;
$style_front = "";

?>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="../codelibrary/js/jquery.js"></script>
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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large"><?php echo ($edit_key!="")? 'Edit Property': 'Add Property';?></asp:Label></div>
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
  <form name="productFrm" action="<?php echo ($edit_key!="")?'product-edit-submit.php':'product-add-submit.php';?>" method="post" >
  <table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <th width="15%" scope="col">&nbsp;</th>
    <th width="20%" scope="col">&nbsp;</th>
    <th width="40%" align="left" scope="col">&nbsp;</th>
    <th width="25%" scope="col">&nbsp;</th>
  </tr>
  <tr>
    <td align="right">Category :</td>
    <td>
     <label>
        <select name="category"  id="category_id" style="width:150px" onchange="get_subcat(this.value)" >
           <option value="" >-select-</option>
		   <?php 
		      if(mysql_num_rows($categoryRec) > 0  ) {
				  while($categoryData = mysql_fetch_array($categoryRec)) {
		   ?>
           <option value="<?php echo $categoryData['id'] ?>" <?php echo $categoryData['id'] == $v['category']?'selected=selected':''; ?> ><?php echo $categoryData['title'] ?></option>
           <?php } } ?>
        </select>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="category_fld"></div></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
   <script>
function get_subcat(param) 
{
    	    var parameters = "" ;
			parameters += parameters+"&id="+param ;
			callAjax("sub_cat_list", "subcat-list.php", {
	        params:parameters+"&rand="+Math.random(),
		    meth:"post",
		    async:true,
		    startfunc:"",
		    endfunc:"",
		    errorfunc:"" }
		    );	
			
}
</script>
    <td align="right">Sub Category :</td>
    <td>
     <label>
	 <?php if(isset($edit_key)) { ?>
	 <select name="category_id" id="sub_cat_list" style="width:150px" >
           <option value="">-select-</option>
		
           <option value="<?php echo $subcategoryRec['id'] ?>" <?php echo $subcategoryRec['id'] == $v['category_id']?'selected=selected':''; ?> ><?php echo $subcategoryRec['title'] ?></option>
           <?php //} ?>
        </select>
	 <?php } else {?>
	 
        <select name="category_id"  id="sub_cat_list" style="width:150px" >
          <option value="">-select-</option>
        </select>
    <?php } ?>
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="category_fld"></div></td>
    <td>&nbsp;</td>
  </tr>
  
  <tr >
    <td align="right">Book Title :</td>
    <td>
     <label>
        <input type="text" name="title"  id="btitle" value="<?php echo $v['title'] ; ?>" >
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="product_code_fld"></div></td>
    <td>&nbsp;</td> 
  </tr> 
  <tr >
    <td align="right">Author :</td>
    <td>
     <label>
        <input type="text" name="author"  id="author" value="<?php echo $v['author'] ; ?>" >
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="price_fld"></div></td>
    <td>&nbsp;</td> 
  </tr>
  <tr >
    <td align="right">Amount :</td>
    <td>
     <label>
        <input type="text" name="amount"  id="amount" value="<?php echo $v['amount'] ; ?>" >
      </label>
  </td>
    <td align="left"><div style="color:#F00" id="name_fld"></div></td>
    <td>&nbsp;</td> 
  </tr>
  <tr>
      <td  align="right">Description:</td>
   <td colspan="2">
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
		echo $CKEditor->editor("description", html_entity_decode($v['description']) , $config );
      ?>
      <input type="hidden" name="editKey" value="<?php echo $edit_key ;  ?>"  />
  <br  />
   <div style="color:#F00" id="description_fld"></div>
   </td>
   <td>&nbsp;</td>
   </tr>
   
   <tr>
    <td align="right"></td>
      <td colspan="3" >
    <?php if ($edit_key == "" ) { ?>
  <div class="uploaded-images" id="FWB_AVUPLOADER" >
     <IFRAME SRC="image-uploader.php" name="frontImg"  id="frontImg" WIDTH=100% HEIGHT=150 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF);" scrolling="no" allowtransparency="true"> 
     </IFRAME>
      <input type="hidden" name="front_img" id="front_img"  />
      <br  />
       <IFRAME SRC="pdf-uploader.php" name="frontVideo"  id="frontVideo" WIDTH=100% HEIGHT=300 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF)" scrolling="no" allowtransparency="true">                                               
    </IFRAME>
      <input type="hidden" name="front_video" id="front_video"  />
  </div>
  <?php }else { ?>
   <div class="uploaded-images" id="PROFINE-OLDPRODUCT-IMAGES"></div> 
  <div class="uploaded-images" id="PROFINE-OLDPRODUCT-PDF"></div>
  <div class="uploaded-images" id="FWB_AVUPLOADER_EDIT" style="display:block" >
  <IFRAME SRC="image-uploader.php" name="frontImg_edit"  id="frontImg_edit" WIDTH=100% HEIGHT=150 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF);" scrolling="no" allowtransparency="true"> 
  </IFRAME>
      <input type="hidden" name="front_img_edit" id="front_img_edit"  />
      <br  />
       <IFRAME SRC="pdf-uploader.php" name="frontVideo_edit"  id="frontVideo_edit" WIDTH=100% HEIGHT=300 frameborder="0" border="0" cellspacing="0" marginwidth="0" marginheight="0" style=" <?php echo $style_front ?>;FILTER: chroma(color=#FFFFFF)" scrolling="no" allowtransparency="true">                                               
    </IFRAME>
      <input type="hidden" name="front_pdf_edit" id="front_pdf"  />
  </div>
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
																      <th width="14%" align="center" scope="col"><div class=" btnBg" style="width:50px; margin-left:2px;"  align="center"><a href="javascript:;" onclick="productValidation();">Save</a> </div></th>
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
function productValidation()
{
 	document.getElementById("category_fld").style.display = "none" ;
	if(document.getElementById("category_id").value=="")
	{
		document.getElementById("category_fld").style.display='';
		document.getElementById("category_fld").innerHTML="Please select category name!";
		document.getElementById("category_id").focus();
		return false;
	}
	document.productFrm.submit()
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
</script>

</body>
</html>
