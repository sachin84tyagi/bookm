<?php
/*_______________________________________________________________________
Created By	: Raj Deo
Created On	: 23 June 2011
Modified By : 
Modified On : 
Description : This class is a common class and used for admin login, user login , change password.
_________________________________________________________________________
*/
require_once(PATH."codelibrary/inc/database_class.php");
require_once(PATH."codelibrary/inc/common_function.php");
class login_class extends database_class
{
	
	// constants variables
	 const INVALID_USER_NAME_PASWORD = 'Invalid Username/Password!';
	 // tables name.
	 const ADMIN_LOGIN = 'var_admin_login_table';
	  const USER_LOGIN = 'var_user';
	 const IP_TRACKING = 'var_admin_ip_tracking';
	
	 var $obj_common_func; 
	
	
	function __construct()
	{
		$this->obj_common_func = new common_function;
	}
	/**
	* This function is used admin login. 
	* @param: user name. 
	* @param: Password. 
	* return value: inserted record id from IP table.
	*/	
	
	public function admin_login($user_name, $password)
	{
		
		if($user_name=="" || $password=="") {
			$this->obj_common_func->error_handler(self::INVALID_USER_NAME_PASWORD);			
		}
	    // prevent sql injection.
		$user_name = $this->obj_common_func->sqlInjectionCheck($user_name, $this->db_connect()); 
		$password  = $this->obj_common_func->sqlInjectionCheck($password, $this->db_connect());  
		$result    = $this->getAnyTableWhereData($this->getTable(self::ADMIN_LOGIN), " and username='".$user_name."' and password='".$password."'" );
		if($result == false)
		{
			return false ;
		}
		else
		{   
		   /*  session_register("sess_admin_name");
			session_register("sess_admin_id");
			session_register("sess_access_level"); */
			
			$_SESSION["SESSION_USER_NAME"] = ucfirst($result["first_name"])."&nbsp;".ucfirst($result["lname_name"]);
			$_SESSION["sess_admin_name"]   = $result['username'];
			$_SESSION["sess_admin_id"]     = $result['id'];
			$_SESSION["sess_email_id"]     = $result['email'];
			//$_SESSION["sess_access_level"]=$result['access_level'];
			$_POST["login_time"]=date("Y-m-d h:i:s");
			$_POST["ip"] = $_SERVER['REMOTE_ADDR'];
			$_POST["admin_id"] = $result['id'];
			$this->insertData($this->getTable(self::IP_TRACKING)); 
			return true ;
						
		}
		
	}
	function user_login($user_name,$password)
	{
	   // udsgsdgudsug    
	   if($user_name=="" || $password=="") {
			$this->obj_common_func->error_handler(self::INVALID_USER_NAME_PASWORD);			
		}
	    // prevent sql injection.
		 $user_name = $this->obj_common_func->sqlInjectionCheck($user_name, $this->db_connect()); 
		 $password  = $this->obj_common_func->sqlInjectionCheck($password, $this->db_connect()); 	
		$result    = $this->getAnyTableWhereData($this->getTable(self::USER_LOGIN), " and email='".$user_name."' and psd='".$password."'" );
		
		if($result == false)
		{
			return false ;
		}
		else
		{   
		    		
			$_SESSION["SESSION_USER"] 	= ucfirst($result["first_name"])."&nbsp;".ucfirst($result["lname_name"]);
			$_SESSION["sess_user_id"]   = $result['id'];
			$_SESSION["sess_email"]     = $result['email'];
			//$_SESSION["sess_access_level"]=$result['access_level'];
			return true ;
						
		}
    }
	function __destruct()
	{ ; }
		
}// class ends.
?>