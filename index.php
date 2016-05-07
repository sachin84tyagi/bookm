<?php 
//today work progressssssssss
include('codelibrary/inc/variables.php'); 
$obj= new database_class();
$book_data = $obj->getAnyTableAllData($obj->getTable("var_product"), " and u_id != ''");
?>
<?php include_once("header.php"); ?>
				<!-- navigation menu with logo -->
<?php include_once("navigation.php"); ?>
			</header>
			<!-- header end -->
			
			<!-- banner -->
<?php //include_once("banner.php"); ?>
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
									<h2 class="br-orange default-head">Accessories</h2>
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
												<span class="details"><?php echo html_entity_decode(substr($value['description'],0,40)); ?>...<a href="books_details.php">More</a></span>
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
					
					<!-- promo -->
					<div class="promo">
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<!-- promo item -->
								<div class="promo-item br-blue">
									<!-- icon -->
									<i class="fa fa-paypal"></i>
									<!-- heading -->
									<h3>Easy To Pay</h3>
									<!-- sub text -->
									<span class="sub-text">Paypal payment solver.</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<!-- promo item -->
								<div class="promo-item br-pink">
									<!-- icon -->
									<i class="fa fa-android"></i>
									<!-- heading -->
									<h3>Mobile App.</h3>
									<!-- sub text -->
									<span class="sub-text">Available in playstore.</span>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="col-md-4 col-sm-12">
								<!-- promo item -->
								<div class="promo-item br-purple">
									<!-- icon -->
									<i class="fa fa-whatsapp"></i>
									<!-- heading -->
									<h3>Supports</h3>
									<!-- sub text -->
									<span class="sub-text">Easy contact with us.</span>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- promo end -->
			
					<!-- popular item -->
				<?php include_once("popular_book.php"); ?>
					<!-- popular item end -->
					
					<!-- subscribe -->
					<?php include_once('subscribe.php'); ?>
					<!-- subscribe end -->
					
				</div>
				<div class="container">	
					<!-- recent sale item block -->
					<?php include_once("recent_book.php"); ?>
					<!-- recent sale end -->
					
					<!-- promo -->
				<?php include_once('promo.php'); ?>
					<!-- promo end -->
			
					<!-- popular item -->
					<div class="popular-sale">
						<!-- heading -->
						<h2 class="br-lblue default-head">Popular Products</h2>
						<!-- popular item slider -->
						<div id="carousel-example-genericPS" class="carousel slide" data-ride="carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row">
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/9.png" alt="" />
												<!-- item name / title -->
												<h3>Folsom-Sofa Set</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/4.png" alt="" />
												<!-- item name / title -->
												<h3>Pocket Wallet</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple pocket...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/5.png" alt="" />
												<!-- item name / title -->
												<h3>Lady Purse</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple pocket...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/6.png" alt="" />
												<!-- item name / title -->
												<h3>Running Shoes</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="row">
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/1.png" alt="" />
												<!-- item name / title -->
												<h3>Diamond Ring</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/7.png" alt="" />
												<!-- item name / title -->
												<h3>Running Shoes</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$21.89</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/2.png" alt="" />
												<!-- item name / title -->
												<h3>Study Chair</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<!-- recent item for slider -->
											<div class="sale-item">
												<!-- item image -->
												<img class="img-responsive" src="images/8.png" alt="" />
												<!-- item name / title -->
												<h3>Folsom-Sofa Set</h3>
												<!-- item details -->
												<span class="details">New design, Good leather and Now in multiple color...</span>
												<!-- button -->
												<div class="cart-btn">
													<!-- cart button -->
													<button class="btn btn-default" type="button"><span class="price">$199.95</span> Add to cart</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-genericPS" role="button" data-slide="prev">
								<span class="fa fa-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#carousel-example-genericPS" role="button" data-slide="next">
								<span class="fa fa-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>
					<!-- popular item end -->
					
					<!-- subscribe -->
				
					<!-- subscribe end -->
					
				</div>
			</div>
			<!-- main content end -->
			
			<!-- footer -->
			<?php include_once("footer.php"); ?>
			