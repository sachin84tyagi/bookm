var sInvalidChars
sInvalidChars="1234567890";
var iTotalChecked=0;

//variables added to allow spaces and plus sign validation for phone and faxes
var iAllowPlus  = 0;
var iAllowSpace = 0;

function objChecked(obj)
{
	if(obj.checked)
		iTotalChecked = iTotalChecked + 1
	else
		iTotalChecked = iTotalChecked - 1
}
function CheckAll(chk)
{
	
	for (var i=0;i < document.forms[0].elements.length;i++)
	{
		var e = document.forms[0].elements[i];
		if (e.type == "checkbox")
		{
			e.checked = chk.checked;
		}
	}
}
function fnRemoveSpaces(sFldval)
{
	var sTemp=sFldval;
  var sNewval=sTemp;
  //remove spaces from the front
  for(var i=0;i<sTemp.length;i++)
  {	
		if(sTemp.charAt(i)!=" ")
			break;
		else
			sNewval = sTemp.substring(i+1);
	}
	return sNewval;
}
//Purpose	: This function is used to remove spaces. 
//Arguments : text field object value
function fnFixSpace(sFldval)
{
	
	var sTemp=sFldval;
	  var sReversedString="";
	  var sTemp1;
	  
	  //remove spaces from the front
	  sNewval = fnRemoveSpaces(sTemp);
	  
	  // reverse n remove spaces from the front
	  for(var i=sNewval.length-1;i>=0;i--)
		sReversedString = sReversedString + sNewval.charAt(i);
	sTemp1 = fnRemoveSpaces(sReversedString);
	//reverse again
	sReversedString="";
	for(var i=sTemp1.length-1;i>=0;i--)
		sReversedString = sReversedString + sTemp1.charAt(i);
	sNewval = sReversedString;
	return sNewval;
}


 
function allValidChars(email) {
  var parsed = true;
  var validchars = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
  var notfirst = "0123456789.-_";
  for (var i=0; i < email.length; i++) 
  {
  var letter = email.charAt(i).toLowerCase();
  if(i == 0)
   {
   var valid_check = notfirst.indexOf(letter);
   if(valid_check == -1)
    {
		continue;     
    }
    else
    {
	   parsed = false;
       break;
    }
   }
    
    if (validchars.indexOf(letter) != -1)
   {
     continue;
   }
    parsed = false;
    break;
  }
  return parsed;
}
//Purpose	: This function is used to validate email. 
//Arguments : Email object
function ValidateEMail(objName)
{
	var iobjLength;
	email=objName;
	iobjLength=email.length;

	var email = objName;
	if (iobjLength!=0)
	{
		if (! allValidChars(email)) 
		{  // check to make sure all characters are valid
			return false;
		}
		if (email.indexOf("@") < 1) 
		{ //  must contain @, and it must not be the first character
			return false;
		} 
		else if (email.lastIndexOf(".") <= email.indexOf("@")) 
		{  // last dot must be after the @
			return false;
		} 
		else if (email.indexOf("@") == email.length) 
		{  // @ must not be the last character
			return false;
		} 
		else if (email.indexOf("..") >=0) 
		{ // two periods in a row is not valid
			 return false;
		} 
		else if (email.indexOf(".") == email.length) 
		{  // . must not be the last character
			 return false;
		}
		else
		{
			return true;
		}	
	}
	else
	{
		return false;
	}
}		
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function FormatDate(d)
{
		var dd,mm;
		var l;
		l=d.indexOf("/");
		dd=d.substring(0,l);
		d=d.substring(l+1);
		l=d.indexOf("/");
		mm=d.substring(0,l);
		yy=d.substring(l+1);
		
		if (parseInt(dd) < 10)
			dd="0" + dd;
		if (parseInt(mm) < 10)
			mm="0" + mm;
		d= dd + "/" + mm + "/" + yy
		return d;
}
function ValidateImg(objImg, isRequired)
{
	if(isRequired ==1 && objImg.value=='')
	{
		alert("Please enter image.");
		objImg.focus();
		return false;
	}
	if(objImg.value.length!=0)
	{
		if(objImg.value.length<5)
		{
			alert("Please enter valid image.");
			objImg.focus();
			objImg.select();
			return false;
		}
		var iPos = objImg.value.lastIndexOf(".")
		var sExt = objImg.value.substring(iPos);
		if((sExt.toUpperCase()=='.JPEG') || (sExt.toUpperCase()=='.JPG') || (sExt.toUpperCase()=='.GIF') || (sExt.toUpperCase()=='.BMP') )
		{
			return true;
		}
		else
		{
			alert("Please enter valid image.");
			objImg.focus();
			objImg.select();
			return false;
		}
	}
	return true;
}
function getFormattedmsg(sVal)
{
	while(sVal.indexOf("_")!=-1)
	{
		sVal = sVal.replace("_", " ")
	}
	var b;
	//b=sVal.charAt(0).toUpperCase();
	//b=b+sVal.substring(1);
	return sVal;
	
}

function isURL(argvalue,urlname)
{
    if (argvalue.indexOf(" ") != -1)
	{
		alert("Spaces not allowed in "+ urlname +"!");
	    return false;
	}
	else if (argvalue.indexOf("http://") == -1)
    {
		alert(urlname +" must begin with a http://");
	    return false;
	}
	else if (argvalue == "http://")
    {
		alert("Please enter complete "+ urlname +"!");
	    return false;
	}
	else if (argvalue.indexOf("http://") == -1 )
    {
		alert("http:// must come in the beginning of a "+ urlname);
	    return false;
	}

	argvalue = argvalue.substring(7, argvalue.length);
	if (argvalue.indexOf(".") == -1)
	{
		alert("Please enter an extension like .com, .edu(etc) for "+ urlname +"!");
	    return false;
	}
	else if (argvalue.indexOf(".") == 0)
	{
		alert("Please enter correct "+ urlname +"!");
	    return false;
	}
	else if (argvalue.charAt(argvalue.length - 1) == ".")
    {
		alert("Please enter an extension after . like com, edu(etc) for "+ urlname +"!");
	    return false;
	}

	if (argvalue.indexOf("/") != -1) 
	{
		argvalue = argvalue.substring(0, argvalue.indexOf("/"));
		if (argvalue.charAt(argvalue.length - 1) == ".")
		{
			alert("Please enter correct "+ urlname +"!");
			return false;
		}
	}

	if (argvalue.indexOf(":") != -1) 
	{
		if (argvalue.indexOf(":") == (argvalue.length - 1))
		{
			alert("Please enter correct "+ urlname +"!");
		    return false;
		}
	    else if (argvalue.charAt(argvalue.indexOf(":") + 1) == ".")
		{
			alert("Please enter correct "+ urlname +"!");
			return false;
		}
		argvalue = argvalue.substring(0, argvalue.indexOf(":"));
		if (argvalue.charAt(argvalue.length - 1) == ".")
		{
			alert("Please enter correct "+ urlname +"!");
			return false;
		}
	}
	return true;
}
//Purpose	: This function is used to validate price. 
//Arguments : price object
function ValidatePrice(objName)
{
	var sobjValue;
	var iobjLength;
	
	sobjValue=objName;
	iobjLength=sobjValue.length;
	iSposition=sobjValue.indexOf(".");
	iTmp=sobjValue.lastIndexOf(".");	
	iPosition=sobjValue.indexOf(",");
	iPos=sobjValue.indexOf(";");
	
	if (iobjLength!=0)
	{
/*		if ((iSposition == -1))
		{
			return false;
		}
		else*/
		if(sobjValue.charAt(0)==".")
		{
			return false;				
		}
		else if(sobjValue.charAt(iobjLength)==".")
		{
			return false;				
		}	
		else if ((iTmp!=-1) && ((iobjLength-(iTmp+1)>2) || (iobjLength==(iTmp+1))))
		{
			return false;
		}
		else if ((iPosition!=-1) || (iPos!=-1))
		{
			return false;
		}
		else
		{
			return true;
		}		
	}		
}
function imageExist(obj)
{
	var iPos = obj.value.lastIndexOf(".")
	var sExt = obj.value.substring(iPos);
	if((sExt.toUpperCase()=='.JPEG') || (sExt.toUpperCase()=='.JPG') || (sExt.toUpperCase()=='.GIF') || (sExt.toUpperCase()=='.BMP') )
	{
		return true;
	}
	else
	{
		alert("Please enter valid image.");
		obj.focus();
		obj.select();
		return false;
	}
	return true;
}

