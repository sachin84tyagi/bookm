<?php
include_once("../codelibrary/inc/variables.php");
include("session.php");
$obj= new database_class();
$date_obj = new common_function();
$query="select login_time from ".$obj->getTable("var_admin_ip_tracking")."  where admin_id='1' order by login_time  desc limit 1,1";
$result=$obj->my_query($query);
$row=$obj->my_fetch_array($result);
include_once("../codelibrary/inc/admin-header.php");
?>
<tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="851" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col">
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <th align="center" scope="col">    
    <div align="left" style="padding-top:10px">
     <table  width="99%" border="0">
            
            <tr>
                <td colspan="2" style="width: 745px" align="center"><br><br><br><br>
                    
                    &nbsp;Welcome Back!<br />
                      &nbsp;
                      <?php 
                    echo "Last Visited : ".$date_obj->show_formatted_date($row['login_time']);
					?>
                      
                </td>
            </tr>
        </table>
      </div>&nbsp;</th>
  </tr>

  <tr>
    <td>&nbsp;</td>

  <tr >
    <td align="center"></td>
  </tr>
</table>
</th>
        </tr>
        <tr  >
          <th valign="top" scope="col"></th>
                                                            
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
</html>
