DROP TABLE database_tables;

CREATE TABLE `database_tables` (
  `variable_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

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
INSERT INTO profine_admin_ip_tracking VALUES("67","1","127.0.0.1","2012-12-24 09:20:15");
INSERT INTO profine_admin_ip_tracking VALUES("68","1","127.0.0.1","2012-12-27 06:18:23");
INSERT INTO profine_admin_ip_tracking VALUES("69","1","127.0.0.1","2012-12-27 06:46:54");
INSERT INTO profine_admin_ip_tracking VALUES("70","1","127.0.0.1","2013-01-15 11:17:25");
INSERT INTO profine_admin_ip_tracking VALUES("71","1","127.0.0.1","2013-01-16 05:45:54");



DROP TABLE profine_admin_login_table;

CREATE TABLE `profine_admin_login_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `password` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_admin_login_table VALUES("1","admin","profine","rsingh@ferotech.com","Profine","Administrator","1");



DROP TABLE profine_category;

CREATE TABLE `profine_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `parent_id` int(11) NOT NULL COMMENT 'parent_id = 0 means main category other wise child category',
  `category` varchar(100) COLLATE latin1_general_ci NOT NULL COMMENT 'Category Name',
  `description` text COLLATE latin1_general_ci NOT NULL COMMENT 'category description',
  `meta_title` text COLLATE latin1_general_ci NOT NULL,
  `meta_keyword` text COLLATE latin1_general_ci NOT NULL,
  `meta_description` text COLLATE latin1_general_ci NOT NULL,
  `status` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '1' COMMENT '0->De Active, 1->Active',
  `date_added` int(10) unsigned NOT NULL COMMENT 'date added',
  `date_edited` int(11) NOT NULL COMMENT 'date added',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_category VALUES("14","0","Windows Systems","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","profine Windows system","profine windows system","profine windows system","1","1318430363","0");
INSERT INTO profine_category VALUES("15","0","Residential Door Systems","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Residential Door Systems","Residential Door Systems","Residential Door Systems","1","1318430378","0");
INSERT INTO profine_category VALUES("16","0","PVC-U-Sheet","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","PVC-U-Sheet","PVC-U-Sheet","PVC-U-Sheet","1","1318430391","0");
INSERT INTO profine_category VALUES("17","0","Panels","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Panels","Panels","Panels","1","1318430401","0");
INSERT INTO profine_category VALUES("18","0","Special System","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper commodo condimentum. Mauris elit eros, vulputate non suscipit congue, porttitor ut urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur risus nibh, venenatis a blandit sit amet, vulputate imperdiet felis. Proin in libero nec mi sodales imperdiet. Ut ac velit nulla. Donec purus orci, dictum ut sagittis sit amet, feugiat quis urna. Donec vel tortor tellus.","Special System","Special System","Special System","1","1318430414","0");



DROP TABLE profine_cms;

CREATE TABLE `profine_cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_cms VALUES("2","3","KOMMERLING - more than just a window","&lt;p&gt;Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. KOMMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&#039;s benefits.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With the KOMMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;","1318409403","1318429203","","1");
INSERT INTO profine_cms VALUES("3","1","KOMMERLING - more than just a window","&lt;p&gt;Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&#039;s benefits.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;","1318409812","1318429612","","1");



DROP TABLE profine_countries;

CREATE TABLE `profine_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
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
  `currency` char(3) NOT NULL DEFAULT '',
  `rate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`currency`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip_code` varchar(15) DEFAULT NULL,
  `photo` blob,
  `last_login` int(11) DEFAULT NULL,
  `added_date` int(11) DEFAULT NULL,
  `edited_date` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_events;

CREATE TABLE `profine_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) DEFAULT NULL,
  `arival_date` int(11) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_events VALUES("1","Events and Seminars","1319500800","unknown","&lt;p&gt;\n	Sash Covering Residential Door Panel for profine Systems&lt;/p&gt;\n","1319471925","","1");