function checkImageSize(obj)
{

	var vWidth=100;
	var vHeight=80;

	img = new Image();
	img.src = obj.value;
	var imWidth = img.width;
	var imHeight = img.height;
	if (imWidth == 0 || imHeight == 0) 
	{
		//return validate(document.frmBan);
		return false;
	}
	if((imWidth!=vWidth) || (imHeight!=vHeight))
	{
			alert("Please check the size of image with that you have selected.\n It should be "+vWidth+"x"+vHeight+" and your image size is "+imWidth+"x"+imHeight);
			return false;		
			
			
	}
	else
	{
		return true;
	}
	return false;
}

/*
Description: This Function checks that the string value passed to the function does contains some characters.
*/
function onlyno()
{
	
	if (event.keyCode < 45 || event.keyCode > 57) 
		event.returnValue = false;
		
}
//Description: This Function checks that the character entered is only character
function onlychar()
{
	if((event.keyCode >= 65 && event.keyCode <= 90) || (event.keyCode >= 97 && event.keyCode <= 122) || event.keyCode == 32 )
	{
	}
	else
	{
		event.returnValue = false;
	}
}
//Programer:Navneet Tyagi
function check_Pwd(obj)
{
	x=obj.value;
	flag=0;
	//temp_char="_";
	b=x.length

	if(b<5)
	{
		alert("Password Should Be Of Minimum 5 Characters ");
		obj.focus();
		obj.select();
		return false;
	}

	if(b>15)
	{
		alert("Password Should Be Of Maximum 15 Characters ");
		obj.focus();
		obj.select();
		return false;
	}
		
	for( i=0;i < b;i++)
	{
		vAscii = x.charCodeAt(i)
			

		if((vAscii >= 65 && vAscii <= 90) || (vAscii >= 97 && vAscii <= 122) || (vAscii >= 45 && vAscii <= 57) || ( x.charAt(i)=="_"))
		{
			flag=1;		
		}
		else
		{
			flag=0;
			break;
		}
		
	}


	if(flag==0)
	{
		alert("Only Characters a-z,A-Z,0-9 and '_' are allowed for Password ");
		obj.focus();
		obj.select();
		return false;
	}
	else
	{
		return true;
	}
}
//Description: This Function checks that the character entered is only character or space used in validate form function
function onlyString(TempString)
{
	bb11= TempString.length;
	x= TempString;
	flag=0;

	for( p=0;p<bb11;p++)
	{
		vAscii = x.charCodeAt(p)
		//z = x.substring(p,p+1);
		 if((vAscii >= 65 && vAscii <= 90) || (vAscii >= 97 && vAscii <= 122) || (vAscii == 32))
			{
				flag=1;		
			}
			else
			{
				flag=0;
				break;
			}
	}
	if(flag==0)
	{
		return false;
	}
	else
	{
		return true;
	}
}


function ValidateHTML(objName)
{
	var h;
	var x;
	
	h=objName.length;
	x = objName;
	if (h==0)
	{
		alert("Page Name Cannot left blank");
		return false;
	}			
	for( i=0;i<h;i++)
	{
		z = x.substring(i,i+1);
		if ( z=="." || z=="_" || z=="-" || (z >= "a" && z <= "z" ) || (z >= "A" && z <= "Z") || (z >= "0" && z <= "9") )
		{
		}else{
			alert("Please enter Valid Page Name");
			return false;
		}
	}
	if(x.indexOf('.php') ==-1 ){
		alert("Please enter Valid Page Name\nThe extension of the Page should be .php");
		return false;
	}
	if(x.indexOf('index.php') !=-1 ){
		alert("index.php already exists");
		return false;
	}
	if(x.indexOf('contactus.php') !=-1 ){
		alert("contactus.php already exists");
		return false;
	}
	return true;
	
}

function ValidateFolder(objName)
{
	var h;
	var x;
	
	h=objName.length;
	x = objName;
	if (h==0)
	{
		alert("Folder Name Cannot left blank");
		return false;
	}			
	for( i=0;i<h;i++)
	{
		z = x.substring(i,i+1);
		if ( z=="_" || z=="-" || (z >= "a" && z <= "z" ) || (z >= "A" && z <= "Z") || (z >= "0" && z <= "9") )
		{
		}else{
			alert("Please enter Valid Folder Name\nDo not enter any space and special charecters");
			return false;
		}
	}
	return true;
	
}

//-------**********trim function **************--------------------
function LTrim(str)
{
	for (var i=0; str.charAt(i)==" "; i++);
	return str.substring(i,str.length);
 }
function RTrim(str)
 {
	for (var i=str.length-1; str.charAt(i)==" "; i--);
	return str.substring(0,i+1);
 }
 function Trim(str)
 {
	return LTrim(RTrim(str));
 }

 function replaceSubstring(inputString, fromString, toString) {
   // Goes through the inputString and replaces every occurrence of fromString with toString
   var temp = inputString;
   if (fromString == "") {
      return inputString;
   }
   if (toString.indexOf(fromString) == -1) { // If the string being replaced is not a part of the replacement string (normal situation)
      while (temp.indexOf(fromString) != -1) {
         var toTheLeft = temp.substring(0, temp.indexOf(fromString));
         var toTheRight = temp.substring(temp.indexOf(fromString)+fromString.length, temp.length);
         temp = toTheLeft + toString + toTheRight;
      }
   } else { // String being replaced is part of replacement string (like "+" being replaced with "++") - prevent an infinite loop
      var midStrings = new Array("~", "`", "_", "^", "#");
      var midStringLen = 1;
      var midString = "";
      // Find a string that doesn't exist in the inputString to be used
      // as an "inbetween" string
      while (midString == "") {
         for (var i=0; i < midStrings.length; i++) {
            var tempMidString = "";
            for (var j=0; j < midStringLen; j++) { tempMidString += midStrings[i]; }
            if (fromString.indexOf(tempMidString) == -1) {
               midString = tempMidString;
               i = midStrings.length + 1;
            }
         }
      } // Keep on going until we build an "inbetween" string that doesn't exist
      // Now go through and do two replaces - first, replace the "fromString" with the "inbetween" string
      while (temp.indexOf(fromString) != -1) {
         var toTheLeft = temp.substring(0, temp.indexOf(fromString));
         var toTheRight = temp.substring(temp.indexOf(fromString)+fromString.length, temp.length);
         temp = toTheLeft + midString + toTheRight;
      }
      // Next, replace the "inbetween" string with the "toString"
      while (temp.indexOf(midString) != -1) {
         var toTheLeft = temp.substring(0, temp.indexOf(midString));
         var toTheRight = temp.substring(temp.indexOf(midString)+midString.length, temp.length);
         temp = toTheLeft + toString + toTheRight;
      }
   } // Ends the check to see if the string being replaced is part of the replacement string or not
   return temp; // Send the updated string back to the user
} // Ends the "replaceSubstring" function

/* Here's the list of tokens we support:
   m (or M) : month number, one or two digits.
   mm (or MM) : month number, strictly two digits (i.e. April is 04).
   d (or D) : day number, one or two digits.
   dd (or DD) : day number, strictly two digits.
   y (or Y) : year, two or four digits.
   yy (or YY) : year, strictly two digits.
   yyyy (or YYYY) : year, strictly four digits.
   mon : abbreviated month name (April is apr, Apr, APR, etc.)
   Mon : abbreviated month name, mixed-case (i.e. April is Apr only).
   MON : abbreviated month name, all upper-case (i.e. April is APR only).
   mon_strict : abbreviated month name, all lower-case (i.e. April is apr 
         only).
   month : full month name (April is april, April, APRIL, etc.)
   Month : full month name, mixed-case (i.e. April only).
   MONTH: full month name, all upper-case (i.e. APRIL only).
   month_strict : full month name, all lower-case (i.e. april only).
   h (or H) : hour, one or two digits.
   hh (or HH) : hour, strictly two digits.
   min (or MIN): minutes, one or two digits.
   mins (or MINS) : minutes, strictly two digits.
   s (or S) : seconds, one or two digits.
   ss (or SS) : seconds, strictly two digits.
   ampm (or AMPM) : am/pm setting.  Valid values to match this token are
         am, pm, AM, PM, a.m., p.m., A.M., P.M.
*/
// Be careful with this pattern.  Longer tokens should be placed before shorter
// tokens to disambiguate them.  For example, parsing "mon_strict" should 
// result in one token "mon_strict" and not two tokens "mon" and a literal
// "_strict".

var tokPat=new RegExp("^month_strict|month|Month|MONTH|yyyy|YYYY|mins|MINS|mon_strict|ampm|AMPM|mon|Mon|MON|min|MIN|dd|DD|mm|MM|yy|YY|hh|HH|ss|SS|m|M|d|D|y|Y|h|H|s|S");

