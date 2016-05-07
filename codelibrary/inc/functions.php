<?php



############### Show The Date DD-MM-YYYY Format #####
function DateFormatDMY($date) 
{
	$date = date('m/d/Y',strtotime($date));
	if($date == "01/01/1970") 
	{
		$date = "";
	}
	return $date;
}
###############  End Date Format here ###############

######################################################################################
//FUNCTION FOR RANDOM GENERATION OF PASSWORD
function random_password($length) 
{
	$rstr = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	$nstr = "";
	mt_srand ((double) microtime() * 1000000);
	while(strlen($nstr) < $length) 
	{
		$random = mt_rand(0,(strlen($rstr)-1));
		$nstr .= $rstr{$random};
	}


	return($nstr);
}
#################################################






######## return encrpted password #####
function enc_password($your_password)
{
	$enc_password = md5($your_password);
	$enc_password = substr($enc_password, 0 ,20);
	return $enc_password;
}
####### End of return encrpted password #####

#######function used to display alternate classes##########
function alternate_row($tdrow,$tdClass1,$tdClass2)
{
	if(($tdrow%2)==0)
	{
		$tdClass=$tdClass1;
	}
	else
	{
		$tdClass=$tdClass2;
	}

	return $tdClass;
}
##########function alternate row ends##########################
#################################################
//function to check file path
function chk_thumbnail_filepath($thumbnail_filepath)
{
	if($thumbnail_filepath)
	{
		if(file_exists($thumbnail_filepath) && filesize($thumbnail_filepath)>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		return false;
	}
}
#################################################

#################################################
function descriptionFormate($param, $width)
{
	//$paramStr = strlen($param);
	if(strstr($param, " "))
	{
		//echo "<br>";echo "Case 1";echo "<br>";
		$paramArr = explode(' ', $param);
		foreach($paramArr as $var)
		{
			if(strstr($var, "\n"))
			{
				//echo "<br>";echo "Case 1_2A";echo "<br>";
				$strArr = explode('\n', $var);
				foreach($strArr as $subVar)
				{
					if(strlen($subVar)>$width)
					{
						//echo "<br>";echo "Case 1_3A";echo "<br>";
						$wrapStr = wordwrap($subVar, $width, "<br>", 1);
						$paramStr .= " ".$wrapStr;
					}
					else
					{
						//echo "<br>";echo "Case 1_3B";echo "<br>";
						$paramStr .= "<br>".$subVar;
					}
				}
			}
			else
			{
				//echo "<br>";echo "Case 1_2B";echo "<br>";
				$wrapStr = wordwrap($var, $width, "<br>", 1);
				$paramStr .= $wrapStr;
				$paramStr = wordwrap($paramStr, $width, "<br>", 1);
			}
		}
	}
	elseif(strstr($param, "\n"))
	{
		//echo "<br>";echo "Case 2";echo "<br>";
		$paramArr = explode('\n', $param);
		foreach($paramArr as $var)
		{
			if(strlen($var)>$width)
			{
				//echo "<br>";echo "Case 2_2A";echo "<br>";
				$wrapStr = wordwrap($var, $width, "<br>", 1);
				$paramStr .= $wrapStr;
			}
			else
			{
				//echo "<br>";echo "Case 2_2B";echo "<br>";
				$paramStr .= "<br>".$var;
			}
		}
	}
	else
	{
		//echo "<br>";echo "Case 3: $width";echo "<br>";
		$wrapStr = wordwrap($param, $width, "<br>", 1);
		$paramStr = $wrapStr;
	}
	return $paramStr;
}
#################################################
//function to wraptext
function wraptext($text,$len="")
{
				$text = nl2br($text);
		//		$text=str_replace(array('<!--', '-->'), array('&lt;!--', '--&gt;'), $text);
		$text = strip_tags($text);
				$words = explode("<br />", $text,2);
				
				$text = $words[0];
				if($len == "")
				{
					$count_chars = 100;
				}
				else
				{
						$count_chars = $len;
				}
				if(strlen($text)>$count_chars)
				{
					    $str_new=substr($text,0,$count_chars);
		                $str_new.="...";
					    return $str_new;
				}
				else
				{
						return $text;
				}
}
#################################################
//Function to create paging dropdown list#################
function printPagingDropDown($selID,$torRec)
{
	for($l=1;$l<=100;$l++)
	{
		if($l%10==0)
		{
			echo "<option value=\"$l\"";
			if($l==$selID)  
				echo "selected"; 
			echo ">";
			echo $l;
			echo "</option>";
			if($l>=$torRec)
				break;
		}//end if
	}//for
}//end of function
##########################################################

#################################################
function admin_paging($total_recs,$paging,$page)
{
#################### paging starts ##################
$paging_table="";
if($total_recs>0){
	
	$startPage=((int)(($page)/5))*5;
	$endPage=$startPage+5;
	
	$previousPage = ($page-1);
	$nextPage = ($page+1);

	$no_of_page=ceil($total_recs/$paging);

	if($endPage > $no_of_page)
		$endPage=$no_of_page;
//			print "<p align=center class=content>Page ".($page+1)." of $no_of_page ";
	$paging_table="<table width=400 border=0 align=right cellpadding=2 cellspacing=0>
		<tr> 
		<td class=\"pagingtxt\" align=\"right\"> <br>Paging: ";
		if($page != 0)
			$paging_table .=' <a href="javascript:page_list('.$previousPage.');" >Pre</a>';
	for($i=$startPage;$i<$endPage;$i++){
		$j=$i+1;
		if($i!=$page) $paging_table.=" <a href=\"javascript:page_list('$i');\" class=\"paginglink\">$j</a> ";
		else $paging_table.=' '.$j;
		$paging_table.= " | ";
	}
	$paging_table= substr($paging_table,0,-2);
	if($nextPage != $no_of_page)
		$paging_table .=' <a href="javascript:page_list('.$nextPage.');">Next</a>';
		//$paging_table.= "[<font class=content>".$j."</font>]";
	$paging_table.= " </p> </td> </tr>";
	  $paging_table.="</table>";
}
if(isset($no_of_page) && ($no_of_page<=1))
{
	$paging_table="";
}
		return $paging_table;
#################### paging Ends ##################

}

#################################################
/* Function To Post Values Back/Forth
   Input Params:$hflds-> Hidden fields
            	$url -> Return path
            	$retVal-> Return Value/ Message indicating the error message
	Output Params : String
*/
function PostValues($hflds,$url,$retVal,$field_name='msg')
{
    $str = "<html><body>";
    $hflds.='<input type=hidden name="'.$field_name.'" value="'.$retVal.'">';
    $str.='<form name="f1" action="'.$url.'" method="post">';
    $str.=$hflds;
    $str.='</form>';
    $str.='<script>document.f1.submit();</script>';
    $str.='</body></html>';
    return $str;

}
#################################################

#########################Function to format date ##################
function show_formatted_date($p_date)
{
	if($p_date=="0000-00-00" || $p_date=="0000-00-00 00:00:00") 
		return ;
	else 
	{
		$arr_date=explode(' ',$p_date);
		if(count($arr_date) > 1)
		{
			return date('dS F Y  H:i:s',strtotime($p_date));
		}
		else
		{
			return date('dS F Y ',strtotime($p_date));
		}
	}
		
}
#########################Function to format date ##################

#########################Function to format date ##################
function show_time_ampm($p_date)
{
	if($p_date=="0000-00-00" || $p_date=="0000-00-00 00:00:00") 
		return ;
	else 
	{
		$arr_date=explode(' ',$p_date);
		if(count($arr_date) > 1)
		{
			return date('h:i a',strtotime($p_date));
		}
		else
		{
			return date('h:i a',strtotime($p_date));
		}
	}
		
	 
}
#########################Function to format date ##################
#########################Function to format date ##################
function show_date_format($p_date)
{
	if($p_date=="0000-00-00" || $p_date=="0000-00-00 00:00:00" || $p_date=="") 
		return ;
	else 
	{
		$arr_date=explode(' ',$p_date);
		if(count($arr_date) > 1)
		{
			return date('M d,Y',strtotime($p_date));
		}
		else
		{
			return date('M d,Y',strtotime($p_date));
		}
	}
	 
}
//end of function 


#################################################
// this function is used to format the numbers in 2 decimal places with , after thosand
function NumberFormat($number)
{
	if(!is_numeric($number))
	{return $number;}
	else
	{
		if(is_int($number))
			return number_format($number);
		else
			return number_format($number,"2",".",",");
	}
}
#################################################

#################################################

//function to display user paging
//Mohan Kumar
//9/16/2008
function display_pagingManage($total_recs,$paging,$currentPage)
{
	//echo $total_recs.','.$paging.','.$currentPage;
	$paging_table="";
	if($total_recs>0){
			$startPage=((int)(($currentPage)/5))*5;
			$endPage=$startPage+5;
			$previousPage = ($currentPage-1);
			$nextPage = ($currentPage+1);
			$no_of_page=ceil($total_recs/$paging);

			if($endPage > $no_of_page)
				$endPage=$no_of_page;

			$paging_table='<table width="0%" border="0" cellspacing="0" cellpadding="0"> <tr>  <td>';

			if($currentPage == 0)
				$paging_table .='<img src="images/btn_pagingPrevious.gif" width="19" height="23" hspace="10" border="0">';
			else
				$paging_table .='<a href="javascript:;" onclick="page_list('.$previousPage.');"><img src="images/btn_pagingPrevious.gif" width="19" height="23" hspace="10" border="0"></a>';
				
			$paging_table .='</td>  <td class="pagingtxtLblue">Page';	
			for($i=$startPage;$i<$endPage;$i++){
				$j=$i+1;
				if($i!=$currentPage) $paging_table.=" <a href=\"javascript:;\" class=\"apaginglinklBlue\" onclick=\"page_list('$i');\">$j</a> ";
				else $paging_table.= '<span class="pagingtxtDblue">'.$j.'</span>';
				if($i < ($endPage-1))
				{
					$paging_table.= " | ";
				}
			}

			//$paging_table= substr($paging_table,0,-2);
				//$paging_table.= "[<font class=content>".$j."</font>]";
			$paging_table.= '</td><td>';
			
			if($nextPage == $no_of_page)
				$paging_table .='<img src="images/btn_pagingNext.gif" width="19" height="23" hspace="10" border="0">';
			else
				$paging_table .='<a href="javascript:;" onclick="page_list('.$nextPage.');"><img src="images/btn_pagingNext.gif" width="19" height="23" hspace="10" border="0"></a>';

			$paging_table .='</td></tr> </table>';
			
	}
	if(isset($no_of_page) && ($no_of_page<=1))
	{
		//$paging_table .='&nbsp;';
	}
				return $paging_table;

}//end function


#################################################
//function to return no record found message format
//Mohan Kumar
//10/03/2008
function noRecordFoundMessage($message,$admin="")
{
	if(empty($message))
		$message="No record found.";
	
	if(empty($admin))
		$str ='<tr><td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0"><tr><td class="frmhead"></td></tr><tr><td class="error_red_txt" align="center">&nbsp;</td></tr><tr><td class="error_red_txt" align="center">'.$message.'</td></tr><tr><td class="error_red_txt" align="center">&nbsp;</td></tr><tr><td class="frmhead"></td></tr>	</table></td></tr>';
	else
		$str ='<table border="0"  cellpadding="2" width="100%"><tr><td  align="right" ><table border="0"   width="100%" class="greyBorder" cellpadding="6" cellspacing="4"><tr><td class="error_red_txt" align="center">'.$message.'</td></tr></table></td></tr></table>';
	return $str;

}//end function
#################################################

#################################################
// Function to wrap the image width and height
// Mohan Kumar
// 08-Oct-2008
// The HTML image wrapper function
function html_image_resize($src, $width = '', $height = '') 
{
    if ( empty($src)) {
      return false;
    }
	// alt is added to the img tag even if it is null to prevent browsers from outputting
	// the image filename as default
    $image = '<img src="' . $src . '" border="0"'; 
  
    if ((empty($width) || empty($height)) ) 
	{
		  if ($image_size = @getimagesize($src)) 
		  {
			if (empty($width) && $height) 
			{
			  $ratio = $height / $image_size[1];
			  $width = $image_size[0] * $ratio;
			} 
			elseif ($width && empty($height)) 
			{
			  $ratio = $width / $image_size[0];
			  $height = $image_size[1] * $ratio;
			} 
			elseif (empty($width) && empty($height)) 
			{
			  $width = $image_size[0];
			  $height = $image_size[1];
			}
			$image.=' width="'.$width.'" height="'.$height.'">';
			return $image;
		 } 
		 else 
		 {
			return false;
		 }
		 
   }
   else
   {
		$image.=' width="'.$width.'" height="'.$height.'">';
		return $image;
   }	
} 
#################################################

################################################
//function to return no of characters with last word to a string
function short_text($str,$Chars=0,$exactChars="no")
{
	if($exactChars=="no")
	{
		$strLen= strlen($str);
		if($strLen>$Chars)
		{
			for($length=$Chars;$length<=$strLen;$length++)
			{
				if(substr($str,$length,1)==" ")
					break;
				else
					continue;
			}
			return substr($str,0,$length);
		}
		else
			return $str;
	}
	else
	{
		return substr($str,0,$Chars);
	}		
} 
#################################################

#################################################
function echoPost()
{
	echo "<pre>";
	print_r($_POST);
	//die();
}
#################################################

#################################################
function echoGet()
{
	echo "<pre>";
	print_r($_GET);
	//die();
}
#################################################

#################################################
function echoRequest()
{
	echo "<pre>";
	print_r($_REQUEST);
	//die();
}
#################################################

#################################################
function echoSession()
{
	echo "<pre>";
	print_r($_SESSION);
	//die();
}
#################################################

// this function is used to stop sql injection.
function sqlInjectionCheck($string, $DBlink="")
{
  
  if(get_magic_quotes_gpc())  // prevents duplicate backslashes
  {
    $string = stripslashes($string);
  }
  if (phpversion() >= '4.3.0')
  {
    $string = mysql_real_escape_string($string, $DBlink);
  }
  else
  {
    $string = mysql_escape_string($string);
  }
 
  return $string;
}

// Email validation
function checkEmail($email)
{
  // checks proper syntax
  if( !preg_match( "/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/", $email))
    return false;
   else
    return true; 
 
}
	function sendHTMLMail($to,$subject,$matter,$from)
	{
		$headers  = "MIME-Version: 1.0\r\n"; 
		$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
		$headers .= "From:$from\r\n";
		//echo "to->".$to."<br>subject->".$subject."<br>matter->".$matter."<br>from->".$from;
		//die;
		if(mail($to,$subject,$matter,$headers))
		{
			return true;
		}
		else
		{
			return false;
		}

	}

function get_state_name($table_name, $default_selected="")
{
	
}	
?>