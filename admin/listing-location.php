<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';

if($_POST["countries_id"]!="")
{
	$search_item .= " and c.id = '".trim($_POST["countries_id"])."'";
}
if($_POST["cities_id"]!="")
{
	$search_item .= " and ct.id ='".trim($_POST["cities_id"])."' ";
}
if($_POST["locations_name"]!="")
{
	$search_item .= " and l.locations_name like '%".trim($_POST["locations_name"])."%'";
}

$location_paging=$GL_location_paging;

if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$location_paging;
$qry = "select l.id , l.locations_name, ct.cities_name, c.countries_name from flat_locations l inner join flat_cities ct on l.cities_id = ct.id inner join flat_countries c on  l.countries_id = c.id where 1=1 $search_item  order by l.id desc" ;		
$rec = $obj->my_query($qry) ;

$totalRow = mysql_num_rows($rec);
$from = $pagenum*$user_paging;

$qry = "select l.id , l.locations_name , ct.cities_name,c.countries_name from flat_locations l inner join flat_cities ct on l.cities_id = ct.id inner join flat_countries c on  l.countries_id = c.id where 1=1 $search_item  order by l.id desc limit $from, $paging "	;	
$rec = $obj->my_query($qry) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>City Information <span></span>
        </h3>
</div>
<?php if(mysql_num_rows($rec) > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="left">Countries Name</th>
        <th width="15%" scope="col"  align="left">Cities Name</th>
        <th width="15%" scope="col"  align="left">Locations Name</th>
        <th width="8%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec) )
		{
			
			$class = ($i%2==0)?'even':'odd';
			?>
           
            <tr class="<?php echo $class;?>">
           
            <td><?php echo $v["countries_name"];?> </td>
            <td><?php echo $v["cities_name"];?></td>
            <td><?php echo $v["locations_name"];?></td>
            <td align="center"><a href="location-add.php?locationid=<?php echo $v["id"];?>"><img src="images/icon_edit.gif" border="0"></a></td>
            </tr>
          
      
        
		<?php
		$i++;
		
        }
		?>
    </table>
    <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:15px;">
 <tr><td align="right" >
 <?php
   	$page_text=$obj_paging->admin_paging($totalRow,$paging,$pagenum);
    echo $page_text;
	?>
 </td></tr>
 </table>
<?php }
else
{?>
 <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" style=" margin-top:15px;">
 <tr><td align="center" class='msg'> No location found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															