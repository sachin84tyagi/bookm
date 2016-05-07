<?php
include("session.php");
include_once("../codelibrary/inc/admin-header.php");
include('../codelibrary/inc/variables.php');

$obj= new database_class();	
$obj_paging = new paging;
$categoryRec = $obj->my_query("select * from ".$obj->getTable("var_category")." where  status = '1' order by id ") ;

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
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large">View Product  </asp:Label></div>
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
                                                                      Search Product</h3>
																		<span></span>
																	</div>
																	<table width="100%" border="0" cellspacing="0" cellpadding="3" style=" margin-top:15px;">
  <!--<tr><td id="disp_msg" colspan="4" class="msg" style="display:none; padding-left:80px;"></td></tr>-->                                                                  
  <tr>
    <th width="7%" align="right" scope="col">Category :</th>
    <th width="15%" align="left" scope="col">
      <label>
       <select name="category_id"  id="category_id" style="width:150px" >
           <option value="" >-select-</option>
		   <?php 
		      if(mysql_num_rows($categoryRec) > 0  ) {
				  while($categoryData = mysql_fetch_array($categoryRec)) {
		   ?>
           <option value="<?php echo $categoryData['id'] ?>" ><?php echo $categoryData['category'] ?></option>
           <?php } } ?>
        </select>
      </label>
 </th>
    <th  align="right" width="6%"  scope="col">Code :</th>
    <th align="left" scope="col">
        <input type="text" name="product_code" id="product_code"   />
    </th>
  </tr>
  <tr>
    <th width="7%" align="right" scope="col">Title :</th>
    <th width="15%" align="left" scope="col">
        <input type="text" name="name" id="name"   />
    </th>
   
  </tr>
  
   <tr>
    <td align="center">&nbsp;</td>
    <td align="right"><div class=" btnBg" align="center" style="width:50px; margin-top:5px; margin-left:5px;"><a href="javascript:;" onclick="showData('search');">Search</a></div></td>
    <td align="center">&nbsp;</td>
    <td align="right" ><div class=" btnBg" align="center" style="width:120px; margin-top:5px; margin-left:5px;"><a href="product-add.php">Add Product</a> </div></td>
  </tr>
</table>

	</fieldset>
</div>
                
            </td>
        </tr>
            <tr >
           		 <td colspan="2"  valign="top">
           		 <div id="product_list" style="text-align:center"></div>
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
<form name="redFrm" id="redFrm" action="" method="POST">
<input type="hidden" name="user_action" id="user_action"  />
<input type="hidden" name="editKey"  id="editKey"/>
<input type="hidden" name="pagenum"  id="pagenum"/>
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
			 
	if(document.getElementById("category_id").value=="" && document.getElementById("product_code").value=="" && document.getElementById("name").value=="" &&  document.getElementById("price").value=="" )
	{
		document.getElementById("disp_msg2").style.display='';
		document.getElementById("disp_msg2").innerHTML="Please enter atleast one search criteria Name!";
		document.getElementById("countries_id").focus();
		return false;
	}
		if(document.getElementById("category_id").value!="")
		{
			parameters = parameters+"&category_id="+document.getElementById("category_id").value;
		}
		if(document.getElementById("product_code").value!="")
		{
			parameters = parameters+"&product_code="+document.getElementById("product_code").value;
		}
		if(document.getElementById("name").value!="")
		{
			parameters = parameters+"&name="+document.getElementById("name").value;
		}
		if(document.getElementById("price").value!="")
		{
			parameters = parameters+"&price="+document.getElementById("price").value;
		}
		
		//alert(parameters);
	}
//	$('#product_list').fadeOut('fast', function() {
				
		   callAjax("product_list", "listing-product.php", {
		
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
	$("#product_list").fadeIn("fast");
}

function process_begins()
{
	document.getElementById('product_list').innerHTML="<br><br><img src='images/loading.gif' border='0'><br>Loading ...";
}
function redirect_action(frmAction, action, id , page_id)
{
	
	document.getElementById("user_action").value=action;
	document.getElementById("editKey").value=id;
	document.getElementById("pagenum").action=page_id;
	document.getElementById("redFrm").action=frmAction;
	if(action=='delete')
	{
		ans = confirm("Are you sure. Do you want to delete this product?");
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
	show_popup('view_product_details.php?id='+record_id+'&btn=off');
}
showData('list');
</script>
</body>
</html>
