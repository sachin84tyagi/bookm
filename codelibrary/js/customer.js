function shipping_same_as_billing()
{
	
	if(document.getElementById("shippingChecked").checked==true)
	{
		document.getElementById("shipping_first_name").value = document.getElementById("billing_first_name").value;
		document.getElementById("shipping_last_name").value = document.getElementById("billing_last_name").value;
		//document.getElementById("shipping_email").value = document.getElementById("billing_email").value;
		//document.getElementById("shipping_phone_no").value = document.getElementById("billing_phone_no").value;
		document.getElementById("shipping_address").value = document.getElementById("billing_address").value;
		document.getElementById("shipping_city").value = document.getElementById("billing_city").value;
		document.getElementById("shipping_state").value = document.getElementById("billing_state").value;
		document.getElementById("shipping_zip").value = document.getElementById("billing_zip").value;
		
	}
	else
	{
		document.getElementById("shipping_first_name").value = '';
		document.getElementById("shipping_last_name").value = '';
		document.getElementById("shipping_email").value = '';
		document.getElementById("shipping_phone_no").value = '';
		document.getElementById("shipping_address").value ='';
		document.getElementById("shipping_city").value = '';
		document.getElementById("shipping_state").value = '';
		document.getElementById("shipping_zip").value = '';
	}
}


