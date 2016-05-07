<?php
/*_______________________________________________________________________
Created By	: Raj Deo
Created On	: 09/06/2010
Modified By : 
Modified On : 
Description : This class is a common function class used in both admin and user section.
_________________________________________________________________________
*/
class common_function
{
	
   const INVALID_USER_TYPE ='Invalid user type!';
   const USER_TYPE = 'admin';
   const WELCOME_ADMIN_PANEL_MSG = 'Welcome to the Administration Panel';
   const LAST_VISITED = 'Last Visited ';
   const LINE_NUMBER = '<br>Line Number: ';
   const SCRIPT_NAME = '<br>Script Name: ';
   
   //table name.
   const IP_TRACKING = 'var_admin_ip_tracking';
   
   
   
   /**
	*  This function is used to through error if occured.
	*  @param1: Message to display.
	*  @param2: File name in which error has occured. (optional)
	*  @param3: Error line Number. (optional)
	*  Return value: Error Message.
	*/ 
	 
	public function error_handler($message, $fileName='', $line_Number='')
	{
	
		$msg = $message;
		if($fileName!="")
		$msg .= "<br>{$fileName}";
		if($line_Number!="")
		$msg .= "<br>{$line_Number}";	
		return $msg;
		//throw new Exception($msg);	
	}
	
	
	/**
	*  This function is used to stop sql injection.
	*  @param: $string= userName;
	*  @param: $DBlink optional
	*  Example:  sqlInjectionCheck("userName", $DBlink="")
	*  Return value: userName
	*/ 
	
	public function sqlInjectionCheck($string, $DBlink="")
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
	} // sqlInjectionCheck ends 
		

   /**
	*  This function is used to show welcome message.
	*  @param 1: user type whather admin or user.
	*  Example:  welcome('Admin', classObject)
	*  Return value: message.
	*/ 	
	public function welcome($user_type, $obj)
	{
		if($user_type=="")
			$this->general_error(self::INVALID_USER_TYPE);
			
		
		if(self::USER_TYPE==$user_type)
		{
			$result = $obj->getAnyTableWhereData($obj->getTableName(self::IP_TRACKING), " and  admin_id='".$_SESSION["sess_admin_id"]."' order by login_time  desc limit 1,1" );
			
				
			$str = '<div align="center" class="errorTxt">';
			$str .=	self::WELCOME_ADMIN_PANEL_MSG.'<br><br>';
			$str .=	self::LAST_VISITED.$this->show_formatted_date($result['login_time']);
			$str .=	'</div>';
		
			return $str;
					  
					  
		}
	
	}	// welcome function ends.
 
 
  /**
	*  This function is used for date formatting.
	*  @param 1: date
	*  Example:  show_formatted_date('2010-06-11')
	*  Return value: 11th June 2010 12:21:32
	*/ 
  
	public  function show_formatted_date($p_date)
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
	
	
	/**
	*  This function is used for alternate row.
	*  Return value: class name.
	*/
	
	public function alternate_row($tdrow,$tdClass1,$tdClass2)
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
	
	
	/**
	*  This function is used display custom error with line number
	*  
	*/
	
 public function general_error($msg)
	{
			echo $msg.self::SCRIPT_NAME.__FILE__.self::LINE_NUMBER.__LINE__;
			die;
	}
	
	
	
	/**
	*  This function is used generate hidden fields.
	*  
	*/
	
 public	function hidden_fields()
 {
 	
	if($_POST)
	$HTTP_POST_VARS = $_POST;
	
	if($_GET)
	$HTTP_POST_VARS = $_GET;
	
	if($_REQUEST)
	$HTTP_POST_VARS = $_REQUEST;
	
	
	if (!empty($HTTP_POST_VARS)) 
	{
		
		
		reset($HTTP_POST_VARS);
		
		$hflds = "";
		while (list($k,$v)=each($HTTP_POST_VARS)) 
		{
			   ${$k}=$v;
				if(is_array($v))
			{
					$v=implode(",",$v);
				$hflds .= '<input type="hidden" name="'.$k.'" value="'.htmlentities($v,ENT_QUOTES).'">';
			}
			else
			{
				$hflds .= '<input type="hidden" name="'.$k.'" value="'.htmlentities($v,ENT_QUOTES).'">';
			}
				
		}	
		return $hflds;
	}//end if hidden fields
 }
	
	
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
	
	
	
	/**
	*  Function to create paging dropdown list
	*  
	*/

