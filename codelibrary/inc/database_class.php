<?php
/*_______________________________________________________________________
Created By	: Raj Deo
Created On	: 23 June 2011
Modified By : 
Modified On : 
Description : This class has functions to connect, query, fetch data, send mail and close connection.
_________________________________________________________________________
*/
require_once(PATH."codelibrary/inc/config.php");
class database_class extends config
{
	
	private $database_table = "database_tables"; //main table that contains tables and table variable names.
	var $ERROR_MSG;
	var $RANDOM_PASS;
	//var $DBlink;
	
	/**
	* This function is used to get the table name in database. 
	* @param: table variable name. 
	* Ex. getTable($var_user_login);
	* return parameter: table name.
	*/	
	function getTable($table_var)
	{
		$DBlink = parent::db_connect();
		
		$sqlTabel="select * from $this->database_table";
		$tabelResult=mysql_query($sqlTabel) or die(mysql_error());
		$table_name = "";
		while($tableData=mysql_fetch_array($tabelResult))
		{
			// echo $table_var."<===>".$table1="var_".$tableData['variable_name'];
			 $table1="var_".$tableData['variable_name'];
			
			if(trim($table_var) == trim($table1))
			{
			   $table_name = $$table1=$tableData['table_name'];
			   break;
			}
			else
			{
				continue;
			}
		}
		
		return $table_name;
	}
	
	
	
	
	
	//------------------------------------------------------------------------
	function my_connect()
	{
		
		if($this->DATABASE_TYPE=="mysql")
		{
				$this->DB_LINK =  mysql_connect($this->HOST , $this->USERNAME , $this->PASSWORD) or die(mysql_error()); 
				return $this->DB_LINK;
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	function my_close($link)
	{
		
			if($link)
			{
				
				mysql_close($link);
				return true;
			}
		
		
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_select_db($database, $link)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(mysql_select_db($database, $link))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_free_result($result)
	{
		
		if($this->DATABASE_TYPE=="mysql")
		{
			if($result!="")
			{
				mysql_free_result($result);
				return 0;
			}
		}
		else
		{
		}
		
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_query($qry,$link)
	{

		
		if($link=="" || !is_object($link))
			$link = parent::db_connect();
			
		if($this->DATABASE_TYPE=="mysql")
		{
			if($qry=="" || !$link)
			{
				return 0;
			}
			else
			{
				$result =  mysql_query($qry,$link) or die("Error: ".mysql_error());
				return $result;
			}
		}
		else
		{
		}


	}
	//------------------------------------------------------------------------


	//------------------------------------------------------------------------

	function begin_trans()
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			@mysql_query("BEGIN");
		}
	}
	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	function commit_trans()
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			@mysql_query("COMMIT");
		}
	}
	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	function rollback_trans()
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			@mysql_query("ROLLBACK");
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------

