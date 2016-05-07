<?php
include('../codelibrary/inc/variables.php'); 
include("session.php");
$obj= new database_class();	
?>
<?php
	if($_REQUEST['id']) 
	{
		$query  = "select  photo , photo_type  from  ".$obj->getTable('var_user')." where id = '".$_REQUEST['id']."' ";
		$result = $obj->my_query($query);
		$data   =  @mysql_result($result,0,"photo");
		$type   =  @mysql_result($result,0,"photo_type");
		//send the header of the picture we are going to send
		header( "Content-type: $type");
		//send the binary data
		echo $data;
	};
?>