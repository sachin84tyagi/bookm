<?php
$testimonial_data = $obj->getAnyTableAllData($obj->getTable("var_testimonials"), " limit 0,1");	
$news_data = $obj->getAnyTableAllData($obj->getTable("var_news"), " limit 0,1");
//print_r($testimonial_data);news
$catgory_data = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = 0");	
?>
<style>
.side-promo p { margin-left:0px;}
</style>		
		<div class="col-md-3 col-sm-3">
								<!-- inner navigation menu -->
								<div class="navi">
									<!-- heading -->
									<h3>Book Category</h3>
									<!-- list -->
									<ul class="list-unstyled">
										<!--<li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>-->
										<?php foreach($catgory_data as $key=>$value) { ?>
										<li class="has_sub"><a href="#"><i class="fa fa-tablet"></i> <?php echo $value['title']; ?></a>
											<ul class="list-unstyled">
											<?php  $subcatgory_data = $obj->getAnyTableAllData($obj->getTable("var_category"), " and parent_id = '".$value['id']."'");
											foreach($subcatgory_data as $k=>$v) { ?>
												<li><a href="books.php?bid=<?php echo $v['id']?>"><?php echo $v['title']; ?> </a></li>
										    <?php } ?>
											</ul>
										</li>
										<?php } ?>
									</ul>
								</div>
								<!-- heading -->
								<h5>Testimonials</h5>
								<!-- side bar promo items -->
								<?php foreach($testimonial_data as $testk=>$testv) { ?>
								<div class="side-promo">
								<!-- paragraph -->
								<p><?php echo html_entity_decode($testv['description']); ?>.</p>
									<!-- products title -->
									<h3><a href="testimonials.php"><?php echo $testv['author_name']; ?></a></h3>
									<div class="clearfix"></div>
								</div>
								<?php } ?>
								<!-- side bar promo items -->
								<br>
								<!-- heading -->
								<h5>News & Updates</h5>
								<!-- side bar promo items -->
								<?php foreach($news_data as $newsk=>$newsv) { ?>
								<div class="side-promo">
								<!-- products title -->
								<h3 style="margin-left:0px;"><?php echo $newsv['title']; ?></h3>
								<!-- paragraph -->
								<p><?php echo html_entity_decode($newsv['desc1']); ?>.</p>
								<a href="news.php">Read More</a>
								<div class="clearfix"></div>
								</div>
								<?php } ?>
								<!-- side bar promo items -->

							</div>