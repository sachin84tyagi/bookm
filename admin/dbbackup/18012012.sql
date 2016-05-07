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

INSERT INTO profine_cms VALUES("2","3","","&lt;p&gt;Profine is the emphatic answer to the complex development of the international market for uPVC profiles. Under the brands KBE, K&amp;Ouml;MMERLING and TROCAL, we produce uPVC profiles for windows and doors, shutters and fa&amp;ccedil;ades as well as uPVC sheets.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine GmbH -International Profile Group - was established in 2003, when HT TROPLAST consolidated its profile business activities under one roof. The profine company headquarters is in Troisdorf (North Rhine-Westphalia, Germany).&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The Management Board of profine group consists of Frank Pohl (CEO), Gerhard Bickmann, Achim Judt, Albrecht P. Lange and Gerhard Schwager.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With a market share about 20%, our company is the world-wide industry leader.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine has a total of 3,200 employees in 28 locations in 21 countries. Around 1,800 of these employees are in Germany.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;A sales volume of 696 million euros in the year 2010 (consolidated) and a current production capacity about 450,000 tons annually of high-quality plastic profiles are convincing proof of our capabilities and the trust of our customers.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-family: wingdings,zapf dingbats;&quot;&gt; &lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: webdings;&quot;&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif;&quot;&gt;&acirc;— &amp;nbsp;&lt;/span&gt;&lt;/span&gt;In Germany we have production sites in Berlin and Pirmasens.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Other production sites are located in:&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Marmoutier, France&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Bosaro, Italy&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Madrid, Spain&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Woskresensk and Chabarovsk, Russia&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Zaporozhie, Ukraine&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Tianjin, China&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;&acirc;—&lt;/span&gt;&amp;nbsp; Huntsville, Alabama USA (sheets)&lt;/p&gt;\n&lt;blockquote&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;/blockquote&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;You will find contact information for our production sites and the most important sales locations here.&lt;/p&gt;","1318409403","1318429203","","1");
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

