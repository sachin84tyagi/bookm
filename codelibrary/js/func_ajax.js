/*******************************************************************************
*			 ______________________________________________________
			/ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ\
			|     COMMON FUNCTION FOR IMPLEMENTATION OF AJAX	   |
			|                                                      |
			|			Developed By : Raj Deo			   	       |
			|			Created on   : 10/26/2010		           |
			|													   |
			|			                                           |
			|				                        	           |
			|                                                      |
			\______________________________________________________/
			 ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ
*
* The "options" parameter is an anonymous object which includes the following
* available options:
*
* params:    Parameters for the requested url in the format p1=1&p2=0&p3=2
* meth:      The request method. Can be "get" or "post". Default is "post".
* async:     Toggles asynchronous mode. Default is true.
* startfunc: A function or list of functions to be called before the AJAX
*            request is made. A list of functions must be separated by the
*            semi-colon like this: "showLoad(); animateText(); hideDiv('divname')".
*            You can pass parameters into the functions.
* endfunc:   A function or list of functions to be called after a successful
*            AJAX request. Uses the same format as "startfunc".
* errorfunc: A function or list of functions to be called when the AJAX request
*            is unsuccessful. Uses the same format as "startfunc".
*
* Returns true on success and false on failure.
*
* Example Usage:
*
  callAjax( "rightdiv", "getData.php", {
    params:"id=12&name=mohan",
    meth:"post",
    async:true,
    startfunc:"elemOn('loading')",
    endfunc:"elemOff('loading'); elemOn('rightdiv')",
    errorfunc:"ajaxError()" }
  );

*/

function callAjax(elemid, url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var append = options.append || false;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  var msgpopup = options.msgpopup || false;
  if( startfunc != "" )
    eval( startfunc );
  var url_with_param = url+( params != "" ? "?"+params : "" );

	//alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=iso-8859-1");
			  //xmlhttp.overrideMimeType('text/xml; charset=iso-8859-1'); //NO CHARACTER PROBLEM IN MOZILLA
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=iso-8859-1");
						//NO CHARACTER PROBLEM IN MOZILLA
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 //alert(xmlhttp.responseText);
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
			 if(elemid!='')
			 {
				//alert(elemid);
				//alert(objXML1);
				

				 if(msgpopup)
				 {
					show_conf_msg(objXML1);
				 }
				 else if(append)
				 {
					//alert(document.getElementById(elemid).innerHTML);
					//alert(objXML1);
					var myElement = document.createElement('DIV');
					//alert(myElement);
					myElement.innerHTML += objXML1;
					document.getElementById(elemid).appendChild(myElement);
					//document.getElementById(elemid).innerHTML += objXML1;
				 }
				else
				 {
					
					//alert(elemid);
					document.getElementById(elemid).innerHTML = "";
					document.getElementById(elemid).innerHTML = objXML1;
					
				}

			 }
			 
			 if( endfunc != "" )
				eval( endfunc );
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}
//END OF AJAX FUNCTIONS.
// Start Check Login Ajax Function
function CheckLoginAjax( elemid, url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  if( startfunc != "" )
    eval( startfunc );

  var url_with_param = url+( params != "" ? "?"+params : "" );

	 //alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
			 if(Trim(objXML1)==1)
			 {
					document.login_frm.action="login_submit.php";
					document.login_frm.submit();
					return false;
			 }
			 if(elemid!='')
			 {
				//alert(objXML1);
			 	document.getElementById(elemid).innerHTML = objXML1;
			 }
			 
			 if( endfunc != "" )
				eval( endfunc );
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}
// End Check Login Ajax Function
// return Ajax Value
function ReturnAjaxValueWithElement(element,url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  if( startfunc != "" )
    eval( startfunc );

  var url_with_param = url+( params != "" ? "?"+params : "" );

	 //alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
			
					
					if(element)
					{
						var elementId = document.getElementById(element);	
						elementId.value = objXML1;
						
					}
					
					
			 if( endfunc != "" )
				eval( endfunc );

			 if(objXML1!='success')
				return false;
			else
				return true;
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}


