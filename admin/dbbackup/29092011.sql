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



DROP TABLE profine_admin_ip_tracking;

CREATE TABLE `profine_admin_ip_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

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
  `status` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '1' COMMENT '0->De Active, 1->Active',
  `date_added` int(10) unsigned NOT NULL COMMENT 'date added',
  `date_edited` int(11) NOT NULL COMMENT 'date added',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_category VALUES("13","0","Category1","","1","1317209166","0");



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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;




DROP TABLE profine_images_gallery;

CREATE TABLE `profine_images_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images_name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO profine_pages VALUES("1","Home","","Mono Kite","Mono Kite","Mono Kite","1314887832","","1");
INSERT INTO profine_pages VALUES("2","Products","","","","","1314887832","","1");
INSERT INTO profine_pages VALUES("3","Infrastructure","","Mono Kite , Infrastructure","Mono Kite , Infrastructure","Mono Kite , Infrastructure","1314887832","","1");
INSERT INTO profine_pages VALUES("4","Factory Tour","","Monokite , Factory Tour","Monokite , Factory Tour","Monokite , Factory Tour","1314887832","","1");
INSERT INTO profine_pages VALUES("5","Mission","","Monokite, Mission","Monokite, Mission","Monokite, Mission","1314887832","","1");
INSERT INTO profine_pages VALUES("6","Promotions ","","Monokite, Promotions","Monokite, Promotions","Monokite, Promotions","1314887832","","1");
INSERT INTO profine_pages VALUES("7","Picture Gallery","","Monokite, Picute Gallery","Monokite, Picute Gallery","Monokite, Picute Gallery","1314887832","","1");
INSERT INTO profine_pages VALUES("8","Testimonials","","Monokite, Testimonials","Monokite, Testimonials","Monokite, Testimonials","1314887832","","1");
INSERT INTO profine_pages VALUES("9","Press Rooms","","Monokite, Press Room","Monokite, Press Room","Monokite, Press Room","1314887832","","1");
INSERT INTO profine_pages VALUES("10","Contact Us","","Monokite, Contact Us","Monokite, Contact Us","Monokite, Contact Us","1314887832","","1");
INSERT INTO profine_pages VALUES("11","About Us","","About Us","About Us","About Us","1314887832","","1");
INSERT INTO profine_pages VALUES("12","Terms and Condition","","Monokite, Terms and Condition","Monokite, Terms and Condition","Monokite, Terms and Condition","1314887832","","1");
INSERT INTO profine_pages VALUES("13","Privacy Policy","","Monokite, Privacy Policy","Monokite, Privacy Policy","Monokite, Privacy Policy","1314887832","","1");
INSERT INTO profine_pages VALUES("14","Registration","","Monokite, Registration","Monokite, Registration","Monokite, Registration","1314887832","","1");
INSERT INTO profine_pages VALUES("15","Login","Login","Login","Login","Login","1316328037","","");
INSERT INTO profine_pages VALUES("16","User Openion","User Openion","User Openion","User Openion","User Openion","1316328037","1316328037","1");



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
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `date_added` int(11) NOT NULL,
  `date_edited` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_product VALUES("1","13","sdfsdfusduf","sdfsdfs","sdfsdfdsf","&lt;p&gt;\n	sdfsdyf ydsyfdsyfysdf sdf&lt;/p&gt;\n","","","","1","1317227700","");
INSERT INTO profine_product VALUES("2","13","sdfsdfsdf","hdsfh","34","&lt;p&gt;\n	sdfdsgdsug usdg sdgdgs&lt;/p&gt;\n","","","","1","1317306850","");
INSERT INTO profine_product VALUES("3","13","sdfdsfds","sdfs","34","&lt;p&gt;\n	sdf fysdyfy dsfysdfydsfs&lt;/p&gt;\n","","","","1","1317307197","");



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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_product_images VALUES("1","1","products/thumb_1317207672_borders3FF.jpg","1317227700","","1");
INSERT INTO profine_product_images VALUES("2","3","products/thumb_1317286982_klematis.jpg","1317307197","","1");



DROP TABLE profine_product_pdf;