// lowerMonArr is used to map months to their numeric values.

var lowerMonArr={jan:1, feb:2, mar:3, apr:4, may:5, jun:6, jul:7, aug:8, sep:9, oct:10, nov:11, dec:12}

// monPatArr contains regular expressions used for matching abbreviated months
// in a date string.

var monPatArr=new Array();
monPatArr['mon_strict']=new RegExp(/jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec/);
monPatArr['Mon']=new RegExp(/Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec/);
monPatArr['MON']=new RegExp(/JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC/);
monPatArr['mon']=new RegExp("jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec",'i');

// monthPatArr contains regular expressions used for matching full months
// in a date string.

var monthPatArr=new Array();
monthPatArr['month']=new RegExp(/^january|february|march|april|may|june|july|august|september|october|november|december/i);
monthPatArr['Month']=new RegExp(/^January|February|March|April|May|June|July|August|September|October|November|December/);
monthPatArr['MONTH']=new RegExp(/^JANUARY|FEBRUARY|MARCH|APRIL|MAY|JUNE|JULY|AUGUST|SEPTEMBER|OCTOBER|NOVEMBER|DECEMBER/);
monthPatArr['month_strict']=new RegExp(/^january|february|march|april|may|june|july|august|september|october|november|december/);

// cutoffYear is the cut-off for assigning "19" or "20" as century.  Any
// two-digit year >= cutoffYear will get a century of "19", and everything
// else gets a century of "20".

var cutoffYear=50;

// FormatToken is a datatype we use for storing extracted tokens from the
// format string.
function FormatToken (token, type) 
{
	this.token=token;
	this.type=type;
}

function parseFormatString (formatStr) 
{
	var tokArr=new Array;
	var tokInd=0;
	var strInd=0;
	var foundTok=0;
    
	while (strInd < formatStr.length) 
	{
		if (formatStr.charAt(strInd)=="%" && (matchArray=formatStr.substr(strInd+1).match(tokPat)) != null) 
		{
			strInd+=matchArray[0].length+1;
			tokArr[tokInd++]=new FormatToken(matchArray[0],"symbolic");
		} 
		else 
		{
			// No token matched current position, so current character should 
			// be saved as a required literal.
			if (tokInd>0 && tokArr[tokInd-1].type=="literal") 
			{
				// Literal tokens can be combined.Just add to the last token.
				tokArr[tokInd-1].token+=formatStr.charAt(strInd++);
			}
			else 
			{
				tokArr[tokInd++]=new FormatToken(formatStr.charAt(strInd++), "literal");
		    }
		}
	}
	return tokArr;
}

/* buildDate does all the real work.It takes a date string and format string,
 tries to match the two up, and returns a Date object (with the supplied date
 string value).If a date string doesn't contain all the fields that a Date
 object contains (for example, a date string with just the month), all
 unprovided fields are defaulted to those characteristics of the current
 date. Time fields that aren't provided default to 0.Thus, a date string
 like "3/30/2000" in "%mm/%dd/%yyyy" format results in a Date object for that
 date at midnight.formatStr is a free-form string that indicates special
 tokens via the % character.Here are some examples that will return a Date
 object:

 buildDate('3/30/2000','%mm/%dd/%y') // March 30, 2000
 buildDate('March 30, 2000','%Mon %d, %y') // Same as above.
 buildDate('Here is the date: 30-3-00','Here is the date: %dd-%m-%yy')

 If the format string does not match the string provided, an error message
 (i.e. String object) is returned.Thus, to see if buildDate succeeded, the
 caller can use the "typeof" command on the return value.For example,
 here's the dateCheck function, which returns true if a given date is
 valid,and false otherwise (and reports an error in the false case):

 function dateCheck(dateStr,formatStr) {
 var myObj=buildDate(dateStr,formatStr);
 if (typeof myObj=="object") {
 // We got a Date object, so good.
 return true;
 } else {
 // We got an error string.
 alert(myObj);
 return false;
 }
 }

*/

