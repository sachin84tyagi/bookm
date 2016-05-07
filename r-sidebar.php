<?php 
$city_id = "select DISTINCT(b.location) from bm_book b where 1=1 order by b.id desc";
$city_rec = mysql_query($city_id);
while($record = mysql_fetch_array($city_rec)) {
	 $city_data = mysql_query("select count(b.location),c.city_name,c.id from bm_book b inner join bm_city c on c.id=b.location where 1=1 AND b.location = '".$record['location']."' AND b.status = '1' order by c.priority desc");
	 $location_data[] = mysql_fetch_array($city_data);
}
$city_rec = mysql_query($city_data);
?>
								<div class="col-md-3 col-sm-3">
								<!-- inner navigation menu -->
								<div class="navi">
									<!-- heading -->
									<h3>Locations</h3>
									<!-- list -->
									<ul class="list-unstyled">
										<?php rsort($location_data);
										foreach($location_data as $bk=>$bv) { 
											if($bv['city_name'] != "") { 
										?>
										<li class=""><a href="books.php?lid=<?php echo $bv['id'] ?>"><i class="fa fa-tablet"></i> <?php echo $bv['city_name']; ?>(<?php echo $bv['count(b.location)']; ?>)</a></li>
										<?php } } ?>
									</ul>
								</div>
					
							</div>