function custValidation(paramDate)
{
 	  
	
	  
	  document.getElementById("first_name_fld").style.display='none';
	  document.getElementById("email_fld").style.display='none';
	  document.getElementById("business_fld").style.display='none';
	  /*document.getElementById("billing_first_name_fld").style.display='none';
	   document.getElementById("billing_email_fld").style.display='none';
	  document.getElementById("billing_phone_no_fld").style.display='none';
	  document.getElementById("billing_address_fld").style.display='none';
	  document.getElementById("billing_city_fld").style.display='none';
	  document.getElementById("billing_state_fld").style.display='none';
	  document.getElementById("billing_zip_fld").style.display='none';*/
	  document.getElementById("shipping_address_fld").style.display='none';
	  document.getElementById("shipping_city_fld").style.display='none';
	  document.getElementById("shipping_state_fld").style.display='none';
	  document.getElementById("shipping_zip_fld").style.display='none';
	  document.getElementById("credit_card_fld").style.display='none';
	  document.getElementById("exp_date1_fld").style.display='none';
	  document.getElementById("exp_date2_fld").style.display='none';
	  document.getElementById("shipping_first_name_fld").style.display='none';
	 // document.getElementById("phone_no_fld").style.display='none';
	   
	if(document.getElementById("first_name").value=="")
	{
		document.getElementById("first_name_fld").style.display='';
		document.getElementById("first_name_fld").innerHTML="Please enter First Name!";
		document.getElementById("first_name").focus();
		return false;
	}
	
	/*if(document.getElementById("business").value=="")
	{
		document.getElementById("business_fld").style.display='';
		document.getElementById("business_fld").innerHTML="Please enter Business!";
		document.getElementById("business").focus();
		return false;
	}*/
	
	email1 = document.getElementById("email");
	if(email1.value!="")
	{	
		
		var filter = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/
		if (filter.test(email1.value)==false)
		 {
			document.getElementById("email_fld").style.display="";
			document.getElementById("email_fld").innerHTML='Invalid E-mail!';
			email1.focus();
			return false;
		}
		
		
	}
	/*else
	{
		document.getElementById("email_fld").style.display="";
		document.getElementById("email_fld").innerHTML="Please enter E-mail!";
		document.getElementById("email").focus();
		return false;
	}*/
	
	 /*
	 // if phone number is entered------
	if(document.getElementById("phone_no").value!="")
	{
		
		if(document.getElementById("phone_no").value.length!=10)
		{
					document.getElementById("phone_no_fld").style.display="";
					document.getElementById("phone_no_fld").innerHTML="Invalid phone number!";
					document.getElementById("phone_no").focus();
					return false;
		}
		else
		{
			   if(checkSpl_chrs('phone_no')==false)
				{
					document.getElementById("phone_no_fld").style.display="";
					document.getElementById("phone_no_fld").innerHTML="Invalid phone number!";
					document.getElementById("phone_no").focus();
					return false;
				}
		}
		
	}
	else
	{
		
		document.getElementById("phone_no_fld").style.display="";
		document.getElementById("phone_no_fld").innerHTML="Please enter Phone Number!";
		document.getElementById("phone_no").focus();
		return false;
		
	}
	
	*/
	
	/*if(document.getElementById("billing_first_name").value=="")
	{
		document.getElementById("billing_first_name_fld").style.display='';
		document.getElementById("billing_first_name_fld").innerHTML="Please enter First Name!";
		document.getElementById("billing_first_name").focus();
		return false;
	}
	*/
	// if billing phone number is entered------
	/*if(document.getElementById("billing_phone_no").value!="")
	{
		    
		
		if(document.getElementById("billing_phone_no").value.length<10)
		{
					document.getElementById("billing_phone_no_fld").style.display="";
					document.getElementById("billing_phone_no_fld").innerHTML="Invalid phone number!";
					document.getElementById("billing_phone_no").focus();
					return false;
		}
		else
		{
			   if(checkSpl_chrs('billing_phone_no')==false)
				{
					document.getElementById("billing_phone_no_fld").style.display="";
					document.getElementById("billing_phone_no_fld").innerHTML="Invalid phone number!";
					document.getElementById("billing_phone_no").focus();
					return false;
				}
		}
		
	}
	
	
	email = document.getElementById("billing_email");
	if(email.value!="")
	{	
		
		var filter = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/
		if (filter.test(email.value)==false)
		 {
			document.getElementById("billing_email_fld").style.display="";
			document.getElementById("billing_email_fld").innerHTML='Invalid E-mail!';

			email.focus();
			return false;
		}
		
		
	}
	/*else
	{
		document.getElementById("billing_email_fld").style.display="";
		document.getElementById("billing_email_fld").innerHTML="Please enter E-mail!";
		document.getElementById("billing_email").focus();
		return false;
	}*/
	
	
	//------------------ billing-------------
	/*if(document.getElementById("billing_address").value=="")
	{
		document.getElementById("billing_address_fld").style.display='';
		document.getElementById("billing_address_fld").innerHTML="Please enter Address!";
		document.getElementById("billing_address").focus();
		return false;
	}
	if(document.getElementById("billing_city").value=="")
	{
		document.getElementById("billing_city_fld").style.display='';
		document.getElementById("billing_city_fld").innerHTML="Please enter City!";
		document.getElementById("billing_city").focus();
		return false;
	}
	if(document.getElementById("billing_state").value=="")
	{
		document.getElementById("billing_state_fld").style.display='';
		document.getElementById("billing_state_fld").innerHTML="Please enter State!";
		document.getElementById("billing_state").focus();
		return false;
	}
	
	if(document.getElementById("billing_zip").value=="")
	{
		document.getElementById("billing_zip_fld").style.display='';
		document.getElementById("billing_zip_fld").innerHTML="Please enter Zip!";
		document.getElementById("billing_zip").focus();
		return false;
	}
	// if billing zip number is entered------
	if(document.getElementById("billing_zip").value!="")
	{
		    
		
		if(document.getElementById("billing_zip").value.length!=6)
		{
					document.getElementById("billing_zip_fld").style.display="";
					document.getElementById("billing_zip_fld").innerHTML="Invalid Zip Code!";
					document.getElementById("billing_zip").focus();
					return false;
		}
		else
		{
			   if(checkSpl_chrs('billing_zip')==false)
				{
					document.getElementById("billing_zip_fld").style.display="";
					document.getElementById("billing_zip_fld").innerHTML="Invalid Zip Code!";
					document.getElementById("billing_zip").focus();
					return false;
				}
		}
		
	}
	*/
	//-----------------Shipping----------------------
	
	//if(document.getElementById("shippingChecked").checked==true)
	if(1==1)
	{
	/*if(document.getElementById("shipping_first_name").value=="")
	{
		document.getElementById("shipping_first_name_fld").style.display='';
		document.getElementById("shipping_first_name_fld").innerHTML="Please enter First Name!";
		document.getElementById("shipping_first_name").focus();
		return false;
	}*/
	// Shipping mail
	
	/*if( document.getElementById("shipping_email").value!="")
	{
		email = document.getElementById("shipping_email");
		if(email.value!="")
		{	
			
			var filter = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/
			if (filter.test(email.value)==false)
			 {
				document.getElementById("shipping_email_fld").style.display="";
				document.getElementById("shipping_email_fld").innerHTML='Invalid E-mail!';
				email.focus();
				return false;
			}
			
			
		}
		else
		{
			document.getElementById("shipping_email_fld").style.display="";
			document.getElementById("shipping_email_fld").innerHTML="Please enter E-mail!";
			document.getElementById("shipping_email").focus();
			return false;
		}
		
	}
	*/
	
	/*if(document.getElementById("shipping_address").value=="")
	{
		document.getElementById("shipping_address_fld").style.display='';
		document.getElementById("shipping_address_fld").innerHTML="Please enter Address!";
		document.getElementById("shipping_address").focus();
		return false;
	}
	if(document.getElementById("shipping_city").value=="")
	{
		document.getElementById("shipping_city_fld").style.display='';
		document.getElementById("shipping_city_fld").innerHTML="Please enter City!";
		document.getElementById("shipping_city").focus();
		return false;
	}
	if(document.getElementById("shipping_state").value=="")
	{
		document.getElementById("shipping_state_fld").style.display='';
		document.getElementById("shipping_state_fld").innerHTML="Please enter State!";
		document.getElementById("shipping_state").focus();
		return false;
	}
	
	if(document.getElementById("shipping_zip").value=="")
	{
		document.getElementById("shipping_zip_fld").style.display='';
		document.getElementById("shipping_zip_fld").innerHTML="Please enter Zip!";
		document.getElementById("shipping_zip").focus();
		return false;
	}
	
	// if shipping zip number is entered------
	if(document.getElementById("shipping_zip").value=="")
	{
			document.getElementById("shipping_zip_fld").style.display="";
			document.getElementById("shipping_zip_fld").innerHTML="Please enter Zip Code!";
			document.getElementById("shipping_zip").focus();
			return false;
	}*/
	/*else
	{
		
		if(document.getElementById("shipping_zip").value.length!=6)
		{
					document.getElementById("shipping_zip_fld").style.display="";
					document.getElementById("shipping_zip_fld").innerHTML="Invalid Zip Code!";
					document.getElementById("shipping_zip").focus();
					return false;
		}
		else
		{
			   if(checkSpl_chrs('shipping_zip')==false)
				{
					document.getElementById("shipping_zip_fld").style.display="";
					document.getElementById("shipping_zip_fld").innerHTML="Invalid Zip Code!";
					document.getElementById("shipping_zip").focus();
					return false;
				}
		}
		
	}
	*/
	} // shipping checkbox's check ends here
	/*if(document.getElementById("credit_card").value=="")
	{
		document.getElementById("credit_card_fld").style.display='';
		document.getElementById("credit_card_fld").innerHTML="Please enter Credit Card Number!";
		document.getElementById("credit_card").focus();
		return false;
	}
	*/
	/*if(document.getElementById("credit_card").value!="")
	{
				if(checkSpl_chrs('credit_card')==false)
				{
					document.getElementById("credit_card_fld").style.display="";
					document.getElementById("credit_card_fld").innerHTML="Invalid Credit Card Number!";
					document.getElementById("credit_card").focus();
					return false;
				}
	}
	
	if(document.getElementById("credit_card").value!="" && document.getElementById("credit_card").value.length!=16)
	{
		document.getElementById("credit_card_fld").style.display='';
		document.getElementById("credit_card_fld").innerHTML="Invalid Credit Card Number!";
		document.getElementById("credit_card").focus();
		return false;
	}
	
	*/
	/*			
	if(document.getElementById("exp_date1").value=="0")
	{
		document.getElementById("exp_date1_fld").style.display='';
		document.getElementById("exp_date1_fld").innerHTML="Please select Exp Date!";
		document.getElementById("exp_date1").focus();
		return false;
	}
	
	if(document.getElementById("exp_date1").value!="0")
	{
		if(paramDate>document.getElementById("exp_date1").value)
		{
			document.getElementById("exp_date1_fld").style.display='';
			document.getElementById("exp_date1_fld").innerHTML="Invalid Exp Date!";
			document.getElementById("exp_date1").focus();
			return false;
		}
	}
	*/
	
	/*
	if(document.getElementById("exp_date2").value=="0")
	{
		document.getElementById("exp_date2_fld").style.display='';
		document.getElementById("exp_date2_fld").innerHTML="Please select Exp Date!";
		document.getElementById("exp_date2").focus();
		return false;
	}
	
	*/
	if(document.getElementById("duplicate_customer").value=='')
		chk_available();
	 else
	   document.userFrm.submit();
	   
/*	if(document.getElementById("email").value!='' && document.getElementById("duplicate_customer").value=='')
		chk_available();
    else
	   document.userFrm.submit();
	   */
}

