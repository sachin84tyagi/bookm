<?php
//include('codelibrary/inc/variables.php'); 

//$obj= new database_class();	
$objInvoice = new invoice_class();
//$result = $obj->getAnyTableWhereData($obj->getTable("var_customer")," and status=1 order by first_name");
//$edit_key = $_POST["editKey"];
//$edit_key=14;

if($edit_key!="")
{

	$query = "SELECT inv.*,cust.id as cust_id, cust.first_name,cust.business ,cust.email, cust.billing_address, cust.billing_city, cust.billing_state, cust.billing_zip , cust.shipping_address , cust.shipping_city, cust.shipping_state, cust.shipping_zip from ".$obj->getTable("var_invoice")." as inv INNER JOIN ".$obj->getTable("var_customer")." as cust ON (inv.customer_id=cust.id)  where inv.id= $edit_key order by inv.id desc";
	$res = $obj->my_query($query,$obj->db_connect());
	$row = mysql_fetch_array($res);

}
ob_start();
?>
<script LANGUAGE="JavaScript" SRC="codelibrary/js/func_ajax.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>One Hour Tees ---&gt;E-mail</title>

</head>

<body style="font-family:Arial, Helvetica, sans-serif; font-size:8pt; color:#484848; margin:auto;"   >
<table width="860" align="center" border="0" cellspacing="0" cellpadding="0"  >
<tbody>
<tr>
<td height="100" style="padding-left:10px"><img src="<?php echo $site_url;?>images/logo.jpg" width="86" height="86" /><br><font color="#484848" face="Lucida Sans Unicode, Lucida Grande, sans-serif" size="2"><?php echo $GL_address;?></font></td>
<td align="right" valign="middle" style="padding-right:20px">
<font color="#E93777" face="Arial, Helvetica, sans-serif" size="+6"><b>INVOICE</b></font><br>
<font color="#484848" face="Lucida Sans Unicode, Lucida Grande, sans-serif" size="2"><strong>
<?php echo 'Date:&nbsp;'.date("m-d-Y", strtotime($row["date_added"])).'<br />
Invoice #: '.$row["invoice_no"]?></strong></font></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
 
  <tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
   
    <table width="851" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col"> 
          
          
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <th align="center" scope="col"> <div align="left" style="padding-top:10px">
                    <table width="99%">
                      <tr>
                        <td colspan="2" valign="middle" >
                         
                          <table width="100%" align="center" border="0" cellspacing="3" cellpadding="0">
                            <tr>
                              <td width="49%" style="border:1px solid #333;">
                                  
                                    
                                      <h3 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif,Arial, Helvetica, sans-serif; text-align:left; line-height:22px; margin:0px; background-color:#A0C6E5; padding-left:5px; font-weight:bold; font-size:10pt;"> Billing Information</h3>
                                      
                                    <table width="100%" border="0" cellspacing="3" >
                                      <tr>
                                        <td colspan="4" scope="col" style="text-align:left" height="65px;">   <?php
							echo $objInvoice->billing__shipping_address($row["cust_id"],'billing');
							
							
							
						?>	
						&nbsp;
										</td>
                                      </tr>
                                    </table>
                                 
                               </td>
                                <th width="51%" scope="col"  style="border:1px solid #333;" valign="top">
                                   <h3 style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif,Arial, Helvetica, sans-serif; text-align:left; line-height:22px; margin:0px; background-color:#A0C6E5; padding-left:5px; font-weight:bold; font-size:10pt;"> Shipping Information</h3>
                                   <table width="100%" border="0" cellspacing="3" >
                                      <tr>
                                        <th scope="col" style="text-align:left" height="65px;"> <?php
                                       echo $objInvoice->billing__shipping_address($row["cust_id"],'shipping');
									   
									   ?>
										&nbsp;</th>
                                      </tr>
                                    </table>
                                 
                                </th>
                            </tr>
                          </table>
                         
                          </td>
                      </tr>
                      <tr >
                        <td colspan="2"  valign="top">
                            <fieldset id="Fieldset4">
                             
                              <?php
							  
                              if($edit_key!="")
							  {
								 // getting sales person name.
								$user_id = $row["sales_person"];
								$user = $obj->getAnyTableWhereData($obj->getTable("var_user_login_table")," and id = $user_id ");
								$user_name = ucfirst($user["first_name"])."&nbsp;".ucfirst($user["last_name"]);
								$user_id =  $user["sales_person"];
							  }
							  else
							  {
								$user_name =  $_SESSION["SESSION_USER_NAME"];
								$user_id =  $_SESSION["sess_admin_id"];
							  }
							  
							  ?>
                              <table height="20" width="100%" border="1" cellspacing="0" cellpadding="0" bgcolor="#0099CC" style="color:WHITE; font-size:12PX; padding-left:15PX; ">
                                <tr>
                                  <th width="20%" scope="col">SALES PERSON</th>
                                  <th width="9%" scope="col">PO #</th>
                                  <th width="15%" scope="col">TURNAROUND</th>
                                  <th width="14%" scope="col">SHIP DATE</th>
                                  <th width="12%" scope="col">NEEDED BY</th>
                                  <th width="19%" scope="col">SHIPPING METHOD</th>
                                  <th width="13%" scope="col">PAY TERMS</th>
                                </tr>
                                <tr>
                                  <th scope="col" height="30"><?php echo $user_name;?>
                                 
                                  </th>
                                  <th scope="col"><input name="po_number" type="text" id="po_number" value="<?php echo ($row["po_number"]==0)?'':$row["po_number"]; ?>" size="10" maxlength="11" /></th>
                                  <th scope="col"><input name="turn_around" type="text" id="turn_around" value="<?php echo $row["turn_around"];?>" size="10" maxlength="40"/></th>
                                  <th scope="col"><input name="ship_date" type="text" id="ship_date" value="<?php echo $row["ship_date"];?>" size="10" maxlength="12"/></th>
                                  <th scope="col"><input name="needed_by" type="text" id="needed_by" value="<?php echo $row["needed_by"];?>" size="10" maxlength="12"/></th>
                                  <th scope="col"><input name="ship_method" type="text" id="ship_method" value="<?php echo $row["ship_method"];?>" size="10" maxlength="30"/></th>
                                  <th scope="col"><input name="payment_method" type="text" id="payment_method" value="<?php echo $row["payment_method"];?>" size="10" maxlength="30"/></th>
                                </tr>
                              </table>
                            </fieldset>
                         
                         
                            <fieldset id="Fieldset5">
                              <label> </label>
                              <table width="100%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr style="background-color:#0099cc;line-height:18px;font-size:11pt;font-weight:bold;text-align:center;font-family: Verdana,"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td width="12%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Item Number</td>
                                      <td width="10%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Color</td>
                                      <td width="22%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Sizes</td>
                                      <td width="15%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Art Placement</td>
                                      <td width="14%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Art Dimension</td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Quantity</td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Price</td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Total</td>
                                    </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                   <td id="addmore_email" >
                                <?php
                                if($edit_key!="")
								{ 
								$invoice_id  = $row["id"];
								$res_line_item = $obj->getAnyTableAllData($obj->getTable("var_line_item")," and invoice_id = $invoice_id ");
								$total_record = count($res_line_item);
								foreach($res_line_item as $k=>$v)
								{
								?>
                                
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td width="12%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo $v["item_number"];?></td>
                                      <td width="10%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo $v["color"];?></td>
                                      <td width="22%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo $v["sizes"];?></td>
                                      <td width="15%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo $v["art_placement"];?></td>
                                      <td width="14%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo stripslashes($v["art_dimension"]);?></td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" align="center">&nbsp;<?php echo $v["qty"];?></td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" align="right">&nbsp;<?php echo $v["price"];?></td>
                                      <td width="9%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" align="right">&nbsp;<?php echo number_format($v["total"],2);?>
                                     
                                      </td>
                                     
                                    </tr>
                                  </table>
                                  <?php
								}
								  
								}
								
								?>
                                </td>
                                </tr>
                              <?php
				if($total_record<7)
				{
					$disp_lines = $total_record+7;
					for($i=1;$i<=$disp_lines;$i++)
					{
			
							  
							  ?>
                                <tr>
                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td width="12%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="10%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="22%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="15%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="14%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="9%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="9%" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td width="9%" style="border:1px solid #ccc;">&nbsp;</td>
                                    </tr>
                                  </table></td>
                                </tr>
                    <?php
					}
					
				}
				?>                                         
                                <tr>
                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td  width="22%" colspan="2" rowspan="7" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Note<br><?php echo nl2br($row["description"]);?></td>
                                      <td width="37%" colspan="3" rowspan="7" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">
                                      
                                      <div id="cc_info">
                                      <table width="96%" align="center" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td colspan="2" style="border:1px solid #ccc; font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">If you wish to pay by credit card please fill out below</td>
                                        </tr>
                                        <tr>
                                          <td width="35%" style="border:1px solid #ccc; font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Credit card #:</td>
                                          <td width="65%" style="border:1px solid #ccc; font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;<?php echo $row["credit_card"];?></td>
                                        </tr>
                                        
                                        <tr>
                                          <td style="border:1px solid #ccc; font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Exp Date :</td>
                                          <td style="border:1px solid #ccc; font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">
                                            
                                                                   <?php 
													if($row["exp_date"]!='0-0')
													{
														 echo $row["exp_date"];
													}
																  ?>
                                          
                                          </td>
                                        </tr>
                                      
                                      </table>
                                      </div>
                                      
                                      </td>
                                      <td width="14%" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">&nbsp;</td>
                                      <td width="18%" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Subtotal</td>
                                      <td width="9%" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" align="right">&nbsp;$<?php echo number_format($row["sub_total"],2);?></td>
                                    </tr>
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td valign="top" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">TAX: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo  number_format($row["tax"],2);?>%</td>
                                      <td width="14%" valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" align="right">&nbsp;<?php   
									  $tax_amt = ($row["sub_total"] * $row["tax"]) /100;
									 echo "$".number_format($tax_amt,2);?></td>
                                    </tr>
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td valign="top" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">S&amp;H</td>
                                      <td width="14%" valign="top" align="right">&nbsp;<?php echo  ($row["billingshipping"]=='' || $row["billingshipping"]==null)? '-' : number_format($row["billingshipping"],2);?></td>
                                    </tr>
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td valign="top" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">Discount</td>
                                      <td width="14%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" valign="top" align="right">&nbsp;<?php echo ($row["discount"]=='' && $row["discount"]!='0')? '-': number_format($row["discount"],2);?></td>
                                    </tr>
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td valign="top" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td valign="top" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;">TOTAL</td>
                                      <td width="14%" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" valign="top" align="right">&nbsp;$<?php echo  number_format($row["grand_total"],2);?></td>
                                    </tr>
                                    <tr style="line-height:18px;font-size:10pt;font-weight:bold;text-align:left;font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;">
                                      <td valign="top" style="border:1px solid #ccc;">&nbsp;</td>
                                      <td colspan="3" style="border:1px solid #ccc;  font:12px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#000;" valign="top">Please make checks payable to :<br> ONE HOUR TEES</td>
                                    </tr>
                                  </table></td>
                                </tr>
                              </table>
                             
                          </td>
                      </tr>
                      <tr>
                        <td colspan="2" style="width: 745px" style="border:1px solid #ccc;"></td>
                      </tr>
                    </table>
                  </div>
                  &nbsp;</th>
              </tr>
             
                <td align="center" style="border:1px solid #ccc;"></td>
              </tr>
            </table>
          </th>
        </tr>
        <tr  >
          <th valign="top" scope="col" style="border:1px solid #ccc;"></th>
        </tr>
      </table>
      </td>
  </tr>
</table>
</body>
</html>
<?php
$content = ob_get_contents();
ob_end_clean();
//echo $content;
?>
