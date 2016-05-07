<?php
/*-------------------------------------------
| Created By: Raj Deo
| Date: 23-06-2011
| Description: This script is used to upload  user image.
--------------------------------------------*/
session_start();
include_once("../codelibrary/inc/variables.php"); 
 
?>
<html>
<body>
<?php  
if($_POST["upload_user_img"]=='upload_user_img')
 {  
         echo "<p id='loadig'><img src='images/loading.gif' border='0'></p>";	
		 $photo_to_upload = time().'_'.basename($_FILES['photo']['name']);
		 $path = '../userprofile/';
		 $target_path = $path.$photo_to_upload;		
		 if(move_uploaded_file($_FILES['photo']['tmp_name'], $target_path))
         {  
              $_SESSION["SESSION_USER_IMAGE"] = $target_path ;
		 }
?>
<script>
document.getElementById("loadig").style.display='none';
</script>
<?php		
		
}
if($_SESSION["SESSION_USER_IMAGE"]!="")
{
	
	if(file_exists($_SESSION["SESSION_USER_IMAGE"]))
		echo "<img src='".$_SESSION["SESSION_USER_IMAGE"]."'>";
		
		$img_dimensions = getimagesize($_SESSION["SESSION_USER_IMAGE"]);
		$img_width = $img_dimensions["0"];
		$img_height = $img_dimensions["1"];
?>

<script>
parent.document.getElementById("user_img").value= "user_image";
parent.user_img('<?php echo $img_width;?>','<?php echo $img_height;?>');
</script>
<?php
}
else
{
?><form name="userImgFrm" action="upload-user-photo.php" enctype="multipart/form-data" method="post">
<input type="file" name="photo" id="photo" onChange="upload_img();">
<input type="hidden" name="upload_user_img" id="upload_user_img" value="upload_user_img" >
</form>
<?php
}
?>
</body>
</html>
<script>
function upload_img()
{
	document.userImgFrm.submit();	
}
</script>	