function buildDate(dateStr,formatStr) 
{
	// parse the format string first.
	var tokArr=parseFormatString(formatStr);
	var strInd=0;
	var tokInd=0;
	var intMonth;
	var intDay;
	var intYear;
	var intHour;
	var intMin;
	var intSec;
	var ampm="";
	var strOffset;

	// Create a date object with the current date so that if the user only
	// gives a month or day string, we can still return a valid date.

	var curdate=new Date();
	intMonth=curdate.getMonth()+1;
	intDay=curdate.getDate();
	intYear=curdate.getFullYear();

	// Default time to midnight, so that if given just date info, we return
	// a Date object for that date at midnight.

	intHour=0;
	intMin=0;
	intSec=0;

	// Walk across dateStr, matching the parsed formatStr until we find a 
	// mismatch or succeed.

	while (strInd < dateStr.length && tokInd < tokArr.length) 
	{
		// Start with the easy case of matching a literal.
		if (tokArr[tokInd].type=="literal") 
		{
			if (dateStr.indexOf(tokArr[tokInd].token,strInd)==strInd) 
			{
				// The current position in the string does match the format 
				// pattern.
				strInd+=tokArr[tokInd++].token.length;
				continue;
			}
			else 
			{
				// ACK! There was a mismatch; return error.
				return "\"" + dateStr + "\" does not conform to the expected format: " + formatStr;
			}
		}

		// If we get here, we're matching to a symbolic token.
		switch (tokArr[tokInd].token) 
		{
			case 'm':
			case 'M':
			case 'd':
			case 'D':
			case 'h':
			case 'H':
			case 'min':
			case 'MIN':
			case 's':
			case 'S':

			// Extract one or two characters from the date-time string and if 
			// it's a number, save it as the month, day, hour, or minute, as
			// appropriate.

			curChar=dateStr.charAt(strInd);
			nextChar=dateStr.charAt(strInd+1);
			matchArr=dateStr.substr(strInd).match(/^\d{1,2}/);
			if (matchArr==null) 
			{
				// First character isn't a number; there's a mismatch between
				// the pattern and date string, so return error.

				switch (tokArr[tokInd].token.toLowerCase()) 
				{
					case 'd': var unit="day"; break;
					case 'm': var unit="month"; break;
					case 'h': var unit="hour"; break;
					case 'min': var unit="minute"; break;
					case 's': var unit="second"; break;
				}
				return "Bad " + unit + " \"" + curChar + "\" or \"" + curChar +
				nextChar + "\".";
			}
			strOffset=matchArr[0].length;
			switch (tokArr[tokInd].token.toLowerCase()) 
			{
				case 'd': intDay=parseInt(matchArr[0],10); break;
				case 'm': intMonth=parseInt(matchArr[0],10); break;
				case 'h': intHour=parseInt(matchArr[0],10); break;
				case 'min': intMin=parseInt(matchArr[0],10); break;
				case 's': intSec=parseInt(matchArr[0],10); break;
			}
			break;
			case 'mm':
			case 'MM':
			case 'dd':
			case 'DD':
			case 'hh':
			case 'HH':
			case 'mins':
			case 'MINS':
			case 'ss':
			case 'SS':

			// Extract two characters from the date string and if it's a 
			// number, save it as the month, day, or hour, as appropriate.

			strOffset=2;
			matchArr=dateStr.substr(strInd).match(/^\d{2}/);
			if (matchArr==null) 
			{
				// The two characters aren't a number; there's a mismatch 
				// between the pattern and date string, so return an error
				// message.

				switch (tokArr[tokInd].token.toLowerCase()) 
				{
					case 'dd': var unit="day"; break;
					case 'mm': var unit="month"; break;
					case 'hh': var unit="hour"; break;
					case 'mins': var unit="minute"; break;
					case 'ss': var unit="second"; break;
				}
				return "Bad " + unit + " \"" + dateStr.substr(strInd,2) + 
				"\".";
			}
			switch (tokArr[tokInd].token.toLowerCase()) 
			{
				case 'dd': intDay=parseInt(matchArr[0],10); break;
				case 'mm': intMonth=parseInt(matchArr[0],10); break;
				case 'hh': intHour=parseInt(matchArr[0],10); break;
				case 'mins': intMin=parseInt(matchArr[0],10); break;
				case 'ss': intSec=parseInt(matchArr[0],10); break;
			}
			break;
			case 'y':
			case 'Y':
			// Extract two or four characters from the date string and if it's
			// a number, save it as the year.Convert two-digit years to four
			// digit years by assigning a century of '19' if the year is >= 
			// cutoffYear, and '20' otherwise.

			if (dateStr.substr(strInd,4).search(/\d{4}/) != -1) 
			{
				// Four digit year.
				intYear=parseInt(dateStr.substr(strInd,4),10);
				strOffset=4;
			}
			else 
			{
				if (dateStr.substr(strInd,2).search(/\d{2}/) != -1) 
				{
					// Two digit year.
					intYear=parseInt(dateStr.substr(strInd,2),10);
					if (intYear>=cutoffYear) 
					{
						intYear+=1900;
					}
					else 
					{
						intYear+=2000;
					}
					strOffset=2;
				}
				else 
				{
					// Bad year; return error.
					return "Bad year \"" + dateStr.substr(strInd,2) + "\". Must be two or four digits.";
				}
			}
			break;
			case 'yy':
			case 'YY':
			// Extract two characters from the date string and if it's a 
			// number, save it as the year.Convert two-digit years to four 
			// digit years by assigning a century of '19' if the year is >= 
			// cutoffYear, and '20' otherwise.

			if (dateStr.substr(strInd,2).search(/\d{2}/) != -1) 
			{
				// Two digit year.
				intYear=parseInt(dateStr.substr(strInd,2),10);
				if (intYear>=cutoffYear) 
				{
					intYear+=1900;
				}
				else 
				{
					intYear+=2000;
				}
				strOffset=2;
			} 
			else 
			{
				// Bad year; return error
				return "Bad year \"" + dateStr.substr(strInd,2) + "\". Must be two digits.";
			}
			break;
			case 'yyyy':
			case 'YYYY':
			// Extract four characters from the date string and if it's a 
			// number, save it as the year.
			if (dateStr.substr(strInd,4).search(/\d{4}/) != -1) 
			{
				// Four digit year.
				intYear=parseInt(dateStr.substr(strInd,4),10);
				strOffset=4;
			}
			else 
			{
				// Bad year; return error.
				return "Bad year \"" + dateStr.substr(strInd,4) + "\". Must be four digits.";
			}
			break;
			case 'mon':
			case 'Mon':
			case 'MON':
			case 'mon_strict':

			// Extract three characters from dateStr and parse them as 
			// lower-case, mixed-case, or upper-case abbreviated months,
			// as appropriate.
			monPat=monPatArr[tokArr[tokInd].token];
			if (dateStr.substr(strInd,3).search(monPat) != -1) 
			{
				intMonth=lowerMonArr[dateStr.substr(strInd,3).toLowerCase()];
			}
			else 
			{
				// Bad month, return error.
				switch (tokArr[tokInd].token) 
				{
					case 'mon_strict': caseStat="lower-case"; break;
					case 'Mon': caseStat="mixed-case"; break;
					case 'MON': caseStat="upper-case"; break;
					case 'mon': caseStat="between Jan and Dec"; break;
				}
				return "Bad month \"" + dateStr.substr(strInd,3) + "\". Must be " + caseStat + ".";
			}
			strOffset=3;
			break;
			case 'month':
			case 'Month':
			case 'MONTH':
			case 'month_strict':
			// Extract a full month name at strInd from dateStr if possible.

			monPat=monthPatArr[tokArr[tokInd].token];
			matchArray=dateStr.substr(strInd).match(monPat);
			if (matchArray==null) 
			{
				// Bad month, return error.
				return "Can't find a month beginning at \"" + dateStr.substr(strInd) + "\".";
			}

			// It's a good month.
			intMonth=lowerMonArr[matchArray[0].substr(0,3).toLowerCase()];
			strOffset=matchArray[0].length;
			break;
			case 'ampm':
			case 'AMPM':
			matchArr=dateStr.substr(strInd).match(/^(am|pm|AM|PM|a\.m\.|p\.m\.|A\.M\.|P\.M\.)/);
			if (matchArr==null) 
			{
				// There's no am/pm in the string.Return error msg.
				return "Missing am/pm designation.";
			}

			// Store am/pm value for later (as just am or pm, to make things
			// easier later).

			if (matchArr[0].substr(0,1).toLowerCase() == "a") 
			{
				// This is am.
				ampm = "am";
			}
			else 
			{
				ampm = "pm";
			}
			strOffset = matchArr[0].length;
			break;
		}
		strInd += strOffset;
		tokInd++;
	}
	if (tokInd != tokArr.length || strInd != dateStr.length) 
	{
		/* We got through the whole date string or format string, but there's 
	 more data in the other, so there's a mismatch. */

		return "\"" + dateStr + "\" is either missing desired information or has more information than the expected format: " + formatStr;
	}

	// Make sure all components are in the right ranges.

	if (intMonth < 1 || intMonth > 12) 
	{
		return "Month must be between 1 and 12.";
	}
	if (intDay < 1 || intDay > 31) 
	{
		return "Day must be between 1 and 31.";
	}

	// Make sure user doesn't put 31 for a month that only has 30 days
	if ((intMonth == 4 || intMonth == 6 || intMonth == 9 || intMonth == 11) && intDay == 31) 
	{
		return "Month "+intMonth+" doesn't have 31 days!";
	}

	// Check for February date validity (including leap years) 

	if (intMonth == 2) 
	{
		// figure out if "year" is a leap year; don't forget that
		// century years are only leap years if divisible by 400

		var isleap=(intYear%4==0 && (intYear%100!=0 || intYear%400==0));
		if (intDay > 29 || (intDay == 29 && !isleap)) 
		{
			return "February " + intYear + " doesn't have " + intDay + " days!";
		}
	}

	// Check that if am/pm is not provided, hours are between 0 and 23.
	if (ampm == "") 
	{
		if (intHour < 0 || intHour > 23) 
		{
			return "Hour must be between 0 and 23 for military time.";
		}
	}
	else 
	{
		// non-military time, so make sure it's between 1 and 12.

		if (intHour < 1|| intHour > 12) 
		{
			return "Hour must be between 1 and 12 for standard time.";
		}
	}

	// If user specified amor pm, convert intHour to military.
	if (ampm=="am" && intHour==12) 
	{
		intHour=0;
	}
	if (ampm=="pm" && intHour < 12) 
	{
		intHour += 12;
	}
	if (intMin < 0 || intMin > 59) 
	{
		return "Minute must be between 0 and 59.";
	}
	if (intSec < 0 || intSec > 59) 
	{
		return "Second must be between 0 and 59.";
	}
	return new Date(intYear,intMonth-1,intDay,intHour,intMin,intSec);
}


function dateCheck(dateStr,formatStr) 
{
	var myObj = buildDate(dateStr,formatStr);
	if (typeof myObj == "object") 
	{
		// We got a Date object, so good.
		return true;
	}
	else 
	{
		// We got an error string.
		//alert(myObj);
		return false;
	}
}

//Converts the First letter of each word to upper case and rest of the letters to lower case
//Created By Ruchika
function changeCase(frmObj) 
{
	var index;
	var tmpStr;
	var tmpChar;
	var preString;
	var postString;
	var strlen;
	tmpStr = frmObj.value.toLowerCase();
	strLen = tmpStr.length;
	if (strLen > 0)  
	{
		for (index = 0; index < strLen; index++)  
		{
			if (index == 0)  
			{
				tmpChar = tmpStr.substring(0,1).toUpperCase();
				postString = tmpStr.substring(1,strLen);
				tmpStr = tmpChar + postString;
			}
			else 
			{
				tmpChar = tmpStr.substring(index, index+1);
				if (tmpChar == " " && index < (strLen-1))  
				{
					
					tmpChar = tmpStr.substring(index+1, index+2).toUpperCase();
					preString = tmpStr.substring(0, index+1);
					postString = tmpStr.substring(index+2,strLen);
					tmpStr = preString + tmpChar + postString;
		        }
			}
		}
	}
	frmObj.value = tmpStr;
}


//Checks the text in text area has exceeded the Maximum length allowed for the field
function checkLength(control,maxLength)
{
	if(control.type=='textarea')
	{
		var str = control.value;
		var len = str.replace(/\r\n/g,'').length;
		var sChangedName = control.name.substring(3);
		sChangedName = getFormattedmsg(sChangedName);
		if(len>maxLength)
		{
			alert("Please enter less than "+maxLength+" characters for "+sChangedName);
			control.focus();
			return false;
		}
		else
			return true;
	}
	else
		return false;
}




