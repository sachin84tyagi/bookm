<?php 
include('codelibrary/inc/variables.php'); 
$obj= new database_class();
$search_item='';
if($_GET["bid"]!="")
{
	$search_item .= " and category_id = '".trim($_GET["bid"])."' ";
}
if($_GET["lid"]!="")
{
	$search_item .= " and location = '".trim($_GET["lid"])."' ";
}	
$book_data = $obj->getAnyTableAllData($obj->getTable("var_product"), " $search_item and status = '1'");	
?>
<?php include_once("header.php"); ?>
				<!-- navigation menu with logo -->
<?php include_once("navigation.php"); ?>
			</header>
			<!-- header end -->
			
			<!-- banner -->
			<!-- banner end -->
			
		
			<!-- promo end -->
			
			<!-- main content -->
			<div class="main-content">
			<div class="container">	
				
					<!-- inner items -->
					<div class="inner-content items">
						<div class="row">
<?php include_once("l-sidebar.php"); ?>
							<div class="col-md-6 col-sm-6">
							
								<!-- products items -->
								<div class="recent-sale">
									<!-- heading -->
									<h2 class="br-orange default-head">Book List</h2>
									<div class="row">
									<?php foreach($book_data as $key=>$value){ //title?>
										<div class="col-md-4 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- hot tag -->
												<span class="hot br-brown">New</span>
												<!-- like, share, etc media tags for item -->
												<a href="#" class="media-1" data-toggle="tooltip" data-placement="left" title="" data-original-title="41 Likes"><i class="fa fa-thumbs-up"></i></a>
												<a href="#" class="media-2" data-toggle="tooltip" data-placement="left" title="" data-original-title="195 Purchase"><i class="fa fa-heart"></i></a>
												<a href="#" class="media-3" data-toggle="tooltip" data-placement="left" title="" data-original-title="795 Shares"><i class="fa fa-share-alt"></i></a>
												<!-- item image -->
												<?php //$file =  'products/'.str_replace(":","_",$value['image']); 
												if(!empty($value['image'])) { ?>
												<img class="img-responsive" src="products/<?php echo str_replace(":","_",$value['image']); ?>" width="150" height="150" alt="" />
												<?php } else {  ?>
												<img class="img-responsive" src="images/no_image.png" width="150" height="150" alt="" />
												<?php } ?>
												<!-- item name / title -->
												<h3><?php echo $value['title']; ?></h3>
												<!-- item details -->
												<span class="details"><?php echo html_entity_decode(substr($value['description'],0,40)); ?>...<a href="books_details.php?b_detail_id=<?php echo $value['id'] ?>">More</a></span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">Rs-<?php echo $value['amount'];  ?></span> GetBook</button>
												</div>
											</div>
										</div>
										<?php } ?>
								
									</div>
								</div>
								<!-- recent sale end -->
							</div>
<?php include_once("r-sidebar.php"); ?>
						</div>
					</div>
				
					
				</div>

			</div>
			<!-- main content end -->
			
			<!-- footer -->
			<?php include_once("footer.php"); ?>