<?php
class login_check
{
	 const USER_TYPE_ADMIN = 'admin';
	 const USER_TYPE_USER = 'user';

	function __construct($user_type)
	{
		if(self::USER_TYPE_ADMIN==$user_type)
		    $this->admin_login();	
		else if(self::USER_TYPE_USER==$user_type)
		    $this->user_login();	
		
	}
	
	public function admin_login()
	{
		 
		if(!(isset($_SESSION["sess_admin_id"])) || $_SESSION["sess_admin_id"]=="")
		{  
			session_unregister("sess_admin_name");
			session_unregister("sess_admin_id");
			session_destroy();
			echo "<META HTTP-EQUIV=\"refresh\" CONTENT=\"0;URL=index.php\">";
			die();
		}
	}
	
	public function user_login()
	{
		
		if(!(isset($_SESSION["sess_admin_id"])) || $_SESSION["sess_admin_id"]=="")
		{
			session_unregister("sess_admin_name");
			session_unregister("sess_admin_id");
			session_destroy();
			echo "<META HTTP-EQUIV=\"refresh\" CONTENT=\"0;URL=index.php\">";
			die();
		}
	}
	
	function __destruct()
	{ ; }
}
?>