public function printPagingDropDown($selID,$torRec)
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
	
	
	
	/**
	*  This function is used to change status(ie. activate and de-activate). 
	*  @param: table_name
	*  @param: status (either 0 or 1)
	*  @param: edit_key (primary key)
	*  @param: reference object to execute query.
	*  @param: optional.
	*  Exapmle: activate_deactivate('category', 1, '2' , $obj)
	*/
	public function activate_deactivate($table_name, $status, $edit_key , $obj, $opt='')
	{
		if($table_name=='')
			$this->general_error('Invalid table name!');
		
		$stRes=$obj->execute_query(" UPDATE $table_name SET status='$status' WHERE 1 AND id='$edit_key'");
		if($status==0)
			$msg=' Category de-activated successfully.';
		else
			$msg=' Category activated successfully.';
		
		return $msg;
	} // end of function
	
	/**
	*  This function is used for paging. 
	*  @param: total_recs = total no of records.
	*  @param: paging : page starts like 0, 10. 
	*  @param: page= page no. 
	* 
	*/
	
public function admin_paging($total_recs,$paging,$page)
{

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


}

 	function show_Date($date)
	{
		return date("m/d/Y",strtotime($date));
	}
	
	function getcurGmmktime()
	{
	    date_default_timezone_set('GMT');
   		$gmmtime = gmmktime(date('H',time())+5,date('i',time())+30,date('s',time()),date('m',time()),date('j',time()),date('Y',time())) ;
		return $gmmtime ;
	}
	function getGmmkFormateddt($gmmtime)
	{
	    return date('M j Y',$gmmtime). ' at '. date('h:i a',$gmmtime)  ;
	}
	/*
	   Created Date : 29 jul 2011
	   Use : This function return the time ago
	   
	*/
	function TimeAgo($datefrom,$dateto=-1)
	{
		if($datefrom<=0) { return "A long time ago"; }
		if($dateto==-1) { $dateto = time(); }
		$difference = $dateto - $datefrom;
		if($difference < 60)
		{
			$interval = "s";
		}
		elseif($difference >= 60 && $difference<60*60)
		{
			$interval = "n";
		}
		elseif($difference >= 60*60 && $difference<60*60*24)
		{
			$interval = "h";
		}
		elseif($difference >= 60*60*24 && $difference<60*60*24*7)
		{
			$interval = "d";
		}
		elseif($difference >= 60*60*24*7 && $difference <
		60*60*24*30)
		{
			$interval = "ww";
		}
		elseif($difference >= 60*60*24*30 && $difference <
		60*60*24*365)
		{
			$interval = "m";
		}
		elseif($difference >= 60*60*24*365)
		{
			$interval = "y";
		}
		switch($interval)
		{
			case "m":
				$months_difference = floor($difference / 60 / 60 / 24 / 29);
				while (mktime(date("H", $datefrom), date("i", $datefrom),
					date("s", $datefrom), date("n", $datefrom)+($months_difference),
					date("j", $dateto), date("Y", $datefrom)) < $dateto)
				{
					$months_difference++;
				}
				$datediff = $months_difference;
				if($datediff==12)
				{
					$datediff--;
				}
				$res = ($datediff==1) ? "$datediff month ago" : "$datediff months ago";
				break;
				
				case "y":
				$datediff = floor($difference / 60 / 60 / 24 / 365);
				$res = ($datediff==1) ? "$datediff year ago" : "$datediff
				years ago";
				break;
				
				case "d":
				$datediff = floor($difference / 60 / 60 / 24);
				$res = ($datediff==1) ? "$datediff day ago" : "$datediff
				days ago";
				break;
				
				case "ww":
				$datediff = floor($difference / 60 / 60 / 24 / 7);
				$res = ($datediff==1) ? "$datediff week ago" : "$datediff
				weeks ago";
				break;
				
				case "h":
				$datediff = floor($difference / 60 / 60);
				$res = ($datediff==1) ? "$datediff hour ago" : "$datediff
				hours ago";
				break;
				
				case "n":
				$datediff = floor($difference / 60);
				$res = ($datediff==1) ? "$datediff minute ago" :
				"$datediff minutes ago";
				break;
				
				case "s":
				$datediff = $difference;
				$res = ($datediff==1) ? "$datediff second ago" :
				"$datediff seconds ago";
				break;
			}
			return $res;
	}
    function getYoutubeId($url)
	{
	   
		preg_match(
        '/[\\?\\&]v=([^\\?\\&]+)/',
        $url,
        $matches
    	);
        return $matches[1] ;
		
	}
	
}
?>