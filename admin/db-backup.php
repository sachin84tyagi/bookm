<?php
session_start();
include_once("../codelibrary/inc/variables.php");
$obj= new database_class;
include_once("../codelibrary/inc/admin-header.php");
?>
<script LANGUAGE="JavaScript" SRC="codelibrary/js/func_ajax.js"></script>
<script LANGUAGE="JavaScript" SRC="codelibrary/js/jquery.js"></script>
  <tr>
    <td colspan="3" valign="top" bgcolor="#FFFFFF">
     
      <table width="95%" height="432" border="0"  align="center" cellpadding="0" cellspacing="0" >
        <tr height="432" >
          <th valign="top" scope="col">
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <th align="center" scope="col">    <div align="left" style="padding-top:10px">
      <table  width="99%">
													
                                                    
                                                    <tr>
														<td colspan="2" >
															<div id="Div2">
																<fieldset id="Fieldset2">
																  <div style="margin-top:10px;" align="left">
																    <asp:Label id="lblHeader" runat="server" Width="320px" Font-Bold="True" Font-Size="Large">DB Backup  </asp:Label></div>
																</fieldset>
															</div>
                                                            
                                                            <p  style=" padding-left:20px;" class="msg" align="center" id="disp_msg">
															<?php 
															$result = $obj->backup_tables("dbbackup") ;
															if($result[0] == 1 )
															{
															         
																	  $filename =  $result[1] ;   
																	  if(file_exists($filename))
																	  {
									/*									 
										$path = $_SERVER['DOCUMENT_ROOT']."/profine/admin/"; // change the path to fit your websites document structure
										$fullPath = $path.$result[1];
										
										if ($fd = fopen ($fullPath, "r")) {
											$fsize = filesize($fullPath);
											$path_parts = pathinfo($fullPath);
											$ext = strtolower($path_parts["extension"]);
											switch ($ext) {
												case "sql":
												header("Content-type: application/sql"); // add here more headers for diff. extensions
												header("Content-Disposition: attachment; filename=\"".$path_parts["basename"]."\""); // use 'attachment' to force a download
												break;
												default;
												header("Content-type: application/octet-stream");
												header("Content-Disposition: filename=\"".$path_parts["basename"]."\"");
											}
											header("Content-length: $fsize");
											header("Cache-control: private"); //use this to open files directly
											while(!feof($fd)) {
												$buffer = fread($fd, 2048);
												echo $buffer;
											}
										}
										fclose ($fd);
										exit;

											*/								
										echo 'Please <a href="'.$result[1].'">click</a> here to download database backup file' ;
																			

																		}
																		 else
																		 {
																		  echo "Invalid database file!";
																		 }
															  
															}
															else {
															  echo "Error !!! " ;
															}
															
															?> 
                                                            </p>
                                                            
            </td>
        </tr>
            <tr >
           		 <td colspan="2"  valign="top">
           		 </td>
            
            </tr>
        <tr>
            <td colspan="2" style="width: 745px" >
                
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