// return Ajax Value
function ReturnAjaxValue( element,url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  if( startfunc != "" )
    eval( startfunc );

  var url_with_param = url+( params != "" ? "?"+params : "" );

	 //alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
				//alert(objXML1);
					if(element)
					{
						var elementId = document.getElementById(element);	
						elementId.value = objXML1;
					}
					
			 if( endfunc != "" )
				eval( endfunc );
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}
// End Check Login Ajax Function
// return Ajax Value
function CallAjaxWithElement(element,divName,url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  if( startfunc != "" )
    eval( startfunc );

  var url_with_param = url+( params != "" ? "?"+params : "" );

	 //alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
						if(Trim(objXML1)==1 || Trim(objXML1)==2 || Trim(objXML1)==3 || Trim(objXML1)==4 || Trim(objXML1)==5)
						{
							var elementId = document.getElementById(element);	
							elementId.value = objXML1;
							//alert(elementId+"="+objXML1);
						}
						else
						{
							 if(divName!='')
							 {
								//alert(objXML1);
								document.getElementById(divName).innerHTML = objXML1;
							 }
						}
						 if( endfunc != "" )
							eval( endfunc );
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}
function UpdateBusinessVideoViews(url, options )
{
  var params = options.params || "";
  var meth = options.meth || "post";
  var async = options.mode || true;
  var startfunc = options.startfunc || "";
  var endfunc = options.endfunc || "";
  var errorfunc = options.errorfunc || "";
  if( startfunc != "" )
    eval( startfunc );

  var url_with_param = url+( params != "" ? "?"+params : "" );

	 //alert(url_with_param);

  loadXMLDoc();
	//----------------------------------------------------------------
	var xmlhttp
	function loadXMLDoc()
	{
		// code for Mozilla, etc.
			if (window.XMLHttpRequest)
			{
			  xmlhttp=new XMLHttpRequest()
			  xmlhttp.onreadystatechange=xmlhttpChange
			  if(meth=="post")
			  {
			  xmlhttp.open(meth,url_with_param,async);
			  xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
			  xmlhttp.send(params);
			  }
			  else
			  {
			  xmlhttp.open(meth,url_with_param,async)
			  xmlhttp.send(null)
			  }
			}
			else if (window.ActiveXObject)
		    {
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
					if (xmlhttp)
					{
						xmlhttp.onreadystatechange=xmlhttpChange
						if(meth=="post")
						{
						 xmlhttp.open(meth,url_with_param,async);
						 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
						 xmlhttp.send(params);
						}
						else
						{
						xmlhttp.open(meth,url_with_param,async)
						xmlhttp.send(null)
						}
						return false;
				  }
				  else
				  {
						alert( "Your browser cannot perform the requested action. "+
							 "Either your security settings are too high or your "+
							 "browser is outdated. Try the newest version of "+
							 "Internet Explorer or Mozilla Firefox." );
						return false;
				  }
		  }
	}

	function xmlhttpChange()
	{
	// if xmlhttp shows "loaded"
	if (xmlhttp.readyState==4)
	  {
		  if (xmlhttp.status==200)
		  {
			 //alert(xmlhttp.responseText);
			 var objXML = xmlhttp.responseXML;
			 var objXML1 = xmlhttp.responseText;
			 if(elemid!='')
			 {
				//alert(elemid);
				//alert(objXML1);
			 	//document.getElementById(elemid).innerHTML = "";
				//document.getElementById(elemid).innerHTML = objXML1;
			 }
			 
			 if( endfunc != "" )
				eval( endfunc );
		  }
		  else
			{
				//alert("Problem retrieving XML data")
				if( endfunc != "" )
					eval( endfunc );
			  if( errorfunc != "" )
					eval( errorfunc );
				  return false;
			}
		}
	}
}
//END OF AJAX FUNCTIONS.