function checkdatetime(start,end, cd, sf, ef)
{

	if(start.value == "")
	{
		alert("Please Select Start Date");
		start.focus();
		return false;
	}
	if(end.value == "")
	{
		alert("Please Select End Date");
		end.focus();
		return false;
	}
	if((start.value != "") && (end.value != ""))
	{

	//alert("if");

		var star = start.value;
		var start_arr = star.split(" ");
		var startdate = start_arr[0];
		var starttime = start_arr[1];
		var start_date_split = startdate.split("-");
		var start_time_split = starttime.split(":");
		var start_year = start_date_split[0];
		var start_month = start_date_split[1] - 1;
		var start_date = start_date_split[2];
		var start_hour = start_time_split[0];
		var start_min = start_time_split[1];
		var start_sec = start_time_split[2];

		var en = end.value;
		var end_arr = en.split(" ");
		var enddate = end_arr[0];
		var endtime = end_arr[1];
		var end_date_split = enddate.split("-");
		var end_time_split = endtime.split(":");
		var end_year = end_date_split[0];
		var end_month = end_date_split[1] - 1;
		var end_date = end_date_split[2];
		var end_hour = end_time_split[0];
		var end_min = end_time_split[1];
		var end_sec = end_time_split[2];

		var currt = cd;
		var currt_arr = currt.split(" ");
		var currtdate = currt_arr[0];
		var currttime = currt_arr[1];
		var currt_date_split = currtdate.split("-");
		var currt_time_split = currttime.split(":");
		var currt_year = currt_date_split[0];
		var currt_month = currt_date_split[1] - 1;
		var currt_date = currt_date_split[2];
		var currt_hour = currt_time_split[0];
		var currt_min = currt_time_split[1];
		var currt_sec = currt_time_split[2];

		var s=new Date(start_year,start_month,start_date,start_hour,start_min,start_sec);
		var e=new Date(end_year,end_month,end_date,end_hour,end_min,end_sec);
		var c=new Date(currt_year,currt_month,currt_date,currt_hour,currt_min,currt_sec);

//alert("s -> "+s);
//alert("c -> "+c);
//alert("e -> "+e);


		if(sf == 0){
			if(c > s)
			{
				alert("Start Date & time should be greater than current date & time");
				start.focus();
				return false;
			}
		}
		if(ef == 0){
			if(c > e)
			{
				alert("End Date & time should be greater than current date & time ");
				end.focus();
				return false;
			}
		}
	
//alert("Start date -> " + s + "\nEnd date -> " + e);
//return false;

		if(s >= e)
		{
			alert("Start Date & time should be less than end date & time");
			start.focus();
			return false;
		}


		return true;
	}
	return true;
} // eof function






function checkdateonly(start,end, cd, sf, ef)
{

	if(start.value == "")
	{
		alert("Please select start date");
		start.focus();
		return false;
	}
	if(end.value == "")
	{
		alert("Please select end date");
		end.focus();
		return false;
	}
	if((start.value != "") && (end.value != ""))
	{

//alert("if");

		var star = start.value;
		var start_date_split = star.split("-");
		var start_year = start_date_split[0];
		var start_month = start_date_split[1] - 1;
		var start_date = start_date_split[2];
	
		var en = end.value;
		var end_date_split = en.split("-");
		var end_year = end_date_split[0];
		var end_month = end_date_split[1] - 1;
		var end_date = end_date_split[2];
	
		var currt = cd;
		var currt_date_split = currt.split("-");
		var currt_year = currt_date_split[0];
		var currt_month = currt_date_split[1] - 1;
		var currt_date = currt_date_split[2];
	
		var s=new Date(start_year,start_month,start_date);
		var e=new Date(end_year,end_month,end_date);
		var c=new Date(currt_year,currt_month,currt_date);

//alert("s -> "+s);
//alert("c -> "+c);
//alert("e -> "+e);


		if(sf == 0){
			if(c > s)
			{
				alert("Start date should be greater than current date");
				start.focus();
				return false;
			}
		}

		if(ef == 0){
			if(c > e)
			{
				alert("End date should be greater than current date");
				start.focus();
				return false;
			}
		}
	
//alert("Start date -> " + s + "\nEnd date -> " + e);
//return false;

		if(s >= e)
		{
			alert("Start date should be less than end date");
			start.focus();
			return false;
		}


		return true;
	}
	return true;

}  // eof function


// Add By Danish Husain on 17 March 
//function to check date is greater than current date or not
//Param end date is date
// currt is the current date
function checkEndDate(end_date_time,currt)
{
	var en=end_date_time.value;
	var end_arr = en.split(" ");
	var enddate = end_arr[0];
	var endtime = end_arr[1];
	var end_date_split = enddate.split("-");
	var end_time_split = endtime.split(":");
	var end_year = end_date_split[0];
	var end_month = end_date_split[1] - 1;
	var end_date = end_date_split[2];
	var end_hour = end_time_split[0];
	var end_min = end_time_split[1];
	var end_sec = end_time_split[2];

	var currt_arr = currt.split(" ");
	var currtdate = currt_arr[0];
	var currttime = currt_arr[1];
	var currt_date_split = currtdate.split("-");
	var currt_time_split = currttime.split(":");
	var currt_year = currt_date_split[0];
	var currt_month = currt_date_split[1] - 1;
	var currt_date = currt_date_split[2];
	var currt_hour = currt_time_split[0];
	var currt_min = currt_time_split[1];
	var currt_sec = currt_time_split[2];

	var e=new Date(end_year,end_month,end_date,end_hour,end_min,end_sec);
	var c=new Date(currt_year,currt_month,currt_date,currt_hour,currt_min,currt_sec);
	if(c > e)
	{
		alert("End date & time should be greater than current date & time ");
		end_date_time.focus();
		return false;
	}
	return true;
}		
// end of function defination

function CheckImgExists(objImg)
{
	if(objImg.value=='')
	{
		alert("Please enter image.");
		objImg.focus();
		return false;
	}
	return true;
}



function notyping(obj)
{
	if(obj.value.length>0)
	{
		alert("You are not allowed to type.Please choose file by clicking Browse.");
		obj.value = "";
		obj.focus();
		obj.select();
		return false;
	}
	
}


function image_image(obj)
{
	
   var file_name_obj=eval(obj); 
   var t=0,val,iscorrect;
   iscorrect="no";
   if(file_name_obj.value!="")
   {
		  x = Array('jpg','gif','jpeg');//,'jpe'
		  for (var i = 0;i<x.length;i++)
		  { 
			 // validation of right type of image,checking from array defined in variables.php
			 if(file_name_obj.value.substring(file_name_obj.value.lastIndexOf('.')+1).toLowerCase()==x[i]) 
			 {
			   iscorrect="yes";
			 }
		   }
		   if(iscorrect=="no")
		   {
			 //alert ("File can only be of type:-"+x); // validation of right type of image     checking from array defined in variables.php
			   var error_container, conf_container, inner_err_container;
			   if(document.getElementById('err_container'))
					error_container = eval("document.getElementById('err_container')");
			   if(document.getElementById('inner_err_container'))
					inner_err_container = eval("document.getElementById('inner_err_container')")
			   if(document.getElementById('conf_container'))
					conf_container = eval("document.getElementById('conf_container')");
				inner_err_container.innerHTML = "File can only be of type:- <span class=\"error_red_txt\">"+x+"</span>.";
				if(conf_container)
				conf_container.style.display='none';
				error_container.style.display='';
				file_name_obj.value="";
				window.scrollTo(0,0);
				return false;

			  return false;
			}
			if(file_name_obj.value.indexOf("'")!=-1)
			{
				// alert ("You cannot upload File having single quotes (') in its name");
				var error_container, conf_container, inner_err_container;
				if(document.getElementById('err_container'))
					error_container = eval("document.getElementById('err_container')");
				if(document.getElementById('inner_err_container'))
					inner_err_container = eval("document.getElementById('inner_err_container')")
				if(document.getElementById('conf_container'))
					inner_err_container.innerHTML = "You cannot upload File having single quotes (') in its name";
				if(conf_container)
					conf_container.style.display='none';
				error_container.style.display='';
				file_name_obj.value="";
				window.scrollTo(0,0);
				return false;
			}
     }
  return true;
}

//function for uploading member picture
//@param string form name
//@param string frame target
//@param string frame source script name
//@param string file id 
function uploadPicture(frm,frameTarget,frameSRC,fileID,moduleName)
{
	if(image_image(document.getElementById(fileID)))
	{
		frm = eval('document.'+frm);//document.frmMemberProfile;
		frm.target=frameTarget;//"memberPicture";
		frm.action=frameSRC+"?tmpPicture="+fileID+"&mod="+moduleName+"&rand="+Math.random();//"uploadMemberPicture.php?rand="+Math.random();
		frm.submit();
		if(document.getElementById(fileID).type=='file')
		{
			document.getElementById(fileID).value="";
		}
	}
}

