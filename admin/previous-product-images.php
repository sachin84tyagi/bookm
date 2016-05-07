<?php
session_start();
include_once("../codelibrary/inc/variables.php"); 
//creating database objet
$db          = new database_class();
$product_id  = $_POST['product_id'] ;
$images_id   = $_POST['images_id'] ;
if($images_id != "" ) {
  $imageRec = $db->my_query("select image_name from profine_product_images where id = '$images_id' ") ;
  if(mysql_num_rows($imageRec) > 0 ) {
     $imageData = mysql_fetch_array($imageRec) ;
	 if(file_exists(''.$imageData['image_name'])) {
		 $originImage = str_replace("thumb_","",$imageData['image_name']) ;
		 $smallImage = str_replace("thumb","small",$imageData['image_name']) ;
		 $dispImage = str_replace("thumb","disp",$imageData['image_name']) ;
		 unlink(''.$imageData['image_name']) ;
		 unlink(''.$dispImage) ;
		 unlink(''.$smallImage) ;
		 unlink(''.$originImage) ;
     }
  }
  $db->my_query("delete from profine_product_images where id = '$images_id' ") ;
  $dispImage = str_replace("thumb_","",$images_name) ;
  $smallImage = str_replace("thumb","small",$dispImage) ;
  
}
$qry = "select * from profine_product_images where product_id = '$product_id' " ;
$imageRec = $db->my_query($qry) ;
if(mysql_num_rows($imageRec) > 0 ) {
  while($imageData = mysql_fetch_array($imageRec)) 
  { 
	 $dispImage = str_replace("thumb_","",$imageData['image_name']) ;
	 $smallImage = str_replace("thumb","small",$imageData['image_name']) ;
	 
	 
  ?>
	  <img src="<?php echo $smallImage ?>" width="94" height="64" alt="" />
	 <a href="javascript:;" onclick="DeleteproductImages('<?php echo $product_id ?>' , '<?php echo $imageData['id'] ?>'); " title="Delete Post"><img src="images/remove.png" alt="Delete Product" /></a>
     
     
 <?php 
  }
}
else {
  echo '<p style="color:#F00" >No Product Images</p>' ;

}
?>

