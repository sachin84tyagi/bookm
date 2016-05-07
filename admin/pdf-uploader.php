<?php
/*-------------------------------------------
| Created By: Raj Deo
| Date: 19-07-2011
| Description: This script is used to upload  image.
--------------------------------------------*/
session_start();
include_once("../codelibrary/inc/variables.php"); 
 //creating database objet
$obj= new database_class();
?>
<html>
<body>
<link href="../css/lightbox.css" rel="stylesheet" type="text/css" />
<?php  
if($_POST["user_action"]=='upload_front_img')
 {  
         $res = $obj->my_query("select * from temp_pdf where user_id = '".$_SESSION["sess_admin_id"]."'") ;
         $imageCount = mysql_num_rows($res) ;
		 if($_FILES['front_image']['type'] != "application/pdf" )
		 {
		     $imageError = "Error! invalid pdf file " ;
		 }
		 else if($_FILES['front_image']['error'] != 0 ) {
		     $imageError = "Error ! Can't upload this images " ;
		 }
		 else if( (($_FILES['front_image']['size'] / 1024 ) ) / 1024  > 1 )
		 {
		     $imageError = "Error! you can't upload more than 100KB " ;
		 }
		 else if($imageCount < 1)
		 {
			 echo "<p id='loadig'><img src='images/loading.gif' border='0'></p>";	
			 $img_obj = new create_image;		 
			 $image_to_upload = time().'_'.basename($_FILES['front_image']['name']);
			 $path = 'productspdf/';
			 chmod($path,0644) ;
			 $target_path = $path.$image_to_upload;		
			 if(move_uploaded_file($_FILES['front_image']['tmp_name'], $target_path))
			 {  
			   
				$target_path_thumb  =  $path."pdf_".$image_to_upload;
				$qry = "insert into temp_pdf set user_id = '".$_SESSION["sess_admin_id"]."' ,  pdf_name = 'productspdf/".$image_to_upload."' " ; 
				$obj->my_query($qry) ;
				
			}
			$imageError = "" ;
	  	}
	  	else {
		   $imageError = "Error! you can't upload more than 1 pdf for a product" ;
	 	 }
?>
<script>
document.getElementById("loadig").style.display='none';
</script>
<?php		
 }
 else if($_POST["user_action"]=='remove_front_img')
  { 
		$res = $obj->getAnyTableWhereData($obj->getTable("var_temp_pdf"), " and user_id = '".$_SESSION["sess_admin_id"]."' ") ;
		$obj->my_query("delete from temp_pdf where user_id = '".$_SESSION["sess_admin_id"]."' ") ;
		unlink($res['pdf_name']);
		
  }
echo '<div class="placeholder">' ;
$res = $obj->my_query("select * from temp_pdf where user_id = '".$_SESSION["sess_admin_id"]."'") ;
$placeHolderCount = 1 ;
if(mysql_num_rows($res) > 0)
{
	while($pimg = mysql_fetch_array($res))
	{
		echo '<span><a href="'.$pimg['pdf_name'].'"  target="_blanck" ><img src="images/pdf-icon.jpg"></a></span>';
		echo '<a href="javascript:;" onclick="remove_pdf();" ><img src="images/remove.png"></a>';
		$placeHolderCount-- ;
	}
		
?>
<?php
}
?>
<?php if($placeHolderCount > 0) {
      while($placeHolderCount > 0 ) 
	  {
?>
<span>&nbsp;</span>
<?php $placeHolderCount-- ; } } ?>
</div>
<form name="frontImgFrm" action="pdf-uploader.php" enctype="multipart/form-data" method="post" style="font:11px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#414141;">
<div style="height:22px; clear:both; padding-top:12px;" >Select an image file on your computer (1MB max):</div>
<strong style="color:#2b7894; font-weight:normal; font-size:13px;">Add PDF:</strong> <input type="file" name="front_image" id="front_image" onChange="upload_pdf();">
<input type="hidden" name="user_action" id="user_action" value="" >&nbsp;<span style="color:#F00"><?php echo $imageError ; ?></span>
</form>
</body>
</html>
<script language="javascript" >
function upload_pdf()
{
	document.getElementById("user_action").value = "upload_front_img" ;
	document.frontImgFrm.submit();	
}
function remove_pdf()
{
	if(confirm("Are you sure to delete product pdf?"))
	{
		document.getElementById("user_action").value = "remove_front_img" ;
		document.frontImgFrm.submit();	
	}	
}
</script>	