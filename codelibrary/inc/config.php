<?php
/**
* Created By: Raj Deo
* Date: 23 Jun 2011	
* Modified by:
* Modified on date:
* Reason to modify:
* Description : This file consists of database connection settings.
*/
class config
{
	protected $DATABASE_TYPE="mysql";     		//database type (it could be mysql, mssql, oracle etc...) 
	private   $DATABASE_NAME="naazperf_profine";     		//database name
	private   $HOST="localhost";	// Host Name
	private   $USERNAME="root";  				//user of the database - naazperf_prouser
	private   $PASSWORD="";			//password of the database - l%$,?UV-e&4S
	var       $conn;
    var       $link;
	function db_connect()
	{
	    
		$conn =mysql_connect($this->HOST , $this->USERNAME ,$this->PASSWORD) or die("Error:".mysql_error()); 
		//var_dump($conn); die;
		mysql_select_db($this->DATABASE_NAME,$conn) or  die("Error:".mysql_error());
		return $conn;
	}
	
	
}
/* public $default = array(
		'datasource' => 'Database/Mysql',
		'persistent' => false,
		'host' => 'localhost',
		'login' => 'naazperf_exp',
		'password' => 'pr3FtvbZ0^h*',
		'database' => 'naazperf_phpxpert',
		'prefix' => '',
		//'encoding' => 'utf8',
	); */
?>