INSERT INTO profine_events VALUES("2","Events and Seminars","1319587200","Events and Seminars","RAL Certification for 15 profine Bonded Systems ","1319471984","","1");



DROP TABLE profine_images_gallery;

CREATE TABLE `profine_images_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `image_name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE profine_news;

CREATE TABLE `profine_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `description` text,
  `images` varchar(255) DEFAULT NULL,
  `news_date` int(11) NOT NULL,
  `added_date` int(11) DEFAULT NULL,
  `edited_date` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_news_category;

CREATE TABLE `profine_news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` text,
  `meta_keyword` text,
  `meta_description` text,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_pages;

CREATE TABLE `profine_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pages_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edit` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO profine_pages VALUES("1","Home","Profine","Profine","Profine","Profine","","","1");
INSERT INTO profine_pages VALUES("2","Company","Company","Prifine Company","Prifine Company","Prifine Company","","","1");
INSERT INTO profine_pages VALUES("3","About us","About us","Profine About us","Profine About us","Profine About us","","","1");
INSERT INTO profine_pages VALUES("4","History","Company History","Profine Company History","Profine Company History","Profine Company History","","","1");
INSERT INTO profine_pages VALUES("5","Guidlines Principales","Guidlines Principales","Profine Guidlines Principales","Profine Guidlines Principales","Profine Guidlines Principales","","","1");
INSERT INTO profine_pages VALUES("6","Responcibility","Profine Responcibility","Profine Responcibility","Profine Responcibility","Profine Responcibility","","","1");
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `product_code` varchar(20) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `description` text,
  `product_care` text,
  `sizing` text,
  `product_color` varchar(20) DEFAULT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `home_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `display_position` tinyint(4) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `date_added` int(11) NOT NULL,
  `date_edited` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO profine_product VALUES("10","13","sdfdsfsdf","dsfsd","sdfsdfdsf","&lt;p&gt;\n	sdfdsf&lt;/p&gt;\n","","","","","","","0","0","1","1317727340","1317729973");
INSERT INTO profine_product VALUES("11","14","admin","2323","2323","&lt;p&gt;\n	fafafaf&lt;/p&gt;\n","","","","","","","0","0","1","1356610633","");



DROP TABLE profine_product_boucher;

CREATE TABLE `profine_product_boucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `boucher_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE profine_product_images;

CREATE TABLE `profine_product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO profine_product_images VALUES("17","10","products/thumb_1317710169_trade-pic.jpg","","1317729973","1");
INSERT INTO profine_product_images VALUES("18","11","products/thumb_1356590831_Hydrangeas.jpg","1356610633","","1");



DROP TABLE profine_product_pdf;

CREATE TABLE `profine_product_pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE profine_testimonials;

CREATE TABLE `profine_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auther_name` varchar(100) DEFAULT NULL,
  `testimonials_title` varchar(255) DEFAULT NULL,
  `description` text,
  `images` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_testimonials VALUES("3","sdgsdg","sdgsg","&lt;p&gt;\n	sdgsdgsdgsdgsdgsdg sudugudsgusdugsg&lt;/p&gt;\n","","1317318247","1317318903","1");



DROP TABLE profine_user;

CREATE TABLE `profine_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip_code` varchar(15) DEFAULT NULL,
  `photo` blob,
  `photo_type` varchar(20) NOT NULL,
  `last_login` int(11) DEFAULT NULL,
  `added_date` int(11) DEFAULT NULL,
  `edited_date` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;




DROP TABLE profine_user_type;

CREATE TABLE `profine_user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_user_type VALUES("1","Dealers");
INSERT INTO profine_user_type VALUES("2","Visiter");



DROP TABLE temp_img;

CREATE TABLE `temp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;




DROP TABLE temp_pdf;

CREATE TABLE `temp_pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;




DROP TABLE temp_video;

CREATE TABLE `temp_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;