function chk_available()
{
	 
//	alert("test");
	//document.getElementById("duplicate_customer").value='';
	document.getElementById("disp_available").style.display='';
	parameters = '';
	
	if(document.getElementById("first_name").value!='')
	 parameters = parameters+"&first_name="+document.getElementById("first_name").value;
	 
	if(document.getElementById("email").value!='')
	 parameters = parameters+"&email="+document.getElementById("email").value;
	
	//alert(parameters);
	
	callAjax("disp_available", "check_availablity.php", {
		
			params:parameters+"&rand="+Math.random(),
		
			meth:"post",
		
			async:true,
		
			startfunc:"process_starts();",
		
			endfunc:"func_ends()",
		
			errorfunc:"" }
		
			);		 
}


function func_ends()
{
	
	content = document.getElementById("disp_available").innerHTML;
	if(content!='')
		document.getElementById("disp_available").style.display='';
	
	//alert(document.getElementById("duplicate_customer").value);
	
	//if(document.getElementById("duplicate_customer").value!='')
	if(content=='' || content=='<span style="pedding-left:300px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/loading.gif" border="0">')
	{
	   document.getElementById("disp_available").style.display='none';
	   document.userFrm.submit();
	}
}

function process_starts()
{
	document.getElementById("disp_available").innerHTML = '<span style="pedding-left:300px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/loading.gif" border="0">';
}

function ans(param)
{
	if(param=='yes')
	{
		document.getElementById("duplicate_customer").value = param;
		document.getElementById("disp_available").innerHTML = "<span class='msg'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Duplicate Allowed</span>";
	}
	else
	{
		document.getElementById("email").select();
		document.getElementById("duplicate_customer").value ='no';
		document.getElementById("disp_available").innerHTML=''; // blank the place holder.
		document.getElementById("disp_available").style.display='none';
	}
	
	
}



function checkSpl_chrs(fieldname)
{
	var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    elm = document.getElementById(fieldname);
	
 char_found = false;
 for (var i = 0; i < elm.value.length; i++) {
  	if (iChars.indexOf(elm.value.charAt(i)) != -1) {
    	char_found = true;
		break;
  	}
		
  }
  
  if(char_found==false)
    return true;
 else	
   return false;

}
