<?php
include('codelibrary/inc/variables.php'); 
if($_POST["user_name"]!="" && $_POST["password"]!="")
{       
	 $obj = new login_class(); //creating object. 
	 try{		
		if($obj->user_login(trim($_POST['user_name']), trim($_POST['password'])))
		{
			$field_value="";
			$action="dashboard.php";
		}	
		 else
		 {
		   
			$field_value="Invalid username/password!";
			$action="index.php";
		 }
			
	  }
	  catch(Exception $e)
	  {		
		$field_value = $e->getMessage();
		$action="index.php";
	 }
	  
	  
}
else
{
	
	$field_value="Invalid access!";
	$action="index.php";
}
$hflds ='<input type=hidden name="msg" value="'.$field_value.'">';
echo "<html><body>";
echo '<form name="subFrm" action="'.$action.'" method="POST">';
echo $hflds;
echo '</form>';
echo '<script language="javascript">document.subFrm.submit();</script>';
echo "</body></html>";
?>