//function for deleting member picture
//@param string form name
//@param string frame target
//@param string frame source script name
//@param string file id 
function deletePicture(frm,frameTarget,frameSRC,moduleName,defValue)
{
	frm = eval('document.'+frm);//document.frmMemberProfile;
	frm.target=frameTarget;//"memberPicture";
	frm.action=frameSRC+"?mod="+moduleName+"&defValue="+defValue+"&rand="+Math.random();//"uploadMemberPicture.php?rand="+Math.random();
	frm.submit();
	return false;
}

//function check invalid character
//@param: string value
//@return: boolean value if invalid character find return true else return false
//@author: Jitendra Upraity
//@date:	15 Dec, 2007
function checkInvalidChar(fldVal)
{
	var ln = fldVal.length;
	for(i=0;i<ln;i++)
	{
		if(fldVal.charAt(i)==' ' || fldVal.charAt(i)=='@' || fldVal.charAt(i)=='#' || fldVal.charAt(i)==';' || fldVal.charAt(i)==':' || fldVal.charAt(i)=='$' || fldVal.charAt(i)=='%' || fldVal.charAt(i)=='^' || fldVal.charAt(i)=='"' || fldVal.charAt(i)=="'" || fldVal.charAt(i)=='(' || fldVal.charAt(i)==')' || fldVal.charAt(i)=='=' || fldVal.charAt(i)=='+' || fldVal.charAt(i)=='|' || fldVal.charAt(i)=='\\' || fldVal.charAt(i)=='/' || fldVal.charAt(i)=='{' || fldVal.charAt(i)=='}' || fldVal.charAt(i)=='[' || fldVal.charAt(i)==']' || fldVal.charAt(i)=='?' || fldVal.charAt(i)=='<' || fldVal.charAt(i)=='>' || fldVal.charAt(i)==',' || fldVal.charAt(i)=='!' || fldVal.charAt(i)=='~' || fldVal.charAt(i)=='`' || fldVal.charAt(i)=='*' || fldVal.charAt(i)=='&')
		{
			return true;
			break;
		}
		
	}
	return false;
}
//*****************************************************************************************************
// created by Maneesh Thareja
// Created on 14-Dec-2007
// following code is used to show paging on any page by ajax

var whichpage=1;
function processingdiv(cond)
{
 document.getElementById("processingdiv").style.visibility=(cond?'visible':'hidden');
}

function AjaxPaging(divName,url,page,parameters)
{
	//alert(parameters);
	
	if(page>0)
	{
		whichpage=page; //processingdiv(true)            //processingdiv(false)
	}
	//var src = url+"?"+"page="+whichpage+"&"+parameters+"&rand="+Math.random();
	callAjax( divName, url, {
	params:"page="+whichpage+"&"+parameters+"&rand="+Math.random(),
	meth:"post",
	async:true,
    startfunc:"",
    endfunc:"",
    errorfunc:"ajaxError()" }
	);
	return false;
}

function createIFrame(URL)
{
	var IFrameObj = document.getElementById('iframe_listing');
	if(!IFrameObj)
	{
		if(document.all)
		{
			var iframe='<iframe id="iframe_listing"  name="iframe_listing" style="border:0px;width:0px;height:0px;"></iframe>';
			document.body.innerHTML+=iframe;
			IFrameObj = new Object();
			IFrameObj.document = new Object();
			IFrameObj.document.location = new Object();
			IFrameObj.document.location.iframe = document.getElementById('iframe_listing');

		}
		else {
		var iframe = document.createElement('iframe');
		iframe.setAttribute("id","iframe_listing");
		iframe.setAttribute("name","iframe_listing");
		iframe.style.border='0px';
		iframe.style.height='0px';
		iframe.style.width='0px';
		IFrameObj = document.body.appendChild(iframe);
			if (document.frames) {
			// this is for IE5 Mac, because it will only
			// allow access to the document object
			// of the IFrame if we access it through
			// the document.frames array
			IFrameObj = document.frames['iframe_listing'];
		  }

		}
	
	}
	if (IFrameObj.contentDocument) {
		// For NS6
		IFrameDoc = IFrameObj.contentDocument; 
	  } else if (IFrameObj.contentWindow) {
		// For IE5.5 and IE6
		IFrameDoc = IFrameObj.contentWindow.document;
	  } else if (IFrameObj.document) {
		// For IE5
		IFrameDoc = IFrameObj.document;
	  } else {
		return true;
	  }
  
	IFrameDoc.location.href=URL;

}

function assignValueInIFrame(fullsrc)
{
	createIFrame(fullsrc);
	//document.getElementById('iframe_listing').src = fullsrc;
	//document.getElementById('iframe_listing').src.innerHTML = document.getElementById(divname).innerHTML;
}

function AjaxPaging_PerPage(newPaging,divName,url,parameters)
{
	whichpage=1;
	parameters+="&paging="+newPaging;//+"&rand="+Math.random();
	//alert(parameters);
	AjaxPaging(divName,url,whichpage,parameters);
	//return false;
}
function AjaxPaging_SortBy(sortBy,divName,url,parameters)
{
	parameters+="&sortBy="+sortBy;
	//alert(parameters);
	AjaxPaging(divName,url,whichpage,parameters);
	//return false;
}
function SubmitFormByEnter(e,myform,funcName) 
{
	var obj=window.event? event : e;
	var key=obj.charCode? obj.charCode : obj.keyCode;

  if (key ==13)
  {
	if(funcName!="")
	{
	 eval(funcName);
	 return false;
	}
	else
	{
	 myform.submit();
	 return false;
	}
  }
  else
    return true;
}


function SubmitForm(e,frmName,fldName) 
{
	var obj=window.event? event : e;
	var key=obj.charCode? obj.charCode : obj.keyCode;

  if (key ==13)
  {
	if(fldName!="")
	{
	 //hardcode conditions for boats and motors
	 if(frmName=="frmAddMotor" || frmName=="frmEditMotor")//motor
		return validate_model('motor',0,0);
	 else if(frmName=="frmAddBoat" || frmName=="frmEditBoat")//boat
		return validate_model('motor',1,0);
	 else
		return initializeForm(frmName, fldName, '', '');
	}
	/*else
	{
	 myform.submit();
	 return false;
	}*/
  }
  else
    return true;
}
//function to showing popup
function show_popup(url,ele)
{
	jQuery.facebox({ ajax:url}); 
}

function hide_popup()
{

	jQuery.facebox.close();
	
}

function MM_reloadPage(init) {  //reloads the window if Nav4 resized
	  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
		document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
	  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
	}
	MM_reloadPage(true);

	function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	}

	function MM_showHideLayers() { //v6.0
	  var i,p,v,d,obj,args=MM_showHideLayers.arguments;
	  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
		//if (obj.style) { obj=obj.style; d=(d=='show')?'':(d=='hide')?'none':d; }
		if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
		//obj.display=d;
		obj.visibility=v;
		}
	}
//function to convert meter to feet
function meter_to_feet(mtr)
{
	if (mtr>0) {
	 var feet=Math.round(((mtr*39.370079)/12)*100)/100;
	 return feet;
	}
	else
		return false;
}//function

//function to convert  feet to metre
function feet_to_meter(feet)
{
	if (feet>0) {
	 var mtr=Math.round(((feet*12)/39.370079)*100)/100;
	 return mtr;
	}
	else
		return false;
}//function

//Function Created By Ravi Pandey 1st Sep, 2008
//dynamically display div on add boat page
//function to add self div
function add_div_self(resDiv,ajaxFile,counterName,addDiv,removeDiv,pType)
{
	
	
	var Counter=document.getElementById(counterName).value;
	++Counter;
	//alert(removeDiv);
	
	document.getElementById(counterName).value=Counter;
	var maxCounter=eval('document.getElementById("max_"+counterName).value');
	var minCounter=eval('document.getElementById("min_"+counterName).value');
	//alert(Counter+'<'+maxCounter+'='+minCounter);
	if(Counter>=maxCounter)
		document.getElementById(addDiv).style.display='none';
	
	

	var parameters='';

	if(typeof(Counter)!='undefined '&& Counter!='' ) parameters= parameters+"&Counter="+Counter;
	if(typeof(maxCounter)!='undefined' && maxCounter!='') parameters= parameters+"&maxCounter="+maxCounter;
	if(typeof(minCounter)!='undefined' && minCounter!='') parameters= parameters+"&minCounter="+minCounter;
	//alert(minCounter);

	callAjax( resDiv, ajaxFile, {
	params:"pagenum=0"+"&"+parameters+"&rand="+Math.random(),
	meth:"post",
	async:true,
	append:true,
    startfunc:"",
    endfunc:"show_remove_button("+Counter+","+minCounter+",'"+removeDiv+"')",
    errorfunc:"" }//end ajax parameters
	);//end call ajax
	//alert(Counter+'<'+maxCounter+'='+minCounter);
	if(Counter<minCounter)
		add_div_self(resDiv,ajaxFile,counterName,addDiv,removeDiv);
}//end function

