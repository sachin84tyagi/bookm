<?php
session_start();
include_once("../codelibrary/inc/variables.php"); 
 //creating database objet
$db          = new database_class();
$property_id = $_POST['property_id'] ;
$video_id   = $_POST['video_id'] ;
$db->my_query("delete from flat_property_video where id = '$video_id' ") ;

$qry = "select * from flat_property_video where property_id = '$property_id' " ;
$videoRec = $db->my_query($qry) ;
if(mysql_num_rows($videoRec) > 0 ) {
  while($videoData = mysql_fetch_array($videoRec)) 
  { 
?>
 <object width="130" height="130" data="http://www.youtube.com/v/<?php echo $videoData['video_name'] ; ?>" type="application/x-shockwave-flash">
<param name="src" value="http://www.youtube.com/v/<?php echo $videoData['video_name'] ; ?>" />
</object>
<a href="javascript:void(0);" onClick="DeletePropertyVideo('<?php echo $property_id ?>','<?php echo $videoData['id'] ?>') ;" title="Delete Post"><img src="images/remove_old.png" alt="Delete Post" /></a>
 <?php 
  }
}
else {
  echo '<p style="color:#F00" >No Property Video</p>' ;
}
?>