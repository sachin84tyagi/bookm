<div class="menu">
<ul>
		<li><a href="company.php" class="none">Company</a>
		<ul>
					<li><a href="about.php">About Us</a></li>
					<li><a href="history.php">History</a></li>
					<li><a href="guidlines-principales.php">Guidlines Principales</a></li>
					<li><a href="responscibility.php">Responsibility</a></li>
			   </ul>
		</li>
		<li><a href="product.php">Products</a>
		
				<ul>
                    <?php
					  $categoryData = $db->getAnyTableAllData($db->getTable("var_category"), "  order by id") ;
					  foreach($categoryData as $ctk=>$ckv) {
					?>
					<li><a href="product/catid/<?php echo $ctv['id'] ?>/product/<?php echo str_replace(' '.'-',$ctv['category'] ; ?>"><?php echo $ctv['category'] ?></a></li>
                    <?php } ?>
				</ul>
		</li>
		<li><a href="news.php">News</a>
		<ul>
					<li><a href="news.php?newsid=">Press News</a></li>
					<li><a href="news.php?newsid=">Trade Fairs & Events</a></li>
					<li><a href="news.php?newsid=">PVC-U-Sheet</a></li>
					<li><a href="news.php?newsid=">Latest Openings</a></li>
			   </ul>
		
		</li>
		<li><a href="gallery.php">Gallery</a></li>
		<li><a href="contact.php">Contact</a>
						<ul>
					<li><a href="contact.php">Contact Form</a></li>
					<li><a href="general-term-of-business.php">General Term of business</a></li>
					<li><a href="why-to-us.php">Way to Us</a></li>
					<li><a href="contact-persons.php">Contact Persons</a></li>
			   </ul>
		</li>
		<li><a href="#">Login</a>
					<ul>
					<li><a href="user-login.php">User Login</a></li>
					<li><a href="dealer-login.php">Dealer Login</a></li>
					<li><a href="download-brochure.php">Download Brochure</a></li>
			   </ul>
		</li>
		</li>
</ul>
</div>