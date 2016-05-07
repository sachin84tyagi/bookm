<?php
include('../codelibrary/inc/variables.php');
  include_once("codelibrary/inc/variables.php") ;
 //global $session_exists ;
 //global $access_denide ;
 $db    = new database_class() ;
 $imageRec = $db->my_query("select image_name from temp_img where user_id = '".$_SESSION['admin_sess_user_id']."' ") ;
 if(mysql_num_rows($imageRec) > 0 ) {
	 while($imageData = mysql_fetch_array($imageRec))
	 {
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
}
$db->my_query("delete from temp_img where user_id = '".$_SESSION['admin_sess_user_id']."' ") ;
$db->my_query("delete from temp_video where user_id = '".$_SESSION['admin_sess_user_id']."' ") ;
unset($_SESSION["SESSION_USER_NAME"]);
unset($_SESSION['admin_sess_user_id']) ;
session_destroy();
$hdn_fields .='<input type=hidden name="msg" value="You have been logged out successfully!">';
echo "<html><body>";
echo '<form name="subFrm" action="index.php" method="POST">';
echo $hdn_fields;
echo '</form>';
echo '<script language="javascript">document.subFrm.submit();</script>';
echo "</body></html>";
?>