CREATE TABLE `profine_product_pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO profine_product_pdf VALUES("1","3","productspdf/1317287000_test.pdf","1317307197","","1");



DROP TABLE profine_testimonials;

CREATE TABLE `profine_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auther_name` varchar(100) DEFAULT NULL,
  `testimonials_title` varchar(255) DEFAULT NULL,
  `description` text,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_testimonials VALUES("3","sdgsdg","sdgsg","&lt;p&gt;\n	sdgsdgsdgsdgsdgsdg sudugudsgusdugsg&lt;/p&gt;\n","1317318247","1317318903","1");



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
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO profine_user VALUES("1","1","","","sfds","sdfsd","raj@gmail.com","23423","23423","","23423","23423","ˇÿˇ·\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ˇÏ\0Ducky\0\0\0\0\0A\0\0ˇ·)http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"Ôªø\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmpMM:InstanceID=\"xmp.iid:2AA5BDDCC7E711E0B90C8E45237C6C1C\" xmpMM:DocumentID=\"xmp.did:2AA5BDDDC7E711E0B90C8E45237C6C1C\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:2AA5BDDAC7E711E0B90C8E45237C6C1C\" stRef:documentID=\"xmp.did:2AA5BDDBC7E711E0B90C8E45237C6C1C\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ˇÓ\0Adobe\0d¿\0\0\0ˇ€\0Ñ\0		\n	\n\n\n\n	\nˇ¿\0\0W\0ä\0ˇƒ\0Ω\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0!Q±1Aa¡bsqÅë°—\"2Rr≤3≥4%56#Sc$u&BÇí¢Tdt7·¬ìDUF∂÷G\0\0\0\0\0\0123!AqÅë4Qa±—\"rí≤#s”CB“°¡·R≥$ˇ⁄\0\0\0?\0åoWëé™¥Ùìø%M∆Ω4∑„Íqa	®†´≠)µuÍ}i.ÛŸµÒÛõ{n_lÌ)…”áy”É€›[rØ0œΩ∏ØJ‘‚•*´ßP ê¥(•@ÛD\n≥⁄∑∞YPÔi√·D˚=E‘¥7´Qj]SH(≠Dï-ôú±t™Kn,•≠Sgr=àN5æ^’qπ!W7Ö‹‘Jk‘! ,â≠êA*O`€¸~Í˚p¯W®∆x£5{MØw	)ôM\'Uê6s%B°æ[ƒ‹Œ÷îRÓ¬+©∑eåHb+™Npı¿˛¸[|îiÌ[ÑN>Dz8ÀÒs˚≈uúÜ_-qõªèö˚{Oï8Ì¡åàoÓ≠Annœk‘◊=}WVvs©F∂Ñ\\7£\'ÕjŒ6Eµ–VSƒòìÔCñÊÚˇ\0àbóî÷‘;]iD˛úv‡É·&ÌT∏óÙØ◊ﬂJ€ênè\n¥†◊´%MCdkeé∫qﬂπN§ª∏±«çjUmÉÓNö-M‹¢Ü≤+R%Iê ôh…πÜJO∫#ÌòÇˇ\0QêRÓœñº≥RúU\'¢U•›¿[R¨”[ﬂiWÜÒ6#Æı‚^_’JTBSQÕeîÏ®∆s\nı#\'≤Mu∞À©…SãL\'∂ﬂ/K≈õ‘πª]©!Tï^°A…∂í©@?Â÷Ógók!oRN[eÔƒÎ•—Öâÿær÷Øê™î*Æöà3…4êbt.´9≠≥ók¶ﬂyx£&‘∫âΩ‹EAJz·’`g)Œz–bØSw¥˚YE9À¸Ñ∂Ó*pÓ.≈N(Øèø‹Íê≥ŸªÆ£”\\*≥ŸãÌ›§¶∂üH›?}qÓ7ó¯U˘ﬂœÏ¯neª}Iy^éﬁø/IÕÄ¢ƒæ ◊Œ.n<b°\\ıÂÔ?IÎvæ\nó„á Ü≈ˆ^ás∑ÚGzÜ([Âçèÿ≠πæXã™Íuàˆæ◊ªÅ±Âu;Û,–Äúvô=§xLmúKÕ◊≤Ä€üÄ/Ê:Fu\0ö9ÜàÁÒüqüEÏ¡∂ô8_xÄÅ,[_u&}ªàm/ÇH]Ìº¢;‰«œ\0:ôGû6ÿ*Á¸©=(œQ‘´¶gÀ6V2€öÑ9ñQel»ß¬„÷oS∫t∆ôÊa◊zH-∑Hb÷}⁄aj»Umê\'¯¨â·πˆµ—¶;m®ÉÈÊBÇæ[J¡˘ùËa≈«ƒ.íó¯Ÿ¬∆à2XØ3!ıœ”¯\'Ùë™|@Øü“n<b°dıÂÔ?IÎVæ\nó„á Ü≈˙°œ$w†ÿbÖ±ÃXÿÏmg≥≈EÚƒ]WPH7…zº5Sø0R 8Yè<Óárt¡˘ƒ‹„*ÓG‰DÃtå⁄:ì:¢4G?åÔ°Å=íyC⁄d1¸„XÄA∂ÆÍw¢Ó!¥º\"TnñÛ√Në’ =ÒzBmÀ7íú·ÍZ°ï∞gk!õ)ÁD8ñQe|Jú6%w|7Nò√Û<Ã:ÔF![3,RƒÌÎ\'L-Y\nmÚıÖüÑµNZûòï∂¢Üd\'ó#kYœD¡ﬁ@e‚z ,)ï5ÅÌ˜†◊Ä‚Û?•∫=¡ñƒ˙Hz¡öø‘\nﬂj8Ò™Öí◊óº˝\'≠Z¯*_é*Wøcπ‰˙êe<»]ƒÏ;Ï6ºû¸,¬⁄Ÿ˙ƒ•0EˆÛõ ™d˝3≈Ó””@f= ®√¶	∑Ã&Ê˘Pr?Wû‹Ãtå⁄=”óóµ»ÈùXå‹}T¨øû`Î\\Ü?újëï!å>”´q•·}Y@\\“\"H\n¶AıâF∂∏O,⁄*´»?ª÷-39Xƒös	ﬁáxÆÂÔ*∞ÓK„·¬:cÕs>ê˚≠Ö4NÆ&`xI”Bãlè§2¯öùl*‡Ê®É˚Qıªˆ–∆9êô\"vµrFqóà] ˛2.72¡C´ﬁÅëŒ=¬Õlˇ\0ƒ®¨?÷#˝M«çT(ñºΩÁÈ=n◊¡R¸p˘P‹Ω˚!◊&w†⁄yê∂9âòsÿMy=¯&YÖıÛıâ]åCzÕÂ52~î]4Ù–èº·ø3~\n£ô	˘∆D‹|⁄\nÊ:Fe©e¢û‡Etﬂ⁄]Ff>¨X˙Hakê«Û•˜HŒ¶/Q=ßV,‚C}ö.Îº`ÆR$Ä™‰4ı:ÿEŒÃ˜±õÜØXc”3måü%#téî9B´úJª[à£Õs>ëÖœáàN±nßL*YX=æG“¸GÑ]ì¥§⁄é[gCÊBYv„…´\':P5Mu“aÖ1¿#dçâA^AÕÊ–≤û‡Ó˛SÉøIH3^™˝ß_∆O-y˚“Ùûπk‡©~8|®mﬁ˝êÎì;–m<»]ƒÃ5ñƒ◊ìﬂÇ•ò[qõ¨K¨Kﬁ«Ò+Ô¢¯`:ß¶Äøàør`õ|¬éo¶Ä[áõ¡<√HÃü®¯‹à¶ñöË8ÒC/\0W’Âàgkî…sΩdGìßvû^úY˝AOmôu]_XbxrâyA%ëöÍu∞ªâÂõ#?‘åﬂÚ∞Á¶fã˘8GD8éõÕ”Euúâç¢•∆+õb˙FU∑€ƒ%´÷ﬁò{ËSK|5æ>¯Ü5∞ì˝¿ì”à€gCô	JmÁì0—Ê)©¨∫A¨9íªÅªø¨7+ŸFÑˇ\0†¡ﬂ®qÔıo¥Î¯’Bikœﬁó•ûøk‡©~8|®n^≤⁄rjﬁÉiÊB¯Ê&aØa5‰˜Ã,E’Û11_&%ΩÀ˜ÖÈã·Ä‚éí1¯˘F«Çt¡V˘ê£õÈ†\n·Ê«ôs6fN∂ÀHG\"Ë9,P…¿Í5áhÜñŸLó:÷G¬„ì£∏Í≈Ø0EóÉ-‹VfN«ÚÇ…{&ã}%aö≥€d{»Œ=VàÃˆ!*J(owô—]k…âùÇv’Œn∑±ç_ë à∫∞VÍ{ËOK#∑¡å<xíº\'q‰¡—€ÁAÒ≈ˆûc,ÈVàlÛ’÷Î˘˙„ÑÊÉVõåà–sˇ\0ÄAﬂ®peè´Ó›x’BykÀﬁó•ûΩi‡®˛8¸®oﬁ2⁄rjﬁÉ)ÊB¯bJ√\'‘-sÍo¡Rƒ]_?XúsìﬁáÒ\nã·îqKM_;&¸¯*ﬂ0´õi†˘˙∫πêO0“3Îc*IÓ ZA«ä¯˝J∂~0hÜ∂ŸLß;’GŒÁì“üi<K,<#È-]‰SCÙõ∆:S,\\k·•Ó≤=‰g\'™˙BñDf[Îjß2∑·ƒwò¢Ωó[â‹‰∆;õ‚∆5|:ûô\\ú O|!-,¨€2±ü_ÑÆ$˛Ô>êàRŒÉ°¿E≥LŸÙw·´ƒ¶∂™ÏÉîœ)ú¿u_\"47;ˇ\0?ÉøH.Í´ÃzQƒø∆T(ñºΩÈzYÎ÷ûè„á á‡˙°◊&` yêæíp¡ıSôL,E˜ƒÛ≥¯¶ˆ>ùPD2çÈiÅòˇ\0¸ø>\n∑Ã*Ê∫h_>ÛntÃtå…÷πhß>¨næ⁄Ë\"∆F\0ÛZ‡vÈ—-≤ô^w®∫]˝Í£‹ıbÁâ+ˇ\0À\"≈ŸÛNÔx«JÂƒ—¬j√\\÷gºåÏı_HDt—ôlùïdÊY”£πm^-ËÄ€≠≈ø-®»s|X¬¶˚u∞!ëÎ2Fﬁ¯Ñî≤∞{w∏f‚ê*a˚sk?Ÿ\nYêt‰\"mÊmˆµ°´ƒÆ„U÷PEÕ»;:`µÄÊ∂ö46Mœp%≥”Éˇ\0H0ÎﬂÍˇ\0jWÒ™Ö◊óº˝\'ØZ¯*_é*◊e:€Y—SÃÄ#òïÖrÿrf}À0Œq>¯~+ΩÀÁŒÙ_£ZoÌ†;éµπÊ¡vÿä˘ÆòºÊ‹Ë#òÈì¨¸\n;ùË€LåÜ?√ˇ\07q›imÅñÁöàÌÁ&(lv L],HÚÔ	.í≈ÏáíÀÂwå||∏ö5ô◊√(3úŸû∆vÆ´È/ß¶f{>JŒw*¯√hÂ@“+–uqRÜ~§d˘¬ƒ*óÜ.fNYÏ´/JQ¡îZ‡∆Ö¸ka7£¯3ﬁàÖ<»:9PÜ∑À…Â›Cwâ]∆¢ÌY.ıÚ‰%P\\p’“FÑÀõ˝Å?ÌÉøP\'®™sht¨mYœ”ã7’\0S∆Ç¨çBdiÒÅ`ual©7ZM5ã‚èR∂æ¶¨ÈGd˜SèÒœ˛´äà”πQZÌé\n5äöñÑßc9 t‡∏S}Âáj\0ç‰;ÿO‡üˆü|5ITl≠i©I$ œQIZvN¬êH0D†˚‹;@Ó.¢ÂÑæ	h¨yit¨Ow¨öç5XîÇÒ®X∂A™9‚.Ñ^Œ*w∞P[T˛	ˇ\0¥A\\m`|Â≈:Ã/qeGßR≤`´m“ﬁ-Ê7Qï=õ%MzP˜	›ÿÄ‚“ø:Ôl2Ê.ø{inˇ\0S=ıü±˙é≥¬óD“HSãQ:ªW{a–Ê(∂›¥å¶º˝ÅÓ∞?oJ∞Uf<¡ç^âßYRÜt&í„ÿg9ºÊ∂5◊∏ıv∞Ω©àõ÷Mf°\"Óêø‘5ÇèB,u7ÒÏ#a≠‰ûÃIœ,èÜ“¨ b¨Ãﬂ3N|ıcΩıÁÏ>Q{ÌvÓ∑R§æÃ4’$Sÿˆ¬i<Ÿ¬\n´mV_M{{∑ÿ^%À≤+1(UEîødd5å¶m0“2‹Ä+¡ø\'i_˜}˜ﬁ>95≠˙§∑“,uˆ;S_[•ÆkMÀnÕùm/H]8ø°≥wiyr≥<UV•+e0I:œôéÑÎî\"•m-è|~8˙¡Ì©µ∑zÌ6uj·ßJÈ%Ji™JÎRJ[,´+	ñÏ‚∏[IIoè«Xlcπ	;~∏&ÅB™€ß3◊zIÇÅíÆa´°/,~(˙»\\Gl–9o¬◊D]ÍTÚãYI*»ã≠±JÊH9û]—FìŸ√µz∆Û{i$==[Á˚è‰ûrﬂ¬ˆ›üÇ˙N√v˙oÕßÂˇ\0êCˇŸ","image/jpeg","","","","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;




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




