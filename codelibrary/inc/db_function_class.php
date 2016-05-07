<?php
/*
Created By       : Raj 
Created On       : 11-Aug-2011
Description      : This class contains the functions used in database_class.php.
*/

class DB_FUNCTION
{
	function removeQuotes($strToChange)
	{
		if (!get_magic_quotes_gpc()) {
			$strToChange=str_replace("'","&#39;",$strToChange);
			$strToChange=str_replace("\"","&quot;",$strToChange);
			$strToChange=str_replace("\\","&#92;",$strToChange);
			return $strToChange;
		}
		else
		return $strToChange;
	}
	
	function showQuotes($strToChange)
	{
			$strToChange=str_replace("'","&#39;",$strToChange);
			$strToChange=str_replace("\"","&quot;",$strToChange);
			$strToChange=str_replace("\\","&#92;",$strToChange);
			return $strToChange;
		
	}
	



	// used to display time of video
	function getVideoTime($vTime){
		return substr( $vTime,3,strlen($vTime) );
	} 

	// used to display time of video
	function getformatedDateOnly($vday){
		$dt_arr = explode(" ", $vday);
		$date_arr = explode("-", $dt_arr[0]);
		$time_arr = explode(":", $dt_arr[1]);
		return date('m/d/Y', mktime($time_arr[0],$time_arr[1],$time_arr[2],$date_arr[1],$date_arr[2],$date_arr[0]));
	} 
	

	// function convert character encoding
	function encode($data,$encoding="UTF-8")
	{
	 if(!empty($data))
	 {
	  return mb_convert_encoding($data,$encoding);
	 }
	 else
	 {
	  return $data;
	 }
  } // eof functio
	// function convert character encoding
	function store_encode($data)
	{
	 if(!empty($data))
	 {
		return mb_convert_encoding($data,"HTML-ENTITIES","auto"); 
		//return iconv("ISO-8859-1", "UTF-8", $data);
	 }
	 else
	 {
	  return $data;
	 }
	}	


	 // Mohan Kumar
// 28-Dec-2007
// this function is used to format the numbers in 2 decimal places with , after thosand
function text_limit($text,$len="")
{
		$text = nl2br($text);
//		$text=str_replace(array('<!--', '-->'), array('&lt;!--', '--&gt;'), $text);
		$text = strip_tags($text);
		$words = explode("<br />", $text,2);
		
		$text = $words[0];
		if($len == "")
		{
			$count_chars = 22;
		}
		else
		{
			$count_chars = $len;
		}
		if(strlen($text)>$count_chars)
		{
				$str_new=substr($text,0,$count_chars);
				// added by Mohan Kumar on 14-Mar-2008
				// checking for special characters and checking last 5 characters for & 
				for($l=1;$l<=5;$l++)
				{
					if(substr($str_new, -$l, 1)=='&')
					{
						$strt = $count_chars-1;
						while($ch!=';'  && $strt<strlen($text))
						{
							$strt++;
							$ch= substr($text,$strt,1);
							$remainingText.=$ch;
						}
						break;
					} 
					//$str_new.="...";
				}
				$str_new.=$remainingText;
				if(strlen($str_new)<strlen($text))
					return $str_new."...";
				else
					return $str_new;
		}
		else
		{
				return $text;
		}
} // eof function

	function format_date($date)
	{
		return date("M j, Y",strtotime($date));
	}



}
?>