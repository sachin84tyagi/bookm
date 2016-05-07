<?php
/*_______________________________________________________________________
Created By	: Mohan Kumar
Created On	: 17/01/2011
Modified By : 
Modified On : 
Description : This class is used for invoice.
_________________________________________________________________________
*/

require_once(PATH."codelibrary/inc/database_class.php");
require_once(PATH."codelibrary/inc/common_function.php");

class invoice_class extends database_class
{
	
	// constants variables
	 const INVALID_USER_NAME_PASWORD = 'Invalid Username/Password!';
	 
	// tables name.
	 const INVOICE = 'var_invoice';
    // const IP_TRACKING = 'var_admin_ip_tracking';
	
	 var $obj_common_func; 
	
	
	function __construct()
	{
		$this->obj_common_func = new common_function;
		
	}
	
	/*
	* This function is used to generate invoice no.
	* @param: no param
	*  
    */
	function generate_invoice_no()
	{
		  $user_id = $_SESSION["sess_admin_id"]; // logged in user id.
		  $res = $this->getAnyTableWhereData($this->getTable("var_invoice")," and sales_person=$user_id");
		  
		  // user is generating invoice for the first time.
		  if($res["invoice_no"]=="" || $res["invoice_no"]==0)
		  {
			    
				// getting invoice no assigned to him.
				$res_invoice = $this->getAnyTableWhereData($this->getTable("var_generate_invoice_no")," and user_id=$user_id");
				$_SESSION["SESSION_INVOICE_NO"] = $res_invoice["invoice_number"];
		  }
		  else
		  {
			 $res = $this->getAnyTableWhereData($this->getTable("var_invoice")," and sales_person=$user_id order by invoice_no desc");
			 $_SESSION["SESSION_INVOICE_NO"] =  $res["invoice_no"]+1; // If sales person found. Increment invoice no by 1.   
		  }
		  
		  
	}
	
	
	function insert_blank_record()
    {
    	$_POST["sales_person"]=0;
        $_POST["customer_id"]=0;
        $_POST["po_number"]=0;
        $_POST["turn_around"]="";
        $_POST["ship_date"]="";
        $_POST["needed_by"]="";
        $_POST["ship_method"]="";
        $_POST["payment_method"]="";
        $_POST["exp_date"]="";
        $_POST["zip_code"]=0;
        $_POST["sub_total"]=0;
        $_POST["tax"]=0;
        $_POST["S_and_H"]=0;
        $_POST["discount"]=0;
        $_POST["grand_total"]=0;
        $_POST["status"]="";
        $_POST["date_added"]=date("y-m-d");
         $_POST["date_edited"]="0000-00-00";
        $_POST["description"]="";
        
        $this->insertData($this->getTable(self::INVOICE));
        $_SESSION["SESSION_INSERT_ID"] = $this->my_insert_id($this->getTable(self::INVOICE));             
      
    }
    
    function save_line_item($edit_key, $total_record)
    {
    	$query_str="";
		if($edit_key!="")
		{
			for($i=0;$i<$total_record;$i++)	
			{
							
				
				
				
				if($_POST["qty"][$i]!="")
                {
                $art_dimension = $this->obj_common_func->sqlInjectionCheck($_POST["art_dimension"][$i],$this->db_connect());
				$query_str .= " (NULL,'".$edit_key."', '".$_POST["item_number"][$i]."', '".$_POST["color"][$i]."', '".$_POST["sizes"][$i]."', '".$_POST["art_placement"][$i]."', '".$art_dimension."', '".$_POST["qty"][$i]."', '".$_POST["price"][$i]."', '".$_POST["total"][$i]."'),";
				}		
			}
		}
		
	    $query_str =  substr($query_str,0,-1);
	  $query = "INSERT INTO `tees_line_item` (`id`,`invoice_id`, `item_number`, `color`, `sizes`, `art_placement`, `art_dimension`, `qty`, `price`, `total`) VALUES ".$query_str ;
	 
		$result=$this->my_query($query,$this->db_connect());
       
        if($result!=0)
        {
        	return true;
        }
        else
        {
        	return false;
        }
		
    }
    
	/*
	* This function is used to display billing and shipping address.
	* @ param: customer id and type of address
	* example: billing__shipping_address(1, 'shipping');
	*
	*/
   function billing__shipping_address($cust_id, $flag)
   {
	    $row = $this->getAnyTableWhereData($this->getTable("var_customer")," and id=$cust_id");
		$strAdd= ''; 
		
		// billing address.
		if($flag=='billing')	
		{
						
			if($row["business"]!="")
					$strAdd .= "Business: ".ucfirst($row["business"])."<br>";
					
			if($row["first_name"]!="")		
				$strAdd .= "Name: ".ucfirst($row["first_name"]);
			
			if($row["phone_no"]!="")			
				{
					$strAdd .= "<br>Phone #:&nbsp;".$row["phone_no"];
				}
			
			if($row["email"]!="")			
				{
				$strAdd .= "<br>E-mail:&nbsp;".$row["email"];
				}
			
			/*if($row["billing_address"]!="" && $row["billing_city"]!="")
			{
			
				if($row["billing_first_name"]!="")			
				{
				$strAdd .= ucfirst($row["billing_first_name"])."&nbsp;".ucfirst($row["billing_last_name"])."<br>Phone #:&nbsp;".$row["billing_phone_no"];
				}
				
				if($row["billing_email"]!="")			
				{
				$strAdd .= "<br>E-mail:&nbsp;".$row["billing_email"];
				}
			
				$strAdd .= "<br> ".$row["billing_address"];
				$strAdd .= "<br> ".$row["billing_city"];
			}
			
			if($row["billing_state"]!="")
			{
				$strAdd .= ', '.$row["billing_state"].', '.$row["billing_zip"];   
			}
			*/
			
		}
		
		// shipping address.
		if($flag=='shipping')
		{
				
				
			if($row["shipping_first_name"]!="")
				{
					
					$strAdd .= "Business: ".ucfirst($row["shipping_first_name"])."<br>";
					$strAdd .= "Name: ".ucfirst($row["shipping_business"]);
					
				}
							
				
				if($row["shipping_address"]!="")
				{
					
					$strAdd .= "<br>".$row["shipping_address"];
				}
				if($row["shipping_city"]!="")
				{
					$strAdd .= "<br> ".$row["shipping_city"].', '.$row["shipping_state"].', '.$row["shipping_zip"];
				}
				
		}
			return $strAdd;
			
   }
	
	
		
	function __destruct()
	{ ; }
		
}// class ends.
?>