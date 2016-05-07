<?php
session_start();
if($_SESSION["sess_admin_id"]=="")
{
	session_destroy();
	header("location: index.php");
}
?>