	function execute_query_return_id($qry,$link)
	{
		
		if($link=="" || !is_object($link))
			$link = $this->my_connect();
		if($this->DATABASE_TYPE=="mysql")
		{
			if($qry=="" || !$link)
			{
				return 0;
			}
			else
			{
				$res =  mysql_query($qry,$link) or die("Error: ".mysql_error());
				$result=mysql_insert_id();
				return $result;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function execute_query($qry)
	{
		//echo $qry;
		if($this->DATABASE_TYPE=="mysql")
		{
			if($qry!="")
			{
				$link = $this->my_connect();
				$this->my_select_db($this->DATABASE_NAME,$link);
				$result =  $this->my_query($qry,$link);
				if($this->my_close($link))
				{
					$this->DB_LINK=false;
				}

				return $result;
			}
			else
			{
				return false;
			}
			
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	function result_execute_query($qry, $function)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if($qry!="")
			{
				$link = $this->my_connect();
				$this->my_select_db($this->DATABASE_NAME,$link);
				$result_set =  $this->my_query($qry,$link);
				if($function=="my_fetch_array")
				{
					$result = $this->my_fetch_array($result_set);
				}
				if($this->my_close($link))
				{
					$this->DB_LINK=false;
				}
				return $result;
			}
			else
			{
				return false;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------

	function my_num_rows($result)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(!$result)
			{
				return 0;
			}
			else
			{
				$num = mysql_num_rows($result);
				return $num;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------

	function my_result($result,$offset)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(!$result)
			{
				return 0;
			}
			else
			{
				$num = mysql_result($result,$offset);
				return $num;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------

	function my_insert_id($tableName)
	{
			
		$link = parent::db_connect();
		$id=0;
		if($this->DATABASE_TYPE=="mysql")
		{
				$query = "select max(id) as id from $tableName";
				$result =  $this->my_query($query,$link);
				if($this->my_num_rows($result))
				{
					$row = $this->my_fetch_array($result);
					$this->my_free_result($result);
					$id = $row['id'];
					$this->my_close($link);
					return $id;
				}
				else
				{
					 return false;
				}
				
		}
		else
		{
		   return false;
		}
		
		
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function getMaxValueOfAnyField($tableName,$fieldName)
	{
		$id=0;
		if($this->DATABASE_TYPE=="mysql")
		{
				$link = $this->my_connect();
				$this->my_select_db($this->DATABASE_NAME,$link);
				$query = "select max($fieldName) as id from $tableName";
				$result =  $this->my_query($query,$link);
				
				if($this->my_num_rows($result))
				{
					$row = $this->my_fetch_array($result);
					$this->my_free_result($result);
					$id = $row['id'];
				}
				
				return $id;
				
		}
		else
		{
		}
		$this->my_close($link);
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_fetch_array($result)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(!$result)
			{
				return 0;
			}
			else
			{
				$row =  mysql_fetch_array($result);
				return $row;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_fetch_row($result)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(!$result)
			{
				return 0;
			}
			else
			{
				$row =  mysql_fetch_row($result);
				return $row;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function my_fetch_object($result)
	{
		if($this->DATABASE_TYPE=="mysql")
		{
			if(!$result)
			{
				return 0;
			}
			else
			{
				$row = mysql_fetch_object($result);
				return $row;
			}
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------

	/**
	* This function is used to get single record.
	* @param: table name and condition in where clause.
	* Example: getAnyTableWhereData("user_login" " and username='usneName' and password='pwd'") ;
	* Return Value: array.
	*/
	
	
	function getAnyTableWhereData($table,$whereClause)
	{  
	
		if($table=="")
		{
			throw new Exception('Invalid table name parameter!');		
		}
		
		$link = parent::db_connect();
		$query="select * from $table where 1=1 $whereClause";
		$result=mysql_query($query);
		if($row=mysql_fetch_array($result))
		{
			
			$this->my_free_result($result);
			$this->my_close($link);
			return $row;
		}
		else
		{
			return false;
		}
		
		
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function getAnyTableAllData($table,$whereClause="")
	{
		if($table=="")
		{
			//throw new Exception('Invalid table name parameter!');		
			return 0;		
		}
		
		$link = parent::db_connect();
		
		$tempArray=array();
		
		
		$query="select * from $table where 1=1 $whereClause";
		$result=$this->my_query($query,$link);	
		if($this->my_num_rows($result)>0)
		{
			while($row=$this->my_fetch_array($result))
			{
				$tempArray[]= $row;
			}
			$this->my_free_result($result);
			return $tempArray;
		}
		else
		{
			return 0;
		}
		$this->my_close($link);
	}
	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	function getAllData($query)
	{
		//echo $query;
		$tempArray=array();
		$link = $this->my_connect();
		$this->my_select_db($this->DATABASE_NAME,$link);
		$result=$this->my_query($query,$link);	
		
		if($this->my_num_rows($result)>0)
		{
			while($row=$this->my_fetch_array($result))
			{
				$tempArray[]= $row;
			}
			$this->my_free_result($result);
			return $tempArray;
		}
		else
		{
			return false;
		}
		$this->my_close($link);
	}
	//------------------------------------------------------------------------
	//------------------------------------------------------------------------
	function insertData($table_name)
	{
		$link = parent::db_connect();
		//$this->my_select_db($this->DATABASE_NAME,$link);
		$arr_types =  array("TRC_","TR_", "TN_", "TREF_", "PHR_", "PHN_", "IR_", "IN_", "MR_", "MN_", "TNEF_", "TRFN_", "TNFN_","TNURL_","TRURL_");

		if (!empty($GLOBALS["HTTP_POST_VARS"])) {
			reset($GLOBALS["HTTP_POST_VARS"]);
			while (list($k,$v)=each($GLOBALS["HTTP_POST_VARS"])) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($_POST)) {
			reset($_POST);
			while (list($k,$v)=each($_POST)) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($GLOBALS["HTTP_GET_VARS"])) {
			reset($GLOBALS["HTTP_GET_VARS"]);
			while (list($k,$v)=each($GLOBALS["HTTP_GET_VARS"])) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($_GET)) {
			reset($_GET);
			while (list($k,$v)=each($_GET)) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		$query1="";
		$query="";
		
		$result=$this->my_query("show fields from $table_name",$link);
		$query="insert into $table_name set ";
		while ($a_row = $this->my_fetch_array($result)) 
		{
			$field="$a_row[Field]";

			if($field!='id')
			{
				if(isset($$field))
				{
					$query.=$field."=";
					$query.="'".$this->removeQuotes ($$field)."' , ";
				}
				else
				{
					if(isset($GLOBALS["$field"]))
					{
						$query.=$field."=";
						$query.="'".$this->removeQuotes ($GLOBALS["$field"])."' , ";
					}
				}
			}
		}
		//$query = substr($query,0,-1);
		//$query.=") values(";
		$query=substr($query,0,-2);
		//$query.=")";
		//echo '<br>'.$query;
		//exit;
		$result=$this->my_query($query,$link);
		$this->my_free_result($result);
		$this->my_close($link);
		return $result;
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function editData($table_name,$fldname,$fldval)
	{
		$link = parent::db_connect();
		//$this->my_select_db($this->DATABASE_NAME,$link);
	$arr_types =  array("TR_", "TN_", "TREF_", "PHR_", "PHN_", "IR_", "IN_", "MR_", "MN_", "TNEF_", "TRC_", "TNC_", "TRFN_", "TNFN_","TNURL_","TRURL_");

		if (!empty($GLOBALS["HTTP_POST_VARS"])) {
			reset($GLOBALS["HTTP_POST_VARS"]);
			while (list($k,$v)=each($GLOBALS["HTTP_POST_VARS"])) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($_POST)) {
			reset($_POST);
			while (list($k,$v)=each($_POST)) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($GLOBALS["HTTP_GET_VARS"])) {
			reset($GLOBALS["HTTP_GET_VARS"]);
			while (list($k,$v)=each($GLOBALS["HTTP_GET_VARS"])) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		if (!empty($_GET)) {
			reset($_GET);
			while (list($k,$v)=each($_GET)) 
			{

				for($p=0;$p<count($arr_types);$p++)
				{
					if(stristr($k,$arr_types[$p])!="")
					{
						$k = str_replace($arr_types[$p],"",$k);
					}
				}
				${strtolower($k)}=$v;
				//echo "<br> k =$k -- v = $v";
			}	
		}
		 $result=$this->my_query("show fields from $table_name",$link);
		 $query="update $table_name set ";
		 while ($a_row = $this->my_fetch_array($result)) {
			$field="$a_row[Field]";
		
		
				if($field!=$fldname)
				{
					if(isset($$field))
					{
			
						$query.=$field."=";
						$query.="'".$this->removeQuotes ($$field)."' , ";
		
		
					}
					else
					{
						if(isset($GLOBALS["$field"]))
						{
							//echo "<br> var ".$GLOBALS["$field"];
							$query.=$field."=";
							$query.="'".$this->removeQuotes($GLOBALS["$field"])."' , ";
		
						}
					}
				}
		 }
		  $query = substr($query,0,-2);
		 $query.="where $fldname='$fldval'"; 
		//echo "$query";
		//exit;
		 $result=$this->my_query($query,$link);
		 $this->my_free_result($result);
		 $this->my_close($link);
		 return $result;
	}

	//------------------------------------------------------------------------
	
	//------------------------------------------------------------------------
	//Function to change password
	//Mohan  17/aug/2009 Change password
	function changePassword($table,$userName,$oldPassword,$newPassword,$user_fld="username",$pass_fld="password",$md5="")
	{
		$link = $this->my_connect();
		$this->my_select_db($this->DATABASE_NAME,$link);

		define("UPDATE_SUCCESS","1");
		define("INVALID_USER","0");
		define("SQL_ERROR","-1");
		if($mdf) 
		{
			$oldPassword = md5($oldPassword);
			$newPassword = md5($newPassword);
		}
		 
		 $str ="SELECT * FROM $table where $user_fld='$userName' AND $pass_fld='".$oldPassword."'";	
		 $chkpass=$this->my_query($str,$link);
		 
		 if(mysql_error())
		  return SQL_ERROR;
		 
		 if($this->my_num_rows($chkpass)>0)
		 {
			$query="UPDATE $table SET $pass_fld='".$newPassword."' where $user_fld='$userName'";
			$result=$this->my_query($query,$link);
			return UPDATE_SUCCESS;
		 }else{
		  return INVALID_USER;
		 }	
		$this->my_close($link);
		
	}
	//------------------------------------------------------------------------

	//------------------------------------------------------------------------
	function getNumRows($query)
	{
		//echo "<br> -> ".$query;
		if($this->DATABASE_TYPE=="mysql")
		{
			$link = $this->my_connect();
			$this->my_select_db($this->DATABASE_NAME,$link);
			$result =  mysql_query($query,$link) or die(mysql_error());
			$numRows = $this->my_num_rows($result);
			$this->my_close($link);
			return $numRows;
		}
		else
		{
		}
	}
	//------------------------------------------------------------------------


	//------------------------------------------------------------------------
	
	
	
	//------------------------------------------------------------------------
	//Mohan Kumar
	//17/aug/2009
	//Common functions to get any single field value
	function isDuplicateValue($tableName,$fldName,$fldValue,$id="",$where="")
	{
		$link = $this->my_connect();
		$this->my_select_db($this->DATABASE_NAME,$link);
		//add condition
		if($id=="")
			$query="SELECT $fldName from $tableName where 1=1 AND $fldName='$fldValue' $where";
		else
			//edit condition
			$query="SELECT $fldName from $tableName where 1=1 AND $fldName='$fldValue' AND  id!='$id' $where";
		//echo $query;
		$result=$this->my_query($query,$link);	
		if($this->my_num_rows($result)>0)
		{
			return true;
		}
		else
		{
			return false;
		}
		$this->my_close($link);
	}
	//------------------------------------------------------------------------



	//------------------------------------------------------------------------	
	
	//Common functions to get drop down list
	function getDropDownList($tableName, $fld_name, $selected_val ,$orderby)
	{	
		global $GL_active;
		//$link = parent::db_connect();
		
		
		
		$result = $this->getAnyTableAllData($tableName ,$orderby);
		
		$str = "";
		if($result!="")
		{
			foreach($result as $k=>$v)
			{
				if($v["$fld_name"]==$selected_val)
				{
					
					$str.='<option value="'.$v["$fld_name"].'" SELECTED>'.$v["$fld_name"].'</option>';
					
				}
				else
				{
				   $str.='<option value="'.$v["$fld_name"].'" >'.$v["$fld_name"].'</option>';
				}
			}
		}
			return $str;
		
		
	}//end of function
	//------------------------------------------------------------------------
	
function removeQuotes($strToChange)
	{
		if (!get_magic_quotes_gpc()) {
			$strToChange=str_replace("'","&#39;",$strToChange);
			$strToChange=str_replace("\"","&quot;",$strToChange);
			$strToChange=str_replace("\\","&#92;",$strToChange);
			return $strToChange;
		}
		else
		return $strToChange;
	}


function deleteData($tableName , $where_clause)
{
	if($tableName=="")
	  return false;
	 
	$link = parent::db_connect();
	$query = "DELETE FROM $tableName WHERE 1=1 $where_clause";
	mysql_query($query, $link);
	return true;
	
}
function backup_tables($path="dbbackup",$tables = '*')
{
  $retresult = array() ;
  try {
   $link = parent::db_connect();
   //get all of the tables
  if($tables == '*')
  {
    $tables = array();
    $result = mysql_query('SHOW TABLES');
    while($row = mysql_fetch_row($result))
    {
      $tables[] = $row[0];
    }
  }
  else
  {
    $tables = is_array($tables) ? $tables : explode(',',$tables);
  }
  //cycle through
  foreach($tables as $table)
  {
    $result = mysql_query('SELECT * FROM '.$table);
    $num_fields = mysql_num_fields($result);
    
    $return.= 'DROP TABLE '.$table.';';
    $row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
    $return.= "\n\n".$row2[1].";\n\n";
    
    for ($i = 0; $i < $num_fields; $i++) 
    {
      while($row = mysql_fetch_row($result))
      {
        $return.= 'INSERT INTO '.$table.' VALUES(';
        for($j=0; $j<$num_fields; $j++) 
        {
          $row[$j] = addslashes($row[$j]);
          $row[$j] = ereg_replace("\n","\\n",$row[$j]);
          if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
          if ($j<($num_fields-1)) { $return.= ','; }
        }
        $return.= ");\n";
      }
    }
    $return.="\n\n\n";
  }
  //save file
  $filename = $path.'/'.date("dmY").'.sql' ;
  $handle = fopen($filename,'w+');
  fwrite($handle,$return);
  fclose($handle); 
  }
  catch(Exception $e) 
  {
	   echo $e->getMessage() ;
	   $retresult[0] = 0;
	   return $retresult ;
  }
  $retresult[0] = 1 ;
  $retresult[1] = $filename ;
  return $retresult ;
}
################################################################################################################################
}//End class