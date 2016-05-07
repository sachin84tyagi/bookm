// this js file is used to show all message passed in title property.
// Just pass the name of last and first form elements, while calling initializeForm() function at ajax_validator.htm
// Like: <tr><td colspan='3' align="center"><input type="button" value="Send Data" class="formbutton" onclick="initializeForm('check','fname');"/></td></tr>
var errors=new Array();
//var alertUnPublish=0;
// send http requests
function sendHttpRequest(url,callbackFunc,respXml,last, frm_name,ele, returnFunc){
   var xmlobj;
   try{
	   xmlobj=new XMLHttpRequest();
    }
    catch(e){
        try{
            xmlobj=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(e){
            alert('AJAX is not supported by your browser!');
            return false;
        }
   }
   xmlobj.onreadystatechange=function(){
	 //  alert(xmlobj.readyState);
        if(xmlobj.readyState==4){
			//alert(xmlobj.status);
            if(xmlobj.status==200){
				if(respXml)
				{
					var a= eval(callbackFunc+'(xmlobj.responseXML,last, frm_name, returnFunc)');
				}
				else
				{
					var a= eval(callbackFunc+'(xmlobj.responseText,last, frm_name, returnFunc)');
				}
            }
			//if(xmlobj.status==414)
			//{
			//	eval(callbackFunc+'(\'description|Please enter description.\',last, frm_name)');
			//}
        }
    }
    // open socket connection
    xmlobj.open('POST',url,true);
    // send http header
    xmlobj.setRequestHeader('Content-Type','text/html;charset=UTF-8');
    // send http request
    xmlobj.send(null);
}

///////////////////////////////////

// initialize form and assign events
function initializeForm(frm_name, last, minVal, maxVal, returnFunc)
{
	errors=new Array();
	var elems=eval("document."+frm_name+".elements");
	if(!elems){return};	
    for(var i=0;i<elems.length;i++)
	{
        // check for 'required' attribute
		//break;
        if(elems[i].getAttribute('required'))
		{
			 //if field depend on any other field
			   if(elems[i].getAttribute('depend'))
			   {
				var eleName=elems[i].name;
				var dAttr=elems[i].getAttribute('depend');
				var dAttrVal=dAttr.split("|");
				var dName=dAttrVal[0];
				var dValue=dAttrVal[1];
				var dType=dAttrVal[2];
				//alert(dAttrVal);
				//frm = frm_name;
				//var dd = encodeURIComponent(eval("document."+frm+"."+dName+".value"));
				//alert('name='+dName+'Value='+dValue+'type='+dType);
				if(dType=='radio')
				{
				 var dRadioVal = '';    
				 var len = eval("document."+frm_name+"."+dName+".length");        
				 for (var j=0; j <len; j++)
				 {
				  frm_ele = eval("document."+frm_name+"."+dName+"["+j+"].checked");
				   
				  if (frm_ele)
					{
					 dRadioVal = eval("document."+frm_name+"."+dName+"["+j+"].value");
					}
				 }
				 
				 if(dRadioVal != dValue)
				 {
				  if(document.getElementById('class_name'))
				   class_name_val = eval("document.getElementById('class_name')").value;
				  else
				   class_name_val = "";
			 
				  var lable = eval("document.getElementById('txt_'+eleName)");
				  lable.className = class_name_val;
				  continue;
				 }
				}
			 
				else if(dType=='checkbox')
				{
				 var dCheckedVal='';
				 frm_ele = eval("document."+frm_name+"."+dName+".checked")
					 if(frm_ele)
				 {
				  dCheckedVal = eval("document."+frm_name+"."+dName+".value");
				 }
				 if(dCheckedVal!=dValue)
				 {
				  if(document.getElementById('class_name'))
				   class_name_val = eval("document.getElementById('class_name')").value;
				  else
				   class_name_val = "";
				  var lable = eval("document.getElementById('txt_'+eleName)");
				  lable.className = class_name_val;
			 
				  continue;
				 }
				}
				else if(dType=='text')
				{
				 var dCheckedVal='';
				 frm_ele = eval("document."+frm_name+"."+dName)
					 if(frm_ele)
				 {
				  dCheckedVal = eval("document."+frm_name+"."+dName+".value");
				 }
				 if(dCheckedVal!=dValue)
				 {
				  if(document.getElementById('class_name'))
				   class_name_val = eval("document.getElementById('class_name')").value;
				  else
				   class_name_val = "";
				  var lable = eval("document.getElementById('txt_'+eleName)");
				  
				  lable.className = class_name_val;
			 
				  continue;
				 }
				}			 
			   }
			   //end of field  dependency


			var method='&method='+elems[i].getAttribute('required');
			var eleAttr=elems[i].getAttribute('required');
			if(elems[i].type=='select-one')
			{
			   sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+elems[i].options[elems[i].selectedIndex].value+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);				
			}
			
			else if(elems[i].type=='select-multiple')
			{
				var indx = 0;
				if(elems[i].selectedIndex<0)
					indx = 0;
				else
					indx = elems[i].selectedIndex;
				sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+elems[i].options[indx].value+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
			}
			else if(elems[i].type=='radio')
			{
				var radioVal = '';
				
				var ele = elems[i].name;
				
			   frm = frm_name;
			   
			   var len = eval("document."+frm+"."+ele+".length");
				   
			   for (var j=0; j <len; j++)
			   {
					frm_ele = eval("document."+frm+"."+ele+"["+j+"].checked");
					    
					if (frm_ele)
					  {
					   radioVal = eval("document."+frm+"."+ele+"["+j+"].value");
					  }
			   }
				 //checking motor type
				  sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+radioVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
			}
			else if(elems[i].type=='checkbox')
			{
				var checkboxVal = '';
				
				var ele = elems[i].name;

			    frm = frm_name;
			   //for multiple check box of same name
			 // var len = document.getElementsByName("'"+ele+"'");
			 var arr=ele.substring(ele.length-2,ele.length);
			 var chks = document.getElementsByName(ele);
			 if(arr=="[]")
			{
				ele=ele.substring(0,ele.length-2);
				var  checkboxVal = "";
				//alert(chks.length);
				for (var j=0; j <chks.length; j++)
				{
				//alert(ele);
				frm_ele = eval("document."+frm+"."+ele);
				//alert('frm_ele='+frm_ele);
					if (chks[j].checked)
					{
						checkboxVal = "checked";
						//alert(checkboxVal)
					}

				}
			}
			else
				{
			
			   frm_ele = eval("document."+frm+"."+ele+".checked")
			   if(frm_ele)
				{
					checkboxVal = elems[i].value;
				}
				
				}
				sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+checkboxVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
			}
			else if (elems[i].type=='file')
			{
				fileVal = elems[i].value;
				var newImg = new Image();
				newImg.src = elems[i].value;
				var height = newImg.height;
				var width = newImg.width;
				return sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+fileVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
			}
			else if (elems[i].type=='password')
			{
				fileVal = encodeURIComponent(elems[i].value);

				if(elems[i].name=="re_password")
				{

				frm = frm_name;
				passwordVal = encodeURIComponent(eval("document."+frm+".password.value"));
				sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+fileVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random()+'&passwordVal='+passwordVal,'displayErrorMessage',false,last, frm_name, elems[i].name,returnFunc);
				}
				else
				{
						sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+fileVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
				}
			}
			else if (elems[i].type=='text' && elems[i].name=='code')
			{
				fileVal = elems[i].value;
				frm = frm_name;
				 captchaVal = encodeURIComponent(eval("document."+frm+".encrypted_string.value"));
				 sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&value='+fileVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random()+'&captchaVal='+captchaVal,'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);

			}
			else if (elems[i].type=='textarea')
			{
				 var textareaVal = 	elems[i].value;
				 textareaVal = encodeURIComponent(textareaVal.substr(minVal, maxVal+10));
				 sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&minVal='+minVal+'&maxVal='+maxVal+'&value='+textareaVal+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name, elems[i].name, returnFunc);
		
			}
			else
			{	
				var val=encodeURIComponent(elems[i].value);
				sendHttpRequest('ajax_validator.php?field='+elems[i].getAttribute('name')+'&minVal='+minVal+'&maxVal='+maxVal+'&value='+val+method+'&message='+elems[i].getAttribute('title')+'&rand='+Math.random(),'displayErrorMessage',false,last, frm_name,elems[i].name, returnFunc);
			}
    		
        }
		if(elems[i].name==last)
		{
			break;
		}
    }
	//return false;
}