INSERT INTO profine_user VALUES("4","1","","","test","test","test@test.com","test","test","","test","1212112121","ÿØÿà\0JFIF\0\0x\0x\0\0ÿá\0·Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0^(\0\0\0\0\0\0\01\0\0\0\0\0\0\0f2\0\0\0\0\0\0\0q‡i\0\0\0\0\0\0\0…\0\0\0\0\0-ÆÀ\0\0\'\0-ÆÀ\0\0\'PhotoScape\02009:03:18 23:21:50\0\0 \0\0\0\0ÿÿ\0\0 \0\0\0\0\0\0\n\0 \0\0\0\0\0\0@\0\0\0\0ÿáŞhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.1.1-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:xapMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\"\n    xmlns:xap=\"http://ns.adobe.com/xap/1.0/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:exif=\"http://ns.adobe.com/exif/1.0/\"\n   xapMM:DocumentID=\"uuid:E752E731D013DE1182DC8964AAB6E8E8\"\n   xapMM:InstanceID=\"uuid:E852E731D013DE1182DC8964AAB6E8E8\"\n   xap:CreateDate=\"2009-03-18T23:21:50+08:00\"\n   xap:ModifyDate=\"2009-03-18T23:21:50+08:00\"\n   xap:MetadataDate=\"2009-03-18T23:21:50+08:00\"\n   xap:CreatorTool=\"Adobe Photoshop CS2 Windows\"\n   dc:format=\"image/jpeg\"\n   photoshop:ColorMode=\"3\"\n   photoshop:History=\"\"\n   tiff:Orientation=\"1\"\n   tiff:XResolution=\"3000000/10000\"\n   tiff:YResolution=\"3000000/10000\"\n   tiff:ResolutionUnit=\"2\"\n   tiff:NativeDigest=\"256,257,258,259,262,274,277,284,530,531,282,283,296,301,318,319,529,532,306,270,271,272,305,315,33432;72DD0A9CC44B72648117989D44870DE6\"\n   exif:PixelXDimension=\"2560\"\n   exif:PixelYDimension=\"1600\"\n   exif:ColorSpace=\"-1\"\n   exif:NativeDigest=\"36864,40960,40961,37121,37122,40962,40963,37510,40964,36867,36868,33434,33437,34850,34852,34855,34856,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37396,41483,41484,41486,41487,41488,41492,41493,41495,41728,41729,41730,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,42016,0,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,22,23,24,25,26,27,28,30;EFEDD31BA18C3EB26027802A715F874C\">\n   <xapMM:DerivedFrom\n    stRef:instanceID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"\n    stRef:documentID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"/>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>ÿÛ\0C\0		\n\n\n\n	ÿÛ\0CÿÀ\0@\n\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑğ$3br‚	\n%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RğbrÑ\n$4á%ñ&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ıÇù½¨ù½©Ø>†°{Ğ)vJvÁéKÂ@(>ojOûê—-è)hc8÷§ÑE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(ÉPEPEPEPEPEPEPEPEPEPEPEPEPEPE»© ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¨êJgçŠ\0QO¨è 	*:( 	(¢Š\0`ê)*J€$¨è¢€\n(¢€\n(¢€\n(¢€ştQE\0QMòıèÔÖù±qC7aN `ú0}>Š\0f¡¡”­>Š\0oûÔÚw—ïNá‡¨4IE‚€\noÍN¢€\n(Àô`z\n\0(¢Š\0(£9éE\0QE\0QE\0QE\0QE\0QE\0Ò–ƒĞĞ2paIE\n:Š}GRTÈCcïN¢ŠRcjÁERQMòıèûù­\0uQ@èh¦ùÔê\0(¢Š\0(áG Q@QEÀ(£·¢€\nQÔRR¢	KËRh=M±õ&‹€•%GE\\Ÿü…2Š\0©AQÒ¦†®ÇAQÑE	X	*:)Ñ÷¤•€uQRE4®RTtU5p$¨è©(JÀGRQE	ÜŠ(¡«€QEÀo—ïN¢Š\0(¢Š™\0QEÛ°Pz¸QBV\0¢Š(¸Š»ii€QE¹PQL.QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEŠ( Š( Š( Š( Š( Š( Š( Š( Š( ŠwßöÅ:¥Èè¢Š \n(¢‹€QKƒèhÁô4\\¢Š’“v:)YJÒP˜QLŠ( Š( Š(¥`\n]ÇÔÒQE˜PHM\0RäzQ¸úšI\0”RñïGôîÆ%.¡£#Ò0z\n.QEÄRî>¦’„À\\ŸZJ(¤•€(¢Š;>çó¦ÒäzRc—qõ4n>¦’˜‚Š:ğh¢ÚÜŠ(¢ãAKÇ½%XBáØ¤¢ŠJ#¸QEB\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n2EPEPEPEPEPEPEPEPEPEPEPEPEPLïÎiõ\0QE\0QE\0QE\0IEGE\0QE\0&Š( Š( Š( Š(=\0QE\06>ôê( Š)»¿ï”\0ê(¢“@QE0\n(¢€\n(¢€øÿ\0\nZ( Š( Š( aEg=(QE\0QE\0QE\0QKÇ½>¥Èé²v§SSTQE¯­€*E9¨éÑ÷¥$¸zŠ(¢¤põS]º`Ò|ŞôÔ@}QHŠfãêiôÚ°Ó°QEù°¢Šlª„:Šo™íN \0tQFáê)$;…QCb\n(¥åO¡&RîùqFï—”\0QEÀ)ß-÷£æ©lQQÔ”š°ÑNòıéµI€S£ïM©)I€S;ñšJ)¥`$¢Š*\0*:’ŠiØêJ(áG 7p#©(¨ê“¸QE¹€(¢ŠiÜŠ(¦ERHŠ(¡;€QEÀ(¢Š\0(¢Š\0( tPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP£ïIƒèi(¤QLŠ( Š\\CI@Q@ó=©´QI $¢›\'jmJˆ“µ6Š*’\0§y~ôÚt}è`_½:£¢“@/*}¤¢”İ*€J(¢€åûÓißsß4ÚI€QEÀ(©(©æ:)ÛG­-;€Ú*J)s=Í%s\0ÌZJ’ŠJC#¢¤¢Ÿ0Áô4”ï/Ş/ŞÄ6—æ÷§Ò|­ìi\\üŞô•& ¦ù~ô&iySèE;jZ€fãëFãêhÁô4”Ò\0¢Šw—ïC`6Š(§qØ(¢ŠS¶QFÔÒæC°Ú)Ş_½.?Ùœ„7ĞÒQEP°úQ°úRQJÌŠ(¦EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPFáê(¢€\ngñş4”PRQLåO¡\0úaêi( ¤¨êJ\0Š)Ş_½&ÀmQLŠ( põQAèh\0¢Š(\0¢ÃÔS|Ïj\0uS‰ ÓdíM¢€$¢£¢€$¢›÷ı±N ŠoÜ÷Í:€şÕóg<âˆûÓ¨\0¢£©(\0 tQ@ÍŠZ( 8ëE0õŠ\0O›Ú–ĞQ@QI0\n(¢˜Q@Q@0õ4úaêh(¢Š‰nJ:ŠJQÔU&ÇAET\0Ù;S¨¢†À)›¾\\Sê:¨€èûÒ¦’¤=6õ\0¦¦œpy¤òıèLÔ•(ê)€ú(¢“v\0¦ùÔ}Ï|Ó©€ØûÓ¨ t\0QEĞ$ÑEI\0R³@ê(ş?Æ†À}7ıÚNXú“II $¢™ó{Ñ¸úšI\0şzƒQÓ•»u	Ø£©(¡;\0QE€(¢Š\0(¢Š\0(¢Š\0(¢ŠiØŠ¤¡«\0QE\'`\n(¢¬Š(¤İ€(¢Š\0¢Š)€QE\0QE\0P:\n( Š( Š( Š( Š( Š)GQ@	EPEPEPEPEPEPEPEPEï3Ú“`6Š(¦EP”Ù;P«ÜÑ\'jM\0Ú(¢˜.¡¤¢€\n^TúIE\0»©¤¢€\nt}é´RhŠ)Şgµ€¿ÇøRÑEC`‚Š)²v¡\0IÚ›Nó=©µh	*:(¡+\0QEÀ’˜Ë·ç4•%E¬TnéŠ<¿zmVJfãëKæ{P_#¤	¸úÑÇ©£æ÷£aô¦Òbî”e}µ6’H./¦‘ıÓùS(§Ê¼{Ñ¼{ÓvJJI!Ş=é<ÏjmùPó=¨ó=©´QÊ¼Ïj<Ïj>Z0¾¦–ƒ°»¡¤İ»Œc4ê)\\C|¿z<¿zuGM6¾ç¾hù©ÔR¸ó=¨òıèù¨ù©ú\0y~ôy~ôGŞ—j`\'—ïG™íKÇµ-+÷¾gµ:Š)6|¿zu7Ë÷£æ¦õÔß–šš„€mQVEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPtT•\0.ãêi(¢€\n(¢€\n(¢€\n’£¢“WŞgµ6Š(HŠ(¦E¡¢€zƒEŒØ fì)´¼©ô\"’€qõ4”QÉâ€\n)Şgµ6€$¨è¢€$¢˜:ŠQ@şí:›æ{S¨\0¢Š€$¢Š(\0¢Šj·c@¢›÷ı±N\0QE\0QENÀQEÀQE6ìES\0¢Š(\0 ô4SdíI¡¦6Š(©–â\n(¢ˆî£ïN¢ŠM€QE\0QE\0ß¹ïšuPØûİ8Å8ô4QEÀ(ü±E\0QE\0QE&F ¢Š¥ \n(£ĞQ\n(£…€U\0R¢’Š^ /==èå©4”Q`\n(¢˜ĞèûÓ©œ©ô\"ŸQ!QHŠ( Š(\0QE\0QE\0QE\0QEVàQEHQM»€QEIÜŠ(ÀôÀ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š‚Š( AEPEPE.¡¤¡0\n(¢€\n(¢€\n*J*y€Š’£¦À(¢Š`QE\0QKÊŸB(CGŞ3Ú3Ú’@6”u•%0\n(¢€\n*:w—ï@©)¾_½:¦@IE:’Š)¶HË»ã´T&|¿zLCO¢«˜`ú}RnàQE \n(¢ª GRS|¿zuPGRQ@GE’°òıèòıèçgĞÓh³Ûµµÿ\0dÒ`ú,À~ ¢™ƒèhÁô4¹@_3Ú3Ú“•>„RSå@IEGNòıér€êCMòıéJdç8¢Ö<¿zu7Ë÷£Ë÷¤Àu`z\nO›ÚI°zRÑEÀN=©{qŠ(¢à\'ÍíKE\\ÃzŠ0Ş¢–Šw0Ş¢–“ê)h`QE \no—ïN¢„Ào—ïG—ïK†õa½EUØ	åûÓ¨£põ-€QE\'ÍíB”QEhEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE\0QE\0QE\0T”TóQTEPEPEPEPE7nîsŒÓ¨¿sß4yÔyÔƒ¨ qõ4”Q@Q@Q@TtQ@¸úšJ*MÃÔRlè©*:`Rÿ\0ãI@Q@ÿ\0zEG@ScïM¥ÎO<Š\0}S~ç¾hÔQMûù QE	\\Š(¡»€{sE ĞU€”SÅ»·@jh´ÙfáQ\0V¦ÉÚµÃ³»rG¹©×Â§?4Š(f)Z0}tqøfûÌOéV\"Ñí¡û¨¬ŞüÒhg*¨Å¸Ó¼©¢µuÉimòÇ?JpAÎşù§d+œšØNÿ\0òÍÿ\0ïšzè÷/È‰ÉúWTÜ4Ë¥…5æ9µĞ.›‘§İ…û‹ù×B7FëN•)\\æ$Ğ®bÆcfÏ§5ÙÈ†B?\në·Z÷³šmgbeê¢)v>LÜşùß²ÃœùIŸ ©²Î;ĞÓë®û,_ÜOûäR£òÎ?ÈPÕÁ3’¢º··„Œ´IùTijÇ˜V©Ââæ9º+~M2Í¹Ã/ĞÔM¢Z·I\nÔû6>db3mÇikZOÃÚcøŠcxmˆÌr+Õr43(«w4ÖıU±ê9¨Ü¯³q¥[µ%XŠ(¤¸zŠ(¢«˜Š(¦İ€)p}%À)Tn8éIJ”˜¢›÷ı±M©QJ*:wÜ÷Í :Š(¤EPEPEPEPFáê(¢›`QE \n(¢€\n(¢­;€QEÀ(¢Š`\n(¢¨Š( Š( Š( Š( Š( Š( Š\\CO¤ØÑRQK˜êJ(¤İÀl©´T”Û°QRQÑEZVJ¤¦`úQ(¢¤ª:(©(œ±õ&’¤¢“`QEJ`IER`QAèi€QE\0QE’°QLŠ(©q\0á‡¨4QE\0¢Š*R:’£©*Ú¸QR€k/qN¢Š¤À)±÷§QC`ÌCK\'j#ïLÑN“µ6€\nwÍM¢€¹½)p=)£¨§ÔÉ€˜”´QRØQNìØ=èØ=éh¢ìĞQE®FsÒŠ(\0¢Š(\0¢Š(\0Ü=EQC\0¢Š(@‚Š(¡€QE\0QE$E8PI°{ÒÑB`\0éEP˜ÑG^ Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ r)(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0áG QE\0QE\0ILç§½\0%Q@T”%G@Q@sÛ­\0RŸlâ’Š\0(¢zƒ@6NÔêl¨\0ÿ\0z3ÚI»æÅ\07¿9¤©)œ©ô\"€Šw—ïN©r:)Òv¦ÓL»wÆiÕ	Ü	(¢›\'j„€uQ@Q@¡¢ÃÔP€(¢Š\0o™íNGNûùªh‚Š7QG=A©\0¢ĞQ@Q@T°ÛN6äSJàE´·N*T¶-Z–8İ!ÚçZVúlPŒ}O5IÌ;}\"Işê6=OJĞƒÃ¸$Èÿ\0€­@tÀ¤ó=©¤+A¦Ãn8]ÇÔóS\0i¦A\04Ö”§m5\'\"MÇÖÇÔÕsr[!W9¦–`71T\\„óv,»ÁëP<òéÅ5¯x4Õ»ryÀªPk ®)ºsÕE/Ú‹vjzÌ~m´MÎ)¦–èÏ9¤$§,EÀæœ ‹wAGß/AC}„Øå·Óò0˜Ìå¶­DòÈN\nóIE½ÆLÒ•Í#]2åMB†‘ëC\\¶Ü·>Õ\\¡©`]Œ5 œ7BMg±f?0>ôÖ•¢b‡MÔg¨ÃÔVj^@oâüEJ—ûÔ¸Ëo‚sLhG4ÄœvÍJ³)\\“ŠVhÍ‰ê	â•l7ót‹[ŠCx0Æ„å`vg(ùp)ìÉñÇÒ«½Ú·CšÈcŸåG+{‚}‰%Ô@nx›˜.†Ycª×ò‚HSúÕÒHÜ¸Ur ¹¥.‰£(Yæ+2÷J’Ğå†W±È¯.-Üá™½FkJÚîk”Ä‘¤sš—Li³©¤­kÍ¸İÌ=;Öd±4-µ†dáb“ER“QEš°QTÀ(¥ÉÎ{ÒP˜IQÑCWFF>£§GŞ”Â‰;Qæ{S©l~ç¾iÔQI°\n(¢€\n(¢€\n(¢€6XJZ( Š( Š( Š(¦İÀ(¢Š¸QHŠ(«nÀQE	XŠ(¦EQp\n(¢€\n(¢ ¢¤¢§˜DtQEPQ@½:£¢¥Ä	*:’ŠIØ\0ô5IQÓ‹\0¢Šw—ïM°E;Ë÷¦Ğ˜IE¤Mó=©Ôİ»¹Î3D@uS|ÏjMj¨¢›z¤ÀuQRÕ€(¢Š°S~ç¾iÅ€ê(¢¨Š( Š(¬Ú\0¢Š(H›åûÓ¨¦Õ€E]¹ç9¥¢Š€(¢ŠI€QEÛ¸QHŠ(«H›´zÓ¨¦Eß3Ú€Mó=¨ó=©ÜúŠM€ß3ÚF ¦ù~ô&¨¦ù~ôê`7Ìö£Ìö§QI°æ{S¨¢‹ åûÑåûÓ©¬½Å	€y~ôêf¡§Ó\0¢Š(\0¦íoZu7Ë÷¥tµ½hù¨ù—ÜS¨l|Şôú(©lŠ(¥`\n(¢€\n(¢€\n(£wû4$ES²:(¢¬Š( Š7QE\0QE\0QE\0QE\0QE\0QE\0QE\0¸>†’—â€Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( £¢Š\0)Øî)´¤ä“Jà/ñ|ÔêfryäRS\0¢Š(\0¢Š(\0£¯Q@x4Q@‡¨¢Š\0(¦ıÿ\0lS¨\0¢Šo™í@ßöÅ6¤¢€\n(¢³\0¢Š(\0¢£¢«”	)¿íQzu-€(¢Š@n¢›æ{Qæ{SåÔSå¥:“@QE\0QE\0Q@è(\0¨êJgğ~5Qô­®îk_IĞ¼åMò¯aMDM”ì4·»~Ò·¬4Èì—<³úÔñÆ¨U\0Ns“Â©n&×P.p:TlÅ¹=)¯.84ŠÙàÕ(’åqÛğ¼S\\­1Û8Í4ã©8ö«Q%itéHuc“éQ‰Bğ*9çÚ¸ïT¢4‰¦¼ÇÁªŞas–5ğ®IÎM#Ï³jÔm°\"Öà6óN2¨lMf›À£†¦µÑnŸ­;Ôk…èH¦ı±zÖa¸=7{Ñö“zM¬/´hûv8;k§nÇŠhœ‡ç¿zVAclßßysN*GEÍaù­¼õ º#§ÚP5‰fåoµA,—!ğ9Qê*¢jL¼jxµtbÓE„Ğ4Øé´¯qÒ¢}HŒ$ƒi=ÇJ–T.7Ç#éTeÕeRTÛ¤Š½{f†ÆNŠÍœn#ô©	hñ…Ûê;Uxu6t!h›ÓøiÂ÷í*TÓš,E©\0v–Á^Ô§QlñòŠ¬–ÉÆöeúTÂĞ”îaëEÀQzÄôÍJd¼Àı(?†™{­YéHââG«¸Súši7¢d¾C¹Â\0íëéH©sgó\0Î{æ¨¿Ä3#Gm,:õ jd^9–W*alöhq’İÑ 5é!m²DÇ‚¬.§À\nc$ÄUüMöƒ´F»¨¥şĞHäá~fëÚ¦Ã4r½sJnp>CYËvò.AùMJ’?F®iØÀ˜ÇÊx5õ¤w«‚0şµİ2QIç´œ}ÚM\\3nmZÙŠ²ñPÖ¼¬²‚²Ã±ªW6F?˜r¦±”Ø´Êİ=A”SdíRÇQE)ØŠ(§ÌESLŠ]ÇÔÒQpz<¿zEÎxëIJÀIET€QMó=©Ô4EPEPEPEPF9Ïz( Š( Š( Š( Š(¦Õ€(¢ŠM…QZ(¢Š\0(¢Š\0)GQIE\0QE\0QE\0QE\0»¾\\b’œi0QÑE	X	(¢Š€\n0=QpåûÓjJMƒŞ©K¸©(¢‰\0QE ØûÓ©¿sß5iÜQE7Ë÷¦¨£ĞQI0\n(¢¥»€QEâEQ¸QTETÉ\0QE QEW0QRESJàQE QE&€( ô4U¦è)¾_½:ŠM°`ô¥ÀôQK™€ß/ŞE^àQE\0QEQE€)>ojZ)¦EP˜QUÌE‚†PO­C°QE®„QE&îER\0¢Š(\0¢Š(\0¢Š*¹†ÂŠ(©hAEPtQEhEQ`\n(¢€\n(¢€\n(£ĞPEGc@¯J8:QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPEPEPEPEPJÙïšJ(\0¢ƒİh ŠCMûù QE\0QEIQÑ@QE\'ÍíY £¢¤ªØè¥=M%R`/,}I¥½6ŠVĞ	(¨êJ–¬ER\0¦ù~ôêo—ïM0ER\0¢£§GŞ›ˆ¢ŠoÍI úPpNTôÜe°+ÅÌö~0Ğt‹hÌÚ„Í%Ê)ÿ\0S\n©ù›şø×E\n.£å¯ÜEJŠ\nìêü5f×“´¥6Â‡\0Ÿã?á]°éL·ŒAU\0©û©©“ì	÷œÔ2O»˜¢æàÀäÕFvfã ÕÂDİË\0œÿ\0z¹\0š‚õš’Y6}6º\nÃ&—hâ«´àœ´éŸw·ÒªÍ0‹ø–´ŒA\"i\'ò×=Ú©Ïp]ñ»÷fO¥WiËŸ–šc\'’àûØ·¤†¨$rÇ\' äÒ…äš`?s7^3Í=[wõ¦ÁZ–;VaÑ¨3&XûqNU<g¨«#O$.iëlGUÍ\0VòK-\"ÁƒïWDDøR,ô^(¸äŒ‘¦‘!i8Ç=*ü›\'Õe`H”®bÙÉÑ,$±­+¦P¸b¢²oá€ÜzŠNAaªmşaÀíRÇ¬EwòÈv?¨¬Ùáçæ,£­U`b‘Â>vŠ7ƒ%¿-\"•íRÇ4ü»”ƒúV¥ÔÈ¸bL³ –¯å M§œqƒ@‘ÆÈ«²MëïV?´¡¶Ú›«&ÛRÙ$Âšã?h‹éğëàïŠ5–D–]\'Nu\\á·*0~µ­:nrQ]Y3šŠmŸ)ÁCà¬öß\nüQyàïÜF·6A“QÔUòXš8óÁ`:Õù«ãßÛ³Ä5Y_Q¿Ô.£’O2šåŞ@?àUáŸ>#ê#±“Y3\\Mqxd–O7şXï¯Ô~&Ëc©ù-rcxÿ\0é§úÊı“–árêJ1½_VÏ¯:¸·í*Ë}—Eåÿ\0û¯ÃŸ¶ÿ\0ˆ4]Z#m®jv3GåæHäƒ_Q~Îÿ\0ğYOx y7Ïmâ;%“æŠø\'ªÊ9ˆ5øí¤|aK»á4Ñ˜¿Õ¿›û¹+»ğ¿ÇÖÓ§ˆL¶’uòø’£KˆN5\"˜éSÄRWÃÌş™¿dÿ\0ÛƒÀ¿µ†ƒ¿E¹ÌiºãLº*·	şĞşúû+×g³†BX|¥}+ùøAûhëß<{¥ë:-äÚuæŸ:0e“s:¯P~¢¿ ¯Øwö—ƒöÄı›ô/[\\Aô©äßÛ¡ÈuàÄ`ş5ùÿ\0äqÁÉU¢ï	t{¯Sê2¼}JËÙ×V’üO`{Ï³·Í´íïíO‹[ŠF\nNÜVˆP±Ff·™ã=Ó‘úWsâKÈßˆ×wİz¾i#ÖlõˆnbœàiáG$+Î´/½Ó•`è»ƒ]FŸ­³°Íõ44	›æ5–>*%C	<e{ƒPÛİ	]Nyõ«`–ù…!•.ôıãÌ‹§uôªDq[pº·*vâ«jzauóbÿ\0œ¡Õ™™E)pE%a&PQE®ESLŠ(ªlÜ}M%.ÃéGñsI0EGRRjÀ7Ë÷§QE&À)¾gµ:Š\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š*Ó¸QR•À(¢Š°\n(¢€\n(¢€\n^Xú“IED”Tu%CVSdíN¢’`GRQE6î@è(¢‚Š(¸Q@Q@Qœu ÿ\0µN¢Š¶ìET\0QE\0QE\0QE4ESnàPz8aê>P\n8aêQ\n(¢“V\0¢Š)\0QE[€QE“°n¢Šw\0¢Š(æ\0£…€Q@è(R\n(¢‡!\n=\0¤Ş=éh¦Ğ	¼{Ñ¼{Òàz\nnİ¼ç8£•\0êMƒŞ–—qõ4–€ zQE›¸QHŠ(¢àQE4®EP’\0¢Š)Ù\0QE¬EQd4‚Š(§Ê ¢Š(å\0¢Š*@(¢Š\0(¢Š\0(¢Š\0(¢Š\0Š(­\0(¢Š\0(£ĞQè(\0¢Š(2=ih¢€\n(¢€\n(¢€\n(¢€\n(£½\0QE\0QE\0QE\0QE\0QE\0QF  Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( 4QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPE»© ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŠoßöÅ\0:Š( Š)¿Û\0IÚE:>ôê“@IEGRTµ`æ{R¦•›°¦ÓHÁô4”QT€(¢Š\0_›Ş’Š’¥»IQÒ¢›WôİÛ¸Æ3GûÔê\nŠ*’°(ê)(¡¢J•›v8éWô(ŞN»€Ø:ÑKbiÖ¸Š[™>XáRÙ=8¯<ı›¾*Z|h×5m_G±ºhœÅ.¡8\0]8şıQ}}Mtÿ\0´İÎ«cğ+ÄVŞ´–ïY¼²{{(¢\0#.Ğyúçğ®{öøG¬üıœtÄ2#êĞÆZeC•‡$€ú^æ•(eÕ+É®w%¯­¬Ûvû‘äW¯VY„(F/‘EÉ»i{¤•ûîÙìTÛÒ”€j½Ü˜W•İQO!-LOnj)¤ ¸¯ƒà§ğXÛÙK½Ò¼3nº®­l\'ºTó#´lp\0î}ºW«—åÕñ•U\nïğ^lãÆã©aiûJ®Ëñ~‡Ûş9øŸáÿ\0†zK^øƒYÓ4[AÖ[Ë”…âÄ\ng„>\'xâ.˜—º±§k’}Ù­.T?B¤Šşd|Iûl|Jı®<rn<O7ˆî­g‘Ù/&gTµÀ\nú³şaûHøÛ2ûÂV÷——:KÛ°¸ûD¯*9ÏC_SŒá\nX|$«*ÜÓŠ»Iiò>{ÄUêâcJÔäìõ¿¥­ò?ug»	øtªsØUv¼.ù·/zŒİ3®:Œ×Ä5së.NFà	\'BïÇÌhº‚r^¶´bÄBV\0¶Ü˜ä€\n±k§µj¹ªg‘cÓ(lR,rj_)W«L7!J’5iO¥%æeK1ÇjG÷M]HkõíåŒ“¶§šû]-˜5\"Bˆ>c»NóV¼ËŠÇ¿ñlK!Œ8,ÏLHè§Ô’ @$m¬GÄ‹m]Û›¥r—¾=d#Í¸íÇ§ÔÖF©ã\"dØ€«ºŞ¿JK@lêu?–F?6Áæ³.<S·rk¿Ôî$1Æ^OŸşøzXmå¾œB©$es?ğ%$3kPñà·$c·ûuŸ?Ä’dM¾L…±¼Õ^ÛÂ‚mSt›ŞûûşóÕ§ğ|7’Æ\"4÷íZ@ÆİøÇPKèÒ=³G7ğ¯_Ë¥_Ñ­µ²gu–Bû¾WÜkKIĞlì“q<Æïš´–X­•¶/ä?;‰\"Ä¢æ,3¶z“\\í¤Øjÿ\0u&íY-5[w¶™“ï\0Ã×}fÓ^®ÔŒóÚ±¼[ i÷,ŸÚ’<¥>ì)ÊŸ¨ª¥.Y&)Æñhşp¿kO„ºìÑñYğÕÄ3Ë£¼l.ü¶·ş¿Jøóâ}ı®“{ö›şwÇü³ÿ\0j¿¦¯ÛÛş	õáßÚóá@Ñí¬íôİB)¶×«2D}«ğ¿ş\nWÿ\0ø±û2è·:•Æ‘o®èj¬éyaûÉıäê?ZıÄñ4”jJÓ<J™kƒ÷V‡Ç¬:½Ü­!·µ>Gy?ÖVeŸÄùtx[Î]cuùë”Õ4­gIO.úÆúÒ(şşcd¬û}Ïµh9“î?ÍY9%§5Êx8»Iôì{U—ÇÙîïPÛZCnïòoOı\n¿¡oø6Rî÷Rı‘üIs«â†óWCÈ6‰6ÄöÍ~~ÈŸ²Oˆ>6xŞÊÆÛNšx$I&¹’2bHıMV°oÁ¯üı–ü/á}	{KDgr¸y%n]›Üšğó\\zt]î›_x,4½¯´{t¹ô¬qÆŸ»¸VNœóIq£iú‚‘<9=öà×-?„âšq-åÖŸ\"®\nFÀÇÿ\0|*6‹Äº[£C=•üÄ¬…ôÍ|ÛHõît/àK,/æ:¢§·ğÑ6°F«År£âUÍ…ÒÃy¥j±å¤‰7Ä¿ˆ­/ân™©´‹o¨De‹ï¦ñ”úÔ’$Í¶ĞŞÌGRBÏÊëùSm<@ÏbÂEoâZœj+\';³×<å	FåàÒ+Élãø…*\\BO?º\'×¡©ÑC¦C,‹íÍ\0QÔlRèbûãï/­f:×B-;—‚*†­¥˜Ï˜£å=k)Ç©I™´RGZJÁ¢‚Š(¸¡\0QE&EU&KßŒÒQT”S?<Sê°QHŠ( Š(Ü=E\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QEm\0P8ãÒŠ(H”u”S\0¢Š(\0§y~ôê*€(¦ÉÚI ø?\nZAE\0£…€QÃPh Š( Š( Š( Š( Š(¦İÀl}éÔQCw\0¢Š)\0R+f–ŠjÀQEXQI»\0QE)\\Š(«\0¢Š+4À(¢Š\0(¢Ši\\Š(¡+€QEù@(¢Š}@(¢ŠiXŠ(¡+\0QE¤ERLŠ(¤€(¢Ši\0QE7p\n(¢‹ \n(¢†îEP˜QUp\n(¢ Š(ªi\0QE-\0QE&4ÂŠ(¦¤\n(¢‹±QI0\n(¢€\n(¢šˆn¢ÃÔQÊÆGE09¾gµX‡QMó=©Û‡¨ Ü=ih¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€Ò–Š(\0¢Š(\0£ĞQE\0QE\0QE\0Q¸zŠ(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š3”\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEöëE.¡ ¢Š:ğh\0áG Pz(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢›æ{S¨\0¢Š(:*J€\n)OSI@QE˜ÑRTuiÜŠ(¦ò§ĞŠJ( GŞE6NÕ°EU%/,}I©å(¢Š ĞÓÇAMY°&µôvÙ&ãÑirÜM•tí-îİH^S]­¢YCµ}O­>8Ö\n €*¦·ªG¤iÓİHÊ‘À…É=\\bÛåDÉÛVNâ)£mfëƒNP>èÀµsßæ¿Ô¼7¡ªD!¼½Ì¾QãÉC÷Sêt@mu­*Ã’N7½ŒéÏš*VÜ%“˜ªR’ï¢§¶ñUÎXğ9§ér™À~ÓwšİÀŸIá­ë®®›)´+÷¼Í§÷¯ç_ö›øŸâı/ÄwSx“DŸOÊâ(¯¬ø›ı¿¿¦Å„^#û@şÂ??iëØîüoáM?Z»Š?%\'l¬ª€ƒœWÖpö}K/Œ©Ö§Ì¥×ª<L×)*q©	ÙÇ§Cù±ğO‹¾#şĞšúøsÁú©v×R}ŞHŸ¿×oOÆ¿_¿àŠğIşÆ©øÇÇíø—]Œ*Û‰7µ¢H\'¡5÷/À_Ù3áßì¹¡=‡¼+¦è9Ì\nfYO«9É?‰®İÌøÎr{RÍ¸’X˜º8xrÁıïñ%TdªÖ—4–İÂØW¿¥:Ò™¸CŠ³šYù§ef±§Nkæ=Ñ–º`\'øjú¨AI‹õZ{¢Ã½;€û›À¼)ÅUûCKß8¨Ü™Š³cjÓò’°˜ûKv•­Xa[xÉ?/­Eº=:–\\­bk(Ú¬¡ÂƒÓ¹zÔÔu„¶CƒÍrÚÇŠ†æ!›\0t‰®øšVW¹ö×1¨kqà$™ŞÇÎ•IXW45¿±ÜBÎª;¨¬İfYğÌXï;oz±i`Ú• s$ƒİM•¿á	³D¢b$wûß/j/ 4rö:š¢I#Û»ùmi~q(¹·0ÙÛ]ü#ÖúTxãì®)Úm£Ë\'\n@ïSphÊ°ğL)4’2süGÓéV¿³!±bí[sÆ¶ñà2çj“[Û4„»I#/làQa¶e›u‘ğª>ƒ­:ÛB•²|¦`ñZ/ªEkòÄŠ»zÕYµÆ‘™Ab¹ï÷j	­´GfÃº ïÎjìz}­€+4­Ø•FÂ«¸òµÜò]GÌ ôª¹š$ñ/Œ†§;DÊà\0v×‘ßkÒ	œ‡˜·ºk‹ÍÂ`kgñö{k¿³FÄ8åö¡¾År‰b ¢F~fN1^MûUü-?¼6šk@²Z>æ¸•úÆ›~mµíaTU!wLûV\'­–÷Ã·6q*ìù~”\'aŸx£ş	¯àx;Iµºğæ‘x–É¸O,\0É\"l¯Ô?à?®õöš×Â61Û}÷òÎ%¯Ò=@I´+T1”ò¢Q±¿İª÷…Œoi›k*ÿ\0)ûÚ\\gÊ³çìEağ›Äö÷všEŒVÑ”b1_]xK@‹ÃVíw¤HvşòÑW!GªÆH[K!Ğñí­36ÍÂ#CüKJ*ÚõÔØÒï—P·Yau%ºz¾X|ß{Ú²Øy¦kB©1ûëÚ_ş½]²¿[¤*wG0à©ê¦¬E¶*Ë†\n¸¬ÍCÁÚVªìóÙ[;·ñl«U[p¾õ4À7n”XnÓáëhÛÛNÔ.í•¾ê1ß?CN‹X×tH[í¶qŞû¯k÷Ÿşz~uĞ`~óé)w2‹BbK±‹¦|RÓ/fXe•­gèb3¯ç]­úN›¡—gû¤b©j5±Ew3+vtÈ®jãáSéÊï¢êwV.~eFo6?ÈÓI	¶wÑêSEËm•Z°šœWJc2“ÆyêëŞ!ğÍºµı Ô‘~óZıïûäÕıâ–•®±‰åkk…ûĞÏòHŸ…\'4ÎŠûMhIhÿ\0y¨ªen*õ­ÄrÃ\"Ÿ¡È©Ú9Fd1ş%ãô¬åL¾c,‚%]ŸLuå?x¾İ*ªÉƒ‚\nšÁÆÅ\\e¤`â’•€(¢ŠmÜ—•>„RQM4EU\0ï3ÚQÓ£ïRĞ¢Š*@(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š¨€QE@QE\0RòÇÔšQJà%QLGŞQÓ¼¿z–€uQR\0£hÇZCE\\Š( Š(,Z\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢ŠmXŠ(¤ESJàQE	ØŠ(§&ESNàQEKw\0¢Š(JàQESW\0¢Š)%`\n(¢›@QE) \n(¢•€(¢Š$À(¢—ĞÓH¢Š^=è°	E.ãêhÜ}M4QEÀ(¢ŠI\0QE qõ4`úJ(ØŠ(¡°ĞÒQE&À(¢Š9€(¢Š9€(¢ŠW`QE	\\Š(§k\0QK¸úšJ>ojZ(¢öÂŠ(£”AEŸ7µ AEU\0QE\0»©§î¢£¢€$Ü=E%?põ ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š7Q@`z\n(\0¢Š(\0¢Š3”\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n¤¨è\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0 tß3Ú@Q@èi¿òÎ¹ïšu\0ßö¨“µ!êhôTtPK¸úšJ’“v¿ïS¨¦³v;€yÔIÚQÓ[€Q’h¢›@QK¸úšw)Uˆ£\'9ïII;€QE+§hlûÜôÅ6Š(@QE0qõ4¡rØ¡W<šÓÑtàÏæÈ>QÒ„¯ ›\'Ò´¥·ŒM\'Ìç+R%\'ÄÔH¦GÉÎJ‘æ8ä\nÑÇK\"%ß»¾q^cñKS“Æü=áí2FœYŞ-æ¬ªu*¤¨sêÏ·ìOJêş(üFÓş|;Õ|E©´‹e¦[=Ã„f\n¹ÀÍc~Ï­§‹~iŞ!·²¯\'ÛeW³óóZïÂÓ•*Oã¢|©ô»_¢×ÖÇŸ‰©µJÍ®fºÙ5ù½>óºB… ³0œbTÉ»¥yñWg{vĞŠg.ø(ÀŒc½UmÆ¡¹›=8²@A{0Ç½g’|İXfİÉÎj\0¹õ«¸ÈŸ÷§îÔÛmäSâŒ)Ïİ©\\İ)7`ayûÕ!œF8ª¦ëëQÈîíŒñNÀO%Ğ<â¨Àiº”ëHÎ\05x¤:|{æ+ŸJM‰‘ÙiÄüÏÂŠ/õÈtØÙc\n¬ÍcÄ¢Q²6ã°€òKy?Ì“I+î-k~+‘ä\nâM`İÅ¨j7LSt)ĞéºÉp²º€G\"´/^;$Ùâš•ºBçÀo4\nÒK±›®OéP7†í­Dq¼¥Œ]qZzßˆÕ%yÂõºVV—<úœÍ$‚T+ò;|´jõ-M€HZ$\0JétÛ>µ¦D¶J­!Y%=@è+^Ğ´ƒ$mSÒ lK˜UşfäÕRòô[ÆËQÿ\0ê«7@¸U_súU1¥µÌ™c„êsüTF{É%,W©Ái&73·©,PÙ\"ñ½ª7º1£0ÇCû€ÃçiÏmiå—ÆÁ–\"›}|zÚs$ñZØï·ŸÍû¥¿½R	:¹ma¦àt¬kŸ5ÄÆ4Œ—/µTu®*ûV’Y$V’D?Ü®ãáïƒÍÍÄw*hÀ\n}œl¶v:¿‘¥™dÇb@ñ\\ënBƒ*ÿ\0°­¯ß­¤Iª’ÙÇ§‘ E\"°óv¡•U¾^LV®-8+>ÀYCİyí¶¹Oİ/ÚìaVİæIóT6QKQötK<[®ÎĞ¿.)Úzƒ¸?ÃJÃ%|õ¢âh­üvl„;©aåÿ\0sû¦†Ëÿ\0²Ôå•Işóc ±e£q:>Üã5}j‘Â×ØÖu®ÈÛh`Tu;±™xÚqÇµ4ÅcVÏPi‚`ÑÌ¾¿Åî*à%¸Ö2yZ¢*ÊJƒå”uZšËR’Şsov»X}ÖqÇÖ­2Z4ˆÏSyœSã+&ĞM•\nœ@×ƒJ\\í÷¨Ãzşä”ôõ 	|¼…çYZçƒ´ÏÆËwm–ãwİÌV Á<ƒšWJŒ“áİş…1—FÕ&…Oü²œy‰ş\"¦¶ñŞµ N°êºT²Ä?åâØïOË¨®¬çøK})¬Ù8aøÓO¸š#Ğ<s§x2Ö·\nY>V†ªaŠèaùôaÖ¹m_Àúvµ#LĞˆ.cÎ¼¹Gâ9ªÚøÂ€5¼é«ÚÇüü³ãëĞĞâÀ›êu—:kÃÊéëU8éMğ÷íõUXçG³¹=b—å`k^k8nÆèÆút¬eJÅ©ÜÉ¢¦¹´{f!†?‘¨k$ºQEH.ãêi)x÷ªæ*J¤¢@5~lçœS¨¢¥°\n8aêPEP\0z(\\Š( Š( Š( Š(¢àQE\0QE7 \n(¢ªÚÜŠ(¦¢’Š) \nwÜ÷Í ê)ô›\0¢Š*@(¢›zß–(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢ŠmXŠ(¡+€QE7p\n(¢Ÿ(QI+€QE÷\0¢Š)¥`\n(¢’@QE@QE4¬J3Û9¤¢’ySèE%U\0Rî>¦’Š\0(¢Š\0)p}%\0QE\0QE\0Rì>””»©¤ÀJ]ÇÔÒQC`.ãêi(¢šJaêi(¤•€(¢Š5\0¢Š^G¨¡°Š]ÇÔÒRlŠ(áAÀ¡&E\'ÍíKM\0QE\0QEW(QB@QE+€QEI€QE7@QE	QXŠ_3Ú›EXÜW±8ïIæ{Sh 	7QEPEPEPRn¢£¥Ü}M\0.æô£Ìö¦Ñ@n¢ŠŸöhÔQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0&G­-‡¨¢€\n(¢€\n(äqE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0IE\0GEPEPEPEÙ;P¨¦ÿ\0½N\0\'Íì)h¢€\n*:’€\nl©Ôß/Ş“`6Š(¦£ïN¢›\'jØ©*:*š¸R¦ÀJ(¢“`QE\0¢Š(NàQE0\n(¢€\n(«º^œ×³ŒıÁÉ4 ¸í7Mi‡˜ß*-kÂâG\n«„^\0ù“§\nµnÊ!z\nÙAF&nWÉDaQp6bT}i·.ò5ãn÷Â~Õµ-7O“TÔlídšÚÍ)º‘T•ŒÀÉÀÏ½\\ åh­Ş„TšŒ\\Èó?úwŠ¾&|O±ğ†—c~šÅÛXÔfÿ\0–AøTˆwr2}\0Åzß†|?ká]ÓN³‰`µ±‰a†5\nª¸\0~å?±7Ä_ü`øTş\'ñ|öwšÜÆX¯ÙáV(ªsÔäŸzöC8İš:”¤°2²öz;jœº¶ú¾Ÿ#ÎÊÕ:±úô.ı¢MshÒ¶‰.‹¯«#”’*9@iò8\0ûUYdï^tbzv4¿{Ñj¤®I§Ï0]Ã¹éTä›çã8ïZØbLÃ}êXÓ<¶~n”ÜƒÉéíG™°üÄázSI&ŸRj”»3M‘Œ‡§\\Ô–¶ä¿;h@\")o»ÔÕËM0Ê»™ˆÍJGey›`ôõ¬ı[\\iĞÇÓ±+ÈM—ou¨4Äd„+8êk\n÷RŸQ˜…9ÛÔw¥ÓãyÜïë	ô«Wb;T8ùGz6Êš~ŠÃI+véS_­\n¹şU›«xÖÛK]¡ÌŒGİæoÆ¹½IõL‹ÜÃ3;};\n¥õbæKc¦»ñ¦‘n$šQ“ò¢¼ßJËÖ¯µk1Û‘l€ò°ÉQì(Ó|1k§˜dtó¥q¾NO®>éÕW–É¥t¶ŸS2ÇÂvÖ“E<í%ÌñıÒí‘õ­‘q·o–v§`>½ª8\"ïİ¹J•5´7³¥@\nQŞ”÷‰m § @Ü:Ù³gİùqÀªšN]·ËòI­‡KÀï)¨ŒŠDXÃ/@j•ÕÙc²?º:ş·w[Ëîm dÖEÆ ×“ãRˆ§¯÷³I -]^,9#çuíøU7‘œï=Z•mÄo–l±¬Ïê¢ÊÜÛY}*[°Ìÿ\0ëicÅ9só»^©ë\"yäóîş:—Yñ:­À…¾=÷Õ}>ÆKëı¯üu„ÊH×ğ†ÛT»Rßêâûî½‹K³M2ÅHùHƒà/¥•¤J(í[ºä¾U« ÈÈÆ}+XGB/ÔçuËów¨˜ãŞêÖ™Š\0·¹<šÊKc5è•¤*í’µµnm f‰2’°öùûíPqõ®SÅ;§Ö¡\\#ª<õO¥uà¦[¥r2ÿ\0¥x’áÏÅü+91£jÜ‡ˆml*®7}(RÑnØûš‘qä1oá/½,rN~JCl—ì)ˆvñŞ¥”MÃ­Vİ‡À¢àXŠ\\‚üÕf2í`¬½j‚3/ñSE()‚Ûj“Eø§\n€$ƒĞzUˆîã¾„Åp è{¥eFUpêWïSrĞ£mıãî?•Rb¹·óés®]Doş©ÇFÿ\0ëÖ¬,ÑŒ6áØ×9i¨-Å—Ù®•$…—ŸcëN²Ô_F¸Kk–/Ÿê¦U8“êzT˜š:c*Ù0›–ŞádQ“Å,Ñ›*bI§Æşµ]˜¨ËgŠrÈ§æ­\0YÈ\0zR4`ƒ×Š‰cM=ea¨9aNwezH&hº…#Ö§ÜQQ².:dĞkıÓ]ˆ$ñ¤ ÊOU>ÄU`Ú‡†$S’úÍzƒşµ?Æ´6ĞqOFuÓ‹Oˆlõûpc–9uî¿…%ö–cËÅÊİÅcj·º¸7–}†üõ‘úÏ÷‡zKİhR­¾±ˆÂ©o¯¥)SO`Rkréàâ’´®m#Ô óíÙIÆHë8‚§ƒ\\²Š(©LaKËRi(ªØ­É(¨êJMX‘¿5:Š)6E6>ôê\0¢Š(\0¢ĞQ@Q@Q@Q@Q@QN,Š(ªHŠ(¦EP•{šåÎxÍ÷§T6ER±÷§QE€QE\0QE\0QE\0QE\0QE\0QE\0QEQ\0¢Š(QI+€QE`QEKW\0¢Š)§p\n9<QE\0QE0\n(¢‹\0QEÀ(¥å©4”€(¢Š\0¢—ĞÒSLŠ( Š)p}(¢”u\\¥Áô4¦’Ç½%¸>†„Ràú0}7½€”QE+\0»©¤¥ïš\\/©¡0J¸ïš	`i(ycêM>†ŒCGÍïB`ëIEÒ\0¢Š)€QRSY{Š• ¯¡¦Ó¿ïªLCIjQEÒì4QEƒ\n(¢˜‚Š(¤•€(¢Šm\\Š\\CIPĞQM0)ÑE`QE\0¿7½%/ô\0¿5;põßûæ3Ú€æö¥¦n>¦—ïûb€E(ôŠ\0(¢ĞPEP·J<Ïjm;ï@¥Ü}M%?iõ4\0n>†–Š(\0¢Š(\0¢Š(\0£ĞQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QE\0QE\0QEÏJ.EPEPEPEPEPEPEPQÔ”Pu%PtQE\0QE\0QE\07ıÚ>ÿ\0¶(ÿ\0v@ß/Ş@GE\0QNòıè“µ+€Ú’›z$íIêìh¥åO¡•@ICÃ*:’¡«é;Sj“\0¥=M%7¨QLŒ“E2`QE$À(¢Š¤À(¢Ÿ’H¢à:Ş#šèì-­ˆP¿;õªº.”F$uÈì+VBWb*Ål±4Û«Àj÷¦İ]Â¢¡†2Í“ÑºšèŒz²QbÚ5òÕá?<Cã‹?­¼	àïéz&•aj.¼A*|÷Ê®HXã3“Úµÿ\0mŸÚU?fO„ê¨mF÷0Z¹$nG~•åğJ_ÙÛÄ¾\nÑüIñÆkz5ÿ\0J“/Û%Oä(Ê³ú,N;\0+èòÜ\n¡©›Vi[İ¦šOšM«»?åZúØù|Ó0uñôòŠ)»ûÕmrÅl®¿éésêïøFÏÀ~³Òtø–[8„h£§ëNy6Œšs°QÕVyGRx¯—r”äå\'vÏ§Œb¡d†K\'~ªÏ.,³tÅTšRÅ±ĞVÉX¡“ÌXóÒ«³ü¼uëNf/ÇZh‰Ğ\0›cOÆXdÓ¡ˆÈ8v9S/\'Ò›bek;¸n†®I4zlX^Jl×ÇfØFĞxúÕk‹İrw`äûÔ´Âåk«§¿ËÄ1ã=>´É-VŞÄ¯ÔÔ_Çi\'ï–éYÚÎ­q¬F`³@Ê:¹û§ÿ\0­M+ì’¦»omrjÎÕ5[L`µGX3óNÿ\0*±öªöşDÔåÄÂâg\02·ú°}\0­h	vª®ƒùÓrK`*iHË’×Ÿf^Oµ\\[f”€méíÓ­[‚:)=3Ò§¬\"6úŸÆ‰¶õ­±ZKeå¾`IÀöT\nÉm–\\³øÔÛÍYr¤7ŞG·zÎµîòHMªA_ÀT$—¼öiPsŞ´4í5§eÜ7t\'>µ“d\\©{×ğ®‚]>ßsuªˆĞé$M6ßı¬p+\nûQÜîÌş¸üéuPÈíüD§ZÈxšì8›qÈüúQ~€Âæg¿˜F¬Ê	$~&¯[Z£Œ•ù€ÏçRYi«jÇïJuÌá#-×?•K7^¿t@,ÙÇé\\‰µ)n¥Œ?ûuÑx¶ñ¤fö³#|¾µÂİ^‰ù\\íê\'±Q*M\nÜÜ·o­Ùûè‘zùë-!ó¤İåùn•Ü|>ÒE¤*í÷›æjÊìlï´qª˜ª¾$›Ê…Éê½?•héÑâ,\nÍñ G9ÆA?‡?ÎºZ±1,`K¿6S»å9_ö¹­O1q¸¯\n:Vuƒ	Ô”ŞLnôæ­\\:ç…Ü+&Röè[Á$­÷BüµÉé2µÓ;„ØÏZŞ,»{MMª¤?ÉÏ½QĞ h£@ÏÒ¢L£Jf&ıïøS·®)³3oSŸ»÷©\"ní÷¿†•À¶íÚ¼š«#øÎÍ•eN*Uî«s÷¨`Eæ{TĞÈ¿tqUşçŞ§\'÷’ßCŒ|ÔâÙ|öÿ\0f¢GíŸ˜Rï÷­XİR<ÚjÍµô3ÀÖÒáâ~=Áö¬é$Û±¿†£Ñm·ïô“FåäšSù7Fÿ\0Tÿ\0Ş•µÒºfí\\Å¤é«[[‚V7û§ø”ÔÚeÔ¶7?c¹WÜ¿rFn%ãV¤K‰ÒH£ñ¨`äšu­È!T¶GbjGPGš¡™rWò§,áò&˜Ã\'Ø¤ ·=(L	6:ÓÕ‹uê*°98<Šr±¿Â}¨ÁèiœnÎ)¢B«“Èö£xaÇS@FÀò¥¹·‹R·xg9#aƒ•ëP©9ÇqRnİÎs@VV¼G³q>ÜI²{©ş•»4pêÖËujÛå–¡G#¨Èô¤„6›)šÙ~Bs\"zûŠ$¯¸â­±]†ÓŠJ½}w1ˆ~d~¾Æ¨×,£b“\n_Ï4”£=³š-ĞbR¨ÜqÒ’Šly~ô¿*ûšO¯NÔœô÷¤€XûÓ©±÷§R–àQE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢­;€QEÇp¢ŠQÔQq	Nó=©´»©¤Ğ¢£©*Z°QHŠ( \0tQE\0QE\0QE\0QE\0QE\0QE€QE\0QE\\ QE\0¢Š)´EPQLŠ( =M%.ãêi)4ES\0¢—ĞÒR¸/ÍïIE\0QEÀ(¢Š\0(¢Š\0(¢Š\0(¢ŠM\0QE4Kƒèi(¦KËRiïªnH©¸ƒèi)wSIM0ĞÒRüŞô|Şô&RñïIE\0QE4Kƒèi(¡ ĞÑÊŸB)(¢À.ãëF¡¤¢„€(¢Š`QE\0QE+\0Rî>¦›Ş’„î>¦’…õ4|¾æ’`6Š(¦˜ŸaIE¬À§Fáê(¢š@QÂ@(Ü=E0\n(¢’`QE0qõ4¾gµ6Š\0’Šl}éÔ\0‚¼( ĞQFáê(Ü=E\0QE\0.ãêiõ.¡ ÑLù½é(J*:_›Ş‹€ú*:’€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€ĞÑE\0QEIE\0TtQ@~†Š\0(¢Š\0(¢Š\0şõ:Š\0oßöÅ6”õ4”\0QE%QY€Tu%Ó°ÑRn¢Š|ÀGRQE&îL¼iôÌCD@J)ySèE\'N¢ªàQE€QE\0QE\0¢Š*ÛUKVÆ…¥y§Í|£ ªº6šo&\\“µz×J‘,QQµGÒ%°Ú`tZò|p*yäÀéTnæ­iÄ–ÈŠ—|WÈÿ\0ğS?ÛwÄ²ßˆü¡xMW> ¸2Os1Ù*c1ìNy=…}k˜äx¯.ı°¿g_şĞZÃÆREcmg šÚø°I,äÄ¬{õîdXœ-}9caÏn½U“·[ocÅâ>.¶¥<NJšYú4Ú¿K««ô8Ÿ„z\'Å/Ú7ZÓµˆz_‚toZªİYé–nu«¹1òÈòTg ($ú×ÒQD¶Ñ@¡T`\\ìõáİsÂŞ²Ó5&²\\	ib`h£UäİÜ€8ßÌûWm‰ukòEEF:%—æïŞçNU‡öTT¥)JRÕ¹Zÿ\0‚JË¢JÄ73mJ£qp<Óï.‚šÌ¹¸.ã¹!‚%–p8Ç5«;`îæšƒNµnÖÕŠ€75PÈVÛç½M˜ÿ\0»W’Ò;dË¶íPM|ìˆc×)ß`¸¬\"Óããæz­s$—\nÌ úö«\"\0±“—jÊÕµu¶G,ÛB÷şí8ˆ»Ø;»W=âÏÅ¦Æè¬d›*/Ş?şºË»ñtÚô†ßMVdë&şãQéZzrÎò“-ÄîÈÜç_/q9_b¾›¤O©İ}§R`¬Ø1Â½#ÿ\0:Û[Í¦ĞWøECd ÿ\0\ncŸ~j{=;ÌùŸà.j^£±¼]&ğ‡ŠÓµ°X“{Œ1?*{[t´‹=OSI9.Œ3×Ÿ¦k¥·Â ãŠÊÔ/ˆnX*—T¸\n£8úãs#LÁX\07|Å¿*„€.%@Ãzıïö~ZÓÒ4şˆÿ\0ÕUì¬~Ğää€Äçù\nê49aIÓJâHŸN²[8·7QÍPÕõ|†Á\\z~5&·­¥²`°íÇ¶k¾Õd¿ºE@{¹ÿ\0¾©ï 6[k‰/+·ëøÖ¥¨;Iç?§5KJ±U?w°q[ -¼{½¿Àb¥¹“h\n:“ı*Ò ·Ìæ­FÈä¯ßéU¯ÆÔ`:ôı(h#ÆÑ‰¥f”ì‰6ÿ\0ìÕÍÍúP^vìß÷+©ñUÂÅ+!>bã¥s°+H›I‘«R£°ºm¾n™ÃïOüv»Ÿ +¯İ_–¹mÕLÅÜl&ºÏ’Ï÷OÍúÓŠÔ$v:hÌ\0Ö7Œğ#*6ØûŞçüné ‹o Ís~5fo”>ÁÉİú\nİ²nQĞ•c‡Üê]¿\nšLòGášC…0á²°Y©n\\Ç ¹¬Yv0|ophY¾Y%o«jÎ1n»êÊ×¤ë¡]şd­»4ò×wğ­bŸ¼1\'œ›‚åUBÿ\0À©É’ÈÕ¸i%Ú~BÛ7İ ñTĞwmß–¨îæ¹ÙHí–§ºÌ:ÿ\0v›@UGı>zHßt/ß¥iUmÁ¡>w‘Wøê@X¤bü¸4öe@Xb¡ù>í\'šªˆ­÷ªšWïUjoä©R’>×ù¿Ûª²0xİJà=Y-¡G3oo—{}ßšµínà×lÅ¼²¸’6ıÜ«ü-ë\\ô£t7Z–;¯!Ñ¢ûÔ¹¬6uV¢ñÜ½œûDĞŸûí¼=«vŞà8ÁûßÎ¹	g}nÈ˜Ù>Ûú§o—\'û¦¬øsÅQßK%´¥Òîßï£JÑ2:–Éä)im§‚zÆ ·¼Y×\nÍ¹:ÓËî=BûUX’qm¼evïLaŒšd:Š£”nvÒÉw¸zŠ@!”\'œÒy£9`Å3wÍši`K¹°[š–)ùsTÉ+Õ¶šz¾Â	ëT˜\nÙO‰Êò§5R	ù ÔûÇPh$W:dæ@»í¥âEôÏzeõ¸‚\\©Ê8ÊŸj’7~eÜ­ÁEíÏ)÷¡\'Ó¸¨œn†´)QOt äu¦W;eQVòÇÔšJ(¤ÀQÔSéŠ7t§Ô°\n(¢Q@Q@Q@Q@Q@Q@QTÀ(¢Ši€QEÀ(¥E%\0ï¹ïšu@QE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢„EPEPEUr€QE@QE(ìES\0¢Š)4E¼{ĞØ	ES\0¢Š(\0¥ç¯½¨¤¤ES\0¢Š)&Nûù§QRätQRU7`#¢¤¨èNàR¿Ş4r§ĞŠ)wSIE0İ(Áô4`ú0} êi´¼©ô\"¼{Ò½€oÍïCg¾i|ÏjFÏ|Ğ€J(¢š`/ÍïF¡¤¢„€)p}%ZÀ¿7½%4üŞô`úJ(H”c¾qIEx÷¤¢Š6J•qß4”¢€(¥ù½é)ÜŠ(¦EPEPE/ô”“\0¢Š)OĞQè(¢¡616z0Ş¢–ŠjB\n(¥ãŞÀJ(¢„ES\0¢Š(\0§GŞ›J:Š\0}ß/Ş@7æ§n¢Š\07QEPEPš]ÇÔÒQ@zc4›©¤¢€$¢£§î´\0´QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0gx¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(£† Ñ@Q@Q@pÃÔ(\0¢Š(\0¢ŠC@Q@Q@Q@Q@Q@Q@GNûşØ¦ĞFqÖŠ(\0¢ÃÔQ@7Ìö¢NÔyÔ\0ê)¿òÎ@0õ4n>¦’€˜š9SèE%:>ô›´är)ÔT¹\0QE€8QèQ@‡¨¢Š\0CEQp\n¤¦ù~ôâÀCÔÒR¦’©\0QE-êER\0¢Š(\0§D78Ú’×ş>=2)Ä«I¶ÖŠ¸å¹5366v‚»HÇ$Ö©jCc$`TúÕcb©È\'§Z’(QZ^Ä¡!ˆªñXák_ÆRŞê?e¸Ó DVæ=Æ)2wHIş,?ıuÑ3*sŞ„rÄÂœ*J7k®„Î\nV¿AÀÅU»—h#jÄòm\\Mej—8éJœo©m”î¦gÏZ\"i[#“S¥«MœtÍhÚiË³Z·`¹•É«®ñØÇ…šK‹…‚6	ÍeÜİ5ä»œµ)7¸]_µÄ¸Sò Éÿ\0\n’Æ%Œ¼z\n«-$üÌæŸkx‹µTÖ‹°‘cZ¾[xAgÀ=+ÔtÙ|N	»_&Ù›˜÷rà3]ÆÚ‹E;’0H§Ö©ê$’6®ã“ÇãBvØm\\Íò£²„E\n¤qŒ(Uãÿ\0õ©lì^]Ûºd7ây«–Úwší•ã}ÏZ½šÚ¦Öl–õ¤2­•!WiÇÔtÍZ‰1·…è\nÜ{u©‚†QÏ§€aÎ:gÿ\0­U/gQÜã?SS4ŠTî·osÖ©K)+Ücõ4Àgj?\"z\\Õ;d3#;.€Âûõ«¯mæÊîÛ™@ügÎ–ÒØ	”©L,iè\"³Ï­^Öµ˜ô›^XŸ©ÅD·‰aóŸ—k€ñ‡‹šyqò”}wSˆX³¬x—ír…/ÿ\0wşú«>°f@ïÓî­exvÅ®LeĞFİık±Óìüµ$‚§úu¦Ş–‹V°¬qƒë×ò¢MÓ9\\(Éê)ò01éœÎˆT‰	lòõ¥˜…@}ò¬İRM‘y‡éZ$İÙÈVf¡&Ÿ—¹úI«Çø‰(Ÿø[ıêÆ·f[1»ÿ\0V§ˆ‹İÈ„&Ék\'ÿ\0^¨º¤RG¹üû+6T^„šs—w,\"ù?¹]g†“{))³ü:×/|Ÿ*|§æoûêºÿ\0¦v0]ªq´SŠÔ$uºxÛvÍr+·{ë±èì³şs]}¨ÙgŸA\\§ˆáûC¸óŒJY‡ŞèO«d4V°h6%…Àb›‰Ü[œ\nÎÔµUsĞj…ïÌúA”¦ÅXò«ô^¿T¸Å­­ÉTıÚDÛ7~U”•¯râô24ûÑ­ksÎ[l®¦ÕTÀÜÛóW)àË¶¶}ÂCæ;?ıôÕÔG„÷à|¿/ûÕ’Ø¢$İ›6l]»*H†_rÒ31›s}çzfÿ\0Ş|ÙÍU€µK#•áEG»k¾ãÀ¢Y\0Bjl[Œù™Çß¤G)ó+ÒK)&£ó6ÓùÛË¶ó¨·mLî¨çË³ŒÌ±dıê‘²I±,ÄœÔ#crÿ\0ß4†àìÏîöÔL¿Å÷h³HÒ¡ğÕ_ï*9®|—ù~õW{ŸŞ|¿¼¬Ş÷4HÑ¶¾{iÎ\\Uİrå@U¶n-—÷Ë³ï¨ï\\÷Ú!ùÿ\0Öy§î|õcMÖå³™\0BR˜š;ké«Û%ÂÄ÷^•«ÚÜFNN:c^g¤ŞÔÛÇæi÷_7Éÿ\0,ø«¶±Ö¡òÄ¤…‰Àş5¢’d8ØĞ»|:¶9OOJ–ÖèHÄÜ;éQK=]™q‘JNÇÇLt«L–®hƒ‘Ó½5”‘š†Œ§=ºÔ¹ã#§¥MXLğ@R‡ÛÁÒ>äp*•b¹ëÇ<ĞŠe”‘wuåzÕÄ²qóVÜ´[,QzZVw,a‡JqzŠH¿›NjäD\\.ÍØ`r§ĞÕnÕ4Mµj‰Ù7üûÕR0H­9¡Ûd7#ŸÆ³\\çÖ¹æ¬Í¸Ú(¢³lŠ(ªæUˆ§ÓQIE®6‡yÔêElğijXƒ·8¢Š7Q@Q@Q@Q@Q@Q@QUÊESµ€^üf’—ø?9cêM	€”QE0$¦ÿ\0»N¢³LŠ( ĞQÃPh Š( Š( Š( Š( Š( Š(ªæ\0¢Š)§p\n(¢†À(¢Š\0¢—•>„QËRh¸	ES\0¢Š(\0¢—óÅ%\0QE\0RòÇÔšJ.EPEP”Ttï3Ú¡ÄQE7Ë÷¤€uGRTuQ\0¢Š^TúUpÔRü´Ú)XyÔŒÄÒR¢’@%%GM;€RàúJ)€¸>†—Ë÷¤Ü}M%+\0¼©ô\"ÇÔÒù~ôy~ô®€MÇÔÒQNùiÜÑNÂúšm	€QE6EQp\nwËM¥Áô40ÇlÒT•(°\nvÔÓh§`òÑæ{Sh¢À;Ìö£Ìö¦ÑG*\0¢—qõ4¹_CC`6Šw™íN¤Û:(¢¨\ntQEO(QG(Qè)¥`\n\\CIE\0 àôÍ.óíM¢‹\0QEÀURÔúfãêiU»\0<Ïju7æ£æ `z\n0=3ĞÒù~ô\0êMÃÖ—ĞR|ŞÔ\0»‡¨¢ŠO›Ú€Š(=\0($t4g=ri( znIëE\0I¸zŠ7QQÒàú\0}Ï›Ş›Ş€EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEçè Š( Š(¢àQE\0QE\0QE\0QE\0QE\0QE\0QF  Š)>oj\0Z(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(£põ\0Q@è( ŠŠ\0wÜ÷Í!ãJJ(\0¢Š(\0¢Š(\0¢Š(\0¨éÒv¢>ô¯¥ÀCÔÒT•#Š¸QL	7QIü…\'=úSjR\0©*:)µpç¾sIRTt\'p$¦ù~ôê*\0¢Š(\0¦¦’”õ5IX¢Š*€(¢ŠÍ°\n(¢€\n(¢€\n’óƒëQÕ­>,È?¼j¢€é­³öhó×•ğÄç¥8.Õ\0v¤\nCgV«s&	E2i€àu¥šm«œdÕs‡äÕEuaä9öÈ«*6­EnI©\\í4¥¸\"§;@ZªC;e·b­]ùéL™ÀV´‹¶ˆ,	D8çÍĞ^)²LuéY—·;ä\0têj”z°sv&}¹èj(æ+)#ï7(ˆ´;ºÕGÌ#q·ŸñªH&¡\"ªå›?Ö¡Ñâ’êMò|±c\'ß=©ñ[M™[\"8cıüœ{v«Ø§åSş4Ğ®,®Z</LqPEcæ3î_ÏÔš½WÌzm?ıj‚âïË>½qEÊj\'Ôuüê	$ù³ƒ?¦i‘³ç%¾¿©¨ä~	\'×ŸÀRë U`yıqQÍwóªÏ\\j¸ùö³{Ÿûêªı­K±,wq“øšM,—Š*·Ëòğ?io0:\nõİùk>ÎôNŠÅJ•aœş\"´´èŒèÌ3ó(ıV„˜ÉbÄy=@úğ*î–Î&bT*œ}qZâç·ôÉ×ãlÂd@›òÇ÷şqQaÜ<cã|¸À,Úÿ\0j¹-×ûkP‚i*îÏÿ\0³T7É{:+­wÿ\0¾>jê<!¢¢ÈPãEÿ\0Ğh¸4tº˜·@UwqùVõ¼`vœcRÊÔ	Ä8ı*ì#‡©8şt€>løşı{ÓÉ$Œt<TJ:ã¥O\'µ[`=Èˆ~e°µ9¼«vsĞ.Oåı+fúM±pÜOş½bk®©ªøØ–ıM´“×ÙK†ó]v/ıóTíbòİ$JŸX-ÜÀœ>ã·ıİÕ[vné&ê@…ˆĞ†ÇÜÿ\0gø+°ğÜdF£Ğ×#JÓBªÿ\03ıêí´0À€Ó@ÑÒÄ¦+\"=Eq.®ä.$dH›-·øÆBâ»™NÛ,µÊjvâ9£fåd•íÇ<ş5R`cIj’ªI·Ê?âÙ¬OH ğ­ìNbtò‘ÿ\0çïJè.¶Z¤»›q9o÷xË|Ef¸[hÕÃ+¾ÿ\0Ê°ªô*!áx™möçíVİÄ¡!şóríÿ\0b²<>¥ ÷>zÑºdW‰‡ß}Û¿İíQŠ%•·>ïàšï¿¿~šŸ?û”Ôı÷ûi6öó:šo›\"Æå‡/Lo¹ÓeE$¬³n¤İ€C»o|T\"ªß\'û´·lQ\0ïº«1UôÜj\nŠ%3è)D€ü¹ûõ_~çÛüB«‹•ûî“v‰b[åO¼†«=Ë7Ì¼¡¨‘ö| |õÓyŸ5Kw(—LîTœUifaóS¥}ƒıª¦“~ÿ\0mfİÍ\"6şâ9@ş:±m*ù¹Yîû$Øß~›ö—ş¿H“~¡o=”¤\"NŸ#ÿ\0Ï9?½V¼=¨ÍdóY]È$–?ıûÕÍ%ÿ\0“åîÍ\\Õ5½‚ÔÇw§}öOùn¿İjiØEĞµkx­ÌYFwSZhşo¦ïÎ¸?T‹Q°@òsó#/ßİ[K¬È°$…OâÅ]1•Ñ“GCG¥9gp½ûV,:ôr¢A¹Æå«vÚŸÚ#ªFåæ©0¹¦/İÚy£Í¥ˆªQ°esš•¤Ü1ßÖ€H|±–\\®åö¥Ó%\nH±Û5‡ãÃà/	êÅÑ‘­´èyp£&¾<ğ—ükÁÚßÄ¨l$´¸J¹Ÿìâuhäô\"ºğ¸Jµïì•í©jğ§nwkŸyÂÛ—æ¬Äáx=kÃ$µñNmc<w6·H$Dä0=ë^+šveš¶RÂ­Ò©^EåNëÛ<T¶ÒpOJ›TU‘EúVUƒ‹3h¥<)+–QENÁRTt£¨¦6>Šg*}¥ÿ\0Ğ¨°‡QMûù£î{æ‹\0ê(¢Q@Q@Q@Q@QM;\0QEÓ¸Rî>¦ªà%R¦‹€•%GN½L¢Šo™íRQ@Q@Q@Q@Q@QB\0¢Š(\0¢Š)µ`\n(¢œ@(¢Šm€QEÀ){ñšJ(\0¢Š\\CEÀJ(¢€u”QB\0¢Š(\0¢Š(\0¢Š(\0¢¤¢§˜êJ¤¢@QQÒJà%GESW\0¢Š)€QNùiSI0Ë÷§TtT°$¦¦’•Tµ4¬QNòıé´Ó\0¢Š)€QRRlõ<À2Šq\0u$š>_sNà6ŠvWĞÑòÑpJzšJ)€QK°úRRLŠ_›Ş›Ş•ØÓŠ*JmØDt«ù¤¢˜Óz0}©¤¤„R¶;f’‹€¸>†’Š^=è¸	E;+èi7SB`R¢Š)€QE\0QE.Ãé@•ô4˜>†ŒCF¡ ¢—ĞÑƒèh(¥Áô4ñø¦€`ºPA^´ú)\0ß/Ş/Ş‰;R|Şô\0ú(¢€òÓ¨¢€\n0=Pa½E(Ï~´Rî>¦€Š( Š( ŠvóíK¼{Ğ+±”QK¸úš%Q@IQÓ×© ¢Š(\0¢Š(\0¢Š(@×ÖŠ( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( ƒĞÑE\0QE\0Qè( ¦’¤¨è\0 “ŠSÔĞzš\0J(¢€\n(¢€ÍØS©±÷¤=M\08¾:Ó(¢’@IETé;Sk@$¦ÿ\0Ë:uš`GNN´IÚ›WºJ¤¦¦”X¦ÉÚ›E\n IQÔ”ÃÔÑQE@.ãêi(¢•À(¢Š€\n(¢€\n(¢€+[@ƒuÈ\' ¬¨çZét[a¶ãË?ò­\"…-‹¼0õ‘Î‘{çõ¦³u8«Fl†^XGÍÔŒ¤µKosZIÙÈ•F*)[54§VGÇ\0TA\\mt©ÅA+|Û©ò>ÒªİÌ& ÖÑAr¾¡zwlSÉïô¬øwİ(+“’}@éWíàóÑ·zšdŠ!ÚmÓŞ´hHšVÙjr¼‘Åb›f¾vUm«aÛÔßj#âÀ6ØĞÇéÚ™1XÇ–©„òúÔî>/İ\"ÇÂŸLÕËKUŠ\0ÒMC§[	>sÛştº ¡B.:â“aæ%ÍçšÅJÏ¹”–Ï¿™«%B.O;«>iIÉnOıh3¸ŠØzŸÒªÜ\\Ğäd˜¥¼Ÿòğ§Â²nîšRè‡æù‰ı)\\WïPÄî‹ş±zŸáûÕİ¼Ògÿ\0ÅU[Ù¼Ùeğ™Ê¯ñüËV!Ïİûû±ÿ\0óNİErKR«Ş }ò¥tÚ}˜T\\8şU› éˆˆPÿ\0‰5¼ª-âR{PÆ‘‘â›£mnTrÍŒ~-^]âKÉ.gHbÕşo›øs|ÕÜøæøÅ[Á?©5ÇiÚc\\İ!d“ªÉşïZ‹n;ÃZA–áe$>ÿ\0—î}Êìôkgh¹ÚŒ¶Ş‹ÅVÑ4ÔµŠHö„\0ıì\nØLG$m\07_e¡<@£\'–ÿ\0g™æ3Ñ;~u›âÙørÎ[›ë¨--á´’°P9òÄoø.7Á…^9m÷X»¼ÙrörİZÄ^dV`Acô®¼.\n½{û¹zVÄÒ¥­IYfÉ0\n t\'õâ­Û¾Ü»¿úõà_²ïüáíqv¾	ñ5¦§%ƒ2q\"ûàö¯qMJ9UJ>AÂ³­B¥)8TM>ÌºU¡R<ĞwE©[z“×®?JÉ×?v$¥•†HÙ5·m\n¼Y<œü«[ŞË€Ü.3Ÿ\\“X³C»S-ÉTO›ø¿ïª®Éº|f÷ş:}åÃ[ÌìÂMÇoëÍ2`dû§æU¤Ğ-‹ÚæáTà6ÕşuÜèd ÅÖ¸ÿ\0	Zº!,wµvşˆ·=W`ÍMEÌV$÷ÁşUÎêÄÅi!”¨uo°$\0+w]—e¸\\óÓó®_YÚÂW›ÊÜ*çĞœ~‚©ì9íY¯5icCm%wıtÿ\0\nËñmÚ]ë6Ñ¢f8¢Êÿ\0ßTËwIÌEGŞíıÿ\0•`[êí®xîL|–åaO÷vî¬+½—réìv1U€2¿lîI¦Üşb¾ß—ûŸşº£¥ü±J°òı™İY÷ÈŸŞ¨L¦ÉÖ\\}ß»K>ÿ\0øE¡údRy‹»ŒSlD²IµÉÎñQI1ùÑ…6IC#0qŠ©u;HÛ•ÇÏI°,ŒéÄƒmAïù¿‚:>Häÿ\0Çê\'o\'şy~ò³nå¥b_;dqÿ\0ËJ…æïPK*¬7j¯qz#ÂŸ»He†›~üıãQ\\»$d÷ª¿lo½Mšç÷|~ò¡»€é÷?–ÕÓ*yl¼Qs3y{›Wwßóf¾MÇûõ¿î¾ZuC7Ü ïgòÿ\0éXÓuE¶¸Ú¿rO¿Tf˜ù”İâI$eıß÷*±iXÓÒ5¯ìÍv{\">Y>x_şyÖôWóÚİ¸WóÖå<¦ÿ\0&¹+«Yï-ÿ\0s\'—u«¥t:MÌzı¦Ù3±§ÈõtŞ–%«{&Óö+İ·üéÿ\0<ëjÂóxÇòÉU-¥ú|krdK›eUöÿ\0Ú©­töDvç_÷k©Ö‹  >H«>váSÜÖ6+G¾6xİ_îÖ¤r+çæ«ÌLãÿ\0i\"_|ñ]³•º›Lœ@W¨p‡­4Ÿ/µÏ®§¬Z^Au6vn.mâ<@Ë\'Íú×õ©[GMš&ùÄˆV¿?à¢³óşÈ¶‹4;Û|#ã¨d¾³”E’O¾Ÿ„ŸÌWÑğæ7Ø×pşcËÍ(sÓ¿côSşûgÛşÓ?³CirİÕ¼>Ùx¨ºı¶˜Z¿¿àß_µä6eòßh#¶0cÿ\0–#h`¯ï_»6ìsƒXg´#O.]¡•Õs ¯Òëî5 rÇ•|=“©ê9“níÖµté`§œŠñ¤´=¹˜ıiµ%Ü[euô5r´hg=(¢QM0\n(¢©¡Şgµ:£§IÚ¦HERQE\0QE\0QE\0QE\\Š( Š(¦•À(¢Ši€QE/,}Iª¸	EP”QEfcïN¢Š\0¢Š(\0¢Š(\0¢ŠCB\0¢Š(\0¢Š(\0¢Š(\0¢Š)¥p\n(¢àQE\n R¢’šC\n(¢˜‚Š( Š^Xú“IEÀ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0’£¢ŠIXŠ(¦EPEPK¸úš0}%	…Âæ{Sh¤ĞùiÕšŞgµ6Š)¤EQp\nw—ïM¢†ES\0¢—ĞÒãı“I°ÿ\0³HX´n>¦’’@;íRn>¦’ŠwSIEHe}&ãêi(¤ó{Ñƒèhù½èù½é\0”QKƒèj®QE+œÒ`>›òÓh¤QT]£ÖMòıèòıèÔÏ›ŞŸE\0&=Ú“hõ§`z\nN=¨<¿z<¿zu\0İ­ëKó{RÑ@Û»œã4y~ôê(\0Àô`z\n(Àô\0QGNœQ@ ¤ÃzŠZ(0Ş¢–Š(\0¢Š(\0¥Áô4”PàúJ’£¦Õ€(¢Š@QNÚ=h´S¼¿zv  üÔìAE\0`z\n(¢€\n(¢€\n(£¯€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(Î:Ñ@Q@Q@Q@gœw¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n=ù¢Š\0¤¢Š\0(¢Š\0(¢Š\0(¢Š\0(Ü=EPEPEPEPE`z\n\0(¢Š\0(¢›\'j\0CÔÒR¦’€\n(¢€\'jCÔÓéœ±õ&€Š( Š( ¤¨éÒv©hSdíN¢¥0x÷¦RªîÏ8Å>©$4Â£¢¤£a0õ4ú)&tQEXQ@QHŠ(¤ô\0¢Š*@(¢¼.EP˜tØ|ë€£ŒšêQhª:ŠÁğÌa®Kû¢·¾ÿ\0¶+d´\"LWéQHrjWû¦šq÷ÓÔ††\"s’1S\0JDR8õ¥\'\0šM!“>Õª’>î}MMrp1UÇA[B:\\@^j¤›¥tPyçÚ–kŞà~µbr#BÇ­ik	EˆÕ‡~µBõd¸•7Ë»,}\0ÿ\0ëÔ¿ii._ŸÈzÒ¡ò9÷&˜Å%`@ˆ0ƒ¯¹ÍZ‰¥Üyà`~4±Äd~sŒ“\\–YVp;ŒŸÎ†Á	sp¶§jôÇj¡\nµÑ,zR^JÒH0W\'üMKiòCÁàãùPùB\n}?cŞ]˜‘ómíøµ©^ˆãóş=ŠçuKÙHãF$nüé-Á²î¥||ÆæÆ~¿.qøÖxy>c÷YƒŸ^¸éNILñ§÷ğ?=´èâóÌ»wº¿Áòæ’V5`]T¡Şå¿İéZúnŸ–bNã“×ıê‚ÂË÷îv“×ûÙ·ìmJ\0piî	XZ,(ŠGõ¨uËñoĞƒÿ\0 “ZW,zs\\¾¹;Ş\\:©Úwß4f%ı³k¸nQ‡òJ³¥è¢ŞVcÊ®vŸ éZpi«|(sÿ\0è1D¬\0Ú>öOà3ƒRä	åƒõU?¢ŒšŠòğ$~Q¸.*é˜·@Üá\0\nÄÖµV”N\"B\\,ŞùE8FàÏËßø.ïíã|Ş\"—áÇ†næ¶M%öÌÑLcdga…ùÙşuø§ñ#ã”z¼ih1n›ßïıÚû·ş+àxö†ñ9¼ŠK;oÌ×Ö29Ì“!ßUğÁmODğv¥=¶±¦‹àº¤sÈvoó£SóÅø×éx:‘Ãá!\nUİ¼÷>_KÚÕ—µvş´:…?´Œ~k·:¿‚|M¡µÈòÍÅ¬Æ)%{ûŸÿ\0;ÿ\0‚·jÿ\0¶\\²x?ÄV›5_iñ½iwı¨mÚú?Zü$ø¿s¡ÛÜßÍ¡ÚÇii¨^<Ûç&Øğ+ôSş{øw¬ê¼I©4Ç¦[ÛÂÒÅƒœZò³iûjE{u\'JTkÆ\'§cú³“0Nõ¬¯ †2Øû¹÷°¿ızÖÓà1Û¨=@ãò¬o—{Y”pdGÕ?•|Kè}YÆİíwÜÏóoß·ı­µf“•©¯~Ğíò:ïÿ\0Ù±O¶·W›?ÅCW6t5ÌJ˜ÚSïWq AåÂ­r^³;T2à“×Šî,\"0Û.zâ’@ŒŸİùR\"òH*qíšæµùÌÖÏóÆKãø—åéúÖÏˆ.Ñ/CÈÁbM¦BßRq\\·ŒufƒO–á%—xBßÃœJl.sÊ°5ÌR9u¶Fÿ\0şïËx#ı\"{‰f´NÎ›ëg_¿û=ô¬a‚tşşÕj£àû–¹Š9$Ëy}sMŞHÑ+mº/N­ü-Mlé÷Ø7ÏşõÌm×záÙuV…ÛËÚ¯×çßşõ	±’¼Ğò´O¹S;ê$”#Œÿ\0oÀâ“@5%aó$ê»º¤Ÿ4Ÿ8¦³†“æ1êŸõ›ª[W	œ§Ë’ U‰Ët–k é·¥gÜÍü]²r,uİØ{şøª¯7zkºÓw¯—&î‰óÇşÅ:µG¿÷‘úGN‘ÛødÅ #™ûT?rJ’oıP¿úÏúç@Gşïßû•íÿ\0+w¦ü¯ İşÿ\0ÉQ»ìù–§˜oïËQ½âç÷*IıßİHõ]îWËÿ\0kıºÎNİlh\\¶¿Ù$måæ¯è×ÙÁÛ û,î¿\"~²å|ÍßìUå¹{>xã).£Mğ¿ûUpbjç{§ê+m4gîn?tßßOJÖŠ&‚Y¡oàùÖ¸ÿ\0k’jö`å¯ñoùë©‚4¹´IˆO2&ÚßŞuìk®2¾¦Rm·ºnDuşı_´¸TL‡ZÎf3™6TÉÏ2³‚»«Dú[Y7ğÊõàß·çì-áÏÛ{á;é:Œ[jö‡Ì°Ô@ıí“zŠ÷Ÿ•¥ô–ˆ,7e~ò­T&ã%(î‰”T•™ù­ÿ\0½ÿ\0‚cxÿ\0öhı¦SñLÖ²èš#K%¬ğp·e†Ì‘ÛúlJHÀdªô5BÒF\\Š½Ú·ÄbêW—=GveKi¨õw/ÂJœV–äJ‡5•¼sW­$ÚTÆ²,~©K†÷æ«Uİ\\e£pxeşUKpõË5© QE QE	€QE\\—qõ4”PÙQ$¢£©(V\n(¢Q@Q@Q@Q@Q@Q@(ê)(ªLE%/,}I¤¦€’Šo—ïN¨`S|Ïju\0QG\n=\0¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢š`QE8°u”QM1Ü(¢Šb\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€ĞÒQEqNY9Í>£¢“W\0¢Š)€QE\0QE.¡ ¿£qõ4¢ÇÔÒCŠ)Ø_SLKÇ½.ÔÓiX\n(¥ãŞÁ Ü}M%;êi´¬ÁØ(§|´|´!´6åûÓh¡’(b:Q¸úšJ(°QLØ}(ù½é(¥`qõ£qõ£aô¤¤QNìŠ(¢à.ãêhÜ}M%XŠ(¢à»©¤¢˜ÓŸöi7SFãêhÜ}MJ0”R‚r94ìç$M	²¥‚Š3œÓ`z\n0=PEPEPE.ãêi(\0ÀôQE\0QE\0QFÿ\0z\0)p}%\0QE\0QE\0S¾Z@G¦isşÍ\0v¦Ó³şÍ_½\0G­.ÁïL§}Ï|Ğàp\'™íFóíM cıªuGK“ë@£ĞQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QQĞRn¢›\'j>ÿ\0¶(ÔQE\0(ôŠ)îŠ\0Z(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¨èJFlRÑ@GRTt\0QE\0QE\0QE%GI;€èûÓ‡AQÔ•2@)êi*¢€w™íN¨è¤âEU%7ıšm* QE6À)HÁÅ©¤ Š(¡0\n(¢†€(¢Š€\n(£¯€ĞÑAèi¾gµ4€>ÿ\0¶)ÔR¨É“`mxb2¡ØsZéÇ­gøz-–¬İÉ­ß6yÅt#6ÅeİØ¡WšÇ1À¤…¸+f‡;A„ÎAÎi“¾ÚÔVññŸj­-Éá~ö(»¸É\0½j–C¾:WLU–¢bZ©¸dcÀŸ©©ïøƒ2@Ç©¥Dû8\0àNYƒ!*}ßsëCzÜ*›ac7Ş‘Ç\'úUpãÌ$ıÕñ Š³t¦@ùèi±DªÈHùzÓ·pD™òˆïšÎ¿º	•Vë×Û‘R^]e éùU™™ˆûÇ¨¡In¦gCéş\'5bW!#£ü) ˆZB	àvıj®¥v)<ã?)\\½^èùêª72“‘ëóW9q3<Û‡i?à;wÖ‡ˆn¤ƒVßùey¬)d?l}±~ïş=š¸\"[6ìdÚH8ËcîôûÌ*ı¡)?369õàÖmƒF¼ƒjÿ\0ãÕ¹¥Yît;w#?†qŠ‰!¦hi¶{€$`ş³C`ùxÅWÓíÊíSÀ«r?—~í*j—>U©ÃcƒüaÛ[™%y¸Èı1Wµ<Øùÿ\0Ğjñ\"áG<åC@,ÄÆ\\óôÜ+*úr‚ıçïıß´oğ.xşL1XÚÁÙ)¸‚1ÿ\0}TÅSUÔ6Ù»¯Ş=ïº¡jAºEêwë%:mÓ33y‹÷í¥:Ø+:ÌÉò¦ÔşúªJÈ†Ï¿à®ğMÇı²¼eªéqiÚ¯…­ghÿ\0qæ½ü’:²ÂG¦Gë_ÿ\0´§ìuãßÙ³Æ÷ºˆ¼=¨é÷®>Ğæ8÷DSøIqòüÕıbYÁ›T3Í#ÿ\0y¹®CÇ_|1ñş9õNÔ¼… ùĞ†gÜª?A^¶4¡%tLN\n5uÙŸÊÀOÙ/Ç¼¦išv›sv¯>Aû“ØWô½ÿ\0§ı†lÿ\0d‚úu‰‚íiíÔ^N$ƒZ½Sá×ì¹àïk—7º.ƒac$êÈbˆ.äMÛšöOèéalªª\04có\'ˆ\\«DliëÔ¾TC\0ÁÂ¹¯§˜Äµc9İô_ñ5ÓêD+ñË$cï?Ëù·øWÎã¹ƒl…çò—æÿ\0¾j[Ei&BæùWÿ\0A§È»œ·ó~mSèöe®È?0İòş4Ó&ÇUáë_6d8úÎº‡ÄppIÅexvÌ0èµ£ªMå[œu\0ÿ\0*I”rºä‰:\\;„+{ÆáÔ…Ï5ÀøÎın¤”ÌÅ™‚?û«–®Ë[\né$¤¹6òeSwŞ8¸¯E³È­Ë#ÿ\0€ù‹º“`gâ$â/O™‘/¶‡şûÕsÃ6ÿ\0¼¼´¬¯;L--ã?h¹ùÿ\0İÜÍ]‡-ü½íœ×\"~ñ¡§#yV/·£¦ß’«ì[xö¯İ¬Mp«Ä¿ëfOåUşo/ı]o 	¾I7}úkÌŞeM²1·ïÔv>÷ï*°	3´ÒqÊGTä”.YJòotşëÕ+Æ`8¬¤4Èîfÿ\0¦•Vi·Sf}Ø¨dv#æâ²nåGßşı7ÎWûµÿ\0á¦½Îù6·†•Ë>×mB“/Şÿ\0Ç(ßıï¹@‡8ş,Tlû<ÏİĞ÷*rj¼U 4}KGÿ\0|S_ûµÎ¯åûSQ÷ÿ\0Ï]õ›•ËjãwùÑûÔs|Ÿ7T›Ô|ËP¾ïİÖrW#ì¸ù¾üŸr¤°¼ki7ß¨_çù©7şïv>ziëp64HÛø‡pH„7	ÿ\0×o`ß`šdÿ\0W7ÉòW§úm–ØÀócùáÿ\0}k©ğÎº5\"3Iæ¢oÙÿ\0¡WU7Ğ™”måNy†Dû¿îÖŒSÇ<[o÷k#MÔíRF“;SıºÕµ¸I>ê£-t¥¡‰4GæÚ~V_»VÌ¹$â¢ˆ©É´Õ”×!×éŞ4:ÙA8Û·\"¬B|¯¶¢€o¬êHŸ~3»Ûµ,ÀÇ¡«öì:\nÏŒlš¹lÀÕÅ“\"ıëyÖ1¶>çÕĞÕÃóéÍ Š¦zÂ{0 tQYŒ(¢Š\0(£põPEP4ÂŠ3œÑ@Ó$¢˜	è)(‰(¢Š	\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢œXQT€^TúIE(ê()Şgµsß41ì)=@uSİ©H‚Š( ĞQE\0QE\0QE\0QE\0QE\0QE\0QEŠ(«LŠ(¦KÊŸB)(¥p\n(¢˜.¡£ĞÒP0¢Š(QE“\0¢Š)€QE.ãêh¸	EPEPEPKƒèhE%&ÆQE.ãêiÜ”Rî>¦ÇÔÒL,©£–>¤ÒQB.¡¤¢Š-p¸QE(ê)‚Š)wSEÁ	ERº¸>†’Š) \n(¢“`ì²i´íÃĞRlÜ}M%.ãêhå©4Ó(¥Áô4”“\0¢Š^O©¢à%S¾Z/`E+c¶i*“\0¢Š\\CRÚ)x÷¤¢“v¾ßö¨¥Áô4•`;yö¦Ó‚îÏZ<¿zw´ï–›E \n\\JJ(Ùÿ\0fQÑ@\nÌM%PKƒèi)Ş_½\0µ&¡¥òıé´Ø“ö¨Ú=i´RQNòıéÔ;å£szQóPî¥\'™íM§W¡<Ğæ{Sh¢€\n(¥Àõ ¢Š]ÇÔĞQE;æ Ó¼Ïju\0ß3Ú3Úè(áG \0QFáê( Œç¥PEPEPEPEPEPEPEPEPEPEPEPEPEPEP\0:\n(¢€\n(¢€\n(¢€\n(¢€åûÓjJ€\nwßöÅ\nş¦ö¨ÔScïBœ¿Ö€E7şZS¨¾gµ:›ÿ\0-)Ô\0QE\0QE\0QE\0QE\0QE\0TtQ@IQÑ@Q@Q@Q@=A¨êCĞÔt\0ï3Ú›E\0QE\0QE \n(¢€\n(É4RLw\n(¢˜‚—ø¸Í%š¸QB`QE)\0QE QE\0£…€QE\0¡¦ùÔµDª’?ñ©í×sÕ\nıóW4Èò…Ä@¢+PgC¥ÇåX îFjfÉç±¡P,aGE%l™“vƒ€qÍ1¾sÈëOÎWŠhÈæ‹CÔmª·RmV%ªÄÎ3Y·wTçÓŠªq¸›)]¸cœç\'\0õfÊ2K1-ÛÚ”[¯–ËĞqøÑäHycú\nİ½4”k™•AıØ9¦:Se˜ÀÎÅãë·Ø›W¦jxÄŒàh[	“!Qg“Ş©İ\\3#\0ÜôÅX¼¸+”SÈª.¹ï?3@u#dódöÁì8©¡@±î÷§¤ `„qùTW÷©e6p8ãñÅ”TÔ/Ø¤ÈÖN§zÏ¹AşùmË«Æšäè€`Æ©ÛÈyÅ†İïŒTÜM”5»µ´²!ØsíÏğóT­ +½¸uù¾oûæ­ŞX)ŞÛøWîıÜÕ˜tõ\'‡wéWt¹K:-™ë_š6bOü\nº2ÛiÈ\'¦?fi¶ù mÚÅô­û(\"øÔ§}F‹6ñíÆMVÔçÀ\n=¿[‘ü¸É¬k«ƒ,Äç€­ ¼-3y`9ü9©a£ÃgôÅGi˜nn¯Œ~Ufá$ÚxàçØdPmôûKHU‰9 }°õ5,q¡r­ø¾kVè´²¼¿6°ã¡ùúV5Ööi$?#‰ÍıïŸÒ—PeYbÛ	_¼Òîfşîíôø£S<¾g–\0ÿ\0¾·S†Ñ”ìÜ­·şû©bbtÚîÁWıï›&›d¢uT\n6¼*6ş ÕiÜ›¸/ß_Ëşå#HÓ”eµX|ß÷ÕhxvÁ¯¯…p§jÍ¯éKol€®ÿ\0ßXÖ(Î:TV–Â>wùx§bŠ:¬årO§ùü+¼”Æræ‘FíÕĞëWk1o•2Çğ_ş½r×÷\nî%c•òíöZ‹]‰²”::·İO•R·ü;§”e~qÁ?ŞàVTV\"y¤Ùù}ø®»ÃöXU·=júdTU?\\·vÀ¬!ZC÷qtê+Å“nÑ€Ì[+ıîœP€å/à’òö[Ÿ´:Ã¾Hüœ®çnÿ\0»Ö¹OÍöIöÂPÃò.ßîùŸ7ç]F·4ºp‰™£ò‡À=¤şƒšåõ-ßjò×Ÿ9•Ûı…25DßQÅ\\åõ™&¸ñŠ¬cìòBÎéüqüÛVº-18K/,k“Ó]¯¼Sq2É$ˆb‡ÿ\0Cİ]}¾Õ‚5Ïü°ŠÕ³B{‹oÜß{ıº¨÷$ÚßseÏæìi#şòT	·äÎÙ«l¼ÍœceFÇäùxj|Õ[ûÕ‡ªçefØ˜?Ûª—Ù`6õ§M2ïù~z…ßtu-Ø¸®¥—ß¿ÁPÍ¹ªiûµWî|µ‹wo_½Ş¼ßãÿ\0íSàßÙ¯K†ÿ\0Åšİ—GyÒàÌ}½k¹ñ÷Øt›‰Olÿ\0÷Í9ğVoÚÿ\0\\øÍûNk–×÷Ó&¦NâÒæó\"V>¦ºğ8ooSÊµ^Esõ§Uÿ\0‚èüÓäº‚=xÍ2ü‘ …¿}úWĞ?³·íà¯Ú_G7Ö,u&‡fèâ—÷«»Ôv¯åy5»íKPİf’İÊğüÿ\0\'Ï^“û+~Û>6ı–<kmªh¬Ğ˜Ÿ÷‘õŠqèã½{Uò(ªoÙ½N:xš‰Şi[ñ?ªävNy£Ÿ½şİyì›ñ²?¼5â û¿µìc¹z+Ó‘Õ-ëæZ³iô=(ËKÜûæšï²Ú‰Ÿ|{{S_äŒîÿ\0r¥Jå¶G¿–Ÿú:hvIØ¦ÿ\0ã¡ÿ\0ÖÇºJ&FtÙöèH„ìFéçÉ\"·Ü£DıŞÕÿ\0ç«¿şP¾ï3ıeg%bËvsy2Gÿ\0LŞ­øm¿±5‰\"·ó^ŞOŸçÿ\0–mşÍb¤Ù“sËJ¸“Hö»ÿ\0[ÏD^·²ÓïÖÊîu›ç‰ÿ\0¹şÕmXj‘Åwä¯™GòíoãZå´ÉÛQ³vSæ>ß¹WşÛ7lólûıêí„´ĞÉ«Õ•Óù?rFÿ\0z®GrŠ²¡[Ö¹Ÿê’8EdoO¼ÿ\0r·ì®±åFuj¶¹›/†(uf†Õa4‹¼zvªq>ÀéWP†Î6úš‚F	Å[¶nsU\"9üjÅ±Á>µQb’4aùì¥İæª†®Ø¤«Î\nš¢ÇÎ¦ãLI;Sª:’²haMù©ÔRLŠ=ù¢€\n(¢€\n(¢€\n(¢‚”…ƒ‘O¨éGQ@X}7Ìö£Ìö§P˜š\n(¢QïÍ\0QE\0QE\0QE\0dŠ(¡0\n(¢­0\n(¥,OZôTu%KV\0¦îÛÆ3Š<Ïj#ïE€uP:\n@S|Ïjpè(hŠ( Š( Š( Š( Š(¡0\n(¢€\n(¢š`QE5 \n(¢¨Š(©Ø}Š(§ 6QEAE»©§pŠ)wSI0ÔRQNN´Æ†ÑE›QEÀ(¢—qõ4Û—•$f’ŠN@…Ü}M%R¸\\\\CIEÛÂŠ(©LnAESraESLç¾sIFáê(¡HQE)±wZ‰¤¢Ÿ0®QE…QJÂ\n(¤Èõ¦ES½ÆQE+…‚Š]ÇÔÑ¸úšXJ(£§jHAJAE%Û™^Šw—ïG—ïV ó=¨ÜŞ”Ú(JoËM¢€\n(©(›©£qõ4”PEPNİ»Œc4Ú(JŠ(\0§y~ôÚvóíM\0êMãŞ“yö£yö¡€gıšu7yö¤ó©ü©\0¿5_½&IîhÜ}M\0?ŸQM“µ78ç¥\0ƒÓšwbAER%GE\0RüŞô”P¾j>jm\0ü7¨¦àúJ(\0©*:(J(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢„À(¢ŠQ@Q@R+f€£§IÚ›@IQÔ”\0ß3ÚMûşØ£şYĞ¨¨éËÿ\0ûĞ¨¦ÿ\0»Gû´\0y~ôê(Ü=E\0QE\0QE\0QE\0QLïÎhôQG\n=\0 £¢Š\0)OSIE\0QE\0QE\0QIó{PYJÒT•\0¸>†’Š\0(¢Š\0(¢ŠV\0¢Š)ÜŠ(¤ÆQG\n=\0¢â¸»©¤¢Š\0¢Š)s\0QEÛ°QRÕ€(¢Š@„àqÍ.áê(¡\0Ù;S¨¦ù~ôî÷ŸØV×†­Ã\\?À8¬`¸b}k¤ğô>]¡cüUpz“&h†£©)®\0Æ;ÖˆÍHMÇÔÒ¨­6•ŸËŒ“C]ïçÀèµ˜d\\¼ÜÎ¬^N7mÅüXtÓ’p»”¬A»L±ËƒÍ¿(ö”·¸+éÕµ,‘±àâ‹i`¾¤3	H°ióÍöTù[¯¥IKÔµBğù·şƒúÑpCÍÅÓá°qßéRC	?–KXŠ…ã“Ş¬<v?Î‹Ï*ÁK`şƒ®Neƒ¸cşú­+ùŒ§\0àÿ\0JÅÔ$†À$ÿ\0èT›QbMÙïF©ŸÄµCn¡GUÛóãÕ,dE#3³’ßÃıÑ¿­GjŒì¤ó€[ñ¢ãj>Ïÿ\0º«ÿ\0²ÕÍ>*1ÿ\0Ò¤_p1<úÕİ>+a}3ÿ\0|Ô¶İ>\0zãúVÔljŒY *áG­iñY=\0ÍRBL¥«İ-Ø¼Aı+/i•Ô|Ù\'9öÍK}1º»p9T\'òâ¥¶·÷6ãŒcó d–‘Ô¼§òª×òd9Ï-‘ø*ÕËù8àş‚²5[½±>2p	ıFi	²©q²¡JçrãşŒşu™¨x1Èş/ûê¥»¿i¦b>âİşÏ#^MŞD¤Œ[oş?I!1Vİc‘K§ÌÍµØËqHd0:Jïò*¬qÿ\0ß_z–İ›fC?—ñ}·S.¤’$_™Sk7ıõL¶°<Â Ë€ß2¯ü»Oé¢0„€¡EaxvÁ¥\nvá?úßızìôË&Üg©şTÓcH•Ô(àUBq![·?ËúÕû—íÚ°µ[‘LRÃŸøÿ\0Z“zÌ×Y¦‚D«ŸÏ¥c\\\"ï„;İ¿\\V£³È¤vÈıMf­±’ıHP?…¶ÿ\0À$&‹:=±há;x\'q?uú5¸‰A­cèúxT(®†ÇòÓ@‘mÎ#9ìr¾\'˜)Ú\\°İıŞ\0®êSöIt×¯¸¸»xÜe¶}ñ·\\‹â„—SqÀ² giI]»¾uéëÒ¹K¥“íÛZMŸ\'Îéÿ\0]üšíu‹âcibË`Bû=y§‰eû´ì?ŞøHÕzìcø­ÒŞ\\©ù\'º}Ÿî¯Ë]Š«n6W1àİ94íJR?›ç­åœËßu++\"Ç_7•u·Ì“s¦ıP£à–lî¦4²#Éç>dGùıšg3µ¸¢@9¶«¦j³¶ù>_¹RLÍ/0õ_z%ÅHÒ¹¯üÛàt¯/™ïQoP>^jdYÏú½ÕUÓûÂ¦™öy›¤¨n]^?›Š†®G\"{Ï\nj6ñ&¹´–8ÿ\0ïŠşU¿l¿ø‡À?µí#^ºµÔ²N‡ïç&¿«‹ÏŸÔG÷ëñóş›ÿ\0Ÿ½ñ«sñ[Àğ¸:¬™d?ŞéÖ½®¼hÖæ›²jÆUi¹%mÏÌï†ôï„‘ÛÜ¦ŸõÄpİ£Ìr£¦ŸÆ¼Â[·¸êoÜE;³\"\'Îõ·âß†\'ÒnÍ¾§¥İ­ÕŸîÌo‚ğ¯Yı‰ÿ\0`_~×4·ŠÆÂêÖÂÎtû]Ô˜Ûû[¯ĞWÓªÔiÅÔæõÔãöK•Ÿ¸_ğESÕ`¯ıº?,BÓEn}cšû.•¿y^Kû |´ı›¾èŠiæLX2¬Xäšõd“ıZ¿îÍ|=i^¤¤º³Ñ§u=ü˜Ç;j16ñÌxzkî„í£{y}Mes@ŞÉ\'üôD©úÕqÎd©üø³åÿ\0«¤‰‹ÖÃ·şóıºÿ\0ÕôòêOöªO;æ¬Ê óÓ…Áßü³«vW¨d8å*¯Ê’S‘ö¿¾œUµÍÜ5ƒ}™î2ñîùÿ\0ØşüvºÍ>%¹¾’?çŠ¸)5µ¾³™ºÈû?àuÕéš™u‹Ëï®ŠjÄI=”¾Cí’IÖæ9]¾uzÅ’Ì’®2_~êÕ¶ıòàù=uE«˜›09è\0rµzŞMã$qĞÖUœŒ±¡÷«BÎl:Ş˜’/Âr21œÕ˜/ĞÕUP2Gæ¬BIcŞšBiz~¸ÏU5I›ŞõsNÿ\0\\¤öÍSlïlTUXÚ(¢¢ã$¢™¸úš}K@QE \n(¢€\n(¢€\n(¢€\n(¢¦QE¦IEGN½¸¢Š($(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š®`\n(¢„òÇÔš7SIE4E)pE\nÄQpE3¿¥ÿ\0–u6ÔSå¥:“@QF  Š7QE\0QE\0QE\0QE\0QE\0QE\0QE\0¢Š(°Q@QB`QE\0QE4À(¢Ši€Rî>¦’Š‚áEPØÚ°QE7QE0\n(¢€\n(¢€\n)0=)h°»©£qõ¦ÀJ(¢Q@áê)qî)( Š(¡°\n(¢€\n)0=)h\09¥&ÔRÒî>¦ÀJ(¢qÖŠ( Š( Š( Š(Àô$@Ï~´QEÆ™^Š(Àô ‚Š( Ü}M%P¸zŠ)0Ş¢–€ÃÔQG>¢Š\0(¢Š\07Q@ ô¢“`ô `úJ( Š(Àô\0`z\n(¢€\n(¢…Q@‚­şE.¡¤¡€™oAK¸zŠ)0Ş¢€“x÷¥ÀôPIéKè( Áô4`ú7SILÀô¥¢ıi\0QAÏn´P”QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEŠCE\0QÃPh zƒEG@ûşØ¦Òò=E%\0QNó=¨ÔÆR´±÷¡¸ç¡ S|Ïjm\0ï3Ú›E\0T”Q@ó=©ÔÕ9­:€\n(¤fÇ€Š*:\0’zEQ@ï/Ş›@\n:ŠJ( Š( Š( Š)¿ïPª:( —qõ4x4PEPEPERnÀQE&À(¢Š\n(¢‹€QEÛ¸QHŠ( Š( †á”S~ÿ\0¶)Ô0#¢Š+@$ŒeÔW[¦®ÛÒ¹;eÌ zëíÆØzN;\"Jk0=:˜sŞœY-Š•ì¹b¤,\0ãRo™¹ş*Ò×R[ìS\'-€¹9©î}©a‹–fÛŸJ$A+¨äŒüŞõ»wAknmã$ıæ$ŸaN~ó‘Ö”fF8êiñ Œääí÷(ŠñÄQã½eì-7\'œ~µvú\\¹SÒ Hòù=:*´¬„¤‘.$rj;‡œwÈüJ¿/N*½Ñíú~tŠ3/dù¾îìÿ\0!X—îL¯¹U—\'v>£ŠÖÕ‰a°gæÿ\0 ÖUå¾øg%Šÿ\0µÎ)	”üÓ-ÔïÊÿ\0ìø«6VáUK.Áüwb‹{TI$;FKòÔ\nWRV%^:ûê†Æ)Q¡—ò­[@8?…S´€Æàz©Çç[:lDºñÀÇò¦-¡§FÇj5Y¼‹P£©Èı*Î<¾JËÕ¦.¸=qÇ×^-+_şµZ@ßõäÕkaûÌªğ:~u5Ì›bEä`æ€*j—D)\\õÿ\0A®ZÔÌK1PKª±Qıï”U½cPıé,‡ÓÓms·no&˜7™„VıV’×q6Dí7”ÇûÛ¿Ûûµ<—™•_»jÿ\0ßUN†#òÛ[wş;S[@ÑØ°aİßÃşõSB@Ä¯È­ò¯İoö‹sVì­Í)·ÿ\0^’¨yÇñÀòkkF´ó6±ùWµ\'Ù.›å€BíÏ_ÈVò\0¨j­coå©=1Vd;‚“]2­óîüğ+Õ$c\"şÉ?©­»ÆÛ€?éÖ°ç¥vÿ\0à?ãLek&ktñÉô8ÿ\0ëÔöZb§È•8õ>•¥g`-áÚN3üò?Â–ÒœIØŒŒş&’@‰\"lkÆ1“V-Ÿl€¸ä*Šveÿ\0Ifss:şfš`[Ôm›ƒÜäkƒÖ/×¥as–?w‚uº•è:ƒ»Ô^Wâ™ˆìŸi’ºS½ã|<q˜¹lĞ›-ı±ä²%ßîîÛü?ò×Šà¾%JSÃ×oÏpJÌÒ7ÿ\0]œ³,Z;³±>êÿ\0Ñå×ã9EÌñÁ\'—³ÎŞ›?ÙjÊ«º**Ì~‰Øôèâó3å§ş‚µ}eßíûÏ÷+:Îmñ–o÷*äWqÚ™¸O–¢1Ğ±²Ëºy†÷¿GÚz2ÇUw´>b·Ş£{ñïÿ\0Vûè°\\Ş2GÎj›Ş3ıïŞS^oï\nG÷R¡»š=0?Ü¦ïdó)¿7™óP›ÚOö+ ù#Üß~©¼ß»«nO»Tæ?Ä´\0çv1—ŠÍñ&µa-­Õ´70Kş³Ì«Ÿ2}áDÎeõ##Æ¼Aû|:ñN½u©êÓn/n¥ûL’Ë\0$ÉåìÏå]_ÃŸşøSe$Z‹a¦Ã/kX@Úy}6ã|tãûˆ·D$L¥rí—¿ımY}Şfê2İşYĞ¦êÉ±\'a‰/Î?ÖR™D}{Ğ›jH6Çj>å-JäeW¢IóÓÑÄr|Ÿr—Écÿ\0Mõ\'—H„®;!Ìoü{şJlßıú›,{¿å¥FŠ¯!gJmT¸Æ>z‹bÇåÿ\0­ıåZ½ˆ÷Wß»îÖiY±Ü£İ[Iñ”ŞŸïÖç†µ®­£‘~ôŸqÿ\0Ú¬8_É’7ó>J—Â¬ºeÄ¶É‘¾ÿ\0Ÿıª¨?x™-Mğş¥ç\"C/ï³şÅhÁ ‰¶Á÷wıÚæ<2ò]‡Ö¿ÎŸôÎ¶üÖ–a:$nÿ\0Æ]°–„ŸrD»BlZ6r²NÀÖƒ4i¹şFşîıÕ±bÛİ[8Ş½+E±™´G,/‚qÈ&«Ú6ôç â§Œ`M¥§_\'=*³œ±56–IsOéPVsØi…QY(¢Š¤ÀQÔRÇŞ“zJ{ $¢˜¬E>¡ \n(¦ÇŞ¤:Š( AE\"¶ih+˜7QEPSaKÊŸB)3ElRÄõ§Ôt£¨ EP@ŸÇøRÑEl(¢‘[4Z(¢€\n(¢€\n(¢€\n(¢šQTÀPÄt£qõ4”Q`z»AÔRR°QE QE\0ScïN¡ \n(Ü=E‡¨¢ÀQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0Q¸zŠ(¡\0n¢Š{QC\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŒAEŠ( Š( \nôQEhEPEPî>¦ÇÔÒQ@¸úšJ( Š)>oj\0Z(\\÷£ãš\0\\‘Ó\"ÇÔÒ¥‚€qõ4|Şô”PK¸úšJ(\0¥Ü}M& ¤ãÚ€Š(Ü=E\0QIÂûPÒe½.áê)8ö ¤ãÚ–Š\0N=©wQE\0™oAK¸zŠ0=\0n¢Š]ÇÔÒn¢€\n(Ü=E%‚Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢›æ{P€u6NÔêl¨ÔØûÓiyéï@	EPRTtPRSzRPJ¹Ïi( Š^Xú“Gñş4\0#¥%P¶sÏZ}GRP9SèE*·cM¥lvÍ\0¨§Ôt£¨ fì)´S—æÎyÅ\0:›\'juG@\nzšJ( ‘›´PE†€\n(¢€\noßöÅ:£ 	)‡©¤¢€\n(¢€\n(¢“v\0¢Š)€QEXŠ(¤EPEPEPEPEPEPWïšm;å¤ş?Æ©0›ŞÇÔÒQM -i‘™.”{Šë\0ÀQ\\ß†áó/Áôæºj¤ô\"L)¯ÖLNÂœIds}Ú‡M1â º“jdv­b…kË.Õùœô§${cÔä’}MÑqæ°ÃsŒúS”~ó®ZÑ¾ÃD°¨Ÿ¼qQ\\Ë‚Ê¼’I>SÆİİ>•NvHÇ±0ZİŠì¯;–¤~aƒ÷i½g\'œ”øÁ-Ï~• øæªÜHT×š°I,s•Ràî#=3ŸÈĞô2®Ğ˜ØîçœªÕ9I>g8*Oä1W®\\¹b3µAÿ\0Ğj‹°X¤>ìAP÷7ÌBŒuı¦ZÈ…Ã’¤+útÃTW)9vÉÇ×ømÆäx\nû…	h+š,\\,	?Ë&·tè¼¤P?ÏJÍÒmÉXÀşOë[pE´\'·_Â¨h[·Ã“É¬K¹Œ„û?J½«]n“jú¿ˆ¬È–BÀü¿à´ ,Ú’¥G÷zşu_[º€gË¦GòÉÇ\\ÿ\0ìÂ¹ïê§í\0,wıìQmDÙ—{pnÑ]7;¢şAª?\"Eßóşóø¿ïš’Ş(’UbÙWeÿ\0€0İB\'ßwO›j¯ş;MoanKüˆ\0ØU·½…­[EŒ·	’6ûæ™\nbGÌ€{`U‡ÜöüÍ“Çü­Cw(-¡\\Âåğ=®—K²\nƒ¡{V>…`Á¼OCøšéáÊAN J0£µG+g¯AR~Y¨g|qß©¦&Q¼“åaĞ·Sø©Y‘Csì?RßN|Ÿ@?#QE(¹?¯J\\LykÇ^1ô&¡3ˆwõÛÏLSZç;€ôãÛ›©^˜—pn\\ù®Gò¤6Zô´äû­×êÜÕÛi€äé\\äwL×8VùFsŸS†®†Î\"m]‰äñø\nlI™^%¿kxHM¥Ùù½7â¼³\\¸¸}I–Øˆ\"‡Ë7ÿ\0Lşo–½Å×I.vap?)y§öšÿ\0ÂA5ƒG,‹xZoàM²1üé§£®ìjj7CÈxäßş=µZ¸vá_R{lßşõt·w~lÈÉû×ù>úç»s~Êk¯³_Ÿˆ¶ü\n°¨Í\"¬‹Vo˜÷7Ü«JëöYØ­ş§l›#Ûû­õ#Ã²Î9·üûÙ+$ØÈİßïy”İÿ\0ÂÔßà“?›z%\"¢v¦¦ß½ütïöª=ş_•‘C^oŞmZ<íŸwî\nkşï§ş|¿G’‹ip7Ïš§ó­ÆÚºÿ\0%¹j©4ßÄ¿~€!W/äò¶ÿ\0·B\'2ußNw_/.~MŸ%Góy5fæ4Ş?.(¹©÷jµ>ÿ\0½Nò8¶ÿ\0Ï:´ÜT_şÙÒ&^>Ò=7Égû¿|Uùæ¦¡{Â*ì_3—RB›¤ã;?ô];ìÊÿ\00£~Ç÷êèäÉl\'n>åZıæÅ=İ¿‡ƒQ¬´‰OiØÛï-7ÏHò®s¿Ds|û¿Ö%5äYe“?r³¹¢!›/W}–‘ïòşHêgÈÃ§Üª·_»=z—+…„»E˜ÆœóêAä&¯o;şîo/ËOúkQÏ¹Ç ‚?ç7Tµ{»ÿ\0{å¼r+£ÇBv·‡u²ºIÖ?0ê4ÇûDFÏü\nËº¸6æO³FßÇşÅun¸ŸÏ1ò*»WM6dké·f>cì•c#WO¤Î³¯ËÑ+•H¿å²Uÿ\0¿ıêÙĞ\'V—vı™şö«¡Õ¢Éğø(ÇëWP€k:ÉğW5¨ƒŒ÷¦„[ÒX‰zí5œõ¦A&Èä\'€£&Û—?E@Š(¬@:p(£ĞR.;PÑEîçëšˆ¤¢›\0§+v4Ú*Kz’QLœzÒÇŞ‰°íÃÔQ¸zŠl©~oj,!GAER\0¢ÃÔQ@îQE¸QE,w™íN¨éycêM°ú( tQ@è(\0¢ÃÔQ@Q@Q@QEÀ(¢Šn@QE”1õ&’Š.4®*±±÷¦Òû\0¡H}7î{æ3ÚE¬HQM½:“@QE\0QE\0‡¨¢ÃÔQ@¥\0QE\0QFáê( Š( Š( Š( Š( Š( Š( Š(¦•Æ•Ã8ëERLQEşadP:\n)0Ğ(¤ãÚŒÇ‹Z(Ü=E\0QFáê)>oj,ÑIó{Qó{Q`ô4R|ŞÔ´0\n(¢€\n(¢€\n(¢€\n(£põ\0QFáê( ŠFlRĞEPE\'ÍíJ:\n\0(¢ƒĞĞ€(¢Š\0¯EV€QE\0QE\0QE\0‚Š(\0¢Š(\0Àô`z\n( Š( põQE\0¸>†’Š\00Ş‚Š( ¯^h¢Š\0(¢ƒïÒ€\n(¢€AE‡¨£põ\0QE‚€\n(¥Ü}M\0%Q@Q@‚Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š(¡\0QE\0QE\0QQÑ@ûù¦ÑE\0Sùo÷E2€\n(¢€qõ4wã4”PEPEPEPEPEPEPEPEPEPEŸÇøPÑE\0PÇ4QÂ@(\0¨éOSI@¸úÑ¸úšJ(\0¢Š(\0¢Š(\0¢Š+6À(¢ŠiØîÛÆ3Šu×n˜4^à:Šo—ïI¸úš¤Àxè(¢~ª\0Z(£põ\0QE\0QEüĞE¡¤còŸzh¦ùÔê¬İ…#g<õ£8<p)*’\0¢Š)¤ß„Py²· ­ÚÇğ)Hõ­Š¢áL?3qŞœx^;SIãZd¥b)œ+\n‚àyò*vÎ)ì|ÇZ\"$İíZGA!\'pµ1p@ô4æ^I<ÿ\0ZŠV#…UDhIçÁÛŞ¡·‘úĞ¨KiÒ[=‡Oz´„DÇ÷€Ç4àÒ~èè)#À“wjWpNĞ8_òhÌv·b¨^¿<zãõ«SIÁÆ0£úU[ˆş@ÊIş´636rn,Hş•Fé×qŒ°Şsòÿ\0{å¡t\0ç \0¡¬[©vL	ÿ\0!ÔÛQ6(`I2€ 7÷x{K€™Ÿ¹çùÕD‡Íbz+|ß ®‡F±$îÿ\0Vî“dc·,ÙÜ{Õ‹‹$az´÷aÀè+>îà«31õÇä*†Ct““zş5j0¡{ãê8§	— çæ9úfšì¿{8Ú;»@jw!ñü9#Äb¹»ùLÓ…\'nÂ[o¯5«­Éû—Ú\\Çû£°®ÙİBşñØíüM4®&I\n«4Yş¿ŞİÅ]‚Ø3©Îô`>oÎ>Á¦hİ—k+n?Ÿô­£XĞñÀçëÁ©”†ˆZ5Œ(\nØQÇåšY\"vË6yb8ÿ\0xSŸ2!;zp>˜bÎ?5Øòî\'?ˆ¤·F®“–(ÛŠÔ@dóš§dàsÆjì@“íV‚äG¥R¼ŸËRç¦?¨«lÛ7Ö²5›-ApAÏåHw)Í(2\0X½ûs´C)>cHÇã•ÍUiI“•QI\'ğlÿ\0Zt(o“‘ëÔP‹™€O—øIıMaêWo<ñmÚv>Í¶¯ß]¼c,7mÇñgúV%Ë«¼…°ˆ3·ëò±Í%²ş›7™vWo-ÆºpGô®µ•`G|W1á¸şÑr$p?ãŸäk§¼‘b°Ë.x<~5 Dá>\"ê+cc<­Ñ+÷;Ôâ¼ñ.ßØ¡ûØîÙîıæùkªø«¬4Í˜‹„Ş}r£å®n&8µ[ÛKq¤3+ÿ\0¾ß.êv²¸ĞíZâ0şLÑSåÿ\0v¹æi®.$n’=tzêµ´{cîFŸğ&V®gEƒe¿úß÷MïXTFñ5­¶ù|ÓfK‰¾äŸ:\'üóùvş´èr‘ÿ\0ì•]æk—ó¿Õùˆ©óÔ‰¡ßòÎš›¾ëS7Ç·µ5ûõ“v-++ßû¿ö)¿òÓrä=9¤tİŸèß~ ¹ß\'Ë÷èO‘ıi³:ùõ6ÍŸv©D]÷GU^O&?õuqÓÎûµVåÿ\0ÕÔşäFËûÊ642|´íÛşVïK7úÏöä i]Ø;T»&U7îÿ\0Õü”}±ü¿r•ÄH©&|ºsíiê÷oßÿ\0ĞîŞfêcJàıbÿ\05?s&Ú>g’M´×|“òGJâûÍ¾”:~÷rÓ]Ù¾í5İ ?òÎ£Ú\0yXùäÅ7-?Íü0d”Ëõ”É<Ç%LÀS8NOª·xÆ!$«”ó7ùF«ß?–Çyó\052VÔÑFÄrïòŞ´áİZ\\Äü¼‰÷é‘ìûé/È*K3&Çê*Zê4Í/ŞÏ-„O,~]Áûé÷ë°Ñæh¢I3ò¿Éÿ\0®ÂS½·Úb–?/Ë¼·ÿ\0©]¶‰7îü¶äûõµ¢%££[†òŞ6ùÑ¶4‰ìfş¬ko.h$ıİY¶¾h/*yi÷+®/S)½±$¯­kDõ‡¦\\,ê¬>ímY11ã9ÅRv%¸A-¤ÑC®ßÎ*ªˆ1R$K+2±ÀëQ“œçÖ³¨]ÃÔQQÒî>¦²)Ä_3Ú3ÚQĞ	&II»æÅ2¤ °QMó=©Û‡¨ V\n( °hÂŠ:tíE4ÄªÄQŸ®i)¶4‰(¨è©)&áê(íÆ(£põ(¢Š;Q@7p¥V\"’Š\nd”Ttï3Ú8ÀôQEÜ(Ü=E7Ìö§P6„ÎGšZ( Š( AEPEPEPESNÀQE€£¨£qõ4”UXÜ}M%Pİ†•Â—qõ4”£=³š”Ãq|ÏjuGE	\\±%ÍÇÔÑ¸úš‡ÑMó=¨Vìh°‡n¢Š)›©¡ @è)›©¥ó=¨åÔQE \n7QMó=©´44‰7QE01)U»‡Tt»©§ÓJåE\0è(¦NG­/™íCw‡Q¸zŠo™íFáéE‰”S|Ïj7nãÍ&†ê)¿òÎŒÿ\0´iØC°=5—ŠLCKåûÑ°Ğ|Ô¹oAL§yÔ jÃ¨¢ŠB\'Ò›Ú™Nó=ªš~ojZMãŞ‘Ÿ#\0R°¦n>¦—Ìö£Ìö¦“\0ûşØ§S|Ïj<ÏjM0š¸zŠo™íN¡€pÀ€h¢ŠM€Re½-3qõ4Òû‡¨¢›¼ûQ•ô4XãÚ=©¸´”ÒJ(¦îÛÆ3Š‘¤:“ê)7Ÿj<Ïj!~ocF[ĞRe}_CNà…Ëz\nZnóíG™íI‚C·QFáê)›©¥Ş}¨ˆh¥Ü}M©­D& ¢—qõ4”€(¢Š\0(¢Š\0)wSIE\0QE\0c=¹¢Š\00=Q¸zŠ\0)p}& ¢€ĞÒQF  —ĞÒQ@Q@Q@Q@&áëKE\0QE1…QHAEPEÏJ’€zu7Ìö§PEPEPEPEPEPEPEPEPEPEPEÖûâ€RSdíGßöÅ\0:ÃÔQE\0GR†£¢€z<Ïjm9a@£$Ñš(\0¢Š(\0¢—qõ4”\0QE\0¼õæ’Š7Q@Q@Q@Q@n¢Š\0AE‚Š\0(¢Š\0(¢Š\0(¢Š\0)²v§p£Ğ\n(¿sß4ê( Š( ùÔ‡©§ÓS@	EPEPEPE†¦@QAèjPÍŠËØRËJqÈ¦7aNá‡¨4Õ^æ†ùq3@¤lö¤ÚŞ´¼{Q`ƒĞÑM^ùıi »ŒóŠ)±KÃPh8ö¥¤û«ô¡›\0_½:Š(ló³êi´¬Û±ŠJ´ERr\0¢Š(rÂG÷R©ìEl×=ákƒÎÓÑø®†­ìˆ`z†bT`š”·Ë‘U§“t˜«‰,TUŒdô4ãó3PLK8]Ãš˜ŸÈUµÔM•Àì:uª³e?O;dqš„e¹<J¸ ±ãù‰ı)’®XÔTÅ@9ê2‡å\'·5wŸ•½Ë7·JYØŒd}Şõ®C÷rp((níÙ#æ\n*µÑsÔxÿ\0TåÈ.ª¼ã¥V›ªİ€ÿ\0Ç©FóÉîGåƒXÓáäFã`?7ıóZZœë½À\n?^•‰)}ĞÄÛMú6h°›4ô+a:¦Ieufºûkp®>_jÃğ‘0#·\'ùVä³ÆÜhC#»›*@ëŒ~u›}>1Üã§¯ARÏpst_ÿ\0]U¸$²¨Û	Ïà(5\"1ŒòÍÛÓu5åıÈü|gØæ¡v¸àÿ\0³S^P®¤1P¸©›+[f¹‘UW9B¿šTzU³ÜJÒõ`’?½Ñjk{uiÙ·«·é°Ö…¼&ÚØ…]£¿Â†ú—Rh•P(wÑ¹ªÓ±h2pGŞëV23¼@ÿ\0¾ª·ß¸rG\nSŸä*QB™\nDtlí•â­èĞ‹\'«~µUcûL¨œìL÷Ş+kNBñü\'?­TD_´L ùzqV£ÿ\0\n†|¼tïR–\nÀwZ±Xl³™9Åsú­Şd$|ÛNäElj/åBÄƒò‚!\\æ¡1.~ûœş\0ÿ\0õêd4RåKÇ÷ƒîıTéSÅ((ì~RÍ‘ôê+#S»hCcä?wÿ\0Àı*G¿Q`ªù_›òÅ¬.Ow©¤NØÎŞ=ŸÖª•F|¶fa»ÿ\0AªÓÜy‰…Më·vßï©^QVl10VT+ş&o÷ZªÖDŞçCáÄ¸uÚU€Çùü+[\\“e£©ş%?ú	ªŞ‡\0’>é4ÿ\0JV·¯Aø‚*JG–xù%Ôu3O†}Ã÷ËSXúbmOŞy³:³3ÿ\0ugUZŸÅ—òM«;B‘È™3ïù#_-Aıj³!³G·ßå¥²6Çÿ\0vHöÕIl(½lfxÂh¿°äXAR‹÷>]Íº³m~Ïòæ¬xËÌ7Aæ¬å6²Ô–h¾]sKstìI	‚Î?´I\'î£ŸşÛWÿ\0¨v3É#Iıö­‘Ãi<Œ<Á±v\'ûUG~ÿ\0•©8ƒwòôó>zl)çGÖ¤ŸÚ¡ù¿‹îVbşõFÿ\0íS·ù|zQşÒÔò»¾ßŞS™¤òşY>zY¾ı#ºù/Üª,l¿êOû•]Óı4©>Øÿ\0€T;™Ë\'Z™\0çü¶|”Ù£Ì-üt?÷^£öjFÕ†¼Ìü-7üßúG &=˜4ècıçûu”I?7˜\n7ù—>oï(x÷Ç´ıÊ9ş¿Z$\0é³æÅG\0o3åÄiRlY0÷)¿ìĞĞÿ\03Ÿõ”ÙÃ\\E°ñN›şı¼uÀó!,0j\'Ğ¶Õ\'2ÏJY$f˜\'<ò˜6y²Ô$ä“ª!æ«O‰%*™«¾AÇîŞ —ù:â©+X¬è#Ã§“#Ÿ‘Ò¤†@—D`‡4ÇELd|”Ô»ûOü²÷ê±mXÖ_²k÷ıûˆÿ\0ïšì¼/rßkòwÂË½ë‰»/R³ngîöjêô)”jp,dù*é0nçWdT–œ¿ğU„–WŸr¦ÿ\0Ÿzoÿ\0–uíæ!?ŞßVmóö·ôş:ìJÆGKáÛÃ\"|øû«Úº}*O”C\\^ˆË»/Ş5Öé³mN>÷z¦f[Ô®>Ïd$¨œ{š•KSnbI’2ã&7>¢Œç¥g7°uàÑY¦EQp\n(¢Æ‚Š]ÇÔÑ¸úšEÜ_3ÚÃPj:QÔP&‡–­İÌ:Ó¸aê´\0äE ¢€LÏJ(ïÖŒüİy iŠ9#=éõ(ê)¥q6>Š¤¡«(¢ÃÔR\0¢ÃÔQAIØ(\n( I†H¢Š(Ô’ŠŒ‘@¬IE3qõ4”DwßöÅ:™¸úš]ÛxÆq@4:Š( ¢ŠoÍ@ÒE\"¶iOC@X(¢ŠQE\0QE\0QE\0QENÁEP>`¢Š(aES»Xäæ’Š(¸4QE&ÆQE…İòâ’Š(l„ìQE\0‚—qõ4g=ri)¦]ÇÔÒQFH¡;ŠzšJ(¦¤&¬(÷ÎÚJ(¡»Wqõ4¹_CM¢‹ˆ)wSIE¡¦QEHî Ô”SL‘wSFãêi(¡°\n(£$RQEÕ‚â…\'¸£o¸¤¢•Æ.ßqF¡¤ÀôSLVD”ÃÔÒQBadQE!Ø_SM¢Š.EQp\n(¢‹°\n(¢•À(¢Š0¢Š(QE\nìŠ(­ÇZ(¢€\n(¢€\n(¢€?í\nZ( —ĞÓxö¥ Š( \0ç·Z(¢€qõ4”Q@‡¨¢“j\0\\AE‡¨£põ\0`z\n(¤ãÚ€ŠoËN Š( Š^ºi0ßİ4\0QF ¢€jZ)7Z\0\\ã­n¢‘[4\0´£¨¤ÎzRî>¦€Fáê)ƒ¨£\'í@¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(:(©(\0£põßùgN ›÷ı±Gû´ê\0)²v¤Ü}M*îÿ\0õĞ¨¢Š\0o™íN¦¦’€æ{Sh¢€\n(¥=M\0%Q@Q@Q¸zŠ\0(¢Š\0(Ü=Eß¹ïš\0uQ@ûşØ§QE\0ßöiÔPHW,¥-6NÔ\0êAE\0n¢Š( Š( Š( \0ô4QE\0QE\0QE\05›°§QQĞKÊŸB)( Š2M›\0¢Š(nÀÙ;PĞ¢›æ{S©HŠ;qŠ*@o™íG—ïN 7Z\0Òû\0R2î¥¢•À8aêQ@\n=\0¦ıÏ|Ó˜àfšÍØS@Û|Íì)9SèE¨§`vŞ1œS©»G­ ºR°óRnùqG,}I¤ª°\nzšJ(¤İ€(£<ã½ gh£põ -éù\nÇŒk«WÜª}k·}²WS¤Ü‰ìW9,£µƒĞ‰\"ÄÍµ@¨Pw=éÏó¶nj+‰|´b:kÑ`Eİ)nÀ`T…‚¯4Ôc©4ÙXõV¸ÈÜïİéJc9ƒŸÆ—ãïUŞÂJã@8 ÔMùíëR¹ûÄÕ^cµ@íÖœP¢Ew0#=ÕiÜïZYØáùâ¡	ù‰ÉãúSå;P·|Jc¶ØÁÇÍ‘ús|Ûùöı*ÉpŸ/¿ZE×ÌDÙ=>\\{u¬{×Ú”h@Üw~«OWÕ\\©ÀÛô&á« eˆâ_ñëMï{V•´±_ïcúTwìÇŸò*ÁıÜaz`U+·)ÍÛÿ\0éH²	˜:(nÜŸÖ©MuæôûØüE]`:±Ïá“Ub”Í6ĞGÉùôÁ W&jcäçô5¡‘ö}ŞrOÕªh²F7rOà9#!‡şÍ@ÊqÇ›µ9pÇİèjÚ®èœƒŒõì)Ñ[ˆˆQÏoæhUm˜+·¨ÇÔ\nM	!²¸1å\\õÍU	´m\n¡»ş$æ¨ÜÛ\'ùÔpC¿äH$ş&¥·¦¡ó7ÿ\0Aâ¶lô÷æ©iñ\0¿ğü«RÒ2›±éVê\nzF~qÔÒg»T3MG^ZwŠú¬¹Âıàxüø®sU»P\\¯ßPQqî3Zú…Æã¼7Üşb¹jõ¡GØ»Yz7¾H©hfeÕÆçeã}Û¿ØnÔŸkıö…?ıuB)ÊGï~T§ÚOæE¹©0p4’à-ú.ş›•›şW4˜¤™ÕIÜ¿îüÂ³¢eÑ›bGÿ\0Ø×C¤ÂéYOŞüA¦Ù)F‡ŠÙzçã;ñi	bÀ*•ñb+zÏ÷vØ•ÂüZÕ6×”_ªºãùĞ•ÚA\'¡ç–WSİÃrGÏ¨4öÍFê.Îµ‘¤MòÍ¹?ëšşíªÎÊÇOû7–ìgšÿ\0Á¸ğµGT–KŸ.D“dHŸÁşÔı9¾¡Uİ&«·ßÿ\0j½lƒËô5F	¾Ù¬]ÈÑµ-¡ó-ó\\Ñ^õÍ‡\\Ûl°I÷›İ“şùÛUQ:óS]¤Î—ÈñmGıÏû­·ÿ\0İP¾Ù#ù’‰\0Çÿ\0ULùŸËÇß©7ïùvP¯ò¯zÉ«ÕÈi³.Èşj–gıßËÒ:­s1xşlÒ(ÙŸn*4mÿ\0/Gşå7îIGÊ™ıæ|ÊÍ6QÏ¾LGòŒ/@~å9Áòöã¥FŸ/Şª$ÛıüÊ‰ĞI”ÒaéèŒŸ2Ñ3«ñüu1O¨ÿ\0»OØŞô¤ªH6ÉÉşış&^:”€<ïàjwÊŸtS@òâù)Ğ¾É1üMXşySL›2{ì§\'÷Z£y’lÇîéX¸n1å-0â—ÌòşbqI$ˆbÿ\0[ƒG™æEŞ#XØm\\Häã¨‘ê7÷ÿ\0¥K³ù”ÙwÇæŸà¦ãc1ÿ\0#ı$¨ncVN7Ô†$Æô#ŠfôòúRH§Ğ®ïN<ºc\'R(¹ÜŸvšdN×~ö”¢i{Ü‹äÛ7—æyn•Òhs—Ô#İş§z×/¨Ÿ+Ã÷åù‚ßû•¿ L³ÛA\"Ë,Ÿv®š³°š;âû.ø~îU×¸–™„[+>ÑÚâH[÷q·ß§\\jH7ÆØŞk©JÆKÈÓ³•£s#N\n±]–›vcaÆkÓåÙ5né÷eöû¦¶QW:¤—íP²ç”ñ÷WëUtÙàúU¨ûÖ3$uß/Ş¹ïšÈ,:Šl}éU³@4-QEÄQE4À(¢Š€_àüi(¢‹¤;wl{S©²v§RØ(öæ™ËRiôV\nMÃÖ–“`÷ Š(¡°L]ÇÔÑ¸úšJ)ó‡yÔáĞTt»©¤;.ƒ•³KMVìiÔ	 ¢“-è)h‚Š( .‚Š(ì»²sIEØ)wSIENâî>¦’Š(XŠ}GJ¬Eh}Sô*	HvqÖŠ)¾gµ\0ê(¢n¢£ iQFáê( AEPE‡¨¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€¸QEÂŠ( Š( Š( .QE\0QE\0QE\0Q¸zŠ7Q@ìQE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(£põ\0QE\0n¢Š(Ü=E\n(¢Q@Q@n¢Š\0( œš7Q@ìG¼ÿ\0xRgı¡IòÑæ{V‚:\n)»›Ò@¸úšJo™íN Š7QEpÜ=E‡¨¢Š\0(¢Š\0O›Ú—ŸQE\0sê)0}ih ÃÔQE\07Ìö£Ë÷§Q@ùiÛ‡¨¢ŠáEQp\n(¢€\n(¢“@QE0\n(¢€\n)8ö¥ Š( Š( •XŠJ8P4\0»©§Óˆ¥ó=¨ÔQQĞ”QÂ@( Š7QAèh\0¢Š(\0Ü=EÖnÂ“qõ4\0¿ìÓiwSC§h\0f-Æ)(¢€\n]ÇÔÒQ@\n¬E{ÒQ@¸úšJ( Š( Š( Š( Š)ß\0§¡¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Šnîøö QE\0n¢Š( Š( ŒAE\0QE\0QE\0QE\0QE\0QMó=©Ô%G@Q@QI»\0QE	\0S|ÏjuMØƒĞÑM õéIjÀTéIşõ!êi|¿zlQMó=¨^øıiXRáKFáê) [4´Öù±qN=;\0Ù;S¨¦ıÿ\0lP©¿w¹§Så¾à¦Òœ÷Îi)¦K¸úšJ)¤ET¶ER\0¢Š(U¶kk@¼Ù&ÂpùÖ¶jÅ¥ÁF¸9pzê&¤c$âªå·@\\ş5%œâ{EqéÍ%²ye¾fbI®„ìdÑ.æ “xíO-ı* v\'*¢¢DÇ´æ8Óç¥ b‹âH®S˜üÀ§¥\\nAª3ı8hH«!C‚£RİÏJsI=ÿ\0¦*7ù°	ÆOøÓlhRvDŞOó5ZäŸ›š´í»¯NÕZãsr02:~†dŞ…ó?N=wV—‡l„H¸ïÿ\0×ª†Ü<áÀÜ>»«cOO\"(Ôÿ\0´1§$äŸLÖV§vF@ëÏ€5¡w7’…›å+œ¸»î,6ç ~\"†2.C°`Û£BØÿ\0kæ&”…ÓqêÌsŸL‘Uâƒ±?.Xç:f´-ø›õRå‹0ÃÕ	äà~•4Š3ïÌRÛG‡$õ\0~†q÷ùäQa2_ö»şµÌ»!|ñ…?¬É	2s»ş†³õ€±H\nî\n‡à´0)ÊŸé£ısí’*õ„%ˆaüdsøš§m|œ2?ŞäVµº}Ğ£€Æ„Ä‘jÖ 1Æ;~• ¤í?/cùÕ{PzúªW}‘ƒ÷x¦0¸`NsíU%›.<uü¿ıt’Üo8?(Ï5Nòàìp½H?ÈP{Ûac·#şqÿ\0Ö®;Å7E+8Ãn?ğ¹Òj7b)‚Xœò>¿ızã5ËÁs~áxTÚ»¿¿†ÙN,MóJ©&ß3Ìåª{wÎÂß ß¿ä¬ÿ\07Ï•qSZL­÷†Ïàÿ\0ªd¥s¤Ò—t¨€aRº¼²àeù…rV{>Wûÿ\0İüëµĞ-–»W\n½)1§Ğİ8Ü€9Æ+Ï>!J—Ä­¹İÏ€®şùü«2q^aã5—S»’y9v3ïcÂ²î§ÂLçíäKPcŒ[ZÜmO÷·.æüwU[‡>Xÿ\0ÕAüÿ\0í|ËZW–FË@¶i„-,²ÿ\0ÏM¾^+\'Ä³G¦ér2şóÏÜŸğ/2¦£.:ù‘‰WşZVÔ8Hÿ\0ë¥eéIèkR+•·´ŸÀÿ\0sşzV1ObÈnnî:HÏï>}•\nB©}yş\nvÆó?Û¦ıÏ½ÍØì_3å¦ïó¤ä¬§?Ï\'¯ÿ\0Qïşì†:‚¢5ß÷Rnÿ\0r¨¸ş,U‰îÿ\0ëWŞ¾_şÉS\"ˆÑËÚ±ÓfuòöóNggçÿ\0Ô3>÷¨JÀÿ\0yòç5dÍ»ËéHd)}©±˜Ù,ĞÒ{?ú±ï¹QìØ÷ÒG\"yQó„¥Ş¯%LÀ<¶Oº~ïĞû~ñéHÍægšzËMµ	ô\0Ş,ñ²›z„ÿ\0ÇéŞg–cDïZJ7\0tŞûùâ—şZüÙ¨§>sŒ¿GÏÂ~ò³¸ûÔ7v‡şZÿ\0¬¥ó;õZ^ß»Åd‹S;ùÙD8zd¼—ıPiğîÇÉÒ›\'_ö?­«67Ùú¬ĞøŒÿ\0ÏJHîÎ÷$Ôo>lœIjM›KqòFÖ¡–1Àô4Û|³º’BqtyhH€ÙÈ¾_™ò5jøx$LxıÚ|»+>Õ÷¿9ÙSø_t1IfD·û”Sz¦=ÎêÂçÎÿ\0–ç¥w_´|½jªöbfä©åoß†òöVéØ‰+uäì‹fP\'É]„©4ˆQ6a+²ºgt*k¸ğ”F[eoâjÙ;™=MµòbÎsÅXåO¡ûÛ]¦£¥\"æ{Sh¬M$¦ùÔÚ(‰ è(,Z•›v8é@¹GÑMó=©C4\nÌZ*:’€jÁEQq.ãêi(¦˜.ãêi2Eš-;ó=©ÔÍÇÔÒP¤œ(ôÃÔSU»u´Çz(J;sŠ\03Ï½ŠÙ¥Ïí@Ö8¥*“œ¢‚Ğÿ\0¿íŠ>ç¾i¼(ôŠ/BJCMÊúMÇÔĞÄÿ\0ni¾gµ&ãêhÜ}MHXûĞ­ØÓjMÃÔP6ÂŠLÇ‘ÛHuÍÇÔÓ÷Q@ÛĞQFáê( ‚Š( ¸QE)Şgµ7§Š¡wSIE\0ånÆ¸zŠ•XŠâ<tŸÇøRÓcïA(uß3Ú@47Ìö§\0Íß3Ú€·axö¥Ü=EJä”Tt ‘È 9GÑœu¨êMÃÔPX)›©§î¢Š‚Š(Ü=E\n(¢€\n(¢€\n7QE\0n¢ĞQQĞ4®I¸zŠ7QMÜ=(ùh¥Ü}M.áéG™íAWqõ4úo™íG™í@š¸ê7QMó=¨Ş}¨Û‡¨¢›¼ûQæ{P£©7ZO3Ú3Ú€°íÃÔS|Ïj]ãŞãŞ€H]ÃÔSsşÍ.ñïI¸zP	‘ıÓùQÇµ&áéFáé@¢Šk/q@êo™íIƒèhÇ¸ j#÷QMó=©8÷§ĞXnæô¥ù½©•%\0ÂŠ)7Zai8ö¦QAJ$”ŠÙ¦Q@¹I(¦n>¦ÇÔĞ£è¦\'½© 9Fcıª]¥¹É ÒyÔêÒäÜMƒŞ–ŠFlP$‡­2æ{S·Q@ÂŠMãŞ“Ìö Q¸zŠ( põn¢Š(\0Ü=E‡¨¦ü´ê\0MÃÖ—põß3Ú“qõ4\0ıÃÔRn´İÇÔÑ¸úš\0vñïFãèi7Ÿj]ãŞ€Ìö§SwAFáé@¤Ü=i7J>Z\0váê(¨è 	)¾gµ6Š\0~[ĞRÔtP¾Zváê*:(wSFãêi7³F}\0II°{Ó( L’ŠŠ¼±õ&’Š\0’”:Tc¨§ĞE‡¨¢€$¦ùÔÚ(Jo™íM¢€æ{Rn>¦’Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0)¿sß4ê(\0¢‘zšZ\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\02qœÑMÿ\0–”ê\0)»¶ñŒâE\0Ù;S¨ ˜zš7SI@QEÀ(¢Š\0(Ü=EPu%p£Ğ\n†îïÍ7Ìö¢NÔ|Ô$iwSIKÊŸB*˜14¿òÒ›K¸úšQº\nw›©£qõ4¬¸ç4¬İ…&ãŒv£•>„P\n­ØÓ¨¦rÇÔšV¸	E(ê)*Ó\0¢Š*PQSp\n(¢€\n(¤ş?Â€Ìö¢NÔê)ÜÉÚ•ÑšO/ŞùgLmPÚ2x~?Úœ€«•ÈE!‹‘[ÚuçÛyAÈ­©Êú2\'Ì®ÎêTM¨÷©6ääšpñÒ·l„»âBóÒ”õã<Ğr8=ªYCY°3T&É$Ÿâ5zS3ĞÕ+°@ã¥h…rœÃj=Oÿ\0Z£$eO¿øÒÌNÜÄãùÓdÃH<!äûæ‹2æİôüE ù“sÍ¬…z©~‚šÌÃ\n­Ë1?Ni\0yã5;HäcúSgp©“ÔéU^B7dñ’Qş4­u½9:Ë~] ìúõ«·¾E=—“ùS?3°^\'?ˆ4+5‚ã†©Uëx¶È¤Á?Ê‹h<¡œ€¿™©­T|¹S‚3ôâ“¨Ú0=yúR<ŸÄşF¼á9ıi“;şµ\0CpÁFî£Ç­a]»!~îòOş;[L[\nıñÀúš¡EÛw\\ä}2¦„&‡ØB©/Èç?ÌV”j%ëÏ©ëU­ãTu#¾¼Š¸§’J‚3Ö•†OŒ{)Ò¢¾¸ÑsŒúŠ_4$`€géÒ²n¯ù-İˆÿ\0Ói.T–cĞsŸ¡ãT®.ğÙİ¼ãj´Ú†Øn\0›éŒÕG¹Y$[pbv¯°9ş´XW\"Ôn<¡3óm¿ïÍr:½ßšîÇ¬nÈŸîõ­}Jø‡Ç÷?ıUÏ^1`sœSVÈ™şİıÚ—Oˆoäùÿ\0&¬íû­ÿ\0Û«šd¥]7}Øë8î3°ğìj%@§î*ÿ\0ìÂ»=¢’6œ×á]®LŠw£…uük½Ğb+çæ\"´kRbK¯\\µ#vOÖ¼¦ü\\êzû-²FVI¾Ë!û›#2¶ôŸ1—M5áŞ6Dú•5Éè™YrcÛ/Ógøƒ.ª.×`ÕØkzz®ÑAR¿Oşµygˆî|Ùã¿å£³×ªx»SšhÚr¿ú+Èõ‡ó5É#|±¢Ö»7§±kOÛåüÕ¥%´pé³HŞWŸò¢\'ûU›eò¿R^gúÄÙ³ÿ\0f¤\"Më÷ªs\'÷)¥¿Õ®i>mÿ\05L€‘›ÌÏ5İé»?‰yQïıäÜ?~¤´î2gıŞÚ­òşïwü³©&ãåoŞT/7z™&uxêº|ëRÍ·øzÓ<È°ônQK²,\"Óğ[îR>~àòÎ¤6É.şì”ŒÌÿ\0{¥:=Ÿ»^)ß,2nş\nÊNàFˆŞV>]:ÉGËÿ\0¡c’=£Ëàµ¸Ò¸ï,tÿ\0Xc¨ßäÎÚwü´¢<ÿ\0Z©FâŸ.-ÔçıçÊ±õ¦Ï±â;ñG™æ|Àæ²`E,[°	§ìêîS¼„?÷”ÑÄâ€\0RA”9—\'¨©¤Œcn?ÕÓ$ŒKà>•2¦,³ƒI\'ü|¥>_ŸäN$’šûYsÒ¥\\ÿ\0«?Jƒç.øŠ¬É#Iæ9ûæ«>×0¿~©«»š¨ÙX#“ËÁ?òÖ¡´œØkwÜ‘7Ô×ÌÃ¦xªß-æ­o,¼ş¨¹tÖ·{‹á«•ŸFÚ­\\¾û—îVg‚v¦‚!o¿ÖŒßñ÷ÓÌHëx½Mô7¼?n·\"·ÜÙ½+½ğÜ>R Œ×á›…\n‘·æ®ûDÚÊ»zWD^†:(³‡ÕJ»dH‚O]¦©Vu0=&ï›Ê]ÇÔÔ>ŠD$ç=©h&ö\nUb)( ‚Š(  ¢Š(wSO3qõ4n>¦5qôTu%µ`¢Š‹‚W$¢Š)©QÔRÇŞ›E	\\¦ô$¢£¥İóf¬>ŠfãêiwJÃ¨¦n>¦•~ù E7pô¥ş?Â€°´­01)wnãÍ¤ÿ\0f¸zŠ( NAGNP.`¢Š{œĞSaK¸úšMÃÔRäã¨cè¦{RùÔÊ:Š@àõâ—põAEP	ØCEn¢óáê(İÆyÅ7Ìö§n¢¶QErÃÔQE7î{æ‚‡QE7vî1ŒĞ	£$Q@`zPß3Ú@R+f€ŠFlRĞš(£põ\0Rî>¦“põPJ””Pqõ4”Q@n¢Š\0(¢Š\0)wZk6)wQ@X]ÇÖçéLó=©Ù>‚;ß3Ú3Ú¥Ü}M3Ë÷£Ë÷ o÷£½P+¡wSILÜ}hÜ}hıÃÔQ¸zŠo™íFáé@¢“põ¤ó=¨Ôn¢›æ{RüŞÔbÑI»éùÒyÔc¨¦ùÔ»‡­\0.áê(¤%O^i7A@Çµ-&ñïI¸zP¨¦–ì(ó=¨Û‡¨¥Ï°¦ïô›‡«Pš)¿÷Õgµ\0:ŠfãêiÙoA@E&29›G¨ ÑE‡¨­Ã9éEP¸zŠ(¢€\n)>oj\\A@Qè(\0¢“æö4´\0QE\0Qè(¢€\n(¢€\n(¢€\nCE\0QE\0QE\0QE\0n¢ÃÔQE\0n¢Š(\0Ü=EQ@	–ô»‡¨¢Š\0(¢Š\0(Ü=ERl9éRTt£¨¦”ü£Ú–Š(\0¢Š8aê\0Qè( Š( Š( Š( ŠCE\0Q×ƒK´çè¸	EPG=A¢—ĞÑpŠ( —ĞÒQ@)Ş_½6’`QE0\n(¢€\nRëFqŞ’€\n)p}%\0QKƒèh(£ôæ…õ4¹‡a½G#­RàúmˆJ)@ä‘IJàRò§ĞŠJ.ES¸ŸÁøRĞE‚“Ö•Çai¾_½_½;ĞQt\":’ŒAE@›¡¥¢—0Áô4²v§Rl¦… E;Ë÷£Ë÷§th©*:¸îRàúJQQCL‘—u-mßşªCÔÓé¥=4Àm¬¥hÁô5WBQKƒèi(B\n)p}%\'\"”B—\'í@ºRQqX)wSIKƒèhL°s×Ş’Š(Rˆ§©¤¥ãŞ’šb°rx¢Š)XAET´E`z\n\0)²v§†ƒĞĞÓ#¢zOãüh*á÷›ëSØ_5”á‡NãÖ«ÑMJÌ\\§Qir·0‡^‚¦ïüUÍØ_=”™åî+~Òí.b§®¨ÎèÅ«7=óHNG4QÁ<v«‹+Çz¥p„£³Ó5uÉŠ­*îCMZ&&c®%ç8Qš`ù¤-Ÿ”gúU›„À\'¶qTæ`c§şTŠ°Á?çœÔ`søùSãß<~tŒÛvü¹Ò€#olº‡ÔT¤ÆsOä*Bã)RXä~uï3ŒğÃ\'õ ‘Atápxü3I\"Øör*P2Çœ?CMÁ“`(ïøæ€PããRÄ1½€éÒ£KŸ›Ç×\0ÿ\0J‚a?\0z9dR:g?‘¤‘ˆÔóúP£ˆÔuàÒ¢¹bFìôéù@®[æ+úÔp®Ä~\\óLK¼.öe9?§#š‘€ŠÙ#?Ï4œ€|y.{g?†1R¤¤ä7¯øÕe—nâ[Ò˜÷;T±m¸ã>¼ÿ\0õèºukÖ[6T\0»ıßÈÈ½¾_=û«ÏëLÕ5erV>J|¸÷èkûRr›†;ºÿ\0õ©¤ú‰²Ôº¸bÇJù7üU[›å<µàº…_ûçšÎûxÆì|ß3±ÅU½¼‘\'}¿t\'şÍV—a;Ø}åÁ—ÏEöÓùÖN§p»÷GşÕMqqó¢«òûSıÊÇšé^I7IşÂTIj\\Vƒ¾Ò©&X¶—ÉòöôÙÿ\0³VKŞ6>µcM¿ó®#fùÿ\0ûT“ÔG£xD¬ )ÈÛ^‡¤(KU=2+…ğJyÆŞŸ-w09ŠÔö«“Ô˜£Åº¢Ûœ³ÚAÛß9ÿ\0\nÁÓu8õE1Ÿ1V3½Ö¨ü@Ö¼½j4Ë\'çou«ÚˆÚ\\—IEŸ¼Ùÿ\0&›¢˜\'vaøÂøß]KvGlõe¯?–o´jÈÑÿ\0%mx—Wh–y ®VÊn7‘ågç¬¤õĞÖ+CV¿yÁÿ\0WH#û,—\nÒy#ïÿ\0®\'İZ¦“7ğÓ’fy<ÆûçïÔŒ¸“uİËÓ]úT.ê¿Çşå9g–½“WISåşê¦ÙoÖ‡¹gó?é¥BÉægŠ€3ïùj1^B‹SÇ–¿ÁQºlùª¹iÜk¿ï>jk§NjGù=ê7ïHa¿hùsQ}ŸöéòH|Ÿ’›æyŸpŒĞ‰¶›>?yŸ¹Nù|Êkîüj&\0Ÿ¼ëÍÚn[µ7ı”¥óSÔTÆ7ïòü´Ø÷à9ÆiÎı(%SïÖ G¿ÊôíŠŸ<¿»N‡äëÅbÏõf™)\'/OM†M<ÃMæIFÎc¡%a‚ä<¸Å4Iå’ı#©d‘<¬sLYœ°ÂVA-„I8ù˜õÿ\0ÃS8ùñ¾¡—-6Î˜§k327İ°Õ/Ì?!ùÿ\0å¥Y‘¯üõª×~ğ;ùiD¤/ÙÆ~Llÿ\0–••¦Ø¨¹•ã=jóÃû¿öş…MĞtÑÌ›8CR·5¦Ú¹×ø%-§İ÷äz×•6\\8³ü<A8Şÿ\0r´ö^H»>xët¬¬sÍİ†yºFdıÓ§Éşğ®ûB;¶û×xvi#x“åİ¾½CmÁSŞº!±”–ÄŸ%Áé´ÿ\0*£Zp\\²k9‰ZŠ‚H]ÃÔQMİ·Œg›½…dÙIX0}>™»ØR—\'§&\\uİÃÒ3Ú˜¹GQMó=¨ó=¨C¨¤^(Ü}Š( \\ÁK¸úšJ(0»©¤¢Œ‘@Óæ{Rn>¦ÇÔÑ¸úšú)›©¥ó=¨\'”vsÒŠo™íG™í@4:”E3Ìö£ùÅÔ r)›ÿ\0Î)wzÓÙ<ö4n>¦™óS·QEÂÃ¼ÏjE=qLó=¨ó=¨£©Şgµ3qô4gµh›põvãáê( ’J)›­\0‘Ò€°ıÃÔPzfãêi7üÔ\"J*2ÃÔS·Ÿj«Î:dRï>Õ™íG™í@¢£§o>Ô=XŠ_3Ú£Ş}©7SBbh‘Ì}¨Ü}MG¸úÑ¸úš‘&ãêi|ÏjÌö ¿¥­Gäã©)»ÏµÈëÍÉÆ;Rï>Õ™íG™í@4HÏ&“qõ5ãŒR—ô‡î>¦ÇÔÓ7Ÿj‘×š\0~ãêhÜ}M0?¨ ¸\n\0“Ìö£Ìö¦oôo#±\0ÿ\03ÚQoôoô\0ôny4yÕ™íG™í@X‘›°£Ìö¦oôgµ\0?qõ4»ÏµGæ{Q¼ûP÷ç½©¦o>ÔyÔ\"·cDª=ø\\n£ÌoS@f&’˜X´»µ\0Øê]ÇÔÒRqí@®‡n>¦’›òÑòĞ;§+zš#ĞQ¿üâ\\š“x÷¨·ÿ\0œQƒıáùĞ¸úš7Zqõ4n>¦Ü“Ì÷nŞ¨÷SI@\\—z­G¸úš7S@nZ8õ5.ãêhMÇÔÒSwŸjMÇÔĞè¨éwZ\0—Ìö£Ìö¨÷Ÿj7ŸjÊ‰<Ïj7Ÿjyö¤Ş?Ù ,‰<ï¥.óíPÑ@ìM¼ûS7zMçÚçÚ€Hz¿¦))›© 1PüÏöJ<ÏöJnóíFóí@ÎyëE3qõ¥Ş}¨ÔQEV¦aE¼{Ñ¨	EQ¨Ğ`z\n0=í‡Ú– 7ĞQè)Ûµ6…p\n(¢ªìŠURÔ`úZˆJ0=.¡£#ĞÑ¨	è(Àôì/©¤Áô4+ŒLAE;hõ£êh»ÆÑKƒèi|¿z6Šw—ïFÃíJâEU€QNòıèòıê[¸‚ŒANòıé0}4ÀLAF §l>Ôl>ÔYŒmQIDAHËº°zŒCT`z\n0=;Ë÷¥Ø=êS”S¼¿z{šJÀ!cŞ…RÔügÔ÷ª[\0R*í¥¢˜ï/Ş•Wm\02Š’ŒA@ÑR`z\n0=\0GEIE\0GEIE\0GEIE\0GRQE&®0}>†ŸE0ƒèhÁô4ú(˜>†Ÿè(¢€ƒèiø‚Š0=&€0=‚Š)4À0=ëEĞ £ĞQF §Êè(ÀôQG( ¢Š*@0=‚Š(¸ £ĞQE\0Àôß/ŞE	€QE\0QE\0ß/Ş/ŞE;€İ‡Ú“ĞÓè§°ûR`ú}Ò˜>†”¡9§QRØÁô4`ú}60}%Iè)wPš¸>†’¤Àô­	 #¢¤\0/Jo—ïB°£§¤¦ıÿ\0lP6z6z–›åûÑv6zO/Ş¤(GNi0}5pËE&ÃíN¢Ú=E!Céš}‚‹O—‘Å.¡§àz\n¨¢ãC\nårzRl#1RQØ¢à†GQM(N*Z0=$ÄGè(Àôï/Ş—hÆ(è(Àôï/Ş‡Ú…r=­ëIƒèiôR)2:w—ïNÇ9ïE\0ä7Ë÷£Ë÷§uëÍ#.êÆàúJw—ïGßöÅ	¢·w9ÆhòıèL†ÑKƒèi(Q²v¤Áô4ú0=/a˜>†’¤£ĞP\nDubÎí¬åVSÇqPù~ôêq“Nè:;ÕºŒ²{Š”8É®rÚåí¤Ü¥”ÖÍ¢·IÈÃÕÕN¢fR‹Gæ8íL¸o:Rùƒ*3Ò†aÈíÅj\"ÌLØ_J¡qµä`yÿ\0õVµÚí&³\'µ*Äöéùæ†À~êœş¢›4¹BÑyüéL{FQQ¶Ÿ\\cèM\0;xtO@Í)@­ı1øš„aò\\~˜â¥VRÜt?\0ğ½NW¨ü;q@3òƒŸçHçxÛßÔÒ;òõ#üEb€Æ.zòAü*@à*çŒš„¸Xö÷\'\0ısRÁßäĞ1Ë–ÆN8æ™prŞ€ÔíÙr\0äÿ\0*†êO”áwÿ\0Z\0«rÃÊEN3ùRË8İ¸·)ÿ\0Å…°ÊÜd*Ï¹¿È`¼‘Õ½‘ÿ\0Ö¤ÕÁ²yîn«t?İŠ©©_îá@]¾ägùÕ)oü»… ±®çüEbêšÚşa÷ÿ\0ïªj$¶M{©yQ¹ôfoÏšÉ½½iQş~¿sıÚ«w~×ıÿ\0—å¬‹ÍKÎ?ì9>£I£AnƒFUŸbB÷l>fÆ>ıgµã?Íş½PÍq²=Íÿ\0,é6ÇbÅåÿ\0ï$ÿ\0V\\×«æHÏÛsÓu>Mº™o÷ÿ\0öZ©<Å-£Yqõ”$ZV%3o\'ßÿ\0özÚğí¿Û§CåÖ-¬>}ÆÕçó7ÿ\0×O’»_i‹Éf_şÊšWdÍèzƒmÛ\'ß$üÜ×G¨Î-í1¤ş½døf¶À³e©¾-ÔÚÛJšE™#ùPõd­;×î–û^’YZÚà»¾öÿ\0à­ã©&›àØmØ—h­Ân_¦ÚåbUÕ¯‘#å£›gÎŸêöıêOkCÇ§å_÷zÿ\0èu¬Ò²&+S‘ñMûLòE&áöÀ*$}•SV™çÔ¢D“äûû*Ô+¿ïb¹/ïXÜ}¶äù—ïÔw¦ù2ÿ\0Ï?Üÿ\0Ì§BŒÿ\0ôÎ Hıéwüû¼ÁL‘ıi¯ş³æıåT@w»Ìf§;şî¡ÿ\0–têÎJÃJâLû>Vâ™³|Ôç}õ‡|›V¤±³ï/“¬­Aï}ÏÉRÍ»?Ü¨¼ ’–^¦¡«\0ß-|¯“şÙÑ&Ébö§ıñòœS.-¼Â\nu¤“5±Ìú1‡DAòTÈ›	åŞ]g\'p#Ïî·ÔÛÏ•ÿ\0M)®¯å|Ÿ¼şå97ù²\'¥8  òA›åûŸû=8EåóÖJ|“†ûıèD\\Ñe€uŸ¼¦ıù)Şg–cDïI+€×üĞãùéNxşŸşZTrH²ı?š¥K`\'Wr\"¨¤“ıZ?oõ”¥ü³×÷rÓÿ\0İ¬Ú±jb\\~ülSóšfóæïA‘ùT0g¦i’ïã*š¹æôª²>Ï2&ıâIV<£$Yç5ƒ÷Û8–¥³ndö y—î·Üş\n—Ã¾oÚ®7Æ6C$|‘¯LTÚ-Ú‹ÛÄòåÙÿ\0üµ¥ÑIû§e¢îû:gïoù*ÔÉ½Ïü´ó>z¥¢n–$ç‡}•zmÑ^H£äòësît>İö´‘¸Wù?àUŞègiÍyÖóZHd\'/¾½CQ÷«h=ä’Åñ»#Œ¨Ãæ5jÃæt¢£½¶1H}šU\"®¡¤©)¾_½d[ch¥Áô4¾_½$€mâ¬zóG—ïL‚½hE?ĞR\0GBNã*J( cU{šUÇjP00)zuÈ ”Æ«f–Š(AE;nŞsœSi\'qÅQL ¢ŠURÔ\n×ÜJsõ§Q@Èè©)vĞ	M½;ĞR|ŞÔ\0´Ra½E-\0Qè(Àô\0QF £ĞPFáê(£ĞPu%PQÔ”ß/Ş€3Ú›RQ@ûù£Ìö£nîsŒÓ¨aFáê(£ĞP\nAEP0¢Š(ÂŠ( Š)p}q(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(Ü=EPFáê(Ü=E\0nçæ“ø?\nZ(\0¢zƒE\0&ï—4`úÒ+v4íÃÔP(Ç\\ÑF  Va¸zŠ7ûÒl”´\\QMòıèòıèC¨Ü=EQp°İÍéJ¤£´PEn¢€aEß/Ş‚RFáê)¾_½6ò¢LûL· ¥¢¤QI†õ\0´İÍéH¹íš}\0n¢›åûÓ¨*ÃÔQ¸zŠoÍN i;Ìö QÔS|ÏjuÊ&ñïIæ{RäzÒm´•íÜc§SvZ>ç¾hcË÷£Ë÷§Qè*’d\\o—ïG—ïN 7ZMƒŞ˜„òıéÔlöı)p}K0=‚Š(³\n0=SQ\0Àô›½/^.¡¢Â\0½(¢Š9F˜SvZu.¡¦•±_½_½:ŠbåûÓ©Şgµ_½KóF §`z]ƒŞ„Ä3ĞQN*SFÃíChÑNÚ=EG¨¥d;Àô`z\n_,zŠJ­&`z\n(¡!	†õm>¦–—ĞÓ(Àôï3ÚŒÿ\0³JìØ}(Ø})wŸjm\nà‚Š*LALì>Ôl>Ô˜>†ŸPÕ€0=GRQN ‚Š(¦QLŠ( Š( Š( Š( Š( Š( Š( Š( Š( ”g<f’Š\0’£¥Ü}M%\0/ô¸_SM¢€œ\n(£põ›\0¢ÃÔQC`QE@QE.`\n( tõ¡HŠ7QEP\\7QE7Ìö§n¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢“`uàÑE	€QE7`\n(¤Ü=jZh¤Ş=é7ü¾ôXQMó=¨.ON)XQÂ@)»Ïµ&ãëE€}Íç­“Ö‹\0­ÿ\0ûRrÇÔšJMÃÖ©0ÎßjJ7QFáê*G`¥ù½é7QA uâ‹)ycêM7põ¥Ü=E0¢“x÷¥Ü=E6ÄQ¸zŠ7QHŠMãŞ“pô§`^â›Nf·4Üç´1¦R)A¥!¦)È9”›Ç½.áê(¸¬Ÿu~”§4gµ\0ãĞÑMİ»Œc4n‚€°ãĞÑMŞ}©	\'­\0,©´n¢ŠvQFáê)7Z$Z)7z7âì-:&JÌö¥^(L,Í‹DNpıqÖ®pWÚ¹Ñ!A‘Í_²Ô÷\0ÒºaZú2K×6GOJ§vàqV¤`Ã ­Qº?3éÍorJ77\"b:p>¼UsqäqåÏQøqO™	\'ĞtöíU<À»n:~œĞ\"Â1ï·\0ŸëN-²\"@àÇÛÅW…•pŒn´³`;ú(Çéé@ËDá°?_Jvğ¹=‡ù5[ÏrÙÀüéu	‚ÿ\0ız\0”¸ÎGD8?\\ÿ\0õé\"˜ª lî#\'òª’ê`&<3·_J¯önçÚ\\ÔìMÄã\'?‡j­q|¹Èoº2k.ûSß¸«}Õ¬›İdÍ‘òZ¨ÆârF•Î¸ iY¶§¸¬Í|DR!æ*¯÷k>şõ™7õSµk-î™ÛÓu6¹Aj[½×JÀñ³‰oın+\"ûQfHŞnÍ•»<ŸõÏøÿ\0ñê«rí—ïÔ¶4‰&™š=Ë—üuUæXcù¾çûïSo“ïIş³oÿ\0G’¦=¸ÿ\0YHc¡İ÷[ıš.w\'İ?=Xû3y{ºŸş\'æ¨îáT³ÿ\0n¥sQtH¤oõ?ƒÿ\0¥{V’LùŸİÿ\0âªÂùåÏşËòÑae¾I7~í$¤•‹4<-¥¶§tˆ\0>Êô½*ßËr¡>goüwj×=áU¡/·çÿ\0Ùk³ÓtÕ;1)ıÚ´¬Œ_cgM+d^øÿ\0¾kÅ×	b\n“«»é[K˜Ô`ıîÙ®SâTîm‚£í$’[ı‘J+PkC·ÔWM:/_%wÿ\0Ó6ûÕ¬>ï»ûÏ¼ÿ\0øõZÓôØì¢’ç–Oß7Îòµÿ\0 Õ—û5¼›ï¿üvª¦ÅSZÜÂµƒÏÕ¯\'\\ì‘ÿ\0ß5¦‰ıê¡¤BÏüùejÃîüÎdòÿ\0‚²HÕ«ù¿‹÷oÉÿ\0§¾ï/æ©f‡Î’F¦ìßÌ&¬\"»ÿ\0Ë6ÿ\0tÙùÕ3Â¯şÿ\0ğSQ7Ûÿ\0Ï:@5Ó|rm¨ßäòÿ\0å¦jmŸ&ş*\'‹Ë©“v\"îÔòÒ¤túÆû*4ÜõØ¤î<Î}i¯¹şõI³Ûô¨ê7şYÓ~o7ç?ëiÒH\"“çã4Ï3¨óÖÔÊ7xS÷•ßçJ?å5Ç™òçË¥>€8í™€)G2J6s5?ºÕ\"|¿5\0}¸ê#¦‘ÇÏûÚ3)Û=¿J°èÏÏîé¿sîS“ä","image/jpeg","","","","1");
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




