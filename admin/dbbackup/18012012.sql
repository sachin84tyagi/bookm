DROP TABLE database_tables;

CREATE TABLE `database_tables` (
  `variable_name` varchar(255) collate latin1_general_ci default NULL,
  `table_name` varchar(255) collate latin1_general_ci default NULL,
  UNIQUE KEY `variable_name` (`variable_name`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO database_tables VALUES("admin_login_table","profine_admin_login_table");
INSERT INTO database_tables VALUES("admin_ip_tracking","profine_admin_ip_tracking");
INSERT INTO database_tables VALUES("category","profine_category");
INSERT INTO database_tables VALUES("image_gallery","profine_image_gallery");
INSERT INTO database_tables VALUES("product","profine_product");
INSERT INTO database_tables VALUES("countries","profine_countries");
INSERT INTO database_tables VALUES("currency ","profine_currency ");
INSERT INTO database_tables VALUES("cms","profine_cms");
INSERT INTO database_tables VALUES("events","profine_events");
INSERT INTO database_tables VALUES("pages","profine_pages");
INSERT INTO database_tables VALUES("user","profine_user");
INSERT INTO database_tables VALUES("user_type","profine_user_type");
INSERT INTO database_tables VALUES("product_images","profine_product_images");
INSERT INTO database_tables VALUES("product_boucher","profine_product_boucher");
INSERT INTO database_tables VALUES("temp_img","temp_img");
INSERT INTO database_tables VALUES("temp_pdf","temp_pdf");
INSERT INTO database_tables VALUES("temp_video","temp_video");
INSERT INTO database_tables VALUES("product_pdf","profine_product_pdf");
INSERT INTO database_tables VALUES("testimonials","profine_testimonials");
INSERT INTO database_tables VALUES("images_gallery","profine_images_gallery");
INSERT INTO database_tables VALUES("news_category","profine_news_category");
INSERT INTO database_tables VALUES("news","profine_news");



DROP TABLE profine_admin_ip_tracking;

CREATE TABLE `profine_admin_ip_tracking` (
  `id` bigint(20) NOT NULL auto_increment,
  `admin_id` int(11) NOT NULL default '0',
  `ip` varchar(200) collate latin1_general_ci NOT NULL default '',
  `login_time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_admin_ip_tracking VALUES("1","1","127.0.0.1","2011-08-29 11:08:41");
INSERT INTO profine_admin_ip_tracking VALUES("2","1","127.0.0.1","2011-08-29 11:12:12");
INSERT INTO profine_admin_ip_tracking VALUES("3","1","127.0.0.1","2011-08-29 11:20:35");
INSERT INTO profine_admin_ip_tracking VALUES("4","1","127.0.0.1","2011-08-29 11:21:48");
INSERT INTO profine_admin_ip_tracking VALUES("5","1","127.0.0.1","2011-08-29 11:23:11");
INSERT INTO profine_admin_ip_tracking VALUES("6","1","127.0.0.1","2011-08-29 11:39:17");
INSERT INTO profine_admin_ip_tracking VALUES("7","1","127.0.0.1","2011-08-30 08:25:53");
INSERT INTO profine_admin_ip_tracking VALUES("8","1","127.0.0.1","2011-08-30 10:01:32");
INSERT INTO profine_admin_ip_tracking VALUES("9","1","127.0.0.1","2011-08-30 11:00:26");
INSERT INTO profine_admin_ip_tracking VALUES("10","1","127.0.0.1","2011-08-30 12:22:30");
INSERT INTO profine_admin_ip_tracking VALUES("11","1","127.0.0.1","2011-08-31 08:44:03");
INSERT INTO profine_admin_ip_tracking VALUES("12","1","127.0.0.1","2011-09-01 06:14:24");
INSERT INTO profine_admin_ip_tracking VALUES("13","1","127.0.0.1","2011-09-01 08:22:37");
INSERT INTO profine_admin_ip_tracking VALUES("14","1","127.0.0.1","2011-09-01 12:34:05");
INSERT INTO profine_admin_ip_tracking VALUES("15","1","127.0.0.1","2011-09-02 07:05:20");
INSERT INTO profine_admin_ip_tracking VALUES("16","1","127.0.0.1","2011-09-07 09:32:09");
INSERT INTO profine_admin_ip_tracking VALUES("17","1","127.0.0.1","2011-09-08 06:15:28");
INSERT INTO profine_admin_ip_tracking VALUES("18","1","127.0.0.1","2011-09-08 06:19:10");
INSERT INTO profine_admin_ip_tracking VALUES("19","1","127.0.0.1","2011-09-08 11:38:39");
INSERT INTO profine_admin_ip_tracking VALUES("20","1","127.0.0.1","2011-09-14 07:02:08");
INSERT INTO profine_admin_ip_tracking VALUES("21","1","127.0.0.1","2011-09-19 05:42:14");
INSERT INTO profine_admin_ip_tracking VALUES("22","1","127.0.0.1","2011-09-26 07:05:34");
INSERT INTO profine_admin_ip_tracking VALUES("23","1","127.0.0.1","2011-09-26 08:38:34");
INSERT INTO profine_admin_ip_tracking VALUES("24","1","127.0.0.1","2011-09-26 11:39:02");
INSERT INTO profine_admin_ip_tracking VALUES("25","1","127.0.0.1","2011-09-27 04:50:12");
INSERT INTO profine_admin_ip_tracking VALUES("26","1","127.0.0.1","2011-09-27 08:00:31");
INSERT INTO profine_admin_ip_tracking VALUES("27","1","127.0.0.1","2011-09-28 05:48:27");
INSERT INTO profine_admin_ip_tracking VALUES("28","1","127.0.0.1","2011-09-28 08:13:24");
INSERT INTO profine_admin_ip_tracking VALUES("29","1","127.0.0.1","2011-09-29 07:18:11");
INSERT INTO profine_admin_ip_tracking VALUES("30","1","127.0.0.1","2011-09-30 05:38:12");
INSERT INTO profine_admin_ip_tracking VALUES("31","1","127.0.0.1","2011-09-30 08:28:54");
INSERT INTO profine_admin_ip_tracking VALUES("32","1","122.177.169.28","2011-09-30 06:15:07");
INSERT INTO profine_admin_ip_tracking VALUES("33","1","122.177.169.28","2011-10-03 12:32:02");
INSERT INTO profine_admin_ip_tracking VALUES("34","1","122.177.169.28","2011-10-03 06:18:51");
INSERT INTO profine_admin_ip_tracking VALUES("35","1","76.16.241.238","2011-10-03 10:42:41");
INSERT INTO profine_admin_ip_tracking VALUES("36","1","122.177.169.28","2011-10-03 10:45:57");
INSERT INTO profine_admin_ip_tracking VALUES("37","1","122.177.169.28","2011-10-03 11:09:49");
INSERT INTO profine_admin_ip_tracking VALUES("38","1","122.177.169.28","2011-10-04 01:21:43");
INSERT INTO profine_admin_ip_tracking VALUES("39","1","122.177.169.28","2011-10-04 02:21:40");
INSERT INTO profine_admin_ip_tracking VALUES("40","1","115.242.80.77","2011-10-04 12:21:55");
INSERT INTO profine_admin_ip_tracking VALUES("41","1","122.177.169.28","2011-10-05 04:35:08");
INSERT INTO profine_admin_ip_tracking VALUES("42","1","122.173.9.61","2011-10-10 01:24:33");
INSERT INTO profine_admin_ip_tracking VALUES("43","1","122.173.9.61","2011-10-10 01:27:42");
INSERT INTO profine_admin_ip_tracking VALUES("44","1","122.173.9.61","2011-10-10 01:36:29");
INSERT INTO profine_admin_ip_tracking VALUES("45","1","122.173.9.61","2011-10-10 03:16:56");
INSERT INTO profine_admin_ip_tracking VALUES("46","1","122.173.9.61","2011-10-10 03:32:47");
INSERT INTO profine_admin_ip_tracking VALUES("47","1","122.173.9.61","2011-10-10 03:35:03");
INSERT INTO profine_admin_ip_tracking VALUES("48","1","122.173.9.61","2011-10-10 03:52:54");
INSERT INTO profine_admin_ip_tracking VALUES("49","1","122.173.9.61","2011-10-10 05:45:42");
INSERT INTO profine_admin_ip_tracking VALUES("50","1","122.173.9.61","2011-10-10 05:48:22");
INSERT INTO profine_admin_ip_tracking VALUES("51","1","122.173.9.61","2011-10-10 05:49:45");
INSERT INTO profine_admin_ip_tracking VALUES("52","1","76.16.241.238","2011-10-10 11:35:51");
INSERT INTO profine_admin_ip_tracking VALUES("53","1","76.16.241.238","2011-10-10 11:35:53");
INSERT INTO profine_admin_ip_tracking VALUES("54","1","122.173.9.61","2011-10-11 12:10:05");
INSERT INTO profine_admin_ip_tracking VALUES("55","1","122.173.9.61","2011-10-11 02:29:23");
INSERT INTO profine_admin_ip_tracking VALUES("56","1","122.173.9.61","2011-10-11 11:43:56");
INSERT INTO profine_admin_ip_tracking VALUES("57","1","203.122.35.165","2011-10-11 11:44:48");
INSERT INTO profine_admin_ip_tracking VALUES("58","1","122.173.9.61","2011-10-12 02:38:26");
INSERT INTO profine_admin_ip_tracking VALUES("59","1","122.173.9.61","2011-10-12 11:19:35");
INSERT INTO profine_admin_ip_tracking VALUES("60","1","115.241.158.112","2011-10-18 11:24:44");
INSERT INTO profine_admin_ip_tracking VALUES("61","1","122.177.202.171","2011-10-18 10:05:57");
INSERT INTO profine_admin_ip_tracking VALUES("62","1","122.177.202.171","2011-10-20 03:33:49");
INSERT INTO profine_admin_ip_tracking VALUES("63","1","122.177.202.171","2011-10-20 06:03:43");
INSERT INTO profine_admin_ip_tracking VALUES("64","1","122.177.202.171","2011-10-20 06:25:26");
INSERT INTO profine_admin_ip_tracking VALUES("65","1","122.177.202.134","2011-10-24 04:00:57");
INSERT INTO profine_admin_ip_tracking VALUES("66","1","122.177.202.134","2011-10-24 04:26:29");
INSERT INTO profine_admin_ip_tracking VALUES("67","1","122.177.202.134","2011-10-24 05:08:39");
INSERT INTO profine_admin_ip_tracking VALUES("68","1","122.177.202.134","2011-10-24 05:44:28");
INSERT INTO profine_admin_ip_tracking VALUES("69","1","122.177.202.134","2011-10-27 04:11:46");
INSERT INTO profine_admin_ip_tracking VALUES("70","1","122.177.202.134","2011-10-27 06:37:28");
INSERT INTO profine_admin_ip_tracking VALUES("71","1","122.177.202.134","2011-10-28 03:30:38");
INSERT INTO profine_admin_ip_tracking VALUES("72","1","122.177.202.134","2011-10-28 04:39:49");
INSERT INTO profine_admin_ip_tracking VALUES("73","1","122.177.200.73","2011-10-28 05:20:03");
INSERT INTO profine_admin_ip_tracking VALUES("74","1","122.177.200.73","2011-10-28 05:29:29");
INSERT INTO profine_admin_ip_tracking VALUES("75","1","122.177.200.73","2011-11-04 12:10:55");
INSERT INTO profine_admin_ip_tracking VALUES("76","1","122.177.200.73","2011-11-04 02:14:15");
INSERT INTO profine_admin_ip_tracking VALUES("77","1","122.177.188.130","2011-11-23 10:14:21");
INSERT INTO profine_admin_ip_tracking VALUES("78","1","122.177.190.130","2011-11-29 11:33:32");
INSERT INTO profine_admin_ip_tracking VALUES("79","1","122.177.216.56","2011-12-13 12:13:29");
INSERT INTO profine_admin_ip_tracking VALUES("80","1","122.177.216.56","2011-12-13 12:30:53");
INSERT INTO profine_admin_ip_tracking VALUES("81","1","122.177.199.37","2012-01-01 10:23:57");
INSERT INTO profine_admin_ip_tracking VALUES("82","1","122.177.161.84","2012-01-02 02:48:29");
INSERT INTO profine_admin_ip_tracking VALUES("83","1","122.177.161.84","2012-01-03 09:23:49");
INSERT INTO profine_admin_ip_tracking VALUES("84","1","122.177.161.84","2012-01-03 10:13:46");
INSERT INTO profine_admin_ip_tracking VALUES("85","1","122.177.161.84","2012-01-04 05:11:28");
INSERT INTO profine_admin_ip_tracking VALUES("86","1","122.177.161.84","2012-01-04 08:56:15");
INSERT INTO profine_admin_ip_tracking VALUES("87","1","122.177.161.84","2012-01-08 11:04:02");
INSERT INTO profine_admin_ip_tracking VALUES("88","1","122.177.161.84","2012-01-11 12:05:23");
INSERT INTO profine_admin_ip_tracking VALUES("89","1","122.177.161.84","2012-01-11 10:03:34");
INSERT INTO profine_admin_ip_tracking VALUES("90","1","122.177.161.84","2012-01-12 01:24:19");
INSERT INTO profine_admin_ip_tracking VALUES("91","1","122.177.161.84","2012-01-12 03:41:07");
INSERT INTO profine_admin_ip_tracking VALUES("92","1","122.177.161.84","2012-01-12 10:05:21");
INSERT INTO profine_admin_ip_tracking VALUES("93","1","122.177.161.84","2012-01-15 10:59:16");
INSERT INTO profine_admin_ip_tracking VALUES("94","1","122.177.161.84","2012-01-16 12:08:46");
INSERT INTO profine_admin_ip_tracking VALUES("95","1","122.177.161.84","2012-01-16 10:43:05");
INSERT INTO profine_admin_ip_tracking VALUES("96","1","122.177.161.84","2012-01-17 11:48:20");
INSERT INTO profine_admin_ip_tracking VALUES("97","1","122.177.161.84","2012-01-18 01:23:50");
INSERT INTO profine_admin_ip_tracking VALUES("98","1","122.177.161.84","2012-01-18 01:24:53");
INSERT INTO profine_admin_ip_tracking VALUES("99","1","122.177.161.84","2012-01-18 02:18:54");
INSERT INTO profine_admin_ip_tracking VALUES("100","1","122.177.161.84","2012-01-18 02:19:47");



DROP TABLE profine_admin_login_table;

CREATE TABLE `profine_admin_login_table` (
  `id` bigint(20) NOT NULL auto_increment,
  `username` varchar(255) collate latin1_general_ci default NULL,
  `password` varchar(20) collate latin1_general_ci default NULL,
  `email` varchar(255) collate latin1_general_ci default NULL,
  `first_name` varchar(255) collate latin1_general_ci default NULL,
  `last_name` varchar(255) collate latin1_general_ci default NULL,
  `status` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_admin_login_table VALUES("1","admin","profine","rsingh@ferotech.com","Profine","Administrator","1");



DROP TABLE profine_category;

CREATE TABLE `profine_category` (
  `id` int(11) NOT NULL auto_increment COMMENT 'Id',
  `parent_id` int(11) NOT NULL COMMENT 'parent_id = 0 means main category other wise child category',
  `category` varchar(100) collate latin1_general_ci NOT NULL COMMENT 'Category Name',
  `description` text collate latin1_general_ci NOT NULL COMMENT 'category description',
  `meta_title` text collate latin1_general_ci NOT NULL,
  `meta_keyword` text collate latin1_general_ci NOT NULL,
  `meta_description` text collate latin1_general_ci NOT NULL,
  `status` enum('0','1') collate latin1_general_ci NOT NULL default '1' COMMENT '0->De Active, 1->Active',
  `date_added` int(10) unsigned NOT NULL COMMENT 'date added',
  `date_edited` int(11) NOT NULL COMMENT 'date added',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_category VALUES("14","0","Windows Systems","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","profine Windows system","profine windows system","profine windows system","1","1318430363","0");
INSERT INTO profine_category VALUES("15","0","Residential Door Systems","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Residential Door Systems","Residential Door Systems","Residential Door Systems","1","1318430378","0");
INSERT INTO profine_category VALUES("16","0","PVC-U-Sheet","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","PVC-U-Sheet","PVC-U-Sheet","PVC-U-Sheet","1","1318430391","0");
INSERT INTO profine_category VALUES("17","0","Panels","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Panels","Panels","Panels","1","1318430401","0");
INSERT INTO profine_category VALUES("18","0","Special System","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Special System","Special System","Special System","1","1318430414","0");



DROP TABLE profine_cms;

CREATE TABLE `profine_cms` (
  `id` int(11) NOT NULL auto_increment,
  `page_id` int(11) default NULL,
  `title` varchar(255) default NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO profine_cms VALUES("2","3","","&lt;p&gt;Profine is the emphatic answer to the complex development of the international market for uPVC profiles. Under the brands KBE, K&amp;Ouml;MMERLING and TROCAL, we produce uPVC profiles for windows and doors, shutters and fa&amp;ccedil;ades as well as uPVC sheets.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine GmbH -International Profile Group - was established in 2003, when HT TROPLAST consolidated its profile business activities under one roof. The profine company headquarters is in Troisdorf (North Rhine-Westphalia, Germany).&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The Management Board of profine group consists of Frank Pohl (CEO), Gerhard Bickmann, Achim Judt, Albrecht P. Lange and Gerhard Schwager.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With a market share about 20%, our company is the world-wide industry leader.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine has a total of 3,200 employees in 28 locations in 21 countries. Around 1,800 of these employees are in Germany.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;A sales volume of 696 million euros in the year 2010 (consolidated) and a current production capacity about 450,000 tons annually of high-quality plastic profiles are convincing proof of our capabilities and the trust of our customers.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-family: wingdings,zapf dingbats;&quot;&gt; &lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: webdings;&quot;&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif;&quot;&gt;&acirc;�� &amp;nbsp;&lt;/span&gt;&lt;/span&gt;In Germany we have production sites in Berlin and Pirmasens.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Other production sites are located in:&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Marmoutier, France&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Bosaro, Italy&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Madrid, Spain&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Woskresensk and Chabarovsk, Russia&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Zaporozhie, Ukraine&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Tianjin, China&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;��&lt;/span&gt;&amp;nbsp; Huntsville, Alabama USA (sheets)&lt;/p&gt;\n&lt;blockquote&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;/blockquote&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;You will find contact information for our production sites and the most important sales locations here.&lt;/p&gt;","1318409403","1318429203","","1");
INSERT INTO profine_cms VALUES("3","1","KOEMMERLING - more than just a window","&lt;p&gt;Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&#039;s benefits.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;","1318409812","1318429612","","1");
INSERT INTO profine_cms VALUES("4","4","","&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;1999&lt;/strong&gt; HT TROPLAST acquires KBE Window Systems and now has  	three brands - TROCAL, KNIPPING and KBE&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2000&lt;/strong&gt; HT TROPLAST takes over K&amp;Ouml;MMERLING KUNSTSTOFFE and becomes a leading supplier on the international profile market&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2003&lt;/strong&gt; Establishment of profine GmbH as a holding company for profile      	activities&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2004&lt;/strong&gt; Knipping management buy-out and sale of HT TROPLAST to international private equity investors&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2005&lt;/strong&gt; Restructuring of HT TROPLAST-  	concentration on core business profiles&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2006&lt;/strong&gt; Consolidation of international market leadership of the profine group&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2007&lt;/strong&gt; Arcapita Investment Bank becomes the new owner of profine group&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2010&lt;/strong&gt; Profine GmbH opens new subsidiary, Profine India&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;hr /&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;","1325498165","1325517965","","1");
INSERT INTO profine_cms VALUES("5","5","Thinking ahead - The future of windows in strong brands","&lt;p&gt;Profine - the international profile group with a future. A company that possesses the crucial prerequisites to lead and define tomorrow&amp;rsquo;s market.&lt;br /&gt;&lt;br /&gt;With our successful brands KBE, K&amp;Ouml;MMERLING and TROCAL, we have the right profile for every purpose and are the world-wide No. 1 manufacturer of plastic window profiles.&lt;br /&gt;&lt;br /&gt;In addition, we are in a position to react flexibly and individually to the specific demands of the markets. This is because, in addition to our German production sites, we also produce in France, Italy, Russia, China, Ukraine, Spain and the USA and have a tight network of sales offices. This is how we offer top-quality products and consulting worldwide.&lt;br /&gt;&lt;br /&gt;When it comes to plastic windows, profine thinks ahead. With fresh ideas, future-shaping technology and the successful brands KBE, K&amp;Ouml;MMERLING and TROCAL. Our combined experience and expertise along with the creativity and flexibility of our brands put us in the lead market position with regard to both volume and quality. We leverage this advantage in the market for our customers&amp;rsquo; success.&lt;/p&gt;","1325651400rewindo-logo.gif","1325671200","","1");
INSERT INTO profine_cms VALUES("6","6","Sustainability. With a clear conscience","&lt;p&gt;Sustainability as we understand it is more than just environmental protection. To us it means the attentive handling of the markets&#039; and our customers&#039; needs. Accordingly we assign a central role not only to ecology, but also to economic aspects and issues of social relevance.&lt;br /&gt;&lt;br /&gt;With our greenline principle we think ahead, create brand values and give our customers excellent opportunities on the market: energy-efficient window systems, lead-free stabilizers in the virgin material and sophisticated recycling schemes carry the added benefit of enhancing sustainability.&lt;br /&gt;&lt;br /&gt;Our products fulfil all of the requirements for thermal insulation and the associated energy efficiency. They return a sustainable CO&lt;span style=&quot;font-size: xx-small;&quot;&gt;&lt;sub&gt;2&lt;/sub&gt;&lt;/span&gt; balance and a superior price-performance ratio coupled with a long service life. They therefore fulfil and exceed the functional requirements specialised window manufacturers, architects, developers, and end users&lt;br /&gt;demand from these sectors.&lt;br /&gt;&lt;br /&gt;For nearly ten years now we have been producing uPVC profiles extensively with lead-free stabilisers based on ecofriendly calcium and zinc. Since 2004 we have done away completely with lead in the virgin material for all of our brand systems.&lt;br /&gt;&lt;br /&gt;We specifically integrate regrind materials in our profiles because our knowhow has shown that these lead to better products. This maintains the efficiency of our draw on resources and testifies to the responsibility we take in our operations. Greenhouse gas emissions caused by the recycling material incorporated in the profile are, at average, lower by about 90% than from traditional plastic window materials.&lt;br /&gt;&lt;br /&gt;In addition we as a founding member of a nationwide recycling initiative assure that old uPVC windows are recycled in a self contained cycle.&lt;br /&gt;&lt;br /&gt;With the aim of optimising further the value created for windows our engineers are developing the latest product generations with less material, but with improved engineering properties. Intelligent chamber systems and static&lt;br /&gt;structural attributes on the one hand serve to minimise the draw on resources, and on the other culminate in extraordinarily competitive products.&lt;br /&gt;&lt;br /&gt;K&amp;Ouml;MMERLING is a proactive practitioner of the various aspects presented by the global trend towards sustainability.&lt;br /&gt;&lt;br /&gt;For ultimately it is our aim to provide our partner companies and their customers with economically and ecologically perfected system solutions that justify the decisions they make in good faith. Good sense and responsibility &amp;ndash; with a clear conscience.&lt;/p&gt;","1326357962","1326377762","","1");



DROP TABLE profine_countries;

CREATE TABLE `profine_countries` (
  `id` int(11) NOT NULL auto_increment,
  `country_code` varchar(2) NOT NULL default '',
  `country_name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

INSERT INTO profine_countries VALUES("1","US","United States");
INSERT INTO profine_countries VALUES("2","CA","Canada");
INSERT INTO profine_countries VALUES("3","AF","Afghanistan");
INSERT INTO profine_countries VALUES("4","AL","Albania");
INSERT INTO profine_countries VALUES("5","DZ","Algeria");
INSERT INTO profine_countries VALUES("6","DS","American Samoa");
INSERT INTO profine_countries VALUES("7","AD","Andorra");
INSERT INTO profine_countries VALUES("8","AO","Angola");
INSERT INTO profine_countries VALUES("9","AI","Anguilla");
INSERT INTO profine_countries VALUES("10","AQ","Antarctica");
INSERT INTO profine_countries VALUES("11","AG","Antigua and/or Barbuda");
INSERT INTO profine_countries VALUES("12","AR","Argentina");
INSERT INTO profine_countries VALUES("13","AM","Armenia");
INSERT INTO profine_countries VALUES("14","AW","Aruba");
INSERT INTO profine_countries VALUES("15","AU","Australia");
INSERT INTO profine_countries VALUES("16","AT","Austria");
INSERT INTO profine_countries VALUES("17","AZ","Azerbaijan");
INSERT INTO profine_countries VALUES("18","BS","Bahamas");
INSERT INTO profine_countries VALUES("19","BH","Bahrain");
INSERT INTO profine_countries VALUES("20","BD","Bangladesh");
INSERT INTO profine_countries VALUES("21","BB","Barbados");
INSERT INTO profine_countries VALUES("22","BY","Belarus");
INSERT INTO profine_countries VALUES("23","BE","Belgium");
INSERT INTO profine_countries VALUES("24","BZ","Belize");
INSERT INTO profine_countries VALUES("25","BJ","Benin");
INSERT INTO profine_countries VALUES("26","BM","Bermuda");
INSERT INTO profine_countries VALUES("27","BT","Bhutan");
INSERT INTO profine_countries VALUES("28","BO","Bolivia");
INSERT INTO profine_countries VALUES("29","BA","Bosnia and Herzegovina");
INSERT INTO profine_countries VALUES("30","BW","Botswana");
INSERT INTO profine_countries VALUES("31","BV","Bouvet Island");
INSERT INTO profine_countries VALUES("32","BR","Brazil");
INSERT INTO profine_countries VALUES("33","IO","British lndian Ocean Territory");
INSERT INTO profine_countries VALUES("34","BN","Brunei Darussalam");
INSERT INTO profine_countries VALUES("35","BG","Bulgaria");
INSERT INTO profine_countries VALUES("36","BF","Burkina Faso");
INSERT INTO profine_countries VALUES("37","BI","Burundi");
INSERT INTO profine_countries VALUES("38","KH","Cambodia");
INSERT INTO profine_countries VALUES("39","CM","Cameroon");
INSERT INTO profine_countries VALUES("40","CV","Cape Verde");
INSERT INTO profine_countries VALUES("41","KY","Cayman Islands");
INSERT INTO profine_countries VALUES("42","CF","Central African Republic");
INSERT INTO profine_countries VALUES("43","TD","Chad");
INSERT INTO profine_countries VALUES("44","CL","Chile");
INSERT INTO profine_countries VALUES("45","CN","China");
INSERT INTO profine_countries VALUES("46","CX","Christmas Island");
INSERT INTO profine_countries VALUES("47","CC","Cocos (Keeling) Islands");
INSERT INTO profine_countries VALUES("48","CO","Colombia");
INSERT INTO profine_countries VALUES("49","KM","Comoros");
INSERT INTO profine_countries VALUES("50","CG","Congo");
INSERT INTO profine_countries VALUES("51","CK","Cook Islands");
INSERT INTO profine_countries VALUES("52","CR","Costa Rica");
INSERT INTO profine_countries VALUES("53","HR","Croatia (Hrvatska)");
INSERT INTO profine_countries VALUES("54","CU","Cuba");
INSERT INTO profine_countries VALUES("55","CY","Cyprus");
INSERT INTO profine_countries VALUES("56","CZ","Czech Republic");
INSERT INTO profine_countries VALUES("57","DK","Denmark");
INSERT INTO profine_countries VALUES("58","DJ","Djibouti");
INSERT INTO profine_countries VALUES("59","DM","Dominica");
INSERT INTO profine_countries VALUES("60","DO","Dominican Republic");
INSERT INTO profine_countries VALUES("61","TP","East Timor");
INSERT INTO profine_countries VALUES("62","EC","Ecudaor");
INSERT INTO profine_countries VALUES("63","EG","Egypt");
INSERT INTO profine_countries VALUES("64","SV","El Salvador");
INSERT INTO profine_countries VALUES("65","GQ","Equatorial Guinea");
INSERT INTO profine_countries VALUES("66","ER","Eritrea");
INSERT INTO profine_countries VALUES("67","EE","Estonia");
INSERT INTO profine_countries VALUES("68","ET","Ethiopia");
INSERT INTO profine_countries VALUES("69","FK","Falkland Islands (Malvinas)");
INSERT INTO profine_countries VALUES("70","FO","Faroe Islands");
INSERT INTO profine_countries VALUES("71","FJ","Fiji");
INSERT INTO profine_countries VALUES("72","FI","Finland");
INSERT INTO profine_countries VALUES("73","FR","France");
INSERT INTO profine_countries VALUES("74","FX","France, Metropolitan");
INSERT INTO profine_countries VALUES("75","GF","French Guiana");
INSERT INTO profine_countries VALUES("76","PF","French Polynesia");
INSERT INTO profine_countries VALUES("77","TF","French Southern Territories");
INSERT INTO profine_countries VALUES("78","GA","Gabon");
INSERT INTO profine_countries VALUES("79","GM","Gambia");
INSERT INTO profine_countries VALUES("80","GE","Georgia");
INSERT INTO profine_countries VALUES("81","DE","Germany");
INSERT INTO profine_countries VALUES("82","GH","Ghana");
INSERT INTO profine_countries VALUES("83","GI","Gibraltar");
INSERT INTO profine_countries VALUES("84","GR","Greece");
INSERT INTO profine_countries VALUES("85","GL","Greenland");
INSERT INTO profine_countries VALUES("86","GD","Grenada");
INSERT INTO profine_countries VALUES("87","GP","Guadeloupe");
INSERT INTO profine_countries VALUES("88","GU","Guam");
INSERT INTO profine_countries VALUES("89","GT","Guatemala");
INSERT INTO profine_countries VALUES("90","GN","Guinea");
INSERT INTO profine_countries VALUES("91","GW","Guinea-Bissau");
INSERT INTO profine_countries VALUES("92","GY","Guyana");
INSERT INTO profine_countries VALUES("93","HT","Haiti");
INSERT INTO profine_countries VALUES("94","HM","Heard and Mc Donald Islands");
INSERT INTO profine_countries VALUES("95","HN","Honduras");
INSERT INTO profine_countries VALUES("96","HK","Hong Kong");
INSERT INTO profine_countries VALUES("97","HU","Hungary");
INSERT INTO profine_countries VALUES("98","IS","Iceland");
INSERT INTO profine_countries VALUES("99","IN","India");
INSERT INTO profine_countries VALUES("100","ID","Indonesia");
INSERT INTO profine_countries VALUES("101","IR","Iran (Islamic Republic of)");
INSERT INTO profine_countries VALUES("102","IQ","Iraq");
INSERT INTO profine_countries VALUES("103","IE","Ireland");
INSERT INTO profine_countries VALUES("104","IL","Israel");
INSERT INTO profine_countries VALUES("105","IT","Italy");
INSERT INTO profine_countries VALUES("106","CI","Ivory Coast");
INSERT INTO profine_countries VALUES("107","JM","Jamaica");
INSERT INTO profine_countries VALUES("108","JP","Japan");
INSERT INTO profine_countries VALUES("109","JO","Jordan");
INSERT INTO profine_countries VALUES("110","KZ","Kazakhstan");
INSERT INTO profine_countries VALUES("111","KE","Kenya");
INSERT INTO profine_countries VALUES("112","KI","Kiribati");
INSERT INTO profine_countries VALUES("113","KP","Korea, Democratic People\'s Republic of");
INSERT INTO profine_countries VALUES("114","KR","Korea, Republic of");
INSERT INTO profine_countries VALUES("115","KW","Kuwait");
INSERT INTO profine_countries VALUES("116","KG","Kyrgyzstan");
INSERT INTO profine_countries VALUES("117","LA","Lao People\'s Democratic Republic");
INSERT INTO profine_countries VALUES("118","LV","Latvia");
INSERT INTO profine_countries VALUES("119","LB","Lebanon");
INSERT INTO profine_countries VALUES("120","LS","Lesotho");
INSERT INTO profine_countries VALUES("121","LR","Liberia");
INSERT INTO profine_countries VALUES("122","LY","Libyan Arab Jamahiriya");
INSERT INTO profine_countries VALUES("123","LI","Liechtenstein");
INSERT INTO profine_countries VALUES("124","LT","Lithuania");
INSERT INTO profine_countries VALUES("125","LU","Luxembourg");
INSERT INTO profine_countries VALUES("126","MO","Macau");
INSERT INTO profine_countries VALUES("127","MK","Macedonia");
INSERT INTO profine_countries VALUES("128","MG","Madagascar");
INSERT INTO profine_countries VALUES("129","MW","Malawi");
INSERT INTO profine_countries VALUES("130","MY","Malaysia");
INSERT INTO profine_countries VALUES("131","MV","Maldives");
INSERT INTO profine_countries VALUES("132","ML","Mali");
INSERT INTO profine_countries VALUES("133","MT","Malta");
INSERT INTO profine_countries VALUES("134","MH","Marshall Islands");
INSERT INTO profine_countries VALUES("135","MQ","Martinique");
INSERT INTO profine_countries VALUES("136","MR","Mauritania");
INSERT INTO profine_countries VALUES("137","MU","Mauritius");
INSERT INTO profine_countries VALUES("138","TY","Mayotte");
INSERT INTO profine_countries VALUES("139","MX","Mexico");
INSERT INTO profine_countries VALUES("140","FM","Micronesia, Federated States of");
INSERT INTO profine_countries VALUES("141","MD","Moldova, Republic of");
INSERT INTO profine_countries VALUES("142","MC","Monaco");
INSERT INTO profine_countries VALUES("143","MN","Mongolia");
INSERT INTO profine_countries VALUES("144","MS","Montserrat");
INSERT INTO profine_countries VALUES("145","MA","Morocco");
INSERT INTO profine_countries VALUES("146","MZ","Mozambique");
INSERT INTO profine_countries VALUES("147","MM","Myanmar");
INSERT INTO profine_countries VALUES("148","NA","Namibia");
INSERT INTO profine_countries VALUES("149","NR","Nauru");
INSERT INTO profine_countries VALUES("150","NP","Nepal");
INSERT INTO profine_countries VALUES("151","NL","Netherlands");
INSERT INTO profine_countries VALUES("152","AN","Netherlands Antilles");
INSERT INTO profine_countries VALUES("153","NC","New Caledonia");
INSERT INTO profine_countries VALUES("154","NZ","New Zealand");
INSERT INTO profine_countries VALUES("155","NI","Nicaragua");
INSERT INTO profine_countries VALUES("156","NE","Niger");
INSERT INTO profine_countries VALUES("157","NG","Nigeria");
INSERT INTO profine_countries VALUES("158","NU","Niue");
INSERT INTO profine_countries VALUES("159","NF","Norfork Island");
INSERT INTO profine_countries VALUES("160","MP","Northern Mariana Islands");
INSERT INTO profine_countries VALUES("161","NO","Norway");
INSERT INTO profine_countries VALUES("162","OM","Oman");
INSERT INTO profine_countries VALUES("163","PK","Pakistan");
INSERT INTO profine_countries VALUES("164","PW","Palau");
INSERT INTO profine_countries VALUES("165","PA","Panama");
INSERT INTO profine_countries VALUES("166","PG","Papua New Guinea");
INSERT INTO profine_countries VALUES("167","PY","Paraguay");
INSERT INTO profine_countries VALUES("168","PE","Peru");
INSERT INTO profine_countries VALUES("169","PH","Philippines");
INSERT INTO profine_countries VALUES("170","PN","Pitcairn");
INSERT INTO profine_countries VALUES("171","PL","Poland");
INSERT INTO profine_countries VALUES("172","PT","Portugal");
INSERT INTO profine_countries VALUES("173","PR","Puerto Rico");
INSERT INTO profine_countries VALUES("174","QA","Qatar");
INSERT INTO profine_countries VALUES("175","RE","Reunion");
INSERT INTO profine_countries VALUES("176","RO","Romania");
INSERT INTO profine_countries VALUES("177","RU","Russian Federation");
INSERT INTO profine_countries VALUES("178","RW","Rwanda");
INSERT INTO profine_countries VALUES("179","KN","Saint Kitts and Nevis");
INSERT INTO profine_countries VALUES("180","LC","Saint Lucia");
INSERT INTO profine_countries VALUES("181","VC","Saint Vincent and the Grenadines");
INSERT INTO profine_countries VALUES("182","WS","Samoa");
INSERT INTO profine_countries VALUES("183","SM","San Marino");
INSERT INTO profine_countries VALUES("184","ST","Sao Tome and Principe");
INSERT INTO profine_countries VALUES("185","SA","Saudi Arabia");
INSERT INTO profine_countries VALUES("186","SN","Senegal");
INSERT INTO profine_countries VALUES("187","SC","Seychelles");
INSERT INTO profine_countries VALUES("188","SL","Sierra Leone");
INSERT INTO profine_countries VALUES("189","SG","Singapore");
INSERT INTO profine_countries VALUES("190","SK","Slovakia");
INSERT INTO profine_countries VALUES("191","SI","Slovenia");
INSERT INTO profine_countries VALUES("192","SB","Solomon Islands");
INSERT INTO profine_countries VALUES("193","SO","Somalia");
INSERT INTO profine_countries VALUES("194","ZA","South Africa");
INSERT INTO profine_countries VALUES("195","GS","South Georgia South Sandwich Islands");
INSERT INTO profine_countries VALUES("196","ES","Spain");
INSERT INTO profine_countries VALUES("197","LK","Sri Lanka");
INSERT INTO profine_countries VALUES("198","SH","St. Helena");
INSERT INTO profine_countries VALUES("199","PM","St. Pierre and Miquelon");
INSERT INTO profine_countries VALUES("200","SD","Sudan");
INSERT INTO profine_countries VALUES("201","SR","Suriname");
INSERT INTO profine_countries VALUES("202","SJ","Svalbarn and Jan Mayen Islands");
INSERT INTO profine_countries VALUES("203","SZ","Swaziland");
INSERT INTO profine_countries VALUES("204","SE","Sweden");
INSERT INTO profine_countries VALUES("205","CH","Switzerland");
INSERT INTO profine_countries VALUES("206","SY","Syrian Arab Republic");
INSERT INTO profine_countries VALUES("207","TW","Taiwan");
INSERT INTO profine_countries VALUES("208","TJ","Tajikistan");
INSERT INTO profine_countries VALUES("209","TZ","Tanzania, United Republic of");
INSERT INTO profine_countries VALUES("210","TH","Thailand");
INSERT INTO profine_countries VALUES("211","TG","Togo");
INSERT INTO profine_countries VALUES("212","TK","Tokelau");
INSERT INTO profine_countries VALUES("213","TO","Tonga");
INSERT INTO profine_countries VALUES("214","TT","Trinidad and Tobago");
INSERT INTO profine_countries VALUES("215","TN","Tunisia");
INSERT INTO profine_countries VALUES("216","TR","Turkey");
INSERT INTO profine_countries VALUES("217","TM","Turkmenistan");
INSERT INTO profine_countries VALUES("218","TC","Turks and Caicos Islands");
INSERT INTO profine_countries VALUES("219","TV","Tuvalu");
INSERT INTO profine_countries VALUES("220","UG","Uganda");
INSERT INTO profine_countries VALUES("221","UA","Ukraine");
INSERT INTO profine_countries VALUES("222","AE","United Arab Emirates");
INSERT INTO profine_countries VALUES("223","GB","United Kingdom");
INSERT INTO profine_countries VALUES("224","UM","United States minor outlying islands");
INSERT INTO profine_countries VALUES("225","UY","Uruguay");
INSERT INTO profine_countries VALUES("226","UZ","Uzbekistan");
INSERT INTO profine_countries VALUES("227","VU","Vanuatu");
INSERT INTO profine_countries VALUES("228","VA","Vatican City State");
INSERT INTO profine_countries VALUES("229","VE","Venezuela");
INSERT INTO profine_countries VALUES("230","VN","Vietnam");
INSERT INTO profine_countries VALUES("231","VG","Virigan Islands (British)");
INSERT INTO profine_countries VALUES("232","VI","Virgin Islands (U.S.)");
INSERT INTO profine_countries VALUES("233","WF","Wallis and Futuna Islands");
INSERT INTO profine_countries VALUES("234","EH","Western Sahara");
INSERT INTO profine_countries VALUES("235","YE","Yemen");
INSERT INTO profine_countries VALUES("236","YU","Yugoslavia");
INSERT INTO profine_countries VALUES("237","ZR","Zaire");
INSERT INTO profine_countries VALUES("238","ZM","Zambia");
INSERT INTO profine_countries VALUES("239","ZW","Zimbabwe");



DROP TABLE profine_currency;

CREATE TABLE `profine_currency` (
  `currency` char(3) NOT NULL default '',
  `rate` float NOT NULL default '0',
  PRIMARY KEY  (`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED COMMENT='All Currency are Euro equivalent';

INSERT INTO profine_currency VALUES("USD","1.3656");
INSERT INTO profine_currency VALUES("JPY","105.32");
INSERT INTO profine_currency VALUES("BGN","1.9558");
INSERT INTO profine_currency VALUES("CZK","24.522");
INSERT INTO profine_currency VALUES("DKK","7.4472");
INSERT INTO profine_currency VALUES("GBP","0.86015");
INSERT INTO profine_currency VALUES("HUF","282.55");
INSERT INTO profine_currency VALUES("LTL","3.4528");
INSERT INTO profine_currency VALUES("LVL","0.7091");
INSERT INTO profine_currency VALUES("PLN","4.3232");
INSERT INTO profine_currency VALUES("RON","4.2823");
INSERT INTO profine_currency VALUES("SEK","8.9905");
INSERT INTO profine_currency VALUES("CHF","1.2055");
INSERT INTO profine_currency VALUES("NOK","7.5905");
INSERT INTO profine_currency VALUES("HRK","7.491");
INSERT INTO profine_currency VALUES("RUB","41.35");
INSERT INTO profine_currency VALUES("TRY","2.4485");
INSERT INTO profine_currency VALUES("AUD","1.3225");
INSERT INTO profine_currency VALUES("BRL","2.3053");
INSERT INTO profine_currency VALUES("CAD","1.3668");
INSERT INTO profine_currency VALUES("CNY","8.7443");
INSERT INTO profine_currency VALUES("HKD","10.6544");
INSERT INTO profine_currency VALUES("IDR","11773.4");
INSERT INTO profine_currency VALUES("ILS","5.0935");
INSERT INTO profine_currency VALUES("INR","64.497");
INSERT INTO profine_currency VALUES("KRW","1471.9");
INSERT INTO profine_currency VALUES("MXN","17.4152");
INSERT INTO profine_currency VALUES("MYR","4.1453");
INSERT INTO profine_currency VALUES("NZD","1.6658");
INSERT INTO profine_currency VALUES("PHP","58.503");
INSERT INTO profine_currency VALUES("SGD","1.6842");
INSERT INTO profine_currency VALUES("THB","41.159");
INSERT INTO profine_currency VALUES("ZAR","10.0346");



DROP TABLE profine_dealer;

CREATE TABLE `profine_dealer` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(25) default NULL,
  `password` varchar(25) default NULL,
  `fname` varchar(25) default NULL,
  `lname` varchar(25) default NULL,
  `email` varchar(60) default NULL,
  `phone` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  `country` varchar(45) default NULL,
  `city` varchar(45) default NULL,
  `zip_code` varchar(15) default NULL,
  `photo` blob,
  `last_login` int(11) default NULL,
  `added_date` int(11) default NULL,
  `edited_date` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_events;

CREATE TABLE `profine_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_name` varchar(255) default NULL,
  `arival_date` int(11) default NULL,
  `locations` varchar(255) default NULL,
  `description` text NOT NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_events VALUES("1","Events and Seminars","1319500800","unknown","&lt;p&gt;\n	Sash Covering Residential Door Panel for profine Systems&lt;/p&gt;\n","1319471925","","1");
INSERT INTO profine_events VALUES("2","Events and Seminars","1319587200","Events and Seminars","RAL Certification for 15 profine Bonded Systems ","1319471984","","1");



DROP TABLE profine_images_gallery;

CREATE TABLE `profine_images_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL default '0',
  `image_name` varchar(255) default NULL,
  `caption` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `position` int(11) NOT NULL default '0',
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE profine_news;

CREATE TABLE `profine_news` (
  `id` int(11) NOT NULL auto_increment,
  `news_id` int(11) default NULL,
  `news_title` text,
  `description` text,
  `images` varchar(255) default NULL,
  `news_date` int(11) default NULL,
  `added_date` int(11) default NULL,
  `edited_date` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO profine_news VALUES("6","1","Whereas even seven out of ten windows used in renovation","&lt;p&gt;\n	Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&amp;#39;s benefits.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n","","1319587200","1319731826","1326384857","1");
INSERT INTO profine_news VALUES("7","1","Today, plastic is the most successful window material and its market share is constantly","&lt;p&gt;\n	Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	The product range is rounded out with window sills, safe roller and French shutters, uPVC sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&amp;#39;s benefits.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n","","1319587200","1319732265","1326388707","1");
INSERT INTO profine_news VALUES("9","2","Sed diam nonummy nibh euismod tincidunt ut","&lt;p&gt;\n	Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	The product range is rounded out with window sills, safe roller and French shutters, uPVC sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&amp;#39;s benefits.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n","","1319587200","1319732371","1326384939","1");
INSERT INTO profine_news VALUES("10","2","Window material and its market share is constantly growing. In residential","&lt;p&gt;\n	Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	The product range is rounded out with window sills, safe roller and French shutters, uPVC sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&amp;#39;s benefits.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n","","1319673600","1319732398","1326384992","1");
INSERT INTO profine_news VALUES("12","3","The product range is rounded out with window sills,","&lt;p&gt;\n	Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&amp;#39;s benefits.&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;\n	With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n","","1319760000","1319732457","1319732580","1");



DROP TABLE profine_news_category;

CREATE TABLE `profine_news_category` (
  `id` int(11) NOT NULL auto_increment,
  `category_name` varchar(255) default NULL,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_news_category VALUES("1","Press News","Press News","Press News","Press News","Press News","1");
INSERT INTO profine_news_category VALUES("2","Trade Fairs & Events","Trade Fairs and Events","Trade Fairs and Events","Trade Fairs and Events","Trade Fairs and Events","1");
INSERT INTO profine_news_category VALUES("3","Latest Openings","Latest Openings","Latest Openings","Latest Openings","Latest Openings","1");



DROP TABLE profine_pages;

CREATE TABLE `profine_pages` (
  `id` int(11) NOT NULL auto_increment,
  `pages_name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `date_added` int(11) default NULL,
  `date_edit` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO profine_pages VALUES("1","Home","Profine","Profine","Profine","Profine","","","1");
INSERT INTO profine_pages VALUES("2","Company","Company","Prifine Company","Prifine Company","Prifine Company","","","1");
INSERT INTO profine_pages VALUES("3","About us","About us","Profine About us","Profine About us","Profine About us","","","1");
INSERT INTO profine_pages VALUES("4","History","Company History","Profine Company History","Profine Company History","Profine Company History","","","1");
INSERT INTO profine_pages VALUES("5","Philosophy","Philosophy","Profine Philosophy","Profine Philosophy","Profine Philosophy","","","1");
INSERT INTO profine_pages VALUES("6","Responsibility","Responsibility","Profine Responsibility","Profine Responsibility","Profine Responsibility","","","1");
INSERT INTO profine_pages VALUES("7","Product","Profine Product","Profine Product","Profine Product","Profine Product","","","1");
INSERT INTO profine_pages VALUES("8","News","News","Profine News","Profine News","Profine News","","","1");
INSERT INTO profine_pages VALUES("9","Gallery","Profine Gallery","Profine Gallery","Profine Gallery","Profine Gallery","","","1");
INSERT INTO profine_pages VALUES("10","Contact Us","Profine Contact us","Profine Contact us","Profine Contact us","Profine Contact us","","","1");
INSERT INTO profine_pages VALUES("11","General Terms Of Business","General Terms Of Business","General Terms Of Business","General Terms Of Business","General Terms Of Business","","","1");
INSERT INTO profine_pages VALUES("12","Why To Us","Why To Us","why to us","why to us","why to us","","","1");
INSERT INTO profine_pages VALUES("13","Contact Person","Contact Person","Contact Person","Contact Person","Contact Person","","","1");
INSERT INTO profine_pages VALUES("14","User Login","User Login","User Login","User Login","User Login","","","1");
INSERT INTO profine_pages VALUES("15","Dealer Login","Dealer Login","Dealer Login","Dealer Login","Dealer Login","","","1");
INSERT INTO profine_pages VALUES("16","Testinomials","Testinomials","Testinomials","Testinomials","Testinomials","","","1");
INSERT INTO profine_pages VALUES("17","Events","Events","Events","Events","Events","","","1");
INSERT INTO profine_pages VALUES("18","Download Brochure","Download Brochure","Download Brochure","Download Brochure","Download Brochure","","","1");
INSERT INTO profine_pages VALUES("19","Terms & Conditions","Terms & Conditions","Terms & Conditions","Terms & Conditions","Terms & Conditions","","","1");
INSERT INTO profine_pages VALUES("20","Privacy Policy","Privacy Policy","Privacy Policy","Privacy Policy","Privacy Policy","","","1");
INSERT INTO profine_pages VALUES("21","FAQs","FAQs","FAQs","FAQs","FAQs","","","1");
INSERT INTO profine_pages VALUES("22","Feadback","Feadback","Feadback","Feadback","Feadback","","","1");
INSERT INTO profine_pages VALUES("23","Sitemap","Sitemap","			Sitemap","			Sitemap","			Sitemap","","","1");



DROP TABLE profine_product;

CREATE TABLE `profine_product` (
  `id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) default NULL,
  `product_code` varchar(20) default NULL,
  `price` varchar(10) default NULL,
  `description` text,
  `product_care` text,
  `sizing` text,
  `product_color` varchar(20) default NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `home_visibility` tinyint(4) NOT NULL default '0',
  `display_position` tinyint(4) NOT NULL default '0',
  `status` enum('1','0') NOT NULL default '1',
  `date_added` int(11) NOT NULL,
  `date_edited` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO profine_product VALUES("10","13","sdfdsfsdf","dsfsd","sdfsdfdsf","&lt;p&gt;\n	sdfdsf&lt;/p&gt;\n","","","","","","","0","0","1","1317727340","1317729973");
INSERT INTO profine_product VALUES("13","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736747","");
INSERT INTO profine_product VALUES("14","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736790","");
INSERT INTO profine_product VALUES("15","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736811","");
INSERT INTO profine_product VALUES("16","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736835","");
INSERT INTO profine_product VALUES("17","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736858","");
INSERT INTO profine_product VALUES("18","14","","WS-12345","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","","","","","","","0","0","1","1319736883","");
INSERT INTO profine_product VALUES("19","14","","WS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319736907","");
INSERT INTO profine_product VALUES("20","14","","WS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319736928","");
INSERT INTO profine_product VALUES("21","14","","WS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319736951","");
INSERT INTO profine_product VALUES("22","14","","","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319736969","");
INSERT INTO profine_product VALUES("23","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n","","","","","","","0","0","1","1319738165","");
INSERT INTO profine_product VALUES("24","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738190","");
INSERT INTO profine_product VALUES("25","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738220","");
INSERT INTO profine_product VALUES("26","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738256","");
INSERT INTO profine_product VALUES("27","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738284","");
INSERT INTO profine_product VALUES("28","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738420","");
INSERT INTO profine_product VALUES("29","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738453","");
INSERT INTO profine_product VALUES("30","15","","RDS-12345","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319738552","");
INSERT INTO profine_product VALUES("31","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739008","");
INSERT INTO profine_product VALUES("32","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739030","");
INSERT INTO profine_product VALUES("33","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739057","");
INSERT INTO profine_product VALUES("34","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739085","");
INSERT INTO profine_product VALUES("35","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739111","");
INSERT INTO profine_product VALUES("36","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739135","");
INSERT INTO profine_product VALUES("37","16","","PVC-U2526","","&lt;p&gt;\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.&lt;/p&gt;\n","","","","","","","0","0","1","1319739164","");



DROP TABLE profine_product_boucher;

CREATE TABLE `profine_product_boucher` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `boucher_name` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_product_images;

CREATE TABLE `profine_product_images` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `image_name` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

INSERT INTO profine_product_images VALUES("20","15","products/thumb_1319717008_1.jpg","1319736811","","1");
INSERT INTO profine_product_images VALUES("19","14","products/thumb_1319716987_1.jpg","1319736790","","1");
INSERT INTO profine_product_images VALUES("17","10","products/thumb_1317710169_trade-pic.jpg","","1317729973","1");
INSERT INTO profine_product_images VALUES("18","13","products/thumb_1319716911_1.jpg","1319736747","","1");
INSERT INTO profine_product_images VALUES("21","16","products/thumb_1319717031_1.jpg","1319736835","","1");
INSERT INTO profine_product_images VALUES("22","17","products/thumb_1319717055_1.jpg","1319736858","","1");
INSERT INTO profine_product_images VALUES("23","18","products/thumb_1319717079_2.jpg","1319736883","","1");
INSERT INTO profine_product_images VALUES("24","19","products/thumb_1319717104_2.jpg","1319736907","","1");
INSERT INTO profine_product_images VALUES("25","20","products/thumb_1319717124_2.jpg","1319736928","","1");
INSERT INTO profine_product_images VALUES("26","21","products/thumb_1319717147_2.jpg","1319736951","","1");
INSERT INTO profine_product_images VALUES("27","22","products/thumb_1319717167_2.jpg","1319736969","","1");
INSERT INTO profine_product_images VALUES("28","23","products/thumb_1319718364_1.jpg","1319738165","","1");
INSERT INTO profine_product_images VALUES("29","24","products/thumb_1319718387_1.jpg","1319738190","","1");
INSERT INTO profine_product_images VALUES("30","25","products/thumb_1319718415_1.jpg","1319738220","","1");
INSERT INTO profine_product_images VALUES("31","26","products/thumb_1319718451_1.jpg","1319738256","","1");
INSERT INTO profine_product_images VALUES("32","27","products/thumb_1319718481_1.jpg","1319738284","","1");
INSERT INTO profine_product_images VALUES("33","28","products/thumb_1319718616_1.jpg","1319738420","","1");
INSERT INTO profine_product_images VALUES("34","29","products/thumb_1319718648_2.jpg","1319738453","","1");
INSERT INTO profine_product_images VALUES("35","30","products/thumb_1319718678_2.jpg","1319738552","","1");
INSERT INTO profine_product_images VALUES("36","31","products/thumb_1319719204_1.jpg","1319739008","","1");
INSERT INTO profine_product_images VALUES("37","32","products/thumb_1319719226_1.jpg","1319739030","","1");
INSERT INTO profine_product_images VALUES("38","33","products/thumb_1319719253_1.jpg","1319739057","","1");
INSERT INTO profine_product_images VALUES("39","34","products/thumb_1319719281_1.jpg","1319739085","","1");
INSERT INTO profine_product_images VALUES("40","35","products/thumb_1319719308_1.jpg","1319739111","","1");
INSERT INTO profine_product_images VALUES("41","36","products/thumb_1319719332_2.jpg","1319739135","","1");
INSERT INTO profine_product_images VALUES("42","37","products/thumb_1319719358_2.jpg","1319739164","","1");



DROP TABLE profine_product_pdf;

CREATE TABLE `profine_product_pdf` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `pdf_name` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE profine_testimonials;

CREATE TABLE `profine_testimonials` (
  `id` int(11) NOT NULL auto_increment,
  `author_name` varchar(100) default NULL,
  `location` varchar(45) default NULL,
  `testimonials_title` varchar(255) default NULL,
  `description` text,
  `image` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO profine_testimonials VALUES("4","Mrs &amp; Mr. John Stamos","UK","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319798587testimonial-pic1.jpg","1319817121","1319823483","1");
INSERT INTO profine_testimonials VALUES("5","Mrs &amp; Mr. Smith Tayler","California","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802471testimonial-pic.jpg","1319822271","1319823470","1");
INSERT INTO profine_testimonials VALUES("6","Mrs &amp; Mr. Jaquce Callise","California","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802520testimonial-pic2.jpg","1319822320","1319823457","1");
INSERT INTO profine_testimonials VALUES("7","Mrs &amp; Mr. Tom","US","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802587testimonial-pic3.jpg","1319822387","1319823441","1");



DROP TABLE profine_user;

CREATE TABLE `profine_user` (
  `id` int(11) NOT NULL auto_increment,
  `user_type` int(11) NOT NULL,
  `username` varchar(25) default NULL,
  `password` varchar(25) default NULL,
  `fname` varchar(25) default NULL,
  `lname` varchar(25) default NULL,
  `email` varchar(60) default NULL,
  `phone` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  `country` varchar(45) default NULL,
  `city` varchar(45) default NULL,
  `zip_code` varchar(15) default NULL,
  `photo` blob,
  `photo_type` varchar(20) NOT NULL,
  `last_login` int(11) default NULL,
  `added_date` int(11) default NULL,
  `edited_date` int(11) default NULL,
  `status` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO profine_user VALUES("4","1","","","test","test","test@test.com","test","test","","test","1212112121","����\0JFIF\0\0x\0x\0\0��\0�Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0^(\0\0\0\0\0\0\01\0\0\0\0\0\0\0f2\0\0\0\0\0\0\0q�i\0\0\0\0\0\0\0�\0\0\0\0\0-��\0\0\'\0-��\0\0\'PhotoScape\02009:03:18 23:21:50\0\0�\0\0\0\0��\0\0�\0\0\0\0\0\0\n\0�\0\0\0\0\0\0@\0\0\0\0���http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.1.1-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:xapMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\"\n    xmlns:xap=\"http://ns.adobe.com/xap/1.0/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:exif=\"http://ns.adobe.com/exif/1.0/\"\n   xapMM:DocumentID=\"uuid:E752E731D013DE1182DC8964AAB6E8E8\"\n   xapMM:InstanceID=\"uuid:E852E731D013DE1182DC8964AAB6E8E8\"\n   xap:CreateDate=\"2009-03-18T23:21:50+08:00\"\n   xap:ModifyDate=\"2009-03-18T23:21:50+08:00\"\n   xap:MetadataDate=\"2009-03-18T23:21:50+08:00\"\n   xap:CreatorTool=\"Adobe Photoshop CS2 Windows\"\n   dc:format=\"image/jpeg\"\n   photoshop:ColorMode=\"3\"\n   photoshop:History=\"\"\n   tiff:Orientation=\"1\"\n   tiff:XResolution=\"3000000/10000\"\n   tiff:YResolution=\"3000000/10000\"\n   tiff:ResolutionUnit=\"2\"\n   tiff:NativeDigest=\"256,257,258,259,262,274,277,284,530,531,282,283,296,301,318,319,529,532,306,270,271,272,305,315,33432;72DD0A9CC44B72648117989D44870DE6\"\n   exif:PixelXDimension=\"2560\"\n   exif:PixelYDimension=\"1600\"\n   exif:ColorSpace=\"-1\"\n   exif:NativeDigest=\"36864,40960,40961,37121,37122,40962,40963,37510,40964,36867,36868,33434,33437,34850,34852,34855,34856,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37396,41483,41484,41486,41487,41488,41492,41493,41495,41728,41729,41730,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,42016,0,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,22,23,24,25,26,27,28,30;EFEDD31BA18C3EB26027802A715F874C\">\n   <xapMM:DerivedFrom\n    stRef:instanceID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"\n    stRef:documentID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"/>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>��\0C\0		\n\n\n\n	��\0C��\0@\n\0\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0���������>���{�)vJv��K@(>ojO��-�)hc8���E\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(�PEPEPEPEPEPEPEPEPEPEPEPEPEPE������(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��Jg�\0QO��	*:(�	(��\0`�)*J��$�袀\n(��\n(��\n(���tQE\0QM��������qC7aN�`�0}>�\0f����>�\0o���w��Nᇨ4IE��\no�N��\n(��`z\n\0(��\0(�9�E\0QE\0QE\0QE\0QE\0QE\0�Җ���2paIE\n:�}GRT�Cc�N��Rcj�ERQM�������\0uQ@�h�����\0(��\0(�G�Q@QE�(����\nQ�RR���	K�Rh=M��&���%GE\\���2�\0�AQҞ����AQ�E	X	*:)�����uQRE4�RTtU5p$��(J�GRQE	��(���QE�o��N��\0(���\0QE۰Pz�QBV\0��(���ii�QE�PQL.QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE�(��(��(��(��(��(��(��(��(��w���:��袊�\n(���QK��h��4\\����v:)YJ�P�QL�(��(��(�`\n]���QE�PHM\0R�zQ���I\0�R��G���%.��#ҏ0z\n.QE�R�>����\\�ZJ(���(��;>����zRc�q�4n>�����:�h����(��AKǽ%XB�ؤ��J#�QEB\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n2EPEPEPEPEPEPEPEPEPEPEPEPEPL��i�\0QE\0QE\0QE\0IEGE\0QE\0&�(��(��(��(=\0QE\06>��(��)��\0�(��@QE0\n(��\n(����\0\nZ(��(��(�aEg=(QE\0QE\0QE\0QKǽ>���v�SSTQE���*E9�����$�z�(��p�S]�`�|���@}QH�f��i�ڰӰQE�����l���:�o��N�\0tQF��)$;�QCb\n(��O�&R��qF��\0QE�)�-���lQQԔ���N���I�S��M�)I�S;�J)�`$��*\0*:��i��J(�G�7p#�(�ꓸQE��(��i��(�ERH�(�;�QE�(��\0(��\0(�tPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP��I��i(��QL�(��\\CI@Q@�=��QI $��\'jmJ���6�*�\0�y~��t}�`_�:���@/*}����*�J(�����i�s�4�I�QE�(�(��:)�G�-;��*J)s=�%s\0�ZJ��JC#����0��4��/ޏ/ޝ�6�����|��i\\����&���~�&iyS�E;�jZ�f��F��h��4��\0��w��C`6�(�q�(��S��QF���C��)�_�.?���7��QEP��Q��RQJ��(�EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPF��(��\ng��4�PRQL�O�\0�a�i(����J\0��)�_�&�mQL�(�p�QA�h\0��(\0����S|�j\0uS���d�M��$����$�����N��o���:����g<��Ө\0���(\0�tQ@͊Z(�8�E0��\0O�ږ��Q@QI0\n(��Q@Q@0�4�a�h(���nJ:�JQ�U&�AET\0�;S����)��\\S�:��������=6�\0���py����Lԕ(�)��(��v\0����}�|ө���Ө�t\0QE�$�EI\0R�@�(�?Ɔ�}7��NX��II $���{Ѹ��I\0�z�Qӕ�u	���(�;\0QE�(��\0(��\0(��\0(��i������\0QE\'`\n(���(�݀(��\0��)�QE\0QE\0P:\n(��(��(��(��(��)GQ@	EPEPEPEPEPEPEPEPE�3ړ`6�(�EP��;P���\'jM\0�(��.����\n^T�IE\0������\nt}�Rh�)�g�����R�EC`��)�v�\0IڛN�=��h	*:(�+\0QE���˷�4�%E�Tn�<�zmVJf��K�{P_#��	���ǩ����a���b��e}�6�H./������S(���{Ѽ{�vJJI!�=�<�jm�P�=��=��Q���j<�j>Z0���������ݻ�c4�)\\C|�z<�zuGM6��h���R��=���������\0y~�y~�Gޗ�j`\'��G��Kǵ-+��g�:�)6|�zu7������ߖ������mQVEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPtT�\0.��i(��\n(��\n(��\n����W�g�6�(H�(�E���z�E�ؠf�)����\"��q�4�Q��\n)�g�6�$�袀$��:�Q@��:��{S�\0����$��(\0��j�c@�����N\0QE\0QEN�QE�QE6�ES\0��(\0��4Sd�I��6�(���\n(�����N��M�QE\0QE\0߹�uP���8�8�4QE�(��E\0QE\0QE&F���� \n(��Q\n(���U\0R����^�/==�叩4�Q`\n(�����ө���\"�Q!QH�(��(\0QE\0QE\0QE\0QEV�QEHQM��QEI��(���(��\0(��\0(��\0(��\0(��\0(��\0(����(�AEPEPE.���0\n(��\n(��\n*J*y��������(��`QE\0QKʟB(C�Gޏ3ڏ3ڒ@6�u�%0\n(��\n*:w��@�)�_�:�@IE:��)�H˻��T&|�zLCO���`�}Rn�QE \n(�� GRS|�zuPGRQ@GE���������g��h�����\0d�`�,�~�����h��4�@_3ڏ3ړ�>�RS�@IEGN���r��CM���Jd�8��<�zu7�������u`z\nO�ڐI�zR�E�N=�{q�(��\'��KE\\�z�0ޢ��w0ޢ���)h`QE \no��N���o��G��K��a�EU�	��Ө�p�-�QE\'��B�QEhEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE\0QE\0QE\0T�T�QTEPEPEPEPE7n�s�Ө�s�4y��y�ԃ��q�4�Q@Q@Q@TtQ@���J*M��Rl�*:`R�\0�I@Q@�\0z�EG@Sc�M��O<�\0}S~�h�QM����QE	\\�(���{sE��U��SŻ�@jh��f�Q�\0V��ڵó�rG���§?4�(f)Z0}tq�f��O�V\"��������hg*�ŸӼ���u�im��?Jp�A����d+���N�\0���\0�z��/ȉ��WT�4ˎ��5�9��.���݅����B7F�N��)\\�$Юb�cfϧ5�ȍ�B?\n�Z���mgbeꢐ)v>L܏��߲Ü�I�����;����,_�O��R���?�P��3��������I�TijǘV����9�+~M2͹�/��M�Z�I\n��6>db3m�ikZO��c��cxm��r+�r43(�w4��U��9�ܯ�q�[�%X�(��z�(����(�݀)p}%�)Tn8�IJ��������M�QJ*:w��� :�(�EPEPEPEPF��(��`QE \n(��\n(��;�QE�(���`\n(���(��(��(��(��(��(��\\CO���RQK��J(���l���T�۰QRQ�EZVJ���`�Q(���:(�(���&����`QEJ`IER`QA�i�QE\0QE��QL�(�q\0ᇨ4QE\0��*R:���*ڸQR��k/qN����)���QC`�CK\'j#�L�N��6�\nw�M����)p=)����ɀ���QR�QN��=��=�h���QE�FsҊ(\0��(\0��(\0�=EQC\0��(@��(��QE\0QE$E8PI�{��B`\0�EP��G^�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@��r)(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0�G�QE\0QE\0IL秽\0%Q@T�%G@Q@sۭ\0R�l⒊\0(��z�@6N��l��\0�\0z�3ڝI���\07�9��)���\"��w��N�r:)�v��L��w�i�	�	(��\'j��uQ@Q@�����P�(��\0o��NGN����h��7QG=A�\0���Q@Q@T��N6�SJ�E��N*T�-Z�8�!��ZV�lP�}O5I�;}\"I��6=OJЃø$��\0��@t���=��+�A��n8]���S\0i�A�\04֔�m5\'\"M�֍���sr[!W9��`71T\\��v,���P<���5�x4ջry��Pk��)�s�E/ڋvjz�~m��M�)����9�$�,E�� �wAG�/AC}�����0��嶭D��N\n�IE��Lҕ�#]2�MB���C\\���>�\\��`]��5 �7BMg�f?0>�֕�b�M�g����Vj^@o��EJ���Ը�o�sLh�G4Ĝv�J�)\\��Vh͉�	�l7�t��[�Cx0Ƅ�`vg(�p)����ҫ�ڷC���c��G+{�}�%�@nx��.�Yc���HS���H܁�Ur���.��(Y�+2�J���W�ȯ.-�ᙽFkJ��k�đ��s��Li����k����=;�d�4-��d�b�ER�QE��QT�(���{�P�IQ�CWFF>��Gޔ�;Q�{S�l~�i�QI�\n(��\n(��\n(��6X�JZ(��(��(��(���(���QH�(�n�QE	X�(�EQp\n(��\n(��������DtQEPQ@��:����	*:��I�\0�5IQӋ\0��w��M�E;���ИIE�M�=��ݻ��3D@uS|�jMj���z��uQRՀ(���S~�iŀ�(���(��(��\0��(H���Ө�ՀE]��9����(��I�QE۸QH�(�H��zӨ�E�3ڀM�=��=����M��3ڝF���~�&���~��`7������QI��{S���������ө���	�y~��f���\0��(\0��oZu7���t��h�����S�l|���(�l�(�`\n(��\n(��\n(�w�4$ES�:(���(��7QE\0QE\0QE\0QE\0QE\0QE\0QE\0�>�����(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(����\0)��)���J�/�|��fry�RS\0��(\0��(\0��Q@x4Q@����\0(���\0lS�\0��o��@���6���\n(��\0��(\0�����	)��Qzu-�(��@n���{Q�{S��S�:�@QE\0QE\0Q@�(\0��Jg�~5Q����k_Iм�M�aMDM��4��~�ҷ�4��<����Ɛ�U\0Ns��©n&�P.p:TlŹ=)�.84����(��q��S\\�1�8�4�8��Q%it�Huc��Q�B�*9�ڸ�T�4�������as�5�I�M#ϳj�m�\"��6�N2�l�Mf�������n��;�k��H���z�a�=7{����zM�/�h�v8;k�nǊh���zVAcl��ysN*GE�a���� �#�ڎP5�f�o�A,�!�9Q�*�jL��jx�tb��E�Џ4�鴯qҢ}H�$�i=�J�T.7�#�Te�eRTۤ��{f��N�͜n#��	h���;Uxu6t!h���i���*T��Ӛ�,E�\0v��^ԧQl�򊬖���e�T�Џ��a�E�Qz���J�d���(�?��{�Y�H��G��S��i7�d�C��\0���H�sg�\0�{樿�3#Gm,:� jd^9�W*al�hq��Ѡ5�!m�D���.��\nc$��U�M���F������H��~f�ڦ�4r�sJnp>CY�v�.A�MJ�?F�i�����x5��w��0���2�QI紜}�M\\3nmZي��Pּ�����ñ�W6F?�r���ش��=A�Sd�R��QE)��(��ESL�]���Qpz<�zE�x�IJ�IET�QM�=��4EPEPEPEPF9�z(��(��(��(��(�Հ(��M��QZ(��\0(��\0)GQIE\0QE\0QE\0QE\0��\\b���i0Q�E	X	(���\n0=Qp���jJM�ީK��(��\0QE ��ө�s�5i�QE7������QI0\n(����QE�EQ�QTET�\0QE QEW0QRESJ�QE QE&�(��4U���)�_�:�M�`����QK���/ޝE^�QE\0QE�QE�)>ojZ)�EP�QU�E��PO�C�QE��QE&�ER\0��(\0��(\0��*��(�hAEPtQEhEQ`\n(��\n(��\n(��PEGc@�J8:QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPEPEPEPEPJ��J(\0����h��CM����QE\0QEIQ�@QE\'��Y�������=M%R`/,}I���6�V�	(��J��ER\0��~��o��M0ER\0���Gޛ���o�I �PpNT��e�+���~0�t�h��ڄ�%�)�\0S\n�������E\n.�可�EJ�\n���5fד��6\0��?�]��L��AU\0�������	���2O����������Fvf� ��D��\0��\0z��\0�����Y6}6�\n�&�h⫴����w�Ҫ�0�����A\"i\'��=ک�p]��fO�Wi����c\'��������$r�\'��҅�`?s7^3�=[w����Z�;VaѨ3&X�qNU<g��#O$.i�lGU�\0V�K-\"���WDD��R,�^(�䌑���!i8�=*��\'��e`H��b���,$��+�P�b��o��z�NAa�m�a��RǬEw��v?������,��U`b��>v��7�%�-\"��R�4�����V��ȸb�L�����M��q�@��ȫ�M��V?��������&�Rِ$���?h������5�D�]\'N�u\\�*0~��:nrQ]Y3��m�)�C���\n�Qy���F�6A�Q�U��X�8��`:������۳�5Y_Q��.��O2���@?�U�>#�#��Y3\\Mqxd�O7�X��~&�c��-rcx�\0�������r�J1��_Vρ�:���*�}�E��\0��ß��\0�4]Z#m�jv3G��H��_Q~��\0�YOx y7�m�;%����\'��9�5��|aK��4ј�տ���+����ӧ�L��u����K�N5\"��S�RW�����d�\0ۃ������E��i��L�*�	������+�g��BX|�}+���A�h��<{��:-��u�:0e�s:�P~�����w��������/[\\A����ۡȎu���`�5��\0�q��U��	t{�S�2�}J���V��O`{ϳ�ʹ���O�[�F\nN�V�P�Ff���=ӑ�Ws�K�߈��w�z�i#�l��nb��i�G$+δ/�ӕ`���]F������44	��5�>*%C	<e{�P��	]Ny��`���!�.���̋�u��Dq[p��*v��jzau�b�\0�����E)pE%a&PQE�ESL�(�l�}M%.��G�sI0EGRRj�7���QE&�)�g�:�\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��*ӸQR��(���\n(��\n(��\n^X��IED�Tu%CVSd�N��`GRQE6�@�(����(�Q@Q@Q�u��\0�N����ET\0QE\0QE\0QE4ESn�Pz8a�>P\n8a�Q\n(��V\0��)\0QE[�QE��n��w\0��(�\0���Q@�(R\n(��!\n=\0��=�h��	�{Ѽ{��z\nnݼ�8��\0�M�ޖ�q�4�� zQE��QH�(��QE4�EP�\0��)�\0QE�EQd4��(�� ��(�\0��*@(��\0(��\0(��\0(��\0��(�\0(��\0(��Q��(\0��(2=ih��\n(��\n(��\n(��\n(��\0QE\0QE\0QE\0QE\0QE\0QF���(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(�4QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPE������(\0��(\0��(\0��(\0��o���\0:�(��)��\0IڝE:>�ꎓ@IEGRT�`�{R������H��4�QT�(��\0_�ޒ����IQҎ��W��۸�3G���\n��*��(�)(��J���v8�W�(�N���:�Kbiָ�[�>X�R�=8�<���*Z|h�5m_G��h��.�8\0]8��Q}}Mt�\0��Ϋc�+�V����Y��{{(�\0#.�y���{��G����t�2#���ZeC��$����^��(e�+ɮw%����v���W�VY�(F/�Eɻi{������T��Ҕ�j�ܘW��ݏQ�O!-�LOnj)� ������X��K�Ҽ3n���l\'�T�#�lp\0�}�W�����U\n��^l���ai�J���~���9����\0�zK^��Y�4[A�[˔���\ng�>\'x�.�����k�}٭.T?B���d|I�l|J��<rn<O7��g��/&gT��\n���a�H���2��V���:K۰��D�*9�C_S��\nX|$�*�ӊ�Ii�>{�U��cJ��������?ug�	�t�s�Uv�.��/z��3�:���5s�.NF�	\'B���h���r^��bāBV\0�ܘ��\n�k����j���g�c�(lR,rj_)W��L7!�J�5iO�%�eK1�jG�M]Hk���匓����]-��5\"B�>c�N�V��ˊǿ�lK!�8,�LH�Ԓ @$m��Gċm]ۛ�r��=�d#���ǧ��F��\"d؀��޿JK@l�u?�F?6��.<S�rk����$1�^O���zXm徜B�$es?�%$3kP��$c��u�?��dM�L�����^�mSt������է�|7��\"4���Z@����PK��=�G7�_˥_ѭ��gu�B��W�kKI�l�q�<���X���/�?�;�\"���,3�z�\\���j�\0u�&�Y-5[w����\0��}f�^�Ԍ�ڱ�[�i�,�ڒ<�>�)ʟ���.Y&)��h�p�kO������Y���3ˣ��l.������J���}���{�����w����\0j������	������@�����B)�׫2D}���\nW�\0����2�:�Ƒo��j��ya�����?Z���4�jJ�<J�k��V���:��ܭ!���>Gy?�Ve���tx[�]cu���4�gIO.����(��cd��}��h9��?�Y9%�5�x8�I��{U�����P�ZCn��oO�\n��o�6R��R���Is���WC�6�6���~~ȟ�O�>6x����N�x$I&��2bH�MV�o������/�}	{KDgr�y%n]�ܚ��\\zt]�_�x,4���{t���qƟ��VN��Iq�i���<9=���-?��q-��֟\"�\nF���\0|�*6�ĺ[�C=��Ĭ���|�H��t/�K,/��:����с6�F��r��Uͅ��y�j�変7Ŀ��/�n����o�De�����Ԓ$Ͷ���G�RB����Sm<@�b�Eo�Z�j+\';��<�	F���+�l���*\\BO?�\'ס��C�C,���\0Q�lR�b���/�f:�B-;��*����Ϙ��=k)ǩI��R�GZJ����(��\0QE&EU&Kߌ�QT�S?<S��QH�(��(�=E\0QE\0QE\0QE\0QE\0QE\0QE	�QE\0QEm\0P8�Ҋ(H�u�S\0��(\0�y~��*�(��ڝI��?\nZAE\0���Q�Ph��(��(��(��(��(���l}��QCw\0��)\0R+f��j�QEXQI�\0QE)\\�(�\0��+4�(��\0(��i\\�(�+�QE�@(��}@(��iX�(�+\0QE�ERL�(��(��i\0QE7p\n(�� \n(���EP�QUp\n(���(�i\0QE-\0QE&4(��\n(���QI0\n(��\n(���n����Q��GE09�g�X�QM�=�ۇ���=ih��\n(��\n(��\n(��\n(��\n(��Җ�(\0��(\0��QE\0QE\0QE\0Q�z�(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��3��\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE��E.����:�h\0�G�Pz(\0��(\0��(\0��(\0��(\0���{S�\0��(:*J��\n)OSI@QE��RTui��(��ЊJ(�GޝE6N��EU�%/,}I��(������AMY�&���v�&��ir�M�t�-��H^S]��YC�}O�>8�\n��*���G�i��Hʑ���=\\b��D��VN�)�mf�NP>���s��Լ7��D!��̾Q��C�S�t@mu�*ÒN7���Ϛ*V�%����R�����U�X�9��r��~�w�ݏ��I�뮮�)�+��ͧ���_������/�wSx�D�O��(�����������^#�@��??i����o�M?Z��?%\'l������W�p�}K/��֧̥ת<L�)�*q�	�ǧC���O��#�К��s���v�R}��H���oOƿ_����I����������]�*ۉ7���H\'�5�/�_�3��칡=���+��9̏\nfYO�9�?��ݐ���r{R͸�X��8xr����%Td�֗4�ݐ��W��:���C���Y��ef��Nk�=і�`\'�j��AI����Z{���;�����)�U�CK�8�ܙ��cj������Kv���Xa[x�?/�E�=:�\\�bk�(ڬ���z��u��C��r�Ǌ��!�\0t����VW���1�kq�$���ΕIXW45���BΪ;���fY�̞X�;oz�i`ڕ�s$��M���	�D�b$w��/j/�4r�:��I#ۻ�mi~q(���0��]�#��Tx���)�m��\'\n@�Sphʰ�L)4�2s�G��V��!��b��[sƶ��2�j�[�4��I#/l�Qa�e�u��>��:�B��|�`�Z/�Ek�Ċ�z�Y�Ƒ�Ab���j	��Gfú ��j�z}��+4���F«����]G�̠����$�/����;D��\0v���k�	������k���`kg��{k��F�8�����r�b��F~fN1^M�U�-?�6�k@�Z>渕�ƛ~m��aTU!wL�V\'����÷6q*��~�\'a�x��	��x;I����x�ɸO,\0�\"l��?��?������61�}���%��=@I�+T1��Q��ݪ�����oi�k*�\0)��\\g����Ea����v�E�V��b1_]xK@��V�w�Hv���W!G��ƍH[K!���36��#C�KJ*������P�Yau%��z��X|�{ڲ�y�kB�1���_��]��[�*wG0�ꦬE�*ˆ\n���C��V����[;��l�U[p��4�7n�Xn���h��N�.핾�1�?CN�X�tH[�q���k���z~u�`~��)w2��BbK���|R�/fXe��g�b�3��]��N���g��b�j5��Ew3+vtȮj��S����wV.~eFo6?��I	�w��SE�m�Z���WJc�2��y���!�ͺ���ԑ~�Z������▕����kk�����H��\'4Ί�MhIh�\0y��en*���r�\"��ȩ�9Fd1�%����L�c,�%]�Lu�?x��*�Ƀ�\n����\\e�`⒕�(��m���>�RQM4EU\0�3ڝQӣ�R���*@(��\0(��\0(��\0(��\0(��\0(��\0(��\0(����QE@QE\0R��ԚQJ�%QLGޝQӼ�z��uQR\0�h�ZCE\\�(��(,Z\0(��\0(��\0(��\0(��\0(��\0(��\0(��mX�(�ESJ�QE	��(�&ESN�QEKw\0��(J�QESW\0��)%`\n(��@QE) \n(���(��$�(����H��^=�	E.��h�}M4QE�(��I\0QE q�4`�J(��(����QE&�(��9�(��9�(��W`QE	\\�(�k\0QK���J>ojZ(��(��AE�7��AEU\0QE\0���������$�=E%?p����(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��7Q@`z\n(\0��(\0��3��\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE \n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n����\0��(\0��(\0��(\0��(\0�t�3ڝ@Q@�i��Ώ��u\0�����!�h�TtPK���J��v��S���v;�y��IڝQ�[�Q�h��@QK���w)U��\'9�II;�QE+�hl����6�(@QE0q�4�rءW<���t����>Q҄���\'Ҵ���M\'��+R%\'��H�G��J��8�\n��K\"%߻�q^c�KS���=��2F�Y�-欪u*��s�Ϸ�OJ��(�F��|;�|E���e�[=Äf\n���c~����~i�!����\'�eW����Z��ӕ*O�|���_���ǟ���Jͮf��5��>�B���0�b�Tɻ�y�Wg{vЊg.�(��c�Umơ��=8�@A{0ǽg�|�Xf���j\0����ȟ���Ԑ�m�S�)�ݩ�\\�)7`ay��!�F8�����Q����N�O%�<���i����H�\05x�:|{�+�JM���i���/��t��c\n��cĢQ�6���Ky?��I+�-k~+��\n�M`�Ũj7LSt)���p���G\"�/^;$�⚕��B��o4\n�K���O�P7��Dq���]qZz߈�%y���VV�<���$�T+�;|�j��-M�HZ$\0J�t�>���D�J�!Y%=@�+^д�$mSҠlK�U�f��R��[��Q�\0�7@�U_s�U1��̙c��s�TF{�%,W��i&73��,P�\"�7�1�0�C��Ð�i�mi����\"�}|z�s$�Z�﷍������R	:��ma��t�k�5��4��/�Tu�*�V�Y$V�D?ܮ������w*h�\n}�l�v:����d��b@�\\�nB�*�\0���߭�I���ǧ��E\"��v��U�^LV��-8+>�YC�y�O�/��aV��I�T6QKQ�tK<[��п.)�z���?�J�%�|���h����v�l�;�a��\0s�����\0���I��c �e�q:>��5}j�����u���h`Tu;���x�qǵ4�cV�Pi�`�̾���*�%��2yZ�*�J��uZ��R��sov�X}�q�֭2Z4��Sy�S�+&�M�\n�@׃J\\����z�����	|���YZ烴���wm��w��V��<��WJ������1�F�&�O���y��\"���޵�N��T��?����O˨����K})��8a��O��#�<s�x�2ַ\nY>V��a��a��aֹm_��v�#LЈ.c΁��G�9����5���������������u�:k�ʍ��U8�M�����UX�G��=b��`k^k8n����t�eJũ�ɢ���{f!�?��k$�QEH.��i)x���*J���@5~l�S����\n8a�PEP\0z(\\�(��(��(��(��QE\0QE7 \n(�����(�����) \nw��� �)��\0��*@(��zߖ(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��mX�(�+�QE7p\n(��(QI+�QE�\0��)�`\n(��@QE@QE4�J3�9���yS�E%U\0R�>���\0(��\0)p}%\0QE\0QE\0R�>�������J]���QC`.��i(��Ja�i(���(��5\0��^G����]���Rl�(�A��&E\'��KM\0QE\0QEW(QB@QE+�QEI�QE7@QE	QX�_3ڛEX�W�8�I�{Sh�	7QEPEPEPRn����}M\0.�������@n������h�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0&G�-����\n(��\n(�qE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0IE\0GEPEPEPE�;P���\0�N\0\'��)h��\n*:��\nl����/ޓ`6�(���N��\'j�ة*:*��R����J(��`QE\0��(N�QE0\n(��\n(��^�׳����4 ��7Mi���*-k��G\n��^\0���\n�n�!z\n�AF&nW�DaQp6bT}i�.�5��n��~յ-7O�T�l�d���)��T�����Ͻ\\ �h�ބT��\\���?��w��&|O����c~���X�f�\0�A�T�wr2}\0�z߆|?k�]�N��`���a�5\n��\0~�?�7�_�`�T�\'�|�w����X����V(�s���z�C�8ݚ:���2��z;j������#���:���.��MshҶ�.���#��*9@i�8\0�UYd�^tbzv4�{�j��I��0]ù�T���8�Z�bL�}�X�<�~n�܃���G�����zSI&�Rj��3�M����\\Ԗ��;�h@\")o����M0ʻ���J�Gey�`����[\\i��ӱ+�M�ou�4�d�+8�k\n�R�Q��9��w���y���	��Wb;T8�Gz6ʚ~��I+v�S_��\n��U��x��K]�̌Gݏ�oƹ�I��L����3;};\n��b�Kc��񝦑n$�Q�򢏼�J�֯�k1ۑl���Q�(�|1k��dt�q�NO�>��W�ɥt��S2��v֓E<�%��������q�o�v�`>��8\"�ݹJ�5�7��@\nQޔ���m �� �@�:ٳg��q���N�]���I��K��)���DX�/@j���c�?�:��w[��m�d�EƠד�R�����I�-]^,9#�u��U7���=Z�m�o�l�����܍�Y}*[���\0�ic�9s��^��\"y����:�Y�:����=��}>�K����u���H����T�R����K�M2�H�H��/���J(�[��U� ���}+XGB/��u��w����ޝ�֙�\0��<��Kc5蕤*풵�nm��f�2������Pq��S�;�֡\\#�<�O�u�[�r2�\0�x�����+91�j܇�ml*�7}(�R�n����q�1o�/�,rN~JCl��)�v�ޥ�MíV݇���X�\\���f2�`��j�3/�SE()��j�E��\n�$��zU��㾄�p��{��eFUp�W�SrУm���?�Rb����s�]Do���F�\0�֬,ь6���9i�-ŗٮ�$���c�N��_F�Kk�/��U8��zT��:c*�0����dQ��,��*bI����]���g�rȧ��\0Y�\0zR4`�׊�c�M=ea�9aNwezH&h��#֧�QQ�.:d�k��]�$��OU>�U`ڇ�$S���z���?ƴ6�qO�Fu��O�l��pc�9u%��c�����cj����7�}��������zK�hR�������o��)SO`Rkr��⒴�m#Ԡ���I�H�8���\\����(�LaK�Ri(�ح�(��JMX��5:�)6E6>��\0��(\0���Q@Q@Q@Q@Q@QN,�(�H�(�EP�{���x���T6ER���QE�QE\0QE\0QE\0QE\0QE\0QE\0QEQ\0��(�QI+�QE`QEKW\0��)�p\n9<QE\0QE0\n(��\0QE�(�叩4��(��\0����SL�(��)p}(��u\\���4���ǽ%�>��R��0}7���QE+\0������\\/��0J��	`i(yc�M>��CG��B`�IE�\0��)�QRSY{�� ���ӿ�LCIjQE��4QE�\n(�����(���(��m\\�\\CIP�QM0)�E`QE\0�7�%/�\0�5;p����3ڀ����n>����b�E(��\0(���PEP�J<�jm;�@��}M%?i�4\0n>���(\0��(\0��(\0��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	�QE\0QE\0QE\0QE�J.EPEPEPEPEPEPEPQԔPu%PtQE\0QE\0QE\07��>�\0�(�\0v�@�/ޝ@GE\0QN��蓵+�ڒ�z$�I��h��O��@IC�*:����;Sj�\0�=M%7�QL��E2`QE$�(����(���H��:�#���-��P�;���.�F$u��+VBWb*�l�4۫�j���]���2͓Ѻ��z�Qb�5���?<C��?��	���z&�aj.�A*|�ʮHX��3�ڵ�\0m��U?fO���mF�0Z�$nG~���J_��ľ\n��I��kz5�\0J�/�%O�(ʳ�,N;\0+���\n����Vi[ݦ�O�M��?�Z���|�0u���)���mr�l�����s���F��~��t��[8�h���Ny6��s�Q��VyGRx��r���\'vϧ�b�d�K\'~��.,�t�T�Rű�V�X���X�ҫ���u�Nf/�Zh���\0��cO�Xdӡ��8v9S/\'қbek;�n��I4zlX^Jl��f�F�x��k��rw`��Դ��k�����1�=>��-V�į��_�i\'���Y�έq�F`�@�:����\0�M+쒦�omr�j��5[�L`�GX3�N�\0*�����D�����g\02���}\0�h	�v������rK`*i�H˒���f^O�\\[f��m��ӭ[�:)=3�ҧ�\"6��Ɖ����ZKe�`I��T\n�m�\\�����Yr�7�G�zε���HM�A_�T$���iPs޴4�5�e�7t\'>��d\\�{��]>�su����$M6���p+\n�Q�������u�P���D�Z�x��8�q���Q~���g��F��	$~&�[Z�������RYi�j��Ju��#-�?�K7^�t@,���\\��)n���?�u�x��f��#|����^��\\��\'�Q*M\n���o�����z��-!����n��|>�E�*����j��l�q�����$�ʅ��?�h���,\n�� G9�A?�?κZ�1,`K�6S��9_���O1q��\n:Vu�	Ԕ�Ln��\\:��+&R��[�$��B����2��;���Z�,�{MM��?�ϽQРh�@�ҢL�Jf&���S��)�3oS����\"n���������ڼ��#��͕eN*U��s��`E�{T�ȿtqU��ާ\'����C�|���|��\0f�GퟘR���X�R<�j͵�3�����~=����$۱�����m����F��S�7F�\0T�\0���Һf�\\Ť�[[�V7������eԶ7?c�WܿrFn%�V�K��H���`��u��!T�GbjGPG���rW�,��&��\'�ؤ �=(L	6:�Ջu�*�98<�r���}���i�n�)�B�����xa�S@F������R�xg�9#a���P�9�qRn��s@VV��G�q>��I�{����4p���ujہ喡G#�����6�)��~Bs\"z��$��⭱]�ӊJ�}w1�~d~�ƨ�,�b�\n_�4��=��-�bR��qҒ�ly~��*��O�NԜ����X�ө���R��QE \n(��\n(��\n(��\n(��\n(��\n(��\n(��;�QE�p��Q�Qq	N�=����������*Z�QH�(�\0tQE\0QE\0QE\0QE\0QE\0QE�QE\0QE\\�QE\0��)�EP�QL�(�=M%.��i)4ES\0����R�/��IE\0QE�(��\0(��\0(��\0(��M\0QE4K��i(�K�Ri�nH����i)wSIM0��R���|��&R��IE\0QE4K��i(� ��ʟB)(��.��F�����(��`QE\0QE+\0R�>���ޒ��>�����4|��`6�(���aIE���F��(��@Q@(�=E0\n(��`QE0q�4�g�6�\0��l}��\0���(��QF��(�=E\0QE\0.��i�.���L���(J*:_�ދ��*:��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(����E\0QEIE\0TtQ@~��\0(��\0(��\0����:�\0o���6��4�\0QE%QY�Tu%Ӱ�Rn��|�GRQE&�L�i��CD@J)yS�E\'N���QE�QE\0QE\0��*�UKVƅ�y�͐|����6�o&\\��z�J�,QQ�G�%��`tZ�|p*y���Tn�iĖȊ�|W��\0�S?�w��߈��xMW> �2Os1�*c1�Ny=�}�k��x�.���g_��Z��REcmg ����I,�Ĭ{����dX�-}9ca�n�U��[oc��>.��<NJ�Y�4ڿK���8��z\'�/�7Zӵ��z_�toZ��Y�nu��1���Tg ($���QD��@�T`\\����s����5&�\\	ib`h�U��܀8���Wm�uk�EEF:%�����NU��TT�)JRչZ�\0�JˢJ�73mJ�qp<��.��̹�.��!�%�p8�5�;`�暃N�n�Պ�75P�V��M���\0�W��;d˶�PM|�c�)�`��\"����z�s$�\n̠���\"\0���j�յu�G,�B���8���;�W=��Ŧ��d�*/�?��˻�t���MVd�&��Q�Zzr��-�����_/q9_b���O��}�R`��1½#�\0:�[͐��W�ECd �\0\nc�~j{=;����.j^���]&���ӵ�X�{�1?�*{[t��=OSI9.�3ן��k�� ���/�nX�*�T�\n�8���s#L�X\07|ſ*��.%@�z���~Z��4���\0�U�~������\n�4�9a�I�J�H�N�[8�7Q�P��|��\\z~5&����`��Ƕk���d��E@{��\0���6[k�/+���֝��;I�?�5KJ�U?w�q[ -�{���b����h\n:��*�ҍ����F����U���`:��(h#�щ�f��6�\0�����P^v���+��U��+!>b�s�+H�I���R���m�n���O�v�� +��_��m�L��l&���ρ�O��ӊ�$v:h�\0�7��#*6�����n頋o��s~5fo�>����\nݲnQЕc����]�\n�L�GᚏC�0���Y�n\\� ��Yv0|ophY�Y%o�jΐ1n����פ�]�d��4��w�b��1\'����UB�\0��ɒ���i%�~B��7� �T�wmߖ�����H�햧���:�\0v�@UG�>zH�t/ߥiUm��>w�W��@X�b��4�e@Xb��>�\'�������W�Ujo�R�>���۪�0�x�J�=Y-�G3oo�{}ߚ��n��lż���6�ܫ�-�\\��t7Z�;�!Ѣ�Թ�6uV��ܽ��DП���=�v��8���ι	g}nȘ�>���o�\'����s�Q�K%������J�2:���)im��zƠ��Y�\n͹:���=B�UX�qm�ev�La��d:���nv��w�z�@!�\'��y�9`��3w͚i�`K��[��)�sT�+ն�z��	�T�\n�O���5R	� ���Ph$W:d�@���E��ze���\\��8ʟj�7~eܭ�E��)��\'Ӹ��n��)QOt �u�W;eQV��ԚJ(��Q�S�7t�԰\n(��Q@Q@Q@Q@Q@Q@QT��(��i�QE�(�E%\0��u@QE \n(��\n(��\n(��\n(��\n(��EPEPEUr�QE@QE(�ES\0��)4E�{��	ES\0��(\0�篽���ES\0��)&N����QR�tQRU7`#����N�R��4r�Њ)wSIE0�(��4`�0} �i����\"��{ҽ�o��Cg�i|�jF�|ЀJ(��`/��F�����)p}%Z��7�%4���`�J(H�c�qIEx����6J��q�4���(����)��(�EPEPE/���\0��)�O�Q��(��616z0ޢ��jB\n(��ޝ�J(��ES\0��(\0�GޛJ:�\0}�/ޝ@7�n��\07QEPEP�]���Q@zc4������$�����\0�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0gx��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(����@Q@Q@p��(\0��(\0��C@Q@Q@Q@Q@Q@Q@GN��ئ�Fq֊(\0����Q@7���N�y��\0�)��Ν@0�4n>�����9S�E%:>����r)�T�\0QE�8Q�Q@����\0CEQp\n����~���C��R����\0QE-�ER\0��(\0�D78ڒ��>=2)��I�֊��5366v��H�$֩jCc$`T��cb��\'�Z�(QZ^ġ!���X�k�_�R��?e�ӠDV�=�)2wHI�,?�u�3*sބr�*J7k���\nV�A��U��h#�j��m\\�Mej�8�J�o�m��g�Z�\"i[#�S��M�t�h�i��Z�`���������ǅ�K���6	�e��5����)7��]_�ĸS���\0\n��%��z\n�-�$���kx��T֋��cZ�[xAg�=+��t�|N	�_&ٛ��r�3]�ڋE;��0H�֩�$�6����Bv�m\\�򣲄E\n�q�(U��\0��l�^]ۺd7�y���w���}�Z��ڦ�l���2����!Wi��t�Z�1���\n�{u���Q���a�:g�\0�U/gQ��?SS4�T�os֩K)+��c�4��gj?\"z�\\�;d3#;.������m���ۙ@��g�Ζ��	��L,i�\"�ϭ^ֵ���^X���D��a�k�񇋚yq��}wS�X��x��r�/��\0w���>�f@���exvŮLe�F��k�����$����u�ޖ�V��q����M�9\\(��)�0�1�ΈT�	l�����@}���RM�y��Z$ݞ��Vf�&����I����(��[��Ʒf[�1��\0V����Ȅ&�k\'�\0^���RG���+6T^��s�w,\"�?�]g��{))��:�/|�*|��o���\0�v0]�q�S��$u�x�v�r�+�{�����s]}��g�A\\����C��JY���O�d4V�h6%��b���[�\n�Ե�Us�j����A���X��^��T�ŭ��T��D�7~U���r��24�ѭks�[l���T����W)����}�C�;?����G����|�/�Ւآ$��6l]�*H�_r�31�s}�zf�\0�|��U��K#��EG�k����Y\0Bjl[����ߤG)�+�K)&��6Ӑ��˶���mL�˳�̱d�ꑲI�,Ĝ�#cr�\0�4�������L���h�Hҍ�����_�*9�|��~�W{��|�����4HѶ�{i�\\U�r�@�U�n-��˳��\\��!��\0�y��|�cM�峙\0BR��;k��%��^����FNN:c^g������i�_7��\0,����֡�Ĥ����5��d8�л|:�9OOJ���H��;�QK=]�q��J�N��Lt�L��h���ӽ5������=�Թ�#��MXL�@R����>�p*�b���<Њe��wu�z�Đ�q�Vܴ[,QzZVw,a�Jqz�H��Nj�D\\.��`r���n�4M��j��7����R0H�9��d7#�Ƴ\\�ֹ����(��l�(��U���QIE�6�y���El�ijX��8��7Q@Q@Q@Q@Q@Q@QU�ES��^�f���?9c�M	��QE0$��\0�N��L�(���Q�Ph��(��(��(��(��(��(��\0��)�p\n(���(��\0���>�Q�Rh�	ES\0��(\0����%\0QE\0R��ԚJ.EPEP�Tt�3ڡ�QE7����uGRTuQ\0��^T�Up�R���)Xy�Ԍ��R���@%%GM;�R��J)��>������}M%+\0���\"�����~�y~���M���QN�i��N���m	�QE6EQp\nw�M���40�l�T�(�\nv��h�`���{Sh��;�������G*\0��q�4�_CC`6�w��N��:(��\ntQEO(QG(Q��)�`\n\\CIE\0����.��M��\0QE�UR��f��iU�\0<�ju7��`z\n0=3���~�\0�M�֗�R|��\0�����O�ڀ�(=\0($t4g=ri(��znI�E\0I�z�7QQ���\0}ϛޏ�ހEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE���(��(��QE\0QE\0QE\0QE\0QE\0QE\0QF���)>oj\0Z(��\n(��\n(��\n(��\n(��\n(�p�\0Q@�(����\0w���!�JJ(\0��(\0��(\0��(\0���v�>����C��T�#��QL	7QI��\'=�SjR\0�*:)�p�sIRTt\'p$��~��*\0��(\0�����5IX��*�(��Ͱ\n(��\n(��\n���Qխ>,�?�j��魳�h������8.�\0v�\nCgV�s&	E2i��u��m��d�s���Eua�9�ȫ*6�En�I�\\�4��\"�;@Z�C;e�b�]��L��V����,	D8���^)�Lu�Y��;�\0t�j�z�sv&}��j(�+)#�7(��;��G�#q���H&�\"��?֡���M�|�c\'�=��[�M�[\"8c���{v����S�4Ю,�Z</LqPEc�3�_�Ԛ�W�zm?�j����>�qE�j\'�u��	$����?�i���%�����~	\'ן�R� U`y�qQ�w��\\j����{�����K�,wq���M�,��*����?io0:\n���k>��N��J�a��\"�����3�(�V����b�y=@��*��&bT*�}qZ�������l�d@�����qQa�<c��|��,��\0j�-��kP�i*���\0�T7�{:+�w�\0�>j�<!��ȁP�E�\0�h�4t���@Uwq�V��`v�cR��	�8�*�#��8�t��>l���{��$�t<TJ:��O\'�[`=Ȉ~e��9��vs�.O��+f�M�p܎O��bk�������M��׏�K��]v/��T�b��$J�X-���>����[vn�&�@���І���\0g�+���dF���#J�B��\03���0���@��Ħ+\"=Eq.���.$dH�-���B⻙N�,��jv�9�f�d���<�5R`cIj��I��?�٬OH ��Nb�t��\0��J�.�Z���q9o�x�|Ef�[h��+��\0ʰ��*!�x�m���V�ġ!��r��\0b�<>� �>zѺdW���}ۿ��Q�%��>������~��?������i6��:�o�\"��/Lo��eE$��n�݀C�o|T\"���\'���lQ\0ﺫ1U��j\n�%3�)D�����_~���B�����v�b[�O���=�7̼����|�|��y�5Kw(�L�T�Uifa�S�}�����~�\0mf��\"6��9@�:�m*��Y��$��~�����H�~�o=��\"N�#�\0�9?�V�=��d�Y]�$�?����%�\0����\\�5��Ԑ�w�}�O�n��ji�Eеkx�̎YFwSZh�o��θ�?T�Q��@�s�#/��[K�Ȱ$��O��]1�ѓGC��G�9gp��V,:�r��A���vڟ�#�F��0��/��y������Q�es����1�րH|��\\�����%\nH��5����/	��ё���y�p�&�<��k���Ĩl$���J����uh��\"��J����j�nwk�y�ۗ���x=k�$��N�mc<w6�H$�D�0=�^+�ve��R��ҩ^E�N��<T��pOJ�TU�E�VU��3h�<)+��QEN�RTt����6>�g*}��\0Ш��QM�����{�\0�(��Q@Q@Q@Q@QM;\0QEӸR�>���%R�����%GN��L���o��R�Q@Q@Q@Q@Q@QB\0��(\0��)�`\n(��@(��m�QE�){�J(\0��\\CE�J(��u�QB\0��(\0��(\0��(\0������J���@QQ�J�%GESW\0��)�QN�iSI0���TtT�$����T�4�QN����\0��)�QRRl�<�2�q\0u$�>_sN�6�vW����pJz�J)�QK��RRL�_�ޏ�ޕ���*Jm�Dt��������z0}�����R�;f����>���^=�	E;+�i7SB`R��)�QE\0QE.��@��4�>��CF�����у�h(���4����`�PA^��)\0�/ޏ/މ;R|��\0�(���Ө��\n0=Pa�E(�~�R�>���(��(��v��K�{�+��QK���%Q@IQ�ש���(\0��(\0��(@�֊(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(����E\0QE\0Q��(������\0���S��z�\0J(��\n(����S����=M\08�:�(��@IET�;Sk@$��\0�:u�`GNN�IڛW�J�����X��ڛE\n IQԔ���QE@.��i(���(���\n(��\n(���+[@�u�\'����Z�t[a���?�\"�-��0����{����u8�Fl�^XG͎Ԍ��KosZI�ȕF*)[54�VG�\0TA\\mt��A+|۩�>Ҫ��& ��Ar��zwlS�����w�(+���}@�W���ѷz�d�!�m�޴hH�V�jr���b�f�vUm�a��ߝj#��6�Ѝ��ڙ1Xǖ�����Ԑ�>/�\"��L��KU�\0�MC�[	>s��t����B.:�a�%���JϹ��Ͽ��%B.O;�>iI�nO�h3���z�Ҫ�\\��d������²n�R�����)\\W�P����z����ݼ�g�\0�U[ټ�e�ʯ���V!�������\0��N�ErKR�ޠ�}��t�}�T\\8�U��鈈P�\0�5��-�R{PƑ�⛣mnTr͌~-^]�K�.gHb��o��s|�������[�?�5�i�c\\�!d�����Z�n;�ZA��e$>�\0��}���kgh����ދ�V�4Ե�H��\0��\n�LG$m\07_e�<@�\'��\0g��3�;~u����r�[��--����P9��o�.7��^9m�X���r�r�Z�^dV`Ac���.\n�{��zV�ҥ�IYf�0\n�t\'��۾������_�����qv�	�5��%�2q\"����qMJ9UJ>A³�B�)8TM>̺U�R<�wE�[z�׮?J��?v$���H��5�m\n�Y<����[�ˀ�.3�\\�X�C��S-�TO���类��|�f��:}��[���M�o��2`�d���U��-����T��6��u��d��ָ�\0	Z�!,w�v���=W`�ME�V$���U����i!��uo�$\0+w]�e�\\���_Y���W���*�М~���9�Y�5icCm%w�t�\0\n��m�]�6Ѣf8���\0�T�wI�EG����\0��`[��x��L|��aO�v�+��r��v1U�2�l�I���b�ߗ���������J�����Y�ȟިL���\\}߻K>�\0�E��dRy���SlD�I����QI1�х6IC#0q��u;Hە��I�,��ămA����:�>H��\0��\'o\'�y~�n�b_;dq�\0�J���PK*�7j�qz#�He��~���Q\\�$d���lo�M���|~򡻀��?���*yl�Qs3y{�Ww��f���M�����ZuC7ܠ�g��\0�X�uE��ڿrO�Tf�����I$e���*�iX��5���v{\">Y>x_�y��W��ݸW���<��\0&�+�Y�-�\0s\'�u��t:M�z���3����tޖ%�{&��+ݷ���\0<�j��xǝ��U-��|krdK�eU��\0ک�t�Dv��_�k���  >H�>v�S��6�+G�6x�_�֤r+���L��\0i\"_|�]�����L�@W�p��4�/�����Z^Au6�vn.m�<@�\'�����[GM�&�ĈV�?�������4;�|#�d���E�O�����W���7��p�c��(sӿc�S��g���?�Cir�ռ>�x�������Z���ߍ_���6e��h#��0c�\0�#h`��_�6�s�Xg�#O.]����s�����5 rǎ�|�=���9�n�ֵt�`����=���i�%�[eu�5r�hg=(��QM0\n(����g�:��IڦHERQE\0QE\0QE\0QE\\�(��(���(��i�QE/,}I��	EP�QEfc�N��\0��(\0��(\0��CB\0��(\0��(\0��(\0��)�p\n(���QE\n R����C\n(����(��^X��IE�(��\0(��\0(��\0(��\0(��\0����IX�(�EPEPK���0}%	��{Sh���i���g�6�)�EQp\nw��M��ES\0�������I��\0�HX��n>���@;�Rn>���wSIEHe}&��i(���{у�h������\0�QK��j�QE+��`>���h��QT]�֝M�������ϛޟE\0&=ړh��`z\nN=�<�z<�zu\0ݭ�K�{R�@ۻ��4y~��(\0��`z\n(��\0QGN�Q@���z�Z(0ޢ��(\0��(\0���4�P��J���Հ(��@QN�=h�S��zv�����AE\0`z\n(��\n(��\n(���\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(�:�@Q@Q@Q@g�w��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n=���\0����\0(��\0(��\0(��\0(�=EPEPEPEPE`z\n\0(��\0(��\'j\0C��R����\n(��\'jC��霱�&��(��(�����v�hSd�N��0x��R���8�>�$4£���a0�4�)&tQEXQ@QH�(��\0��*@(���.EP�t�|뀣���Qh�:����a�K�����\0�+d�\"LW�QHrjW���q��Ԇ�\"s�1S\0JDR8��\'\0�M�!�>ժ�>�}MMrp1U�A[B:\\�@^j���tP�y�ږk���~�br#Bǭik	E�Շ~�B�d��7˻,}\0�\0�Կii._��zҡ��9�&��%`@�0����Z���y�`~4��d~s���\\�YVp;��Ά�	sp��j��j�\n��,zR^J�H0W\'�MKi�C����P�B\n}?�c�]���m����^�����=��uK�H�F$n��-���||����~�.q��xy>c�Y��^��NIL���?=����̻w�����V5`]T�����Z�n��bN��������v�������mJ\0pi�	XZ,(�G��u��oЃ�\0��ZW,zs\\��;�\\:��w�4f%��k�nQ��J����Vcʮv���Zpi�|(s�\0�1D�\0�>�O�3�R�	��U?������$~Q�.*��@܏�\0\n�ֵV�N\"B\\,���E8F�����.���|�\"��ǆn�M%���Lcdga����u���#�z��ih1n��������+�x���9��K;o���29̓!�U��mOD�v�=����຤s�vo�S�����x:���!\nUݼ�>_K�՗�v��:�?��~k�:��|M�����Ŭ�)%{���\0;�\0��j�\0�\\�x?�V�5_i��iw��m��?Z�$��s����͡��ii�^<���&��+�S�{�w���I�4Ǧ[���Ń�Z�i�j�E{u\'JTkƝ\'�c���0N��� �2�������z���1ۨ=@��o�{Y�pdGՎ?�|K�}Y���w���o߷����f����~���:��\0ٱO��W�?�CW6t5�J��S�Wq�A���r^�;T2���׊�,\"0�.z�@����R\"�H*q��������K�������ψ.�/C��bM�B�Rq\\��uf�O��%�xB�ÜJl.sʰ5�R9u�F�\0����x#�\"{�f�NΛ�g_��=����a�t���j������9$��y}sM�H�+m�/N��-Ml����7����m�z��uV���گ�����	�����O�S;�$�#��\0o���@5%a�$껺��4�8�����1�����[W	��ˏ���U��t�k�鷥g���]�r,u��{����7zk��w��&������:�G����GN���d� #��T?rJ�o�P�����@G�������\0+w��� ���\0�Q������o��Q����*I����H�]�W��\0k���N�lh\\���$m������� �,�\"~��|���U�{�>x�).�M��Upbj�{��+m4g�n?t��OJ֊&�Y�o��ָ�\0k�j�`��o�멂4��I�O2&���u�k�2��Rm��nDu��_��TL�Z�f3�6T��2����D�[Y7����߷��-���{�;�:�[j��̰�@��z��������,7e~�T&�%(T�����\0��\0�cx�\0�h��S�Lֲ�#K%��p�e�̑��lJH�d��5B�F\\���ڷ�b�W�=GveKi��w/�J�V���J�5��sW�$�T�Ʋ,~�K���U�\\e�pxe�UKp��5��QE QE	�QE\\�q�4�P�Q$���(V\n(��Q@Q@Q@Q@Q@Q@(�)(�LE%/,}I�����o��N�`S|�ju\0QG\n=\0��\n(��\n(��\n(��\n(��\n(��\n(��\n(��`QE8�u�QM1�(��b\n(��\n(��\n(��\n(��\n(����QEqNY�9�>���W\0��)�QE\0QE.����q�4�����C�)�_SLKǽ.��iX\n(��ޝ� �}M%;�i����(�|�|�!�6����h��(b:Q���J(�QL�}(���(�`q��q��a����QN��(��.��h�}M%X�(�����������i7SF��h�}MJ0�R�r94��$M	����3���`z\n0=PEPEPE.��i(\0��QE\0QE\0QF�\0z\0)p}%\0QE\0QE\0S�Z@G�is��\0v�ӳ��_�\0G�.��L�}�|��p\'��F��M�c��uGK��@��QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QQ�Rn��\'j>�\0�(�QE\0(��)�\0Z(��\n(��\n(��\n(��\n(��\n(��JFlR�@GRTt\0QE\0QE\0QE%GI;���ӇAQԕ2@)�i*��w��N���EU%7��m* QE6�)H������(�0\n(���(���\n(�����A�i�g�4�>�\0�)�R���`mxb2��sZ�ǭg�z-���ɭ�6y�t#6�eݎءW��1����+f�;A��A�i����V��j�-��~�(���\0�j��C��:WLU��bZ��dc�������2@ǩ�D�8\0�NY�!*}�s�Cz�*�ac7ޑ�\'�Up��$��� ��t�@��i�D��H�zӷpD����ο�	�V��ۑR^]e����U�������In�gC��\'5bW!#���) �ZB	�v�j��v)<�?�)\\�^���72����W9q3<�ۇi?�;wև�n���V��ey�)d?l}��~��=��\"[6�d�H8�c����*��)?369���m�F���j�\0�չ�Y�t;w#?�q��!�hi�{�$`��C`�x�W����S��r?�~�*j�>U��c���a�[�%y���1W�<���\0�j�\"�G<��C@,���\\���+*�r�����ߞ�o�.x�L1Xڝ��)��1�\0}T�SU�6ٻ��=ﺡjA�E�w�%:m�33y���:�+:���ԏ���JȆύ���M����e��qiگ��gh�\0q���:��G�G�_��\0���u��ٳ�����=����>��8�DS�Iq����bY��T3�#�\0y��C�_|1��9��NԼ� �Іgܪ?A^�4��%t�LN\n5uٟ��O�/���i�v�sv�>A���W���\0���l�\0d��u���i��^N$��Z�S�����k�7�.�ac$��b�.�M���O��al��\04c�\'�\\�Dli�ԾTC\0��¹�����c9��_�5��D�+���$c�?����W��㝹�l�����\0�j[Ei&B��W�\0A�Ȼ���~mS��e��?0����4�&�U��_6d8�κ��ppI�exv�0赣�M�[�u\0�\0*I�r��:\\;�+{��ԅ�5����n����ř�?�����[\n�$��6�eSw�8��E�ȭ�#�\0�����`�g�$�/O��/�����s�6�\0�����;L--�?h���\0���]�-����\"~�#yV/���ߒ��[x��ݎ�Mp�Ŀ�fO�U�o/�]o 	�I7}�k��eM�1���v>��*�	3��q�GT�.Y�J�ot���+�`8��4��f�\0��Vi�Sf}بdv#��n�G���7�W���\0ᦽ��6����>׏mB�/��\0�(���@�8�,Tl�<����*�rj�U�4}KG�\0|S_��ί��SQ��\0�]����j�w����s|�7T��|�P����rW#�����r���ki7ߨ_���7��v>zi�p64�H���pH�7	�\0��o`�`�d�\0W7��W���m����c���\0}k��κ5�\"3I�o��\0�WU7Й�m�Ny�D���֌S�<[�o�k#M��RF�;S��յ�I>�-t���4G��~V_�V̹$⢈���Ք�!��ށ4:�A8۷\"�B|����o���H�~3�۵,�ǡ���:\nόl��l��œ\"��y�1�>�������͎���z�{�0�tQY�(��\0(�p�PEP43���@�$��	�)(�(��	\n(��\n(��\n(��\n(��\n(��\n(��XQT�^T�IE(�()�g�s�41�)=@uSݩH��(���QE\0QE\0QE\0QE\0QE\0QE\0QE�(�L�(�KʟB)(�p\n(��.����P0��(QE�\0��)�QE.��h�	EPEPEPK��hE%&ƐQE.��i��R�>�����L,����>��QB.����-p�QE(�)��)wSE�	ER��>���)�\n(��`��i����Rl�}M%.��h叩4�(���4��\0��^O���%S�Z/`E+c�i*�\0��\\CR�)x����v�������4�`;y��ӂ��Z<�zw�E \n\\JJ(��\0f�Q�@\n�M%PK��i)�_�\0�&�����ؓ����=i�RQN����;�szQ�P��\'��M�W�<��{Sh��\n(������]���QE;�Ӽ�ju\0�3ڏ3ڝ��(�G�\0QF��(���PEPEPEPEPEPEPEPEPEPEPEPEPEPEP\0:\n(��\n(��\n(��\n(�����jJ��\nw���\n������Sc�B��րE7�ZS��g�:��\0-)�\0QE\0QE\0QE\0QE\0QE\0TtQ@IQ�@Q@Q@Q@=A��C��t\0�3ڛE\0QE\0QE \n(��\n(�4RLw\n(�������%��QB`QE)\0QE QE\0���QE\0������D���?����s��\n��W4���@�+PgC���X �Fjf�籡P,aGE%l��v��q�1�s��O�W�h��C�m��RmV%���3Y�wT�ӊ�q��)]�c��\'\0�f�2K1-�ڔ[�����q���Hyc�\nݽ4�k��A��9�:Se������؛W�jxČ�h[	�!Qg�ީ�\\3#\0���X��+�SȪ.��?3@u#d�d���8��@����� `�q�TW��e6p8��ŔT�/ؤ���N�zϹA��m˫ƚ��`Ʃ��yņ��T�M�5�����!؁s����T��+��u��o���X)�ێ�W���՘t�\'�w�Wt��K:-��_�6bO�\n��2�i�\'�?�fi�� m�ŏ���(\"�ԧ}F�6���MV���\n=��[���ɬk��,��� �-3y`9�9�a���g��Gi�nn��~Uf�$�x���dPm��KHU�9 }��5,q��r���kV贲��6����V5��i$?#����җPeYb�	_���f������S<�g�\0�\0��S�є�ܭ����bb�t���W��&�d�uT�\n6�*6� �iܛ��/�_���#HӔe�X|���hxv����p�jͯ�Kol���\0�X�(�:TV��>w�x�b�:��rO���+����r�F����Wk1o�2��_��r��\n�%c����Z�]���::��O�R��;��e~q�?��VTV\"y�����}�����XU�=j��dTU?\\�v��!ZC�qt�+��nр�[+��P��/����[��:þH����n�\0��ֹO���I��P��.����7�]F�4�p�����=������-�j�ן9����25D�Q�\\���&����c��B���q��V�-18K/,k��]��Sq2�$��b��\0C�]}�Ղ5����ճB{��oܝ�{����$��se���i#��T	���٫l�͜ceF���xj|��[�����ef��?۪��`6��M2��~z��tu-ظ���ߝ��P͹�i��W�|��wo_�޼���\0�S��ٯK��\0Śݎ��Gy���}�k����t��Ol�\0��9�Vo��\0\\���Nk����&��N����\"V>���8ooS�ʵ^Es��U�\0����亂=x�2�����}�W�?�����_G7�,u&�f������v��y5��KP�f������\0\'�^��+~�>6��<km�h�И�����q��{U�(�oٽN:x���i[�?��vNy�����y��?��5�����c��z�+ӑ�-��Z�i�=(�K�����ډ�|{{S_���\0r�J�G����:hvIئ�\0��\0�ǺJ&Ftُ��H��F���\"�܎�D����\0���P��3�eg%b�vsy2G�\0Lޭ�m��5�\"��^�O���\0�m��b�ٓs�J��H���\0[�D^�������u���\0���mXj��w䯙G��o�Z���Q�vS�>߹W��7l��l����턴�ɫ�Օ��?rF�\0z�Gr����[ֹ��8Ed�oO��\0r����Fuj���/�(uf��a4���zv�q>��WP��6���F	�[�nsU\"9�jű�>�Qb�4a����������\n���Φ�LI;S�:��haM���RL�=���\n(��\n(��\n(������O��GQ@X}7������P��\n(��Q��\0QE\0QE\0QE\0d�(�0\n(��0\n(�,OZ�Tu%KV\0����3�<�j#�E�uP:\n@S|�jp�(h�(��(��(��(��(�0\n(��\n(��`QE5 \n(���(��}�(��6QEAE����p�)wSI0�RQNN�Ɔ�E�QE�(��q�4����$f��N@��}M%R�\\\\CIE�(�LnAESraESL�sIF��(�HQE)��wZ����0�QE�QJ�\n(�����ES��QE+���]��Ѹ��XJ(��jHAJAE%��^�w��G��V �=��ޔ�(Jo�M��\n(�(����q�4�PEPNݻ�c4�(J��(\0�y~��v��M\0�M�ޓy��y���g��u7y������\0�5_�&I�h�}M\0?�QM��78�\0�ӚwbAER%GE\0R����P�j>jm\0�7����J(\0�*:(J(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(��\n(���(��Q@Q@R+f���Iڛ@IQԔ\0�3ڝM��أ�Y������\0������\0�G��\0y~��(�=E\0QE\0QE\0QE\0QL��h�QG\n=\0����\0)OSIE\0QE\0QE\0QI�{PYJ�T�\0�>���\0(��\0(��V\0��)��(��QG\n=\0�⸻�����\0��)s\0QE۰QRՀ(��@��q�.��(�\0�;S���~�����V׆��\\?�8�`�b}k���>]�c�Upz�&h����)�\0�;ֈ�HM��Ҩ�6��ˌ�C]���赘d\\�܏ά^N7m��Xt��p���A�L��˃��(����+�Տ�,����i`��3	H�i���T�[��IK��B�������pC����q��RC	?�KX���ެ<v?΋��*�K`����Ne��c���+���\0��\0J��$��$�\0�T�QbM��F��ĵCn��GU����,dE#3�����ѿ�Gj���[��j>��\0���\0���>*�1�\0�Ҥ_p1<���>+a}3�\0|Զ�>\0z��V�l�j��Y *�G�i�Y=\0�RBL���-��A�+/i��|�\'9��K}1��p9T\'�⥶��6�c�d��������d9�-��*���8����5[��>2p	�Fi	���q��J�r����u��x1��/�ꥻ�i�b>����#^M�D��[o�?I!1V�c�K��͵��qHd0:J��*�q�\0�_z�ݛfC?��}�S.��$_�Sk7��L��<� ˀ�2���O�0���Eaxv��\nv�?���z���&�g��T�cH��(�UBq![�?������ڰ�[�LRß��\0Z�z��Y��D�����c\\\";��ݿ\\V��Ȥv��Mf����HP?���\0��$&�:=�h�;x\'q?�u�5��A�c��x�T(������@�m�#9�r�\'�)��\\����\0���S�It�����x�e�}�\\�℗Sq���giI]��u��ҹK����ZM�\'���\0]���u��cib�`�B�=y��e���?��H�z�c����\\��\'�}���]���n6W1��94��JR?���ˍ�u++\"�_7�u�̓s���P���l�4�#��>dG���g�3���@9���j���>_�RL�/0�_z%�Hҹ����t�/��QoP>^jdY����U��¦��y���n]^?����G�\"{�\nj6�&���8�\0��U�l����?��#^���ԲN���&���ϟ�G�������\0���s�[���:��d?��ֽ��h�曲j�Ui�%m�����ܦ���pݣ�r���Ƽ�[����o�E;�\"\'����߆�\'�n;��ݭ՟��o��Y���\0`_~מ4��������t�]Ԙ��[��WӪ�i�������K���_�E�S�`���?,B�En}c��.��y^K� |������i�LX2��X��d��Z���|=i^����ѧu=���;j16��xzk��{y}Mes@��\'��D���q�d������\0�����÷������\0����O��O;�� �Ӆ�����vW�d8�*�ʒS�����U�͏�5�}��2����\0���v��>%���?犸)5�������?�u�随�u��ﮊj�I=��C�I��9]��uzŒ���2_~�ն����=uE���09�\0r�z�M�$q��U������B�l:�ޘ�/�r21�՘/��UP2G�BIcޚBiz~��U5I���sN�\0\\���Sl�lTUX�(���$�����}K@QE \n(��\n(��\n(��\n(���QE�IEGN������($(��\0(��\0(��\0(��\0(���`\n(����Ԛ7SIE4E)pE\n�QpE3���\0�u6�S�:�@QF���7QE\0QE\0QE\0QE\0QE\0QE\0QE\0��(�Q@QB`QE\0QE4�(��i�R�>�����EP�ڰQE7QE0\n(��\n(��\n)0=)h�����q���J(��Q@��)q�)(��(��\n(��\n)0=)h\09�&�R��>���J(��q֊(��(��(��(��$@�~�QEƙ^�(�����(��}M%P�z�)0ޢ����QG>��\0(��\07Q@ ���`��`�J(��(��\0`z\n(��\n(���Q@����E.�����oAK�z�)0ޢ��x����PI��K��(���4`�7SIL�������i\0QA�n�P�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE�CE\0Q�Ph��z�EG@��ئ��=E%\0QN�=���R�����硠S|�jm\0�3ڛE\0T�Q@�=���9�:�\n(�f���*:\0��zEQ@�/ޛ@\n:�J(��(��(��)��P�:(��q�4�x4PEPEPERn�QE&�(���\n(���QE۸QH�(��(��᎔S~�\0�)�0#��+@$�e�W[���ҹ;e̠z����zN;\"Jk0=�:�sޜY-���b�,\0�Ro���*��R[�S\'-��9���}�a��f۟J$A+������wAknm�$��$�aN~�֔fF8�i�����(���Q�e�-7\'�~�v�\\�SҠH��=:*������.$rj;��w��J�/N*����~t�3/d�����\0!X��L��U�\'v>���Չa�g��\0��U��g%��\0��)	���-ԏ���\0���6V�UK.��wb�{TI$;FK��\n�WRV%^:���)�Q�����[@8�?�S����z���[:lD�����-��F�j5Y��P����*�<�J�զ.�=q��^-+_��Z@����ka�̪�:~u5̛bE�`�*j�D)\\��\0A�Z��K1PK��Q��U�cP��,���ms�no&�7��V�V��q6D�7���ۿ���<���_�j�\0�UN�#��[w�;S[@�ذa�����SB@įȭ��o��sV��)��\0^���y����kkF��6��W�\'�.��B��_�V�\0�j�co�=1Vd;���]2�����+��$c\"��?����ۀ?�ְ獥v��\0�?�Lek&kt���8�\0���Zb���8�>��g`-��N3��?��I،��&�@�\"�lk�1�V-�l����*�ve�\0Ifss�:�f�`[�m����k��/ץas�?w�u���:���^W���i��S��|<q��lА�-���%�����?�׊�%JS��o�p�J��7�\0]��,Z;��>��\0����9E���\'���ޛ?�jʫ�**�~������3����}e�����+:�m�o�*�Wq���O��1б�˺y���G�z2�Uw�>b�ގ�{����\0V��\\�2G�j��3���S^o�\n�G�R���=0?ܦ�d�)�7��P��O�+ �#��~��߻�nO�T�?Ĵ\0�v1����&��a-�մ70K��̫�2}�D�e��##ƼA�|:�N�u���n/n��L��\0$�����]_ß���Se$Z�a��/kX@�y}6�|t����D$L�r����mY}�f�2��Y���ɱ\'a�/�?�R�D}{ЛjH6�j>�-J�eW�I����r|�r��c�\0M��\'�H��;!�o�{�Jl������,{��F��!gJmT��>z�b���\0���Z���W߻��iY�ܐ��[I�ޟ��熵����~��q�\0ڬ8_ɒ7�>J�¬�eĶɝ���\0����?x�-M����\"C/���h� ����w���<2�]��ֿΟ�ζ�֖a:$n�\0Ə]����rD�BlZ6r�N���4i��F���ձb��[8޽+E���G,/�q�&��6��⧌`�M���_\'=*���56�Is�O�PVs�i�QY(����Q�R�ޓ�zJ{�$���E>��\n(��ށ�:�(�AE\"�ih+�7QEPSaKʟB)3ElR����t���EP@���R�El(��[4Z(��\n(��\n(��\n(���QT��P�t�q�4�Q`z�A�RR�QE QE\0Sc�N��\n(�=E����QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	�QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0Q�z�(�\0n��{QC\0��(\0��(\0��(\0��(\0��(\0��(\0��(\0��AE�(��(�\n�QEhEPEP�>�����Q@���J(��)>oj\0Z(\\���\0\\��\"�������q�4|���PK���J(\0��}M&���ڀ�(�=E\0QI��P�e�.��)8����ږ�\0N=�wQE\0�oAK�z�0=\0n��]���n��\n(�=E%��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(���{P�u6N��l������iy��@	EPRTtPRSzRPJ��i(��^X��G��4\0#�%P�s�Z}GRP9S�E*�cM�lv�\0���t���f�)�S���y�\0:�\'juG@\nz�J(����PE��\n(��\no���:��	)�����\n(��\n(��v\0��)�QEX�(�EPEPEPEPEPEPW�m;��?Ʃ0�ލ���QM -i��.�{��\0�Q\\߆��/���j��\"L)�֝LNIds}ڇ�M1⠺�jdv�b�k�.�����${c��}M�q��s��S�~�ZѾ�D�����qQ\\˂ʼ�I>S���>�NvHǱ0Z݊�;���~a��i�g\'����-�~������HTך�I,s��R��#=3����2�И��眏��9I>g8*O�1W�\\�b3�A�\0�j��X�>�AP��7�B�u��ZȅÒ�+�t�TW�)9v����m��x\n��	h+�,\\,	?�&�t輤P?�J��m�X��O�[pE�\'�_¨h[�Ó��K����?J��]n�j�����ȁ�B���� ,ڒ�G�z�u_[��g���G���\\�\0�¹���\0,w��QmDٗ{pn�]7;��A�?\"E�������(�Ub�We�\0�0�B\'�wO�j��;MoanK��\0�U����[E��	�6��\nbG��{`U�܁��͓���Cw(-�\\���=��K�\n���{V>�`��OC�����AN J0��G+g�AR~Y�g|qߩ�&Q���aзS��Y�Cs�?R�N|�@?#QE(�?�J\\Lyk�^1�&�3�w���LSZ�;������^��pn\\��G�6Z�����������i����\\�wL�8V�Fs�S����\"m]����\nlI�^%�kxHM�ف��7⼳\\��}I�؈\"��7�\0L�o����I.vap?)y����\0�A5�G,�xZo�M�1�駣��jj7C�x���=�Z��v�_R{l���t�w~l�����>��s~�k��_����\n���\"��Vo��7ܫJ��Y����l�#����#ò�9����+$�����y���\0�����?��z%\"�v��߽�t���=�_��C^o�mZ<�w�\nk���|�G��ip7������ں�\0%�j�4�Ŀ~�!W/���\0�B\'2u�Nw_/.~M�%G�y5f�4�?.(���j�>�\0�N�8��\0�:��T�_���&^>�=7�g��|U��榡{�*�_3�RB���;?�];���\00�~Ǐ�����l�\'n>�Z���=ݿ��Q����O�i���-7�H�s��Ds|���%5�Ye�?r���!�/W}�����H�g�çܪ�_�=z�+���E�Ɯ��A�&�o;��o/�O�kQϹ� �?�7T�{��\0{�r+��Bv���u��I�?0�4��DF��\n˺��6�O�F����un��ώ1�*�WM6dk�f>c�c#WO�γ���+�H�岐U�\0�����\'V�v������Վ����(��WP�k:��W5������[�X�z�5���A&��\'��&�ۗ?�E@�(�@:p(��R.;P�E�������\0�+v4�*Kz�QL�z��ޝ�����Q�z�l��~oj,!GAER\0����Q@�QE�QE,w��N��yc�M��(�tQ@�(\0����Q@Q@Q@QE�(��n@QE�1�&��.4�*�������\0�H}7�{�3ڝE�HQM��:�@QE\0QE\0������Q@�\0QE\0QF��(��(��(��(��(��(��(��(��ƕ�8�ERLQE�adP:\n)0�(��ڌ���Z(�=E\0QF��)>oj,�I�{Q�{Q`�4R|�Դ0\n(��\n(��\n(��\n(�p�\0QF��(��FlR�EPE\'��J:\n\0(���Ѐ(��\0�EV�QE\0QE\0QE\0��(\0��(\0��`z\n(��(�p�QE\0�>���\00ނ�(��^h��\0(���Ҁ\n(��AE���p�\0QE��\n(��}M\0%Q@Q@��(��(��(��(��(��(��(��(��(��(��(��(��(�\0QE\0QE\0QQ�@�����E\0S�o�E2�\n(��q�4w�4�PEPEPEPEPEPEPEPEPEPE���P�E\0P�4Q@(\0��OSI@��Ѹ��J(\0��(\0��(\0��+6�(��i����3�u�n�4^�:�o��I�����x�(��~�\0Z(�p�\0QE\0QE��E��c�zh������݅#g<��8<p)*�\0��)�߄Py�������)H�����L?3qޜx^;SI�Zd�b)�+\n��y�*v�)�|�Z\"$��ZGA!\'p�1p@�4�^I<�\0Z�V#�UDhI���ޡ���ШKiҐ[=�Oz��D����4��~��)#��wjWpN�8_�h�v�b�^�<z���SI��0��U[��@�I��636rn,H��F��q���s��\0{��t\0�\0���[�vL	�\0!��Q6(`I2� 7�x{K�������D��bz+|ߠ��F�$��\0V�dc�,��{Ջ��$az���a��+>��31���*�Ct���z�5j0�{��8�	� ��9�f��{8�;�@jw!��9#�b���LӅ\'n�[o�5������\\��������B�����M4�&I\n�4Y�����]��3���`>o΍>��hݗk+n?����X����������Z5�(\n�Q��Y\"v�6yb8�\0xS�2!;zp>�b�?5���\'?���F���(ۊ�@d�d��s�j�@��V��G�R���R�?��l�7ֲ5��-ApA��Hw)�(2\0X���s��C)>cH���UiI��QI\'�l�\0Zt(o����P���O��I�Ma�Wo<�m�v>Ͷ��]�c,7m��g�V%˫����3����%���7�vWo-��pG����`G|W1���r$p?��k���b��.x<~5�D�>\"�+cc<���+�;���.�ء��������k����4͘���}r��n&8�[�Kq�3+�\0��.�v����Z�0�L��S��\0v��i�.$n�=tz굴{c�F��&V�gE�e�����M�XTF�5���|�fK���:\'���v���r��\0�]�k�������ԉ���Κ���S�7Ƿ�5���v-++����)���r�=9�tݟ��~���\'���O��i�:���6͟v�D]�GU^O&?�uq����V��\0�ԁ��F���642|����V�K7����i]؁;T��&U�7��\0���}����r��H��&|�s�i��o��\0����f�cJ��b�\05?s&�>g�M��|��GJ���;�:~�r�]پ�5ݠ?�Σ�\0y�X���7-?��0d�ˏ���<�%L��S8NO��x�!$���7�F��?��y�\052V��F�r��޴��Z\\���������/�*K3&��*Z�4�/��-�O,~]�������h�I3���\0��S���b�?/˝���\0��]��7���������%��[���6���4��f��ko.h$��Y��h/�*yi�+�/S)��$��kD���\\,�>�mY11�9�Rv%�A-�ўC��Ξ*���1R$K+2���Q���ֳ�]��QQ��>��)�_3ڏ3ڝQ�	&II���2���QM�=�ۇ��V\n(��h:t�E4���Q��i)�4�(��)&��(��(�p�(��;Q@7p�V\"��\nd�Tt�3ځ8���QE�(�=E7���P6��G�Z(��(�AEPEPEPESN�QE����q�4�UX�}M%P݆�q�4��=����q|�juGE	\\�%���Ѹ����M�=�V�h��n��)���� @�)�����=���QE \n7QM�=��44�7QE01)U��Tt�����J�E\0�(�NG�/��Cw�Q�z�o��F��E��S|�j7n��&���)��Ό�\0�i�C�=5��LCK��Ѱ�|ԹoAL�y�� jè��B\'ҏ�ڙN�=��~ojZM�ޑ�#\0R��n>���������\0��اS|�j<�jM0���z�o��N��p��h��M�Re�-3q�4��������Q��4X�ڎ=�����J(����3���:��)7�j<�j!~ocF[�Re}_CN���z\nZn��G��I�C�QF��)�����}��h��}M���D&���q�4��(��\0(��\0)wSIE\0QE\0c=���\00=Q�z�\0)p}&�����QF�����Q@Q@Q@Q@&��KE\0QE1�QHAEPE�J��zu7���PEPEPEPEPEPEPEPEPEPEPE���RSd�G���\0:���QE\0GR����z<�jm9�a@�$њ(\0��(\0��q�4�\0QE\0��撊7Q@Q@Q@Q@n��\0AE��\0(��\0(��\0(��\0)�v�p��\n(�s�4�(��(���ԇ���S@	EPEPEPE��@QA�jP͊��R�JqȦ�7aNᇨ4�^��q�3@�l���޴�{Q`���M^��i ���)�K�Ph8��������\0�_�:�(l��i��۱�J�ERr\0��(r�G�R��El�=�k���������`z�bT`���ˑU��t���,TU�d�4���3PLK8]Ú���U��M���:u��e�?�O;dq��e�<�J�������)��X�T�@9�2��\'�5w�����7�JY،d}���C�rp((n��#�\n*��s�x�\0�T��.����V��݀�\0ǩF���G�X���F�`?7��ZZ���\n?^��)}���M��6h��4�+a:�Ieuf��kp��>_j����0#�\'�V��ܞ�hC#��*@�~u�}>1�㧯AR�pst_�\0]U�$��ې	��(5\"1�����u5����|g��v���\0�S^P��1P���+[f��UW9B��TzU��J��`�?��jk{uiٷ���օ�&�؅]����Rh�P(wѹ�ӱh2pG��V23�@�\0���߸rG\nS��*QB�\nDtl������\'�~�Uc�L���L���+kN�B��\'?�TD_�L �zqV��\0\n�|�t�R�\n�wZ�Xl��9�s���d$|�N�Elj/�Bă�!\\�1.~���\0�\0��d4R�K�����T�S�((�~R͑��+#S�hCc�?w�\0��*G�Q`��_����.Ow��N���=�֪�F|�fa��\0A���y��M�v��^QVl10VT+�&o�Z��D��C�ĸu�U����+[\\�e���%?�	���\0�>�4�\0JV��A��*JG�x�%�u3O�}���SX�bmO�y�:�3�\0ugUZ�ŗ�M�;B�ș3��#_-A�j�!�G��奲6��\0vH��Il(�lfx�h���XA�R��>]ͺ�m~���x��7A���6�Ԗh�]sKst�I	��?�I\'����W�\0�v3�#I�����i<�<��v\'�UG~�\0��8�w���>zl)�G֤�ڡ����Vb��F�\0�S��|zQ���򍻐���S����Y>zY��#��/ܪ,l��O��]��4�>��\0�T;��\'Z�\0���|�٣��-�t?�^��jFՆ���-7���G &=�4�c���u�I?7�\n7��>o�(x�Ǵ��9��Z$\0���G\0o3��iRlY0��)�����\03�����\\E��N����u��!,0j\'���\'2�JY$f�\'<���6y��$䓪!�O�%*���A��ޠ���:�+X��#ç�#��Ҥ�@�D`�4�ELd|�Ի�O�����mX��_�k�����\0��/r�k�w�˽뉻/R�n�g��j��)�jp,�d�*�0n�Wd�T����U��W�r��\0�zo�\0�u���!�?��Vm�����:�J�GK���\"|���ں}*O��C\\^���/�5��mN>�z�f[Ԯ>�d$��{���KSnbI�2�&7>���g7�u��Y�EQp\n(��Ɲ��]��Ѹ��E�_3ڝ�Pj:Q�P&�����:Ӹa��\0�E���L�J(�֌��y�i�9#=��(�)�q6>�����(����R\0����QAI�(\n(�I�H��(Ԓ����@�IE3q�4�Dw���:����]�x�q@4:�(����o�@�E\"�iOC@X(��QE\0QE\0QE\0QEN�EP>`��(aES�X�撊(�4QE&ƐQE���⒊(l��QE\0���q�4g=ri)�]���QFH�;�z�J(��&�(���J(��Wq�4�_CM���)wSIE��QEH���ԔSL�wSF��i(��\n(�$RQEՂ�\'��o�����.�qF����SLVD����QBadQE!�_SM��.EQp\n(���\n(���(��0��(�QE\n쎊(��Z(��\n(��\n(��?�\nZ(����x����(�\0�Z(��q�4�Q@�����j\0\\AE���p�\0`z\n(��ڀ�o�N��(��^�i0��4\0QF����jZ)7Z\0\\�n��[4\0�����zR�>��F��)���\'�@��(\0��(\0��(\0��(\0��(\0��(:(�(\0�p���gN�����G���\0)�v��}M*��\0�����\0o��N�����{Sh��\n(�=M\0%Q@Q@Q�z�\0(��\0(�=E߹�\0uQ@��اQE\0��i�PHW,�-6N�\0�AE\0n��(��(��(�\0�4QE\0QE\0QE\05���QQ�KʟB)(��2M�\0��(n���;P����{S�H�;q�*@o��G��N 7Z\0ҝ�\0R2��8a�Q@\n=\0���|Ә�f���S@�|��)9S�E��`v�1�S��G� �R��Rn�qG,}I���\nz�J(�݀(�<� gh�p� -��\nǌk�Wܪ}k��}�WS�܉�W9,���Љ\"�͵@�Pw=���nj+�|�b:�k�`E�)n�`T���4�c�4�X��V������Jc9��Ɨ��U��J�@8 �M����R����^c�@�֜P�Ew0#=�i��ZY���⡍	�����S�;P�|Jc����͑�s|����*�p�/�ZE��D�=>\\{u�{�ڔh@�w~�OWՁ\\����&�� e��_��M�{V���_�c�Tw��ǟ�*���az`U+�)���\0�H�	�:(nܟ֩Mu�����E]`:���Ub��6�Gɍ����W&jc���5���}�rOժh���F7rO�9#!����@�qǛ�9p���jڮ蜞����)�[��Q�o�hUm�+����\nM	!��1�\\���U	�m\n���$杨��\'��pC���H$�&�����7�\0A�l���i�\0����R�2����V�\n�zF~q��g�T3M�G^Zw�������x���sU�P\\��PQq�3Z����7��b��j��GػYz7�H�hfe���e�}ۿ�nԟk���?�uB)�G�~T��O�E���0p4��-�.�����W4����I����³�e�ћbG�\0��C���YO��A��)F���z���;�i	b�*��b+z��v����Z�6�ה_����Е�A\'��WS��r�GϨ4��F�.ε��M�͹?������O�7��g��\0���GT�K�.D�dH������9��U�&��߁�\0j�l���5F	�٬]�ў�-��-�\\�^�͇\\�l�I��ݓ���UQ:�S]�Η��mG������\0�P��#���\0��\0UL����ߩ7��vP���zɫ��i�.��j�g����:�s1x�l�(ٟn*4m�\0/G��7�IGʙ��|��6QϾLG�/@~�9����F�/ު�$���ʉ�I��a�茟2�3���u1O��\0�O�����H6�����&^:��<��jwʟtS@���)о�1�MX�ySL�2{�\'�Z��y�l���X�n1�-0����bqI$�b�\0[�G��E�#X�m\\H�㨑�7��\0�K������w����c1�\0#�$�ncVN7Ԇ$��#�f���RH�Ю�N<�c\'R(�ܟv�dN�~���i{܋��7��yn��hs��#���z�/��+����������L��A\"�,�v�����;��.�~�U׸���[+>���H[�q�ߧ\\jH7���k�J�K�ӳ��s#N\n�]��vca�k����5n��e����QW:���P�玔��W�Ut���U���3$u�/ޏ���,:�l}�U�@4-QE�QE4�(���_��i(���;wl{S��v�R�(���Ri�V\nM�֖�`���(��L]��Ѹ��J)��y����Tt����;.���KMV�i�	���-�)h��(�.��(���sIE�)wSIEN��>���(X�}GJ�Eh}S�*	Hvq֊)�g�\0��(��n���iQF��(�AEPE����\n(��\n(��\n(��\n(��\n(��\n(���QE(��(��(�.QE\0QE\0QE\0Q�z�7Q@�QE\n(��\n(��\n(��\n(��\n(��\n(�p�\0QE\0n��(�=E\n(��Q@Q@n��\0(���7Q@�G��\0xRg��I���{V�:\n)��ҝ@���Jo��N��7QEp�=E����\0(��\0O�ڗ�QE\0s�)0}ih����QE\07������Q@�iۇ����EQp\n(��\n(��@QE0\n(��\n)8����(��(��X�J8P4\0��������=��QQ��Q@(��7QA�h\0��(\0�=E�nq�4\0���iwSC�h\0f-�)(��\n]���Q@\n�E{�Q@���J(��(��(��(��)�\0����(\0��(\0��(\0��(\0��(\0��n����QE\0n��(��(��AE\0QE\0QE\0QE\0QE\0QM�=��%G@Q@QI�\0QE	\0S|�juM����M ��Ij�T�I��!�i|�zlQM�=�^��iXR�KF��) [4�����qN=;\0�;S����\0lP��w���S���Ҝ��i)�K���J)�ET�ER\0��(U��kk@��&�p���jť�F�9pz�&��c$����@\\�5%��{Eq��%�ye�fbI���d�.栓x�O-��* v\'�*���D���8�� b��H�S������\\nA�3�8hH�!C���R��Js�I=�\0�*7��	�O��lhRvD�O�5Z������N�Z�sr02:~�dޅ�?N=wV��l�H���\0ת��<����>��cOO\"(��\0��1�$�L�V�vF@���5�w7����+����,6� ~\"�2.C�`ۣB��\0k�&���q��s�L�U⍃�?.X�:f�-����R��0��	��~�4�3���R�G�$�\0~��q����Qa�2_����̻!|�?���	2s�������H\n�\n��0)ʟ���s�*��%�a�ds���m�|�2?��V��}У�Ƅđj� 1�;~����?/c��{Pz��W}���x�0�`Ns�U%�.<u���t��o8?(��5N���p�H?�P{ېac�#�q�\0֮;�7E+8�n?���j7b)�X��>��z�5��s~�xTڻ����N,M�J�&�3��{w��� ߿��\07��qSZL������\0��d�s�җt��aR�����e��rV{�>W��\0����-��W\n�)1���8�܀9�+�>!J�ĭ���������2q^a�5�S��y9v3�c²��L���KP�c�[Z�mO��.��wU[��>X�\0�A��\0�|�ZW�F�@�i��-,��\0�M�^+\'ĳG��r2���ܟ�/2��.:���W�ZV�8H�\0�e�I�kR+�������\0s�zV1Ob�nn�:H��>}�\nB�}y�\nv��?ۦ�Ͻ���_3������?�\'��\0Q���:��5��Rn�\0r���,U����\0�W޾_��S\"���ڱ�fu���Ngg���\0��3>��J��\0y��5dͻ��Hd)}����ُ,��{�?���Q�؝��G\"yQ�ޯ%L�<�O�~���~��H��g�z�M�	�\0�,�z��\0���g�cD�ZJ7\0t�����Z�٨��>s��G��~���7v��Z�\0���;��Z^߻�d�S;��D8zd���Pi����қ\'_�?����67�������\0�JH���$�o>l�IjM�Kq��F֡�1��4�|���Bqtyh�H��Ⱦ_��5j�x$Lx��|�+>���9�S�_t1IfD���Sz�=������\0���w_�|�j����bf���o߆��V�؉+�u��fP\'�]��4�Q6a+���gt*k��F[eo�j�;�=��M��b�s�X�O���]���\"��{Sh�M$�����(� �(,Z���v8�@�G�M�=�C�4\n�Z*:��j�EQq.��i(��.��i2E�-;��=������P��(����SU�u��z(J;s�\03Ͻ�٥��@�8�*������\0��>�i�(��/BJCM��M���Đ�\0ni�g�&��h�}MHX�Э��jM��P6L���۞Hu�����Q@��QF��(���(��QE)�g�7���wSIE\0�nƝ�z���X��<t���R�c�A(u�3ڝ@47���\0��3ڀ�ax���=EJ�Tt��Ƞ9Gќu��M��PX)����������(�=E\n(��\n(��\n7QE\0n���QQ�4�I�z�7QM�=(�h��}M.��G��AWq�4�o��G��@���7QM�=��}�ۇ�����Q�{P��7ZO3ڏ3ڀ����S|�j]�ލ�ހH]��Ss��.��I�zP	����Qǵ&��F��@��k/q@��o��I��hǸ�j#�QM�=�8���Xn�������%\0)7Zai8��QAJ$��٦Q@�I(�n>�������\'����9Fc��]��� �y������M�ޖ�FlP$��2��{S�Q@M�ޓ���Q�z�(�p�n��(\0�=E������\0M�֗p��3ړq�4\0���Rn����Ѹ��\0v��F��i7�j]�ހ���SwAF��@��=i7J>Z\0v��(��	)�g�6�\0~[�R�tP�Zv��*:(wSF��i7�F}�\0II�{�(�L�������&��\0��:Tc���E����$�����(Jo��M���{Rn>���\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0)�s�4�(\0��z�Z\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\0(��\02q��M�\0���\0)����E\0�;S���z�7SI@QE�(��\0(�=EPu%p��\n����7���N�|�$iwSIKʟB*�14��қK���Q�\nw����q�4���4�݅&�v��>�P�\n��Ө�r�ԚV�	E(�)*�\0��*PQSp\n(��\n(��?���N��)��ڕњO/ޏ�gLmP�2x~?ڜ�����E!��[�u��yAȭ���2\'̮���TM���6��p�ҷl����B�Ҕ��<�r8=�YCY�3T&�$��5zS�3��+�@�h�r��j=O�\0Z�$eO����N�����d�H<!���2����E ���s���z�~����\n��1?Ni\0y�5;H�c�Sgp����U^B7d�Q�4�u�9:�~] ������E=���S?3�^\'?�4�+5���U�x�Ȥ��?ʋh<��������T|�S�3�⁓��0=y�R<���F���9�i�;��\0Cp�Fǭa]�!~��O�;[L[\n������E�w\\�}2��&��B�/��?�V�j%�ϩ�U��Tu#�������J�3�֕�O�{)Ң���s���_4$`��g�Ҳn��-݈�\0�i.T�c�s���T�.��ݼ��j�چ�n\0���G�Y$[pbv��9��XW\"�n<�3�m���r:�ߚ�Ǭnȟ���}J����?�U�^1`s�SVș���ڗO�o����\0&�����\0۫�d�]7}��8�3���j%@��*�\0�»=��6���]�L�w��u�k��b+��\"�kRbK�\\�#vOּ��\\�z�-�FVI��!��#2���1�M�5��6D��5��Yrc�/��g��.�.�`��kzz��юAR��O��yg��|�み壳תx�S�h�r��+����5�#|����7��kO���ե%�p�H�W��\'�U�e��R^�g��ٳ�\0f�\"M����s\'�)��ծi>m�\05L�����5��?�yQ����?~���2g��ڭ���w���&��o�T/7z�&ux�|��Rͷ�z�<Ȱ�nQK�,\"����[�R>~��Τ6�.�씌��\0{�:=��^)�,2n�\n�N�F��V>]:�G��\0�c�=��൸Ҹ�,t�\0Xc�����w���<�\0Z�F��.-����ʱ��ϱ�;�G��|��`E,[�	����S��?�����\0RA�9�\'����cn?��$�K�>�2�,��I\'�|�>_��N$���Ysҥ\\�\0�?J��.����#I�9��>׎0�~������X#���?�֡���kwܑ7���æx��-�o,����tַ{�᫕�F�ڭ\\�����Vg�v��!o�֌�����H�x��M�7�?n�\"��ٽ+���>R ��ᛅ\n����D�ʻzWD^�:(���J�dH�O]��Vu0=&��]���>�D$�=�h&�\nUb)(���(����(wSO3q�4n>��5q�Tu%�`�����W$��)�Q�R�ޛE	\\��$�����f��>�f��iwJè�n>��~��E7p���?���01)wn����\0f��z�(�NAGNP.`��{��SaK���M��R���c�{R����:�@���p�AEP	�CEn�����(��y�7���n���QEr��QE7�{悇QE7v�1��	��$Q@`zP�3ڝ@R+f��FlR��(�p�\0R�>��p�PJ���Pq�4�Q@n��\0(��\0)wZk6)wQ@X]�֍��L�=��>��;�3ڏ3ځ���}M3������o���P+�wSIL�}h�}h���Q�z�o��F��@��p���=��n���{R���b�I����y��c����Ի��\0.��(�%O^i7A@ǵ-&��I�zP����(�=�ۇ��ϰ������P�)���g�\0:�f��i�oA@E&29�G���E����9�EP�z�(��\n)>oj\\A@Q��(\0����4�\0QE\0Q��(��\n(��\n(��\nCE\0QE\0QE\0QE\0n����QE\0n��(\0�=EQ@	�������\0(��\0(�=ERl9�RTt������ږ�(\0��8a�\0Q��(��(��(��(��CE\0Q׃K���	EPG=A����p�(����Q@�)�_�6�`QE0\n(��\nR�Fqޒ�\n)p}%\0QK��h(��杅�4��a�G#�R��m�J)@��IJ�R�ЊJ.ES����R�E��֕�ai�_�_�;�Qt\":��AE@������0��4�v�Rl�� E;������th�*:��R��J�QQCL��u-�m���C���=4�m��h��5WBQK��i(B\n)p}%\'\"�B�\'�@�RQqX)wSIK��hL�s�ޒ�(R������ޒ�b�rx��)XAET�E`z\n\0)�v����А�#��zO��h*����S�_5��N�֫�MJ�\\�Qir�0�^����U��_=����+~��.b�����ū7=�HNG4Q�<v��+�z�p����5u���*�C�MZ&&c�%�8Q�`��-��g�U���\'�qT�`�c��T���?��`s��S���<~t��v���Ҁ#ol����T��s�O�*B�)RX�~u�3���\'���At�px�3I\"���r*P2ǜ?CM��`(���P��R�1���ңK�����\0�\0J��a�?\0z9dR:g?�������P���u�Ң�bF����@�[�+����p��~\\�LK�.�e9?�#�����#?�4��|y.{g?�1R���7���e�n�[Ҙ�;T�m��>��\0��uk�[6T\0����Ƚ�_=�����L�5erV>J|���k�Rr��;��\0������Ժ��b�J�7�U[��<�຅_����x��|�3��U���\'}�t\'��V�a;�}����E����N�p��G��Mqq���S��ǚ�^I7I��TIj\\V��ҩ&X��������\0�VK�6>�cM��#f��\0�T��G�xD�� )��^��(KU=2+��Jy��ޟ-w09�����Ԙ�ź�ۜ��A��9�\0\n��u8�E1�1V3�֨�@ּ�j4�\'�ou����\\�IE�����\0&����\'va����]KvGl�e�?�o�j���\0%mx�Wh�y��V�n7��g笤���+CV�y��\0WH#�,�\n�y�#��\0�\'�Z��7�Ӓfy<����Ԍ��u���]�T.����9g���WI�S�����oև�g�?�B��g��3��j1^B�Sǖ��Q�l���i�k��>jk�NjG�=�7�Ha�h�sQ}�����H|����y�p�����>?y��N�|�k��j&\0�����n[�7����S�T�7�������9�i��(%S�֠G���튟�<��N����b���f�)\'/OM�M�<�M�IF�c�%a��<��4I��#�d�<��sLY���VA-�I8����\0�S8�񾡗-6Θ�k327ݰ�/�?!��\0�Y������~�;��iD��/��~Ll�\0����ب���=j��������M�t�̛8CR�5�ڹ��%-����zו6\\8���<�A8��\0r��^H�>x�t��s�ݝ�y�Fd�ӧ����B;��מxvi#x��ݾ�Cm�S޺!����ğ%���\0*�Zp\\�k9��Z��H]��QMݷ�g���d�IX0}>���R�\'�&\\u��ҏ3ژ�GQM�=��=�C��^(�}�(�\\�K���J(0�������@��{Rn>����Ѹ����)�����=�\'�vsҊo��G��@4:�E3�����Ԡ�r)��\0�)w�z��<�4n>���S�QE�ü�jE=qL�=��=����g�3q�4�g�h�p�v���(��J)���\0�Ҁ����Pzf��i7���\"J*2��S��j��:dR�>���G��@���o>�=X�_3ڣ�}�7SBbh���}��}MG��Ѹ���&��i|�j�������G���)�ϵ�����;R�>���G��@4H��&�q�5�R����>�����7�j�ך\0~��h�}M0?���\n\0�������o�o#�\0�\03ڝQo�o�\0�ny4y����G��@X�������o��g�\0?q�4�ϵG�{Q��P�����o>�y��\"�cD��=�\\n��oS@f&��X����\0��]���Rq�@��n>�������;��+z��#�Q���\\��x����\0�Q��������7Z�q�4n>��ܓ��nި�SI@\\��z�G���7S@nZ8�5.��hM���Sw�jM�����wZ\0���������j7�jʉ<�j7�j�y���?٠,�<�.��P�@�M��S7�zM�ڍ�ڀHz��))����1P���J<��Jn��F��@�y�E3q���}��QEV�aE�{Ѩ	EQ��`z\n0=�ږ�7�Q��)��6�p\n(����UR�`�Z�J0=.��#�Ѩ	��(���/����4+�LAE;h���h���K��i|�z6�w��F��J�EU�QN������[���AN���0}4�LAF��l>�l>�Y�mQIDAH˺��z�CT`z\n0=;����=�S�S��z{�J�!cޅR��g���[\0R*���/ޕWm\02���A@�R`z\n0=\0GEIE\0GEIE\0GEIE\0GRQE&�0}>��E0��h��4�(�>����(����i���0=&�0=��)4�0=�E�����QF�����(��QG(���*@0=��(����QE\0���/ޝE	�QE\0QE\0�/ޏ/ޝE;�݇ړ�����R`�}��>���9�QR���4`�}60}%I��)wP��>������	�#��\0/Jo��B�������\0lP6z6z�����v6zO/ޤ(GNi0}5p˞E&��N���=E!C�}���O���.���z\n���C\n�rzRl#�1RQ�آ��GQM(N*Z0=$�G��(���/ޗh�(��(���/ލ�ڝ�r=��I��i�R)2:w��N�9�E\0�7������u��#.����Jw��G���	�����w9�h���L��K��i(Q�v���4�0=/a�>�����P\nDub���VS�qP�~��q�N�:;պ���{���8ɮr���ܥ��͞��I����N�fR��G�8�L�o:R��*3҆a���j\"��L�_J�q��`y�\0�V���&�\'�*�������~����4�Bѐy��L{FQQ��\\c�M\0;xtO@�)@���1���a�\\~��VR�t?�\0�NW��;q@3��H�x����;��#�Eb��.z�A�*@�*猚��X��\'\0�sR����1˖�N8�prހ���r\0��\0*��O��w�\0Z\0�r��EN3�R�8ݸ�)�\0�����d*Ϲ��`������\0֤���y�n�t?����_��@]��g��)o��� �����Eb�ڎ�a��\0�j$�M{�yQ��foϚɽ�iQ�~�s�ګw~���\0�嬋�K�?�9>�I�An�FU�bB�l>f�>�g��?���P�q�=��\0,�6�b���\0�$�\0�V\\׫�H��s�u>M��o��\0�Z�<�-�Yq��$ZV%3o\'ߍ�\0�z���ۧC��-�>}�Տ��7�\0�O��_i��f_�ʚWd��z�m�\'�$���G��-�1����d�f���e��-���J�E�#�P�d��;���^�YZ������\0��&���mؗh��n_���bUկ�#壛gΟ����OkC����_�z�\0�u�Ҳ&+S��M�L�E&���*$}�SV��ԢD����*�+��b�/�X�}�����Ԑw��2�\0�?��\0̧B��\0�Ξ�H��w����L��i������T@w���f�;���\0�t��J�J�L�>V♳|���}��|�V����/���A�}��Rͻ?ܨ����^���\0�-|�����&�b�����S.-��\nu���5���1�DA�Tȝ�	��]g\'p#����ϕ�\0M)���|����97��\'�8  �A�����=8E���J|�����D\\�e�u�����)�g�cD�I+�׍�����Nx���ZTrH��?����K`\'Wr\"����Z?o�������r��\0ݬڱjb\\~�lS�f���A��T�0g�i���*������>�2&��IV<�$Y�5���8���nd� y����\n�þoڮ7�6C$�|��LT�-ڋ������\0����I��e���:g�o�*�ɽ����>z��n�$�}�zm�^H����s�t>�����W�?�U��gi�y֐�ZH�d\'/��CQ��h=䎒��#����5j��t����1H}�U\"����)�_�d[ch���4�_�$�m�z�G��L��hE?�R\0GBN�*J(�cU{�U�jP00)zuȠ�ƫf��(AE;n�s�Si\'q�QL���UR�\n��Js��Q@��)v�	M��;�R|��\0�Ra�E-\0Q��(��\0QF���PF��(��Pu%PQԔ�/ހ3ڛRQ@�������n�s�ӨaF��(��P\nAEP0��((��)p}q(��\0(��\0(��\0(��\0(��\0(��\0(��\0(�=EPF��(�=E\0n���?\nZ(\0��z�E\0&�4`��+v4���P(�\\�F��Va�z�7��l��\\QM������C��=EQp����J����PEn��aE�/ނRF��)�_�6��L�L������QI��\0����H��}\0n����Ө*��Q�z�o�N�i;����Q�S|�ju�&��I�{R�z�m����c�Sv�Z>�hc������Q��*�d\\o��G��N 7ZM�ޝ������l��)p}K0=��(�\n0=SQ\0����/^.���\0�(��9F�Sv�Zu.������_�_�:�b��ө�g�_�K�F��`z]�ބ�3�QN*SF��Ch�N�=EG��d;��`z\n_,z�J�&`z\n(�!	��m>�����(���3ڌ�\0�J��}(�})w�jm\n���*LAL�>�l>Ԙ>��PՀ0=GRQN ��(��QL�(��(��(��(��(��(��(��(��(��g<f��\0����}M%\0/��_SM���\n(�p��\0����QC`QE@QE.`\n(�t��H�7QEP\\7QE7���n��\n(��\n(��\n(��\n(��\n(��`u��E	�QE7`\n(��=jZh��=�7���XQM�=�.ON)XQ@)�ϵ&��E�}���֋\0��\0��Rr�ԚJM�֩0��jJ7QF��*G`����7QA u�)yc�M7p���=E0��x���=E6�Q�z�7QH�M�ޓp��`^�Nf�4�瞴1�R�)A�!�)�9��ǽ.��(���u~��4�g�\0����Mݻ�c4n������M�}�	\'�\0,���n��v�QF��)7Z$Z)7�z7��-:&J����^(L,͋DNp�q֮pWڹ�!A��_���\0�ҺaZ�2K�6GOJ�v�qV�`� �Q�?3��orJ77\"b:p>�Usq�q���Q�qO�	\'�t��U<���n:~��\"�1�\0��N-�\"@���ہ�W���p�n��`;�(���@�D�?_Jv�=��5[�r����u	��\0�z\0���GD8?\\�\0��\"���l�#\'��`&<3�_J���n�ځ\\��M��\'?�j�q|��o�2k.�S߸�}լ��d���Z���rF�θ �iY������|DR!�*��k>���7�S�k-���u6�Aj[��J��o�n+\"�QfH�n͕�<�����\0��r폗�Զ4�&��=���uU�Xc�����So��I��o�\0G��=��\0YHc���[��.w\'�?=X�3y{���\'���T��\0n��sQtH�o��?��\0�{V�L����\0���������ae�I7~�$���4<-���t��\0>���*��r�>go�wj�=�U�/���\0�k��t�;1)�ڴ��_cgM+d^��\0�k��	b\n����[K��`��ٮS�T�m���$�[��J+PkC���WM:/�_%w�\0�6�Ս�>��ϼ�\0��Z���좒�O�7����\0����5����v���SZ�µ��կ\'\\���\0�5���ꡤB����ej����d��\0��Hի����o��\0���/�f�ΒF����&�\"��\0�6�\0�tِ���3¯��\0�SQ7��\0�:@5�|rm�����\0�jm�&�*\'�˩�v\"���Ҥt���*4ܞ�ؤ�<�}i����I�����7�Y�~o7�?�i�H\"���4�3�����7xS����J?�5Ǚ��˥>�8���)G2J6s5?��\"|�5\0}��#������3�)�=�J������s�S��","image/jpeg","","","","1");
INSERT INTO profine_user VALUES("5","1","","1234567","Gaurav","Jain","gaurav.jain73@gmail.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("8","1","","123","Gaurav","Jain","gjain@ferotech.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("9","1","","12345","Gaurav","Jain","asharma@ferotech.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("10","1","","profine","rohit","dhyani","rohit.dhyanikotdwara@gmail.com","","","","","","","","","","","1");



DROP TABLE profine_user_type;

CREATE TABLE `profine_user_type` (
  `id` int(11) NOT NULL auto_increment,
  `user_type` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_user_type VALUES("1","Dealers");
INSERT INTO profine_user_type VALUES("2","Visiter");



DROP TABLE temp_img;

CREATE TABLE `temp_img` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `image_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;




DROP TABLE temp_pdf;

CREATE TABLE `temp_pdf` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `pdf_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;




DROP TABLE temp_video;

CREATE TABLE `temp_video` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `video_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




