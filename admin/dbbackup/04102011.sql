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



DROP TABLE profine_admin_ip_tracking;

CREATE TABLE `profine_admin_ip_tracking` (
  `id` bigint(20) NOT NULL auto_increment,
  `admin_id` int(11) NOT NULL default '0',
  `ip` varchar(200) collate latin1_general_ci NOT NULL default '',
  `login_time` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

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
  `status` enum('0','1') collate latin1_general_ci NOT NULL default '1' COMMENT '0->De Active, 1->Active',
  `date_added` int(10) unsigned NOT NULL COMMENT 'date added',
  `date_edited` int(11) NOT NULL COMMENT 'date added',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_category VALUES("13","0","Category1","","1","1317209166","0");



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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO profine_cms VALUES("1","1","sdfdsfdsf","&lt;p&gt;sdfsdfsdfsdfsdf usfusdufsdu fdsuf dsuf sdfuds fudsf sdf dsyf ydsyfdsyf dysfdsf ydsyfdsyf dsyfsdyf sydsfdsf&lt;/p&gt;","1317376900","1317396700","","1");



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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO profine_pages VALUES("1","Home","","Mono Kite","Mono Kite","Mono Kite","1314887832","","1");
INSERT INTO profine_pages VALUES("2","Products","","","","","1314887832","","1");
INSERT INTO profine_pages VALUES("3","Infrastructure","","Mono Kite , Infrastructure","Mono Kite , Infrastructure","Mono Kite , Infrastructure","1314887832","","1");
INSERT INTO profine_pages VALUES("4","Factory Tour","","Monokite , Factory Tour","Monokite , Factory Tour","Monokite , Factory Tour","1314887832","","1");
INSERT INTO profine_pages VALUES("5","Mission","","Monokite, Mission","Monokite, Mission","Monokite, Mission","1314887832","","1");
INSERT INTO profine_pages VALUES("6","Promotions ","","Monokite, Promotions","Monokite, Promotions","Monokite, Promotions","1314887832","","1");
INSERT INTO profine_pages VALUES("7","Picture Gallery","","Monokite, Picute Gallery","Monokite, Picute Gallery","Monokite, Picute Gallery","1314887832","","1");
INSERT INTO profine_pages VALUES("8","Testimonials","","Monokite, Testimonials","Monokite, Testimonials","Monokite, Testimonials","1314887832","","1");
INSERT INTO profine_pages VALUES("9","Press Rooms","","			Monokite, Press Room","			Monokite, Press Room","			Monokite, Press Room,sdufusdf,sdfsduf","1314887832","","1");
INSERT INTO profine_pages VALUES("10","Contact Us","","Monokite, Contact Us","Monokite, Contact Us","Monokite, Contact Us","1314887832","","1");
INSERT INTO profine_pages VALUES("11","About Us","","About Us","About Us","About Us","1314887832","","1");
INSERT INTO profine_pages VALUES("12","Terms and Condition","","Monokite, Terms and Condition","Monokite, Terms and Condition","Monokite, Terms and Condition","1314887832","","1");
INSERT INTO profine_pages VALUES("13","Privacy Policy","","Monokite, Privacy Policy","Monokite, Privacy Policy","Monokite, Privacy Policy","1314887832","","1");
INSERT INTO profine_pages VALUES("14","Registration","","Monokite, Registration","Monokite, Registration","Monokite, Registration","1314887832","","1");
INSERT INTO profine_pages VALUES("15","Login","Login","Login","Login","Login","1316328037","","");
INSERT INTO profine_pages VALUES("16","User Openion","User Openion","			User Openion","			User Openion","			User Openion,sdfsduf,dsufdusf","1316328037","1316328037","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO profine_product VALUES("10","13","sdfdsfsdf","dsfsd","sdfsdfdsf","&lt;p&gt;\n	sdfdsf&lt;/p&gt;\n","","","","","","","0","0","1","1317727340","1317729973");



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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO profine_product_images VALUES("17","10","products/thumb_1317710169_trade-pic.jpg","","1317729973","1");



DROP TABLE profine_product_pdf;

CREATE TABLE `profine_product_pdf` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `pdf_name` varchar(255) default NULL,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




DROP TABLE profine_testimonials;

CREATE TABLE `profine_testimonials` (
  `id` int(11) NOT NULL auto_increment,
  `auther_name` varchar(100) default NULL,
  `testimonials_title` varchar(255) default NULL,
  `description` text,
  `date_added` int(11) default NULL,
  `date_edited` int(11) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_testimonials VALUES("3","sdgsdg","sdgsg","&lt;p&gt;\n	sdgsdgsdgsdgsdgsdg sudugudsgusdugsg&lt;/p&gt;\n","1317318247","1317318903","1");



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
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO profine_user VALUES("1","1","","","Raj","Singh","raj@ferotech.com","358238523","983463242","","Delhi","231216","����\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0��\0Ducky\0\0\0\0\0A\0\0��)http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmpMM:InstanceID=\"xmp.iid:4C22EE1DC7F311E0B21CD1742838B421\" xmpMM:DocumentID=\"xmp.did:4C22EE1EC7F311E0B21CD1742838B421\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:4C22EE1BC7F311E0B21CD1742838B421\" stRef:documentID=\"xmp.did:4C22EE1CC7F311E0B21CD1742838B421\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>��\0Adobe\0d�\0\0\0��\0�\0		\n	\n\n\n\n	\n��\0\01\0;\0��\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1Aaq\"2BRQ��3��r�s���#C��$\0\0\0\0\0\0\0\0!1AQaq���\"2����BRb#3��\0\0\0?\0���$����d�{��B>:`\0�9Lf`��D&�;*�@:d�[�G����s;��	��8���#���	;��\\lr�����zۖ���u�5ZIhLW���\0��������O�X��5}��|�w�\0ϐ�w�~��Ŕ]�n�=����J���˩=�B������那OB���{�wk��v���ӧ�W3`a\0�}B��=�\n�3tM���F����Y�����j�����0$��7��u%7窜y.M����IR�N��t��|���Z�v�o=>C���)��q�b��B�Ko�����r[]�;ӆw�#2����]��M�z�\"��w-ǌV�.ni��1j��K�_�Z�u��=�H�!;cq��oz��4��O݉|�ΰ��-i���/z�I.>�S�=���jKJ�K�/7Z��k#���>�qa���~^�ڍ5�o���\0�gݿeۿ��^�~�����g>�!=��\'�+k�(^�UW]1\'p��5ר���%jg���S�4���Xۯ��.T��YT���E��i�F1�ܧ�t0�-\\y�����wXn�X��#M[N���3k�Ͳ33j1��IQ�iUjX9������ɨ���g�I����2�+�qǺz8�nE�7ef�x�\\����j�4ŕf3���e��ڋ�3�M,�Z�m�NxIKI�W=����q��𣉑r��w�yF\\%OOk�]�i�玞��cc���n��)�mE:-�C����e��27����}��C�nV���R�>�n=\n���KQ�!HP��t\\lU7�تF�v��G�ղ&���l1�-\'P�8�-�T.�ZT��Uތ�(���C�$)2�z�Kg8�6�i����,������V�5)�JTb�jl��;�A$��GV���CA] Wbl����ȝG5R��|Ҳ���4�K��!�c\\��|X�U��$�j���嵕���p� T�Z֫��=}^���I��j���	\n\n{edP�9斦>��xs���F�v���smp7��\0G��;E,4t����=��3�F����,W)�~��$~ꉛ#�DG��=�i]���&\'���v�p���BMQ�(R��X��e�H�����k���C;����O�w\0����c�u\'�{r�[t37/U�2іz�hN���/�+��S�{0$r�$k����N�M�w�%��sR�_�ܩ�:�B6��z.fxjٗ6�J�d�6����(.B�ζ�� ��nyqn��*�ֵ�9�#^���T\0�ܣ0>����G Q)w�+Ӵ��Fh0��c�Vy5���\0���vD����~�!ƘDR�O���m�8����PA!���������o�Ƙ!!��w�����\0��","image/jpeg","","","","1");
INSERT INTO profine_user VALUES("2","1","","","Gairav Jain","Jain","gjain@ferotech.com","325235236","9546622","","Delhi","011221","����\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0��\0Ducky\0\0\0\0\0A\0\0��)http://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c060 61.134777, 2010/02/12-17:32:00        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CS5 Windows\" xmpMM:InstanceID=\"xmp.iid:3087B1D3B76411E0A238C28176981229\" xmpMM:DocumentID=\"xmp.did:3087B1D4B76411E0A238C28176981229\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:3087B1D1B76411E0A238C28176981229\" stRef:documentID=\"xmp.did:3087B1D2B76411E0A238C28176981229\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>��\0Adobe\0d�\0\0\0��\0�\0		\n	\n\n\n\n	\n��\0\0.\00\0��\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0		\0\0\0\0\0\0\0!1AQaq\"b��2r�#3�BR��C%\0	\0\0\0\0\0\0\0!1AQaq������Bb��\"2�#�R��S$��\0\0\0?\0ǷM��z;\nq�t�R��Z��$^�$چ^��\n3v۴{v{^w��$v�E1dn[M�S�!AZ�_�M�G#�V�oQ��a~V����Ӻ�;;=�������BJ)E2���NK��5a����f�7��t޷g\\6UͲ��]�kDiSr\\��H�!d�l�hQ�ћ�%踠���Gn/��m��r>+ou!�_$e���pM>	�uY4�\0SO=�9}����K���q��dZ�ї�}7�pf��pȂ3dFcj��:L���SƬ�Th~$]�%ԡ	$�8x\nS����s���禐��Cgp��v��T�����R|�\0x(���Gl�Yw�|²r�rl%kh�$�ܴ\'��*�3nG�[ʃ&��]�\'h�\"�rw��9����	�L��?�hY��\0ʦ�/�˳���QjTM2R��R� ��P�bG������3�C����\nmDn�m��v��[�H�F�ęE7\"�qͅ��xX�:\\^�=-���,~䛹�ۻ��v�wj*ڊXm��)�GE�x�=B���7�{�$\\��T˴S��Z��8�L��&��3���g�A�����m�\0��n��R���\\�~h�`�q�K���E�g/�e���-�s���Q����Ad� �\0�X����\\���I�8�y�.�Hfs�� V�:G�CnƄ�3�6�0$�:����H�y��ڌ*��~*�ѳ2K��*��QC��vr�n|jfd9�6�!����I�鼼�7Wԃ�J͎r�\0���T��Q�B�3������7���[OR;�\\~��p���(�	6��V�G�¦��V�ڨ�KfY�:��9���ˇ(�@5\'Џ�}Q���(��>Aū�=�jEA��g�*$���OR��v�S��9{G�Ww��������L��y��F� SP���f�]J��xO��v���-�a�/�F���vof!O�Cj�eTⓗ��B�J=J�	����C��f�#�I����V]_M�!\ni�i*��&�	���\"�ٝ>h3����vw�h��;�l6dƵu�HJ]e�aiZ*��%���xPS��Ha�]����f����q������6�X�o0(l�<�R�c?nܕ���8֏��v��pl�Z��bC�L��i]��V��\n*\\��2�74���Y�\n��X{��8O��o��T8�A�:Ѫ53�q��� )~` �s=�\n������Ă���^T��z�Q˳w��a�͙W��]!Q%��f���c8��Rk���&�Epx��۪��ŧH֕����?0�ƙ{E��=���ߙh.�^z��S�Dz�za�O%Qg�4?rEq�w�����Dl�=�E�@T5Qң���M\n8����\0�W����m���g��d��&KR�ɸ-�zêR2�\nWŀ�r6\n�i9}.7ID��a`�h��a�J��s��\n�C���","image/jpeg","","","","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;




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




