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
         $res = $obj->my_query("select * from temp_img where user_id = '".$_SESSION["sess_admin_id"]."'") ;
         $imageCount = mysql_num_rows($res) ;
		 if($_FILES['front_image']['type'] != "image/jpeg" && $_FILES['front_image']['type'] != "image/jpg" && $_FILES['front_image']['type'] != "image/png" && $_FILES['front_image']['type'] != "image/gif" )
		 {
		     $imageError = "Error! invalid file " ;
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
			 $path = 'products/';
			 chmod($path,777) ;
			 $target_path = $path.$image_to_upload;		
			 if(move_uploaded_file($_FILES['front_image']['tmp_name'], $target_path))
			 {  
			 
				$target_path_thumb  =  $path."thumb_".$image_to_upload;
				$img_obj->resizeImage($target_path,"180",'180',$target_path_thumb);
				$disp_img  =  $path."disp_".$image_to_upload;
				$img_obj->resizeImage($target_path,"214",'298',$disp_img); 
				$disp_img  =  $path."small_".$image_to_upload;
				$img_obj->resizeImage($target_path,"94",'64',$disp_img);
				// array_push($_SESSION["SESSION_FRONT_IMAGE"]['img'],$target_path_thumb ) ;
				$qry = "insert into temp_img set user_id = '".$_SESSION["sess_admin_id"]."' , image_name = 'products/thumb_".$image_to_upload."'" ;
				$obj->my_query($qry) ;
				
			}
			$imageError = "" ;
	    }
		else {
		   $imageError = "Error! you can't upload more than 1 images for a product" ;
		}
?>
<script>
document.getElementById("loadig").style.display='none';
</script>
<?php		
 }
 else if($_POST["user_action"]=='remove_front_img')
  { 
		$res = $obj->getAnyTableWhereData($obj->getTable("var_temp_img"), " and user_id = '".$_SESSION["sess_admin_id"]."' ") ;
		$obj->my_query("delete from temp_img where user_id = '".$_SESSION["sess_admin_id"]."' ") ;
		$disp_img   = str_replace("thumb","disp",$res['image_name']) ;
		$small_img  = str_replace("thumb","small",$res['image_name']) ;
		$origin_img = str_replace("thumb_","",$res['image_name']) ; 
		if(file_exists($res['image_name'])) { unlink($res['image_name']); }
		if(file_exists($disp_img)) { unlink($disp_img); }
		if(file_exists($small_img)) { unlink($small_img); }
		if(file_exists($origin_img)) { unlink($origin_img); }
  }
echo '<div class="placeholder">' ;
$res = $obj->my_query("select * from temp_img where user_id = '".$_SESSION["sess_admin_id"]."'") ;
$placeHolderCount = 1 ;
if(mysql_num_rows($res) > 0)
{
	while($pimg = mysql_fetch_array($res))
	{
		  if(file_exists("".$pimg['image_name']) )
		  {
			  
			  echo "<span><img src='".str_replace('thumb','small',$pimg['image_name'])."'></span>";
			  echo '<a href="javascript:;" onclick="remove_img();" ><img src="images/remove.png"></a>';
		  }
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
<form name="frontImgFrm" action="image-uploader.php" enctype="multipart/form-data" method="post" style="font:11px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#414141;">
<div style="height:22px; clear:both; padding-top:12px;" >Select an image file on your computer (1MB max):</div>
<strong style="color:#2b7894; font-weight:normal; font-size:13px;">Add Image:</strong> <input type="file" name="front_image" id="front_image" onChange="upload_img();">
<input type="hidden" name="user_action" id="user_action" value="" >&nbsp;<span style="color:#F00"><?php echo $imageError ; ?></span>
</form>
</body>
</html>
<script>
function upload_img()
{
	document.getElementById("user_action").value = "upload_front_img" ;
	document.frontImgFrm.submit();	
}
function remove_img()
{
	if(confirm("Are you sure to delete product?"))
	{
		document.getElementById("user_action").value = "remove_front_img" ;
		document.frontImgFrm.submit();	
	}
}
</script>	