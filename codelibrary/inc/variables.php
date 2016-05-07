<?php

/*_______________________________________________________________________
Created By	: Raj Deo
Created On	: 23-June-2008
Modified By : 23-June-2011
Modified On : 
Description : This file consists all the config varibales and settings used in the site
_________________________________________________________________________
*/
@session_start();
/****************  Error Handling Code starts *******************************************/
define ("FATAL","E_USER_ERROR");
define ("ERROR","E_USER_WARNING");
define ("WARNING","E_USER_NOTICE");
error_reporting(1);
ini_set('display_errors', 1);
/****************  Error Handling Code starts *******************************************/
/****************  Following code will be for the Cross Site Scripting Starts **************/
if (!empty($_POST)) {
	reset($_POST);
	while (list($k,$v)=each($_POST)) {
	if(!is_array($_POST{$k}))
		$_POST{$k}=htmlentities($v,ENT_QUOTES);
	}	
}
if (!empty($_GET)) {
	reset($_GET);
	while (list($k,$v)=each($_GET)) 
	{
		if(!is_array($_GET{$k}))
			$_GET{$k}=htmlentities($v,ENT_QUOTES);
	}	
}
if (!empty($_REQUEST)) {
	reset($_REQUEST);
	while (list($k,$v)=each($_REQUEST)) 
	{
		if(!is_array($_REQUEST{$k}))
			$_REQUEST{$k}=htmlentities($v,ENT_QUOTES);
	}	
}
/**************** code for will be for the Cross Site Scripting ends **************
/****************  Some commn settings starts *********************************************/
define("ROOT_FOLDER","/bookmitr/") ;
define("DOCUMENTROOT",$_SERVER['DOCUMENT_ROOT']."/phpxpert".ROOT_FOLDER);
/* echo DOCUMENTROOT;
 echo "<pre>";
echo print_r($_SERVER);
echo "</pre>"; */ 
$name_arr = explode("/",$_SERVER["SCRIPT_FILENAME"]);
if(in_array("admin",$name_arr)==true)
{
	define("PATH","../");
	define("FOLDER_PATH",PATH."codelibrary/inc/");
}
else
{
	define("PATH","");
	define("FOLDER_PATH","codelibrary/inc/");
}
define("IMAGE_PATH", "images/");
define("ADMIN_IMAGE_PATH", "images/");
define("SITE_TITLE","BookMitra");
define("SITE_ADMIN_TITLE","BookMitra Administration");
$year = date("Y");
define("SITE_COPY_RIGHT",$year ." BookMitra All rights Reserved.");

$domainName = "bookmitra.com";
$site_url="http://".$_SERVER['HTTP_HOST']."/";
$site_root_folder = "bookmitr/" ;
$secure_url="";//"https://".$_SERVER['HTTP_HOST']."/admin_initial/";

$s_path=$site_url;
$imageTitle = "bookmitra.com";
$AdminEmail = "admin@admin.com";
/****************  Some commn settings starts ***********************************************/
/****************   Mail Setting Variables starts *******************************************/
$SiteLink = $site_url;
$SiteName = "http://dev2.ferohost.com/profine/index.php";
define("MAIL_SITE_NAME","bookmitra.com");

/****************   Mail Setting Variables starts *******************************************/
###################### SITE CONFIGURATION ENDS      ########################################
###################### GLOBAL VARIABLES ####################################################

define("PAGING_SIZE",30);
define("EVEN_PAGING_SIZE",30);
define("TOTAL_RATING_SIZE",1);

/******************** Different Status used in the site **************************************/
$GL_active=1;
$GL_not_active=0; //deactive status
/******************** Different Status used in the site **************************************/

		
$tdClass1="evenRow";   // Class name of style sheet for listing page
$tdClass2="oddRow";	// Class name of style sheet for listing page

$frmtdClass1="evenRow";   // Class name of style sheet for listing page
$frmtdClass2="oddRow";	// Class name of style sheet for listing page

$frmtdClassExt1="evenRowext";   // Class name of style sheet for listing page extra for admin
$frmtdClassExt2="oddRowext";	// Class name of style sheet for listing page extra for admin


$tdManageClass1="listingManageBg2";	// Class name of style sheet for listing page
$tdManageClass2="listingManageBlueBg1";   // Class name of style sheet for listing page

$tdManageClassSep1="manage_listingWht_Sep.gif";	// Class name of style sheet for listing page
$tdManageClassSep2="manage_listingBlue_Sep.gif";   // Class name of style sheet for listing page

		

/**************************  Activate/Deavtivate Image variables **************************/
$ad_active_image="<img src=\"".ADMIN_IMAGE_PATH."active.gif\">";
$ad_deactive_image="<img src=\"".ADMIN_IMAGE_PATH."deactive.gif\">";
$imageUrl=$site_url.IMAGE_PATH."/"; // images URL
/**************************  Activate/Deavtivate Image variables **************************/
$ext = "../";


//$AdminEmail = "admin@sitename.com";

/***********************   General settings variables   **********************************/
/******************************  Array Section Start       ******************************/
//user paging dropdown array
$arr_user_paging[5]="5 Per Page";
$arr_user_paging[10]="10 Per Page";
$arr_user_paging[15]="15 Per Page";
$arr_user_paging[20]="20 Per Page";
$arr_user_paging[50]="20 Per Page";
/* ---------------  Array Section Start--------------------------------------------*/

//error message/message array
$arr_error_msg=Array();
$arr_error_msg[0]="Error on saving data.";
$arr_error_msg[1]="Invalid Username/Password.";
$arr_error_msg[2]="This email address already exists for other user";
$arr_error_msg[3]="Invalid old password.";
$arr_error_msg[4]="Invalid E-mail address.";


//confirmation message array
$arr_con_msg=Array();
$arr_con_msg[0]="";
$arr_con_msg[1]="You have been logout successfully.";
$arr_con_msg[2]="Email address changed successfully.";
$arr_con_msg[3]="Password has been changed Successfully.";
$arr_con_msg[4]="Category has been added successfully.";
$arr_con_msg[5]="Category has been updated successfully.";
// salutation
$paging = 10;              //10 by default 
$user_paging = 5;              //5 by default
$admin_paging = 30;              //5 by default
$fifty_records_paging = 50;

$GL_salutation = array("Mr.","Mrs","Ms");
$GL_default_date_format = 'd/m/Y';
$GL_access_level = array("admin","user");
$GL_adminEmail = "raj.ferotech@yahoo.com";
$GL_user_paging     = 30;
$GL_product_paging  = 30 ;
$GL_category_paging = 30 ;
$GL_date_format = "d-m-Y"; 

// Global Property type
$GL_user[1] = "Dealer" ;
$GL_user[2] = "User" ;
function __autoload($class_name) {
	//echo FOLDER_PATH.strtolower($class_name).'.php';
   require_once FOLDER_PATH.strtolower($class_name).'.php';
}
?>