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
$fun_obj = new common_function ;
?>
<html>
<body>
<link href="../css/lightbox.css" rel="stylesheet" type="text/css" />
<?php  
if($_POST["submit" ]== 'Upload')
 {  
         $res = $obj->my_query("select * from temp_video where user_id = '".$_SESSION["admin_sess_user_id"]."'") ;
		 $videoCount = mysql_num_rows($res) ;
         if($videoCount < 3 )
		 {
			 echo "<p id='loadig'><img src='images/loading.gif' border='0'></p>";	
			 $code = $fun_obj->getYoutubeId($_POST['youtube_url']) ;
			 if($code != "" )
			 {
				$qry = "insert into temp_video set user_id = '".$_SESSION["admin_sess_user_id"]."' , video_name='".$code."'" ;
				$obj->my_query($qry) ;
			 }
			 $videoError = "" ;
		 }
		 else {
		    $videoError = "Error! you can't upload more than 3 video at the same time" ;
		 }
		
?>
<script>
document.getElementById("loadig").style.display='none';
</script>
<?php		
 }
 echo '<div style="z-index:500; display:block; border-top:1px solid #c4d1d5; padding-top:5px;">
' ;
 echo '<div class="video_holder">' ;
 $placeHolderCount = 3 ;
$res = $obj->my_query("select * from temp_video where user_id = '".$_SESSION["admin_sess_user_id"]."'") ; 
if(mysql_num_rows($res) > 0)
{
	while($pvideo = mysql_fetch_array($res))
	{
		     
?>
<span><object width="130" height="130" data="http://www.youtube.com/v/<?php echo $pvideo['video_name'] ; ?>" type="application/x-shockwave-flash">
<param name="src" value="http://www.youtube.com/v/<?php echo $pvideo['video_name'] ; ?>" />
</object>
</span>
<?php $placeHolderCount-- ; } } ?>
<script>
//parent.document.getElementById("front_video").value= "front_video";
//parent.front_video('250','250');
</script>
<?php if($placeHolderCount > 0) {
      while($placeHolderCount > 0 ) 
	  {
?>
<span>&nbsp;</span>
<?php $placeHolderCount-- ; } } ?>
</div>
<form name="frontImgFrm" action="video-uploader.php" enctype="multipart/form-data" method="post" style="font:11px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#414141; width:45%; float:left;">
<div style="height:37px; padding-top:12px;">Insert youtube code:<br>
<small style="font-size:10px;">e.g. http://www.youtube.com/watch?v=Q4VS8PqOsk4</small></div>
<strong style="color:#2b7894; font-weight:normal; font-size:13px; vertical-align:top">Add Video: </strong>
 <textarea name="youtube_url" id="youtube_url" ></textarea> <br >
<input type="hidden" name="upload_video" id="upload_video" value="upload_video" >
<input type="submit" name="submit" value="Upload" style="margin:5px 0 0 75px;" >&nbsp;<span style="color:#F00"><?php echo $videoError ; ?></span>
</form>
<div style="font:11px 'Lucida Sans Unicode', 'Lucida Grande', sans-serif; color:#414141; width:52%; float:left; padding-top:12px;">
<strong style="padding-left:6px;">Instructions to upload video</strong>
<ul>
	<li>Sign in with your google account on
      <a href="http://upload.youtube.com/my_videos_upload" style="color:#1a718d; text-decoration:none">http://upload.youtube.com/my_videos_upload</a></li>
<li>Upload video with general settings and save it</li>
<li>They will provide you a link</li>
<li>Add that link on our website</li>
</ul>    
</div>
</div>
</body>
</html>
<script>
function upload_img()
{
	document.frontImgFrm.submit();	
}
</script>	