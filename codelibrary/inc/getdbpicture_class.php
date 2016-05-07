<?php
 /*
    Auther Name : Raj Singh
	Create Date : 26 Sep 2011
	Modify Date :
 */
die ;
require_once(PATH."codelibrary/inc/database_class.php");
 require_once(PATH."codelibrary/inc/common_function.php");
 class getdb_picture extends database_class
 {
	
	function public get_picture($id)
	{
	   
		echo $query = "select photo,photo_type from "" where id = '$id' ";
		die ;
		//execute the query
		$result = $this->my_query($query);
		//get the picture data which will be binary
		$data = @mysql_result($result,0,"photo");
		//get the picture type. It will change according to file extension it may be either gif or jpg
		$type = @mysql_result($result,0,"photo_type");
		//send the header of the picture we are going to send
		header( "Content-type: $type");
		//send the binary data
		echo $data;
	}
	
 }
 $obj_pic = new getdb_picture() ;
 $obj_pic->get_picture($_REQUEST['id']) ;
 
?>