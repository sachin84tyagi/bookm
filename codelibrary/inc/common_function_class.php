<?php

class common_function_class
{
  public function date_formate($date, $default_date='')
  {
	  	if($default_date!="")
		{
			$timestamp = strtotime($date);
			return date("d/m/Y",$timestamp);
		}
		else
		{
			$timestamp = strtotime($date);
			return date("M d, Y",$timestamp);
		}
  }
  
  
  
}
?>