//function to show remove button
function show_remove_button(Counter,minCounter,removeDiv)
{
	//alert(Counter+'>'+minCounter);
	if(Counter>minCounter)
	document.getElementById(removeDiv).style.display="";
}

//function to remove self div
function remove_div_self(eleId,counterName,addDiv,removeDiv)
{
	
	var Counter=document.getElementById(counterName).value;
	//alert(eleId+"_"+Counter);
	var ele=document.getElementById( eleId+"_"+Counter );
	ele.parentNode.removeChild( ele );
	Counter--;
	document.getElementById(counterName).value=Counter;
	//show add more button
	var maxCounter=document.getElementById("max_"+counterName).value;
	var minCounter=document.getElementById("min_"+counterName).value;
	//alert(Counter+'<'+maxCounter+'='+minCounter);
	if(Counter<maxCounter){
		//alert(Counter+'<'+maxCounter+'='+addDiv);
		document.getElementById(addDiv).style.display='';
	}
	//hide remove button
	if (minCounter==Counter)
		document.getElementById(removeDiv).style.display='none';
}//function-------------------------------------------------------------------------------------

//show static divs
function show_static_div(divName,url,parameters)
{
	callAjax( divName, url, {
	params:"page=0"+"&"+parameters+"&rand="+Math.random(),
	meth:"post",
	async:true,
    startfunc:"",
    endfunc:"",
    errorfunc:"" }
	);
}

//show static divs
function show_hide_other(mainDiv,otherDiv,act)
{
	if(act=="show")
	{
		document.getElementById("div_"+otherDiv).style.display="";
		//document.getElementById(mainDiv).removeAttribute("required");
		document.getElementById(mainDiv).disabled=true;
		document.getElementById(otherDiv).disabled=false;
		//document.getElementById(otherDiv).setAttribute("required","Empty");
		document.getElementById(otherDiv).value="";
		document.getElementById("txt_"+mainDiv).className="";
		//SHOW LAYER
			toggleBox('layer_'+otherDiv,1);
	}
	else if(act=="hide")
	{
		
		//document.getElementById(mainDiv).setAttribute("required","Motor");
		//document.getElementById(otherDiv).removeAttribute("required");
		document.getElementById(mainDiv).disabled=false;
		document.getElementById(otherDiv).disabled=true;
		document.getElementById(otherDiv).value="";
		//alert(document.getElementById(otherDiv).getAttribute('required'));
		document.getElementById("txt_"+otherDiv).className="";
		document.getElementById("div_"+otherDiv).style.display="none";
		//hide layer
			toggleBox('layer_'+otherDiv,0);
	}
}


function toggleBox(szDivID, iState) // 1 visible, 0 hidden
{
   if(document.getElementById(szDivID))
	{
		if(document.layers)	   //NN4+
		{
		   document.layers[szDivID].style.display = iState ? "block" : "none";
		}
		else if(document.getElementById)	  //gecko(NN6) + IE 5+
		{
			var obj = document.getElementById(szDivID);
			obj.style.display = iState ? "block" : "none";
		}
		else if(document.all)	// IE 4
		{
			document.all[szDivID].style.display= iState ? "block" : "none";
		}
	}
}


// return the value of the radio button that is checked
// return an empty string if none are checked, or
// there are no radio buttons
function getCheckedValue(radioObj) {
	
	if(!radioObj)
		return "";
	var radioLength = radioObj.length;
	//alert(radioObj.name);
	if(radioLength == undefined)
		if(radioObj.checked)
			return radioObj.value;
		else
			return "";
	for(var i = 0; i < radioLength; i++) {
		if(radioObj[i].checked) {
			return radioObj[i].value;
		}
	}
	return "";
}

// set the radio button with the given value as being checked
// do nothing if there are no radio buttons
// if the given value does not exist, all the radio buttons
// are reset to unchecked
function setCheckedValue(radioObj, newValue) {
	if(!radioObj)
		return;
	var radioLength = radioObj.length;
	if(radioLength == undefined) {
		radioObj.checked = (radioObj.value == newValue.toString());
		return;
	}
	for(var i = 0; i < radioLength; i++) {
		radioObj[i].checked = false;
		if(radioObj[i].value == newValue.toString()) {
			radioObj[i].checked = true;
		}
	}
}

//functiion to clear form fields
function reset_form(formIdent)
{
	var elems=eval("document."+formIdent+".elements");
	for(var i=0;i<elems.length;i++)
	{
		if(elems[i].type=='text')
		{
			elems[i].value ='';
		}//end if
		else if(elems[i].type=='hidden')
		{
			elems[i].value ='';
		}//end if
		else if(elems[i].type=='select-one')
		{
			elems[i].options.selectedIndex=0;
		}//end if
		else if(elems[i].type=='radio')
		{
			var radioVal = '';
			
			var ele = elems[i].name;
			
		  
		   var len = eval("document."+formIdent+"."+ele+".length");
		   for (var j=0; j <len; j++)
		   {
				 frm_ele=eval("document."+formIdent+"."+ele+"["+j+"]");
				 if(frm_ele.name!="search_at")
			     {
					frm_ele.checked=false;
				 }
		   }//for
			
		}//else if
		else if(elems[i].type=='checkbox')
		{	
		   var ele = elems[i].name; 
		   var arr=ele.substring(ele.length-2,ele.length);
		   var chks = document.getElementsByName(ele);
			
			if(arr=="[]")
			{
				ele=ele.substring(0,ele.length-2);
				var  checkboxVal = "";
				for (var j=0; j <chks.length; j++)
				{
					frm_ele = eval("document."+formIdent+"."+ele);
					chks[j].checked=false;

				}
			}
			else
				chks.checked=false;

		 //  var frm_ele=eval("document."+formIdent+"."+ele);
		   //frm_ele.checked=false;
		   
		}//else if
	}//for
}//function

function show_error_msg(msg)
{
	var  error_container, conf_container, inner_err_container;
	if(document.getElementById('err_container'))
		error_container = eval("document.getElementById('err_container')");
	if(document.getElementById('inner_err_container'))
		inner_err_container = eval("document.getElementById('inner_err_container')")
	if(document.getElementById('conf_container'))
	{
		conf_container = eval("document.getElementById('conf_container')");
		conf_container.style.display='none';
	}
	//inner_err_container.innerHTML = 'Please choose at least one field for <span class="error_red_txt">search</span>.';
	inner_err_container.innerHTML = msg;
	error_container.style.display='';
	window.scrollTo(0,0);
}

function hide_error_msg()
{
	var  error_container;
	error_container = eval("document.getElementById('err_container')");
	//if(error_container);
	if(document.getElementById('err_container'))
	{
		//error_container.style.display='none';
		document.getElementById('err_container').style.display='none';

	}


}

function show_conf_msg(msg)
{
	var  error_container, conf_container, inner_err_container,inner_conf_container;
	if(document.getElementById('err_container'))
		error_container = eval("document.getElementById('err_container')");
	if(document.getElementById('inner_err_container'))
		inner_err_container = eval("document.getElementById('inner_err_container')")
	if(document.getElementById('conf_container'))
		conf_container = eval("document.getElementById('conf_container')");
	error_container.style.display='none';
	//inner_err_container.innerHTML = 'Please choose at least one field for <span class="error_red_txt">search</span>.';
	inner_conf_container.innerHTML = msg;
	conf_container.style.display='';
	window.scrollTo(0,0);
}

function hide_conf_msg()
{
	var  conf_container;
	conf_container = eval("document.getElementById('conf_container')");
	if(conf_container)
	conf_container.style.display='none';
}

function hide_msg()
{
	var  error_container;
	error_container = eval("document.getElementById('err_container')");
	error_container.style.display='none';
	
	var  conf_container;
	conf_container = eval("document.getElementById('conf_container')");
	error_container.style.display='none';
}

//function to cancel form
function cancel(url,frm_name)
{
	if(!frm_name)
		window.location=url;
	else
	{
		var frm=eval("document."+frm_name);
		frm.action=url;
		frm.submit();
	}

}

function allow_decimal(ele,dec,e)
{
	var val=ele.value;
	var str=val.split(".");
	if(str[1])
	{
		var dec_len=(str[1]).length;
		if(dec_len>dec)
		{
			//ele.value=val.substring(0,(val.length)-1);
			
		}
	}

}

function OpenNewWindow(url,name,parameters)
{
		if(url!="")
		{
				window.open(url,name,parameters);
		}
		return false;
}
//********************************************************************************************************
function showLoading(divid)
{
	document.getElementById(divid).innerHTML='<div align="center" id="loading" style="height:100px;" ><img border="0" src="images/loading.gif" align="middle" /></div>';
}
function showLoadingAdmin(divid)
{
	document.getElementById(divid).innerHTML='<div align="center" id="loading" style="height:100px;" ><img border="0" src="../images/loading.gif" align="middle" /></div>';
}

function focusother(obj,obj1)
{
	if(obj.value.length >= 4)
	{
		obj1.focus();
	}
}


function checkCardDetail(frm,msg)
{
		var class_name_val = "msgcontainer1";
		var newMsg="";
		var cardNumber=frm.card_number1.value+frm.card_number2.value+frm.card_number3.value+frm.card_number4.value;
		if(frm.name_on_card.value=="")
		{
			document.getElementById('txt_name_on_card').className = class_name_val;
			if(!newMsg)
				newMsg="Please enter name on card.";
		}
		else
			document.getElementById('txt_name_on_card').className = "";

		if(isNaN(cardNumber) || cardNumber.length<15)
		{
			if(!newMsg)
				newMsg="Please enter valid credit card number.";
			document.getElementById('txt_card_number').className = class_name_val;
		}
		else
		{
			if(frm.card_type.value!="" && frm.card_type.value!="Amex" && cardNumber.length<16)
			{
				if(!newMsg)
					newMsg="Please enter valid credit card number.";
				document.getElementById('txt_card_number').className = class_name_val;
			}
			else
				document.getElementById('txt_card_number').className = "";
		}

		 if(frm.card_type.value=="")
		{
			if(!newMsg)
				newMsg="Please select card type.";
			document.getElementById('txt_card_type').className = class_name_val;
		}
		else
			document.getElementById('txt_card_type').className = "";

		 if(frm.expiry_month.value=="" || frm.expiry_year.value=="")
		{
			if(!newMsg)
				newMsg="Please select expiry month and year.";
			document.getElementById('txt_card_expiry').className = class_name_val;
		}
		else
			document.getElementById('txt_card_expiry').className = "";


		if(frm.expiry_month.value!="" && frm.expiry_year.value!="")
		{
			var d=new Date();
			var curMonth =d.getMonth()+1;
			var curYear= d.getFullYear();
			cardMonth=frm.expiry_month.value;
			cardYear=frm.expiry_year.value;
			//alert(cardYear+'=='+curYear +'&&'+ cardMonth+'<'+curMonth);
			if(cardYear<curYear || (cardYear==curYear && cardMonth<curMonth))
			{
				if(!newMsg)
				newMsg="Please select valid expiry month and year.";
				document.getElementById('txt_card_expiry').className = class_name_val;
			}
			else
				document.getElementById('txt_card_expiry').className = "";
		}


		if(newMsg)
		{
			if(msg)
				show_error_msg(msg);
			else
				show_error_msg(newMsg);

			return false;
		}

		return true;
}

/*---------------------Delete code end  -----------------------------------------------------*/

var f_iDelTotalChecked=0//intialize value of (total delete checked) variable
//function manage (total delete checked) variable
function objDelChecked(chk)
{
	if(chk.checked==true)
		f_iDelTotalChecked=f_iDelTotalChecked+1
	else
		f_iDelTotalChecked=f_iDelTotalChecked-1
}//end of function

//-------------------Function for checking if any one checkbox is selected for deleting
function ConfirmDelChoice(chkSource,objFrm,pg) 
{ 
	if(f_iDelTotalChecked==0)
	{
		alert("Please select at least one record to delete.");
		return false; 
	}
	else
	{
		f_answer = confirm("Are you sure you want to Delete the selected Records ?");

		if (f_answer !=0) 
		{ 
			 
			//passing comma seperated value(delete ids) and set action Delete
			var selectObject = document.forms[objFrm].elements[chkSource];
			var selectCount  = selectObject.length;
			var dr_del="";
			
			if(typeof(selectCount)=='undefined')
				if(selectObject.checked)
				  dr_del = selectObject.value+",";				
			
			 if(selectCount){
			  for (var i = 0; i < selectCount; i++) {
			   if(selectObject[i].checked)
				  {
					   dr_del +=selectObject[i].value;
					   dr_del +=",";
				  }
			  } // end for
				
			 }//end if
			 dr_del=dr_del.substring(0,dr_del.length-1);
			 if(document.forms[objFrm].del_id)
				 document.forms[objFrm].del_id.value=dr_del;
			// alert(dr_del);
			if(document.forms[objFrm].cAction)
				 document.forms[objFrm].cAction.value="Delete";
			 page_list(pg);
			 return true; 
		} 
		else
		{
			return false; 
		}
	}
}//end of function
				
//function to check all 
function CheckAll(chkSource,objFrm)
	{
		
		var selectObject = document.forms[objFrm].elements[chkSource];
		var selectCount  = selectObject.length; 
		 if(selectCount){
		  for (var i = 0; i < selectCount; i++) {
		   selectObject[i].checked = true;
		  } // end for
		  f_iDelTotalChecked=selectObject.length;
		 }
		 else{
		  selectObject.checked = true;
		  f_iDelTotalChecked=1;
		 }
		
	}//end of function
//functio to uncheck all
function unCheckAll(chkSource,objFrm)
	{
		 var selectObject = document.forms[objFrm].elements[chkSource];
			var selectCount  = selectObject.length; 
		 if(selectCount){
		  for (var i = 0; i < selectCount; i++) 
			  {
		   selectObject[i].checked = false;
		  } // end for
		 }
		 else{
		  selectObject.checked = false;
		 }
		 f_iDelTotalChecked=0;
	}

/*---------------------Delete code end  -----------------------------------------------------*/


//function to sorting records------------------------------------------------------------------/*/
function sort_page(frm_name, sortorder,sortcriteria,pg)
	{
		var x=eval("document."+frm_name+".sortcrt");
		var y=eval("document."+frm_name+".sortorder")
		x.value=sortcriteria;
		y.value=sortorder;
		page_list(pg);
	}
//----------------------------------------------------------------------------------------------------*/

//Function for Activating Deactivating project
function changeStatus(frm_name,id,stats,pg)
	{
		var x=eval("document."+frm_name+".edit_key");
		var y=eval("document."+frm_name+".status")
		var z=eval("document."+frm_name+".cAction")
		x.value=id;
		y.value=stats;
		z.value='Status';
		page_list(pg);
		hide_conf_msg();
	}
//---------------------------------------------------------------------------------------------

//Function for Activating Deactivating project
function editProd(frm_name,id,action)
	{
		//alert(frm_name+'=='+id+'+=='+action);
		var x=eval("document."+frm_name+".edit_key");
		var y=eval("document."+frm_name)
		var z=eval("document."+frm_name+".cAction")
		x.value=id;
		z.value='Edit';
		y.action=action;//'category-edit.php';
		y.submit();
	}
//---------------------------------------------------------------------------------------------

//Ravi pandey
//function to append element
function appendAjaxElement(resDiv,ajaxFile,parameters)
{
	
	if(typeof(parameters)=='undefined')
		var parameters='';

	callAjax( resDiv, ajaxFile, {
	params:parameters+"&rand="+Math.random(),
	meth:"post",
	async:true,
	append:true,
    startfunc:"",
    endfunc:"",
    errorfunc:"" }//end ajax parameters
	);//end call ajax
}//end function

function removeElement(eleId)
{
	
	var ele=document.getElementById(eleId);
	ele.parentNode.removeChild( ele );
}//function-------------------------------------------------------------------------------------

//Ravi Pandey
//29-Dec-2008
//function to open detail page in facebook style
function viewDetailPage(pageNameWithParameters)
{
	show_popup(pageNameWithParameters);
}

//Ravi Pandey
//29-Dec-2008
//function to check duplicate value in an array field
function duplicateValueInArrayField(myElements)
{
	try {
		var arr=new Array();
		for(var i=0; i < myElements.length; i++) {
			var temp=0;
			arr[i]=myElements[i].value;
			for(var j=0; j <arr.length; j++) {
				if(arr[i]==arr[j])
					temp++;//end if
				if(temp>1)
					break;//end if
			}//loop
		if(temp>1)
			return false;
		else
				continue;
		}//loop
		return true;
	}//try
	catch (e) {
		alert("Error in '" + myElements + "': " + e);
	}//catch
}//end function

//function to back manage (listing) page
//Ravi pandey
//2nd Jan 2009
function backToManagePage()
{
	document.frmBack.submit();
}