<?php
/*-------------------------------------------
| Created By: Raj Deo
| Date: 19-07-2011
| Description: This script is used to upload  image.
--------------------------------------------*/
session_start();
include_once("../codelibrary/inc/variables.php"); 
 //creating database objet
 //$obj= new database_class();
?>
<html>
<body>
<?php  
if($_POST["upload_front_img"]=='upload_front_img')
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
		    $_SESSION["SESSION_FRONT_IMAGE"] = $target_path_thumb;
		  
        }
?>
<script>
document.getElementById("loadig").style.display='none';
</script>
<?php		
		
}
//$_SESSION["SESSION_FRONT_IMAGE"]='';
if($_SESSION["SESSION_FRONT_IMAGE"]!="")
{
	
	if(file_exists($_SESSION["SESSION_FRONT_IMAGE"]))
		echo "<img src='".$_SESSION["SESSION_FRONT_IMAGE"]."'>";
		
		$img_dimensions = getimagesize($_SESSION["SESSION_FRONT_IMAGE"]);
		$img_width = $img_dimensions["0"];
		$img_height = $img_dimensions["1"];
?>

<script>
parent.document.getElementById("front_img").value= "front_image";
parent.front_img('<?php echo $img_width;?>','<?php echo $img_height;?>');
</script>
<?php
}
else
{
?><form name="frontImgFrm" action="front-image.php" enctype="multipart/form-data" method="post">
<input type="file" name="front_image" id="front_image" onChange="upload_img();">
<input type="hidden" name="upload_front_img" id="upload_front_img" value="upload_front_img" >
</form>
<?php
}
?>
</body>
</html>
<script>
function upload_img()
{
	document.frontImgFrm.submit();	
}
</script>	