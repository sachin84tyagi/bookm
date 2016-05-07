<?php
include('../codelibrary/inc/variables.php'); 
$obj= new database_class();	
$obj_paging = new paging;
$search_item='';

if($_POST["cities_id"]!="")
{
	$search_item .= " and ct.id = '".trim($_POST["cities_id"])."' ";
}
if($_POST["locations_id"]!="")
{
	$search_item .= " and l.id ='".trim($_POST["locations_id"])."' ";
}
if($_POST["property_type"]!="")
{
	$search_item .= " and pt.id ='".trim($_POST["property_type"])."' ";
}
if($_POST["property_to"]!="")
{
	$search_item .= " and pto.id ='".trim($_POST["property_to"])."' ";
}


$property_paging=$GL_property_paging;
if(!isset($_REQUEST["pagenum"]))
		$pagenum=0;
	else
		$pagenum=$_REQUEST["pagenum"];
	if(!empty($_REQUEST["paging"]))
		 $paging=$_REQUEST["paging"];
	else
		$paging=$property_paging;
		
$qry = "select p.*, l.locations_name, ct.cities_name, c.countries_name ,u.fname , u.lname , u.social_media_photo ,pt.type,pto.property_to from flat_property p inner join flat_locations l on p.locations_id = l.id inner join flat_cities ct on l.cities_id = ct.id inner join flat_countries c on l.countries_id = c.id inner join flat_user u on p.user_id = u.id  inner join flat_property_type pt on p.property_type = pt.id inner join flat_property_to pto on p.property_to = pto.id  where 1=1 $search_item  order by p.id desc" ;		
$rec = $obj->my_query($qry) ;

$totalRow = mysql_num_rows($rec);
$from = $pagenum*$user_paging;

$qry = "select p.*, l.locations_name, ct.cities_name, c.countries_name ,u.fname , u.lname , u.social_media_photo ,pt.type,pto.property_to from flat_property p inner join flat_locations l on p.locations_id = l.id inner join flat_cities ct on l.cities_id = ct.id inner join flat_countries c on l.countries_id = c.id inner join flat_user u on p.user_id = u.id  inner join flat_property_type pt on p.property_type = pt.id inner join flat_property_to pto on p.property_to = pto.id  where 1=1  $search_item  order by p.id desc limit $from, $paging "	;	
$rec = $obj->my_query($qry) ;

?>

<fieldset  >
<div class="sectionHeader" style="font-family: Arial">
        <h3>Property  Information <span></span>
        </h3>
</div>
<?php if($totalRow > 0 )

{?>

    <table width="99%" border="1" align="center" cellpadding="3" cellspacing="0" style=" margin-top:15px;">
      <tr class=" odd" >       
        <th width="10%" scope="col"  align="center">Posted by</th>
        <th width="10%" scope="col"  align="center">Property Type</th>
        <th width="10%" scope="col"  align="center">Buy/Sell</th>
        <th width="10%" scope="col"  align="center">Budget</th>
        <th width="10%" scope="col"  align="center">Country</th>
        <th width="10%" scope="col"  align="center">City</th>
        <th width="10%" scope="col"  align="center">Location</th>
       <!-- <th width="10%" scope="col"  align="center">Status</th> -->
        <th width="10%" scope="col"  align="center">Post Date</th>
        <!--
        <th width="10%" scope="col"  align="center">Like</th>
        <th width="10%" scope="col"  align="center">Rating</th>
        -->
        <th width="20%" scope="col" align="center">Action</th>
        </tr>
        <?php
		$i=0;
        while($v = mysql_fetch_array($rec))
		{
			
			$class = ($i%2==0)?'even':'odd';
			$like  = $v['user_like_count'] ==0?"No Anyone Like yet now":"" ;
			if($like == "")
			$like  = $like."&nbsp;".$v['user_like_count'] > 1?"Persions Like":"Persion Like" ;
			?>
           
            <tr class="<?php echo $class;?>">
           
            <td align="left"><img src="<?php echo $v['social_media_photo'] ?>"  /><br  /><?php echo $v['fname']." ".$v['lname'] ; ?></td>
            <td align="left"><?php echo $v['type'] ; ?></td>
             <td align="left"><?php echo $v['property_to'] ; ?></td>
             <td align="left"><?php echo $GL_price_range[$v['budget_range']] ; ?></td>
            <td align="left"><?php echo $v['countries_name'] ; ?></td>
            <td align="left"><?php echo $v['cities_name'] ; ?></td>
            <td align="left"><?php echo $v['locations_name'] ; ?></td>
           <!-- <td align="left"><?php echo $v['status'] ; ?></td> -->
            <td align="left"><?php echo date("M j Y",$v['date_added']) ; ?></td>
            <!--
            <td align="left"><a href="#" ><img   src="images/like.png" border="0" /><br  />
			<?php  echo $like ; ?></a></td>
            <td align="left"><?php echo $v['user_rating']."&nbsp;%" ; ?></td> 
            -->
            <td align="center">
           
			 <?php
			    
                 if( $v['status'] == '1' )
				 {?>
                                <a href="javascript:void(0);"  onclick="redirect_action('property-activate.php', 'deactivate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to De-Active"><img src='images/active.gif' border='0' /></a>
                                <?php
                 }
				 else
				 {?>
                              
                                <a href="javascript:void(0);"  onclick="redirect_action('property-activate.php', 'activate', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" title="Click to Active"><img src='images/deactive.gif' border='0' /></a>
                                <?php
                 }
				 ?>
                 
           <a href="javascript:void(0);"  onclick="redirect_action('property-add.php', 'edit', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');" ><img src="images/icon_edit.gif" border="0"></a>&nbsp;&nbsp;
            <a href="javascript:void(0);"  onclick="redirect_action('property-delete.php', 'delete', '<?php echo $v["id"];?>','<?php echo $pagenum;?>');"><img src="images/icon_delete.gif" border="0"></a> &nbsp;&nbsp;
            </td>
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
 <tr><td align="center" class='msg'> No property found!</td></tr>
 </table>
<?php
}
?>
 </fieldset>
														
                                                                    
																
															