// display error messages
function displayErrorMessage(serverResponse,last, frm_name, returnFunc){
  //alert("displayErrorMessage="+serverResponse);
    var elemkey=serverResponse.split('|')[0];
    var errormsg=serverResponse.split('|')[1];
	var counter=0;
	var frm = frm_name;	
	var lable,  class_name_val;
	if(document.getElementById('txt_'+elemkey))
		lable = eval("document.getElementById('txt_'+elemkey)");
	if(document.getElementById('class_name'))
		class_name_val = eval("document.getElementById('class_name')").value;
	else
		class_name_val = "";
	
	if(errormsg.length<4)
	errormsg = escape(errormsg).replace('%0D%0A','');
	if(errormsg=='')
	{
		errors[elemkey] = 0;
		lable.className = class_name_val;
	}
	else 
	{
		errors[elemkey] = 1;
		if(class_name_val=="")
		{
			lable.className = 'msgcontainer1';
		 }
		else
		{
			lable.className = class_name_val+'_new';
		}
	}

    // count total errors
    for(var i in errors)
	{
		
		if(errors[i])
		{
			
			counter++;
		}
		
	}
    if(!counter && elemkey==last)
	{
			//alert(returnFunc);
			if(returnFunc)
			{
				eval(returnFunc);
			}
			else
			{
				eval('document.'+frm_name+'.submit();');
			}
			return true;
	}
	else if(!counter && elemkey !=last)
	{
		// Do nothing.

	}
	else
	{
		msgError='We\'re sorry, but one or more fields are incomplete or incorrect.<br> Please correct the fields that\'s in <span class="error_red_txt">red</span>.';
		show_error_msg(msgError);
		return false;
	}
}


//function to validate search form
// initialize form and assign events
function validateSearchForm(frm_name)
{
	var elems=eval("document."+frm_name+".elements");
	var res = false;
	var val="";
    for(var i=0;i<elems.length;i++)
	{
		 if(elems[i].getAttribute('required') && elems[i].getAttribute('required')=="Search")
		{
			if(elems[i].type=='select-one')
			{
				var val=elems[i].options[elems[i].selectedIndex].value;
				if(val!="") 
				{
					if(document.getElementById('view_all'))
						document.getElementById('view_all').style.display='';
					res=true;
					break;
				}//end if
			}//end if
			
			else if(elems[i].type=='select-multiple')
			{
				var indx = 0;
				if(elems[i].selectedIndex<0)
					indx = 0;
				else
					indx = elems[i].selectedIndex;

				if(val!=0) 
				{
					if(document.getElementById('view_all'))
						document.getElementById('view_all').style.display='';
					res=true;
					break;
				}//end if
			}//else if
			
			else if(elems[i].type=='radio')
			{
				if(elems[i].name!="search_key")			
				{
					var radioObj=eval("document."+frm_name+"."+elems[i].name)
					var val=getCheckedValue(radioObj);
					if(val!="") 
					{
						if(document.getElementById('view_all'))
						document.getElementById('view_all').style.display='';
						res=true;
						break;
					}
				}//end if
				
			}// else if
			else if(elems[i].type=='checkbox')
			{
				var checkboxVal = '';
				
				var ele = elems[i].name;

				frm = frm_name;
			 
			   frm_ele = eval("document."+frm+"."+ele+".checked")
			   if(frm_ele)
				{
					checkboxVal = elems[i].value;
				}//end if
				if(checkboxVal!="") 
				{
					if(document.getElementById('view_all'))
						document.getElementById('view_all').style.display='';
					res=true;
					break;
				}
			}//else if
			else
			{
				var val=elems[i].value;
				if(val!="") 
				{
					if(document.getElementById('view_all'))
						document.getElementById('view_all').style.display='';
					res=true;
					break;
				}
			}//else
		}//END IF
        
    }//LOOp
	

	if(!res)
	{
		var msgError='Please choose at least one field for <span class="error_red_txt">search</span>.';
		show_error_msg(msgError);
		return false;
	}//end if
	else
	{
		hide_error_msg();
		if(document.getElementById('cAction'))
			document.getElementById('cAction').value="Search";
		return true;
	}
}//function