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
INSERT INTO database_tables VALUES("partner","profine_partners");
INSERT INTO database_tables VALUES("event_images","profine_event_images");
INSERT INTO database_tables VALUES("gal_category","profine_gal_category");
INSERT INTO database_tables VALUES("meta","meta_tag");
INSERT INTO database_tables VALUES("AdminEmail","telrev@somesite.net");
INSERT INTO database_tables VALUES("AdminEmail1","telrev@somesite.net1");
INSERT INTO database_tables VALUES("AdminEmail2","telrev@somesite.net2");
INSERT INTO database_tables VALUES("states","profine_states");



DROP TABLE meta_tag;

CREATE TABLE `meta_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `page` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `meta_title` text COLLATE latin1_general_ci,
  `meta_robot` text COLLATE latin1_general_ci NOT NULL,
  `meta_keyword` text COLLATE latin1_general_ci NOT NULL,
  `meta_description` text COLLATE latin1_general_ci NOT NULL,
  `status` enum('0','1') COLLATE latin1_general_ci NOT NULL DEFAULT '1' COMMENT '0->De Active, 1->Active',
  `date_added` int(10) unsigned NOT NULL COMMENT 'date added',
  `date_edited` int(11) NOT NULL COMMENT 'date added',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO meta_tag VALUES("1","about-us","ChicagoLoopWebDesign &acirc;€“ SEO, Website Design &amp; Development Company , Chicago, Illinois","Follow, index","about ChicagoLoopWebDesign, ICM, web design, web development, website design, ecommerce solution, custom solution, e-mail marketing, landing page, web development, Ferotech services solution, mini website, web solution","ChicagoLoopWebDesign is the integral part of InfoComMarketing (ICM) - Chicago based web design, development and SEO company. To learn more visit us online or call 847-466-1021.","1","1374855013","1374860878");
INSERT INTO meta_tag VALUES("2","career","Career","Follow, index","about ChicagoLoopWebDesign, ICM, web design, web development, website design, ecommerce solution, custom solution, e-mail marketing, landing page, web development, Ferotech services solution, mini website, web solution","ChicagoLoopWebDesign is the integral part of InfoComMarketing (ICM) - Chicago based web design, development and SEO company. To learn more visit us online or call 847-466-1021.","1","1374855028","1374861096");
INSERT INTO meta_tag VALUES("3","contact"," Contact Us for Web Marketing, Website Design, Website Development &amp; Content Marketing ","Follow, index","contact us, contact to best web marking company chicago, contact for website development, ChicagoLoopWebDesign contact us"," Contact to ChicagoLoopWebDesign for Seo services, web marketing, content marketing, website design and development services in Chicago, Illinois. ","1","1374855047","1374861164");
INSERT INTO meta_tag VALUES("4","content-management-portfolio","content-management-portfolio","No Follow, No index","content-management-portfolio","content-management-portfolio","1","1374855061","1374855491");
INSERT INTO meta_tag VALUES("5","content-management-system ","Content Management System CMS Development, CMS Website Development, Content Management Development Chicago ","Follow, index"," CMS, content management system , content management development, CMS website development, CMS solutions, CMS Software, website content management, web cms, website cms  chicago"," Leading Chicago CMS website development company, ChicagoLoopWebDesign, is offering CMS Content management system development for managing the websites through Content management solution at affordable price. ","1","1374855074","1374861430");
INSERT INTO meta_tag VALUES("6","content-marketing"," Content Marketing Company, Online Content Marketing Services Chicago, Illinois","Follow, index","content marketing, content marketing services, content marketing company, content marketing company chicago, content marketing firm, content marketing agency, content marketing firm in Chicago, illinois"," Content Marketing is a marketing technique of creating, editing and distributing valuable content to draw targeted audience. ChicagoLoopWebDesign Company has a professional content marketing team for creating, editing and sharing content. Get best price quotes today!","1","1374855573","1374861969");
INSERT INTO meta_tag VALUES("7","corporate-website-design"," Chicago Corporate web Design Services - Website Designing Company Chicago ","Follow, index","corporate web design, web design, website design, corporate website design company, corporate website design firm, Chicago corporate website design,  website agency, Chicago website design agency, web development company, seo company"," Our professional design team design corporate websites for small and large business focused &amp; corporate look. Our professional specialist in corporate website designing and web promotion. Get best price quote. ","1","0","1374860478");
INSERT INTO meta_tag VALUES("8","custom-web-development"," Chicago Custom Software Development &amp; Web Application Development services Chicago ","Follow, index"," web development, custom software development, custom web development, web application development, chicago software company, software development firm chicago, web development company chicago, custom development agency, software development agency "," ChicagoLoopWebDesign Chicago, Leading web design &amp; web development company offers full web development, custom software development and web application development services in Chicago. Get best price quote at incredible price.","1","0","1374861233");
INSERT INTO meta_tag VALUES("9","custom-website-design","Custom Website Designing, Custom Web Design Services Chicago, Custom Web Design Company Chicago ","Follow, index","custom web design, web design, custom website design services, affordable custom web design, custom web designing, web designing firm, web 2.0 sites, custom web design chicago,  website design firm chicago","Custom web design company based on Chicago - offer custom website design, web design, web 2.0 based seo friendly at affordable price!","1","0","1374859644");
INSERT INTO meta_tag VALUES("10","ecommerce"," Ecommerce Shopping Cart Software - E-commerce Website Design Chicago","Follow, index","ecommerce solution, ecommerce solutions, e-commerce software, ecommerce shopping cart chicago, e-commerce shopping cart software chicago, ecommerce software solution, ecommerce web design chicago"," ChicagoLoopWebDesign offers ecommerce software solutions and shopping cart website that increase your revenue and handle your online business. For more information visit us online.","1","0","1374861493");
INSERT INTO meta_tag VALUES("11","e-commerce-portfolio","e-commerce-portfolio","e-commerce-portfolio","e-commerce-portfolio","e-commerce-portfolio","1","0","0");
INSERT INTO meta_tag VALUES("12","email-marketing"," E-mail Marketing Services, Email Marketing Company Chicago ","Follow, index","email marketing, email marketing services, email campaigns, e-mail marketing, email marketing company, email marketing company in chicago, e-mail marketing services in chicago, email marketing solution, web design, website design, SEO.","Looking for email marketing services in Chicago, Illinois? we offers simple and efficient email marketing services in Chicago region. Our professional customizes your email newsletter by using html template, images and email list. ","1","0","1374862044");
INSERT INTO meta_tag VALUES("13","flash-website-design","Flash Design, Flash Website Design Chicago, Flash Web Design company Chicago","Follow, index","flash design, flash web design, website design, flash website design chicago, web development, ecommerce, SEO, web design company, web design firm chicago, Illinois"," Flash website design company Chicago - offer custom flash web design services. Our professional flash web designers team create search engine friendly website design. We offer website design services at affordable price.","1","0","1380200229");
INSERT INTO meta_tag VALUES("14","free-quote","free-quote","free-quote","free-quote","free-quote","1","0","0");
INSERT INTO meta_tag VALUES("15","html-website-design","Chicago HTML Website Design - Simple &amp; Innovative ","Follow, index","web design, website design, web design company, HTML website design, html web design chicago, flash web design, web development, ecommerce, seo","HTML Based Websites - Introduces simple and innovative concept in the field of website design. HTML website design company based in chicago - Specialist in web design, small business web design, HTML SEO friendly web design.","1","0","1374860368");
INSERT INTO meta_tag VALUES("16","index","index","index","index","index","1","0","0");
INSERT INTO meta_tag VALUES("17","internet-marketing","internet-marketing","internet-marketing","internet-marketing","internet-marketing","1","0","0");
INSERT INTO meta_tag VALUES("18","landing-pages"," Landing Page Design, Landing Page Optimization, Promotion - Generate Traffic ","Follow, index","landing pages, landing page design,  landing page optimization, landing page templates, chicago landing page design, website design, web design, landing page promotion, landing page design firm, landing page design agency"," Landing page design is the key for the success of a pay per click advertising campaign. Our landing page design and optimization services will help to increase the numbers of visitors. ","1","0","1374860706");
INSERT INTO meta_tag VALUES("19","link-building","SEO Link Building, Link Building Services Chicago, Illinois","Follow, index","link building, link building services, link building company, link building services chicago, one way link building, one way link building services, SEO, link building firm, link building agency, Chicago, Illinois "," SEO Link Building Services Chicago - Offers quality one way links or non- reciprocal links to help businesses to get more website traffic through high search engine ranking. Contact us to today for your better requirements!","1","0","1374863264");
INSERT INTO meta_tag VALUES("20","mini-website-portfolio","mini-website-portfolio","mini-website-portfolio","mini-website-portfolio","mini-website-portfolio","1","0","0");
INSERT INTO meta_tag VALUES("21","mobile-website-design","Mobile Website Design Services - Website for Smartphones &amp; Tablets ","Follow, index","mobile website, mobile website design, mobile website design company, smartphone website design, smartphone website designing, mobile website designing company chicago, smartphone design firm, mobile web design agency"," Mobile web designing company based on chicago offer mobile based website design &amp; development services, mobile website developed for WAP, XHTML browsers for mobile and smartphones. For more information visit us online. ","1","0","1374860544");
INSERT INTO meta_tag VALUES("22","port_content-management","port_content-management","port_content-management","port_content-management","port_content-management","1","0","0");
INSERT INTO meta_tag VALUES("23","port_dynamic_or_mini_website","port_dynamic_or_mini_website","port_dynamic_or_mini_website","port_dynamic_or_mini_website","port_dynamic_or_mini_website","1","0","0");
INSERT INTO meta_tag VALUES("24","port_e-commerce","port_e-commerce","port_e-commerce","port_e-commerce","port_e-commerce","1","0","0");
INSERT INTO meta_tag VALUES("25","port_web_application","port_web_application","port_web_application","port_web_application","port_web_application","1","0","0");
INSERT INTO meta_tag VALUES("26","portfolio","portfolio","portfolio","portfolio","portfolio","1","0","0");
INSERT INTO meta_tag VALUES("27","portfolio-web_design","portfolio-web_design","portfolio-web_design","portfolio-web_design","portfolio-web_design","1","0","0");
INSERT INTO meta_tag VALUES("28","results"," Proven Search Engine Optimization (SEO) Results - Top 10 Ranking in the Major Search Engines","Follow, index"," seo results, search engine optimization results, seo rankings, website rankings, organic seo services, website traffic rankings, web rankings, website traffic rankings, website traffic results, chicago, Illinois"," ChicagoLoopWebDesign offers affordable organic SEO packages, SEO services to help our clients website get highly ranked on top 10 position in the major search engines. Review our SEO success stories and proven SEO results.","1","0","1374863211");
INSERT INTO meta_tag VALUES("29","search-engine-optimization","Chicago SEO Company, Search Engine Optimization Firm, SEO Services in Chicago","Follow, index","seo chicago, seo company in chicago, search engine optimization, seo services, website promotion, search engine optimization firm,  seo services Chicago, Chicago seo agency"," SEO Company Chicago - ChicagoLoopWebDesign is a professional Web Design &amp; SEO company in Chicago offer search engine optimization, affordable seo services for small and large size online business. For best price quotes contact us online.","1","0","1374862103");
INSERT INTO meta_tag VALUES("30","sitemap","sitemap","sitemap","sitemap","sitemap","1","0","0");
INSERT INTO meta_tag VALUES("31","social-media-marketing","Chicago Social Media Marketing Services, SMM Social Media Marketing Company Chicago","Follow, index","Social media optimization, social media marketing, social media marketing services, social media marketing company, SMO, SMM, social media optimization firm, social media marketing company chicago, SMO in chicago, SMM services, SMM firm, Social media marketing agency"," Social Media Marketing Service provider company ChicagoLoopWebDesign. Our professional expert will help to build your brand on Facebook, Twitter, MySpace, LinkedIn and other social network community.","1","0","1374861891");
INSERT INTO meta_tag VALUES("32","social-networks-development","Social Networking Development services, Social Networking website Design Development Chicago","Follow, index","social network, web 2.0, social network development, website design, custom social network development, web design, social network development chicago"," Chicago based professional website design company specialist in social networking website development, web 2.0 design and ecommerce website design &amp; development for small and corporates business.","1","0","1374861630");
INSERT INTO meta_tag VALUES("33","web-application-portfolio","web-application-portfolio","web-application-portfolio","web-application-portfolio","web-application-portfolio","1","0","0");
INSERT INTO meta_tag VALUES("34","web-design-portfolio","web-design-portfolio","web-design-portfolio","web-design-portfolio","web-design-portfolio","1","0","0");
INSERT INTO meta_tag VALUES("35","web-marketing"," Internet Marketing Company, Chicago Online Marketing, Web Marketing Company Chicago","Follow, index","internet marketing, web marketing , content marketing, internet marketing services, seo, seo services, internet marketing company, seo company, seo firm, internet marketing agency, seo services company chicago, web design, website design company, SMO, SEO"," ChicagoLoopWebDesign offer web marketing and content marketing services for Chicago based small and large businesses and achieve their online marketing goals. For more information visit us online or call us 847-466-1021. ","1","0","1374861830");
INSERT INTO meta_tag VALUES("36","website-design","Chicago Custom Website Design, Small Business Web Design, Website Designer in Chicago, Illinois ","Follow, index","web design, website design, website designing company,  website design firm, custom website design, web design company chicago, custom website designing chicago, website designer chicago ","Small Business Website Design Chicago by ChicagoLoopWebDesign, is leading website design &amp; development company offers high quality creative custom business website design, affordable web design for Chicago region. For more information or quotes contact us online! ","1","0","1374859564");
INSERT INTO meta_tag VALUES("37","website-development","Chicago Website Development, Custom Web Development, Application Development Company Chicago","Follow, index","web development, web application development, software development, custom software development, website development, web application development firm, web development agency, software development company chicago, website development chicago, illinois "," ChicagoLoopWebDesign is a web design &amp; development company based on Chicago, Illinois. Offer several kinds of software development technologies like custom web development, ecommerce development, PHP development, CRM development. Get best price quotes. ","1","0","1374861315");
INSERT INTO meta_tag VALUES("38","website-maintenance","Website Maintenance - Web Design &amp; Development Maintenance company Chicago ","Follow, index","web maintenance, website maintenance, web maintenance services, web page maintenance, web site maintenance, web maintenance service Chicago, website design maintenance, website development maintenance, web maintenance firm, web maintenance agency chicago"," Chicago based website maintenance company offers complete website maintenance services from simple web page maintenance, website design maintenance, website development maintenance at affordable price. For more information visit us online or call us 847-466-1021.","1","0","1374861568");
INSERT INTO meta_tag VALUES("39","index","Chicago Web Design, Development &amp; SEO Services in Chicago, Illinois","Follow, index, all","web design, website design company, chicago web design, web design chicago,  website designing, web development company, web application development chicago, SEO company, search engine optimization company chicago, web marketing services, website promotion, SEO firm chicago, web development, application development, web design firm chicago, web marketing firm chicago","Chicago SEO, website design &amp; development company offers clean and effective high quality creative website design, development and SEO services in Chicago, illinois. For free quotes contact us online or call us 847-466-1021.","1","0","1374859237");
INSERT INTO meta_tag VALUES("40","website-redesign","Website Redesign Services, Website Redesigning Company Chicago ","Follow, index","website redesign, web redesign, website redesign services, professional web design,  chicago website redesign company, web redesign services,  web site re design, website re design chicago, web 2.0 redesign, redesign website proposal, restructure website, complete website redesign, update website, SEO website redesign","ChicagoLoopWebDesign provides complete web redesign and website redesign services. Our expert website designers redesign your old website with a new look and enhance your web visibility to boost your business.","1","0","1382427232");



DROP TABLE profine_admin_ip_tracking;

CREATE TABLE `profine_admin_ip_tracking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

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
INSERT INTO profine_admin_ip_tracking VALUES("101","1","122.177.161.84","2012-01-18 09:03:35");
INSERT INTO profine_admin_ip_tracking VALUES("102","1","122.177.146.201","2012-01-19 10:12:27");
INSERT INTO profine_admin_ip_tracking VALUES("103","1","122.177.146.201","2012-01-20 02:44:20");
INSERT INTO profine_admin_ip_tracking VALUES("104","1","122.177.146.201","2012-01-24 03:22:30");
INSERT INTO profine_admin_ip_tracking VALUES("105","1","122.177.146.201","2012-01-24 03:27:04");
INSERT INTO profine_admin_ip_tracking VALUES("106","1","122.177.146.201","2012-01-24 04:55:23");
INSERT INTO profine_admin_ip_tracking VALUES("107","1","122.177.146.201","2012-01-24 05:25:16");
INSERT INTO profine_admin_ip_tracking VALUES("108","1","122.177.146.201","2012-01-24 11:22:55");
INSERT INTO profine_admin_ip_tracking VALUES("109","1","122.177.13.164","2012-02-05 10:48:01");
INSERT INTO profine_admin_ip_tracking VALUES("110","1","115.241.243.108","2012-03-11 09:42:28");
INSERT INTO profine_admin_ip_tracking VALUES("111","1","122.177.63.99","2012-11-20 03:28:49");
INSERT INTO profine_admin_ip_tracking VALUES("112","1","122.177.63.99","2012-11-22 02:19:15");
INSERT INTO profine_admin_ip_tracking VALUES("113","1","122.177.63.99","2012-12-03 09:43:21");
INSERT INTO profine_admin_ip_tracking VALUES("114","1","122.177.157.163","2012-12-23 09:43:50");
INSERT INTO profine_admin_ip_tracking VALUES("115","1","122.177.164.28","2013-04-17 01:25:34");
INSERT INTO profine_admin_ip_tracking VALUES("116","1","122.177.164.28","2013-04-18 01:00:51");
INSERT INTO profine_admin_ip_tracking VALUES("117","1","122.177.164.28","2013-04-23 07:48:53");
INSERT INTO profine_admin_ip_tracking VALUES("118","1","122.177.164.28","2013-04-23 09:53:54");
INSERT INTO profine_admin_ip_tracking VALUES("119","1","122.177.164.28","2013-04-23 10:32:34");
INSERT INTO profine_admin_ip_tracking VALUES("120","1","122.177.219.24","2013-05-14 12:39:09");
INSERT INTO profine_admin_ip_tracking VALUES("121","1","122.177.244.59","2013-06-18 10:15:57");
INSERT INTO profine_admin_ip_tracking VALUES("122","1","122.177.65.15","2013-09-06 01:12:31");
INSERT INTO profine_admin_ip_tracking VALUES("123","1","122.177.186.42","2013-11-13 04:32:29");
INSERT INTO profine_admin_ip_tracking VALUES("124","1","122.177.186.42","2013-11-14 10:55:54");
INSERT INTO profine_admin_ip_tracking VALUES("125","1","122.177.209.157","2013-11-22 05:07:37");
INSERT INTO profine_admin_ip_tracking VALUES("126","1","122.177.52.54","2013-11-27 05:38:51");
INSERT INTO profine_admin_ip_tracking VALUES("127","1","127.0.0.1","2014-01-29 06:10:54");
INSERT INTO profine_admin_ip_tracking VALUES("128","1","127.0.0.1","2014-02-03 11:25:25");
INSERT INTO profine_admin_ip_tracking VALUES("129","1","127.0.0.1","2014-02-04 07:44:54");
INSERT INTO profine_admin_ip_tracking VALUES("130","1","127.0.0.1","2014-02-12 11:26:37");
INSERT INTO profine_admin_ip_tracking VALUES("131","1","127.0.0.1","2014-02-17 10:01:58");
INSERT INTO profine_admin_ip_tracking VALUES("132","1","127.0.0.1","2014-02-20 11:21:37");
INSERT INTO profine_admin_ip_tracking VALUES("133","1","127.0.0.1","2014-02-28 07:43:48");
INSERT INTO profine_admin_ip_tracking VALUES("134","1","127.0.0.1","2014-02-28 07:44:29");
INSERT INTO profine_admin_ip_tracking VALUES("135","1","127.0.0.1","2014-02-28 07:48:52");
INSERT INTO profine_admin_ip_tracking VALUES("136","1","127.0.0.1","2014-03-07 07:00:39");
INSERT INTO profine_admin_ip_tracking VALUES("137","1","::1","2015-09-04 09:31:02");
INSERT INTO profine_admin_ip_tracking VALUES("138","1","::1","2015-09-04 09:42:25");



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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO profine_cms VALUES("2","3","","&lt;p&gt;Profine is the emphatic answer to the complex development of the international market for uPVC profiles. Under the brands KBE, K&amp;Ouml;MMERLING and TROCAL, we produce uPVC profiles for windows and doors, shutters and fa&amp;ccedil;ades as well as uPVC sheets.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine GmbH -International Profile Group - was established in 2003, when HT TROPLAST consolidated its profile business activities under one roof. The profine company headquarters is in Troisdorf (North Rhine-Westphalia, Germany).&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The Management Board of profine group consists of Frank Pohl (CEO), Gerhard Bickmann, Achim Judt, Albrecht P. Lange and Gerhard Schwager.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With a market share about 20%, our company is the world-wide industry leader.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Profine has a total of 3,200 employees in 28 locations in 21 countries. Around 1,800 of these employees are in Germany.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;A sales volume of 696 million euros in the year 2010 (consolidated) and a current production capacity about 450,000 tons annually of high-quality plastic profiles are convincing proof of our capabilities and the trust of our customers.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; In Germany we have production sites in Berlin and Pirmasens&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Other production sites are located in:&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Marmoutier, France&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Bosaro, Italy&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Madrid, Spain&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Woskresensk and Chabarovsk, Russia&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Zaporozhie, Ukraine&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Tianjin, China&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p style=&quot;padding-left: 30px;&quot;&gt;&lt;span style=&quot;font-family: Wingdings;&quot;&gt;l&lt;/span&gt;&amp;nbsp; Huntsville, Alabama USA (sheets)&lt;/p&gt;\n&lt;blockquote&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;/blockquote&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;You will find contact information for our production sites and the most important sales locations here.&lt;/p&gt;","1318409403","1318429203","","1");
INSERT INTO profine_cms VALUES("3","1","KOEMMERLING - more than just a window","&lt;p&gt;Today, plastic is the most successful window material and its market share is constantly growing. In residential construction, its share is of 60 % whereas even seven out of ten windows used in renovation of old buildings are made of plastic materials. K&amp;Ouml;MMERLING offers a large number of window systems. So, every design wish can be fulfilled with different frame and sash heights and depths, double-sash elements without fixed centre post, transom/mullion combinations, real Georgian bars etc.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;The product range is rounded out with window sills, safe roller and French shutters, PVC-U sheets for the building industry (used for example as residential door panels), cladding and balcony systems.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;Efficiency, design, function, physical properties, the environmental protection and responsible handling of raw material resources meet the highest requirements and combine perfectly with the know-how of the window manufacturers to everyone&#039;s benefits.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;With the K&amp;Ouml;MMERLING brand, we face the challenges of the future with confidence, honesty and transparency. So, we can prove our leadership position in the window profile sector every day.&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;","1318409812","1318429612","","1");
INSERT INTO profine_cms VALUES("4","4","","&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;1999&lt;/strong&gt; HT TROPLAST acquires KBE Window Systems and now has  	three brands - TROCAL, KNIPPING and KBE&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2000&lt;/strong&gt; HT TROPLAST takes over K&amp;Ouml;MMERLING KUNSTSTOFFE and becomes a leading supplier on the international profile market&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2003&lt;/strong&gt; Establishment of profine GmbH as a holding company for profile      	activities&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2004&lt;/strong&gt; Knipping management buy-out and sale of HT TROPLAST to international private equity investors&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2005&lt;/strong&gt; Restructuring of HT TROPLAST-  	concentration on core business profiles&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt; &lt;strong&gt;2006&lt;/strong&gt; Consolidation of international market leadership of the profine group&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2007&lt;/strong&gt; Arcapita Investment Bank becomes the new owner of profine group&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;/ul&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2010&lt;/strong&gt; Profine GmbH opens new subsidiary, Profine India&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;strong&gt;2012&lt;/strong&gt; Hidden Peak Capital becomes the new owner of profine group&lt;/li&gt;\n&lt;/ul&gt;\n&lt;ul&gt;\n&lt;/ul&gt;","1325498165","1325517965","","1");
INSERT INTO profine_cms VALUES("5","5","Thinking ahead - The future of windows in strong brands","&lt;p&gt;Profine - the international profile group with a future. A company that possesses the crucial prerequisites to lead and define tomorrow&amp;rsquo;s market.&lt;br /&gt;&lt;br /&gt;With our successful brands KBE, K&amp;Ouml;MMERLING and TROCAL, we have the right profile for every purpose and are the world-wide No. 1 manufacturer of plastic window profiles.&lt;br /&gt;&lt;br /&gt;In addition, we are in a position to react flexibly and individually to the specific demands of the markets. This is because, in addition to our German production sites, we also produce in France, Italy, Russia, China, Ukraine, Spain and the USA and have a tight network of sales offices. This is how we offer top-quality products and consulting worldwide.&lt;br /&gt;&lt;br /&gt;When it comes to plastic windows, profine thinks ahead. With fresh ideas, future-shaping technology and the successful brands KBE, K&amp;Ouml;MMERLING and TROCAL. Our combined experience and expertise along with the creativity and flexibility of our brands put us in the lead market position with regard to both volume and quality. We leverage this advantage in the market for our customers&amp;rsquo; success.&lt;/p&gt;","1325651400rewindo-logo.gif","1325671200","","1");
INSERT INTO profine_cms VALUES("6","6","Sustainability. With a clear conscience","&lt;p&gt;Sustainability as we understand it is more than just environmental protection. To us it means the attentive handling of the markets&#039; and our customers&#039; needs. Accordingly we assign a central role not only to ecology, but also to economic aspects and issues of social relevance.&lt;br /&gt;&lt;br /&gt;With our greenline principle we think ahead, create brand values and give our customers excellent opportunities on the market: energy-efficient window systems, lead-free stabilizers in the virgin material and sophisticated recycling schemes carry the added benefit of enhancing sustainability.&lt;br /&gt;&lt;br /&gt;Our products fulfil all of the requirements for thermal insulation and the associated energy efficiency. They return a sustainable CO&lt;span style=&quot;font-size: xx-small;&quot;&gt;&lt;sub&gt;2&lt;/sub&gt;&lt;/span&gt; balance and a superior price-performance ratio coupled with a long service life. They therefore fulfil and exceed the functional requirements specialised window manufacturers, architects, developers, and end users&lt;br /&gt;demand from these sectors.&lt;br /&gt;&lt;br /&gt;For nearly ten years now we have been producing uPVC profiles extensively with lead-free stabilisers based on ecofriendly calcium and zinc. Since 2004 we have done away completely with lead in the virgin material for all of our brand systems.&lt;br /&gt;&lt;br /&gt;We specifically integrate regrind materials in our profiles because our knowhow has shown that these lead to better products. This maintains the efficiency of our draw on resources and testifies to the responsibility we take in our operations. Greenhouse gas emissions caused by the recycling material incorporated in the profile are, at average, lower by about 90% than from traditional plastic window materials.&lt;br /&gt;&lt;br /&gt;In addition we as a founding member of a nationwide recycling initiative assure that old uPVC windows are recycled in a self contained cycle.&lt;br /&gt;&lt;br /&gt;With the aim of optimising further the value created for windows our engineers are developing the latest product generations with less material, but with improved engineering properties. Intelligent chamber systems and static&lt;br /&gt;structural attributes on the one hand serve to minimise the draw on resources, and on the other culminate in extraordinarily competitive products.&lt;br /&gt;&lt;br /&gt;K&amp;Ouml;MMERLING is a proactive practitioner of the various aspects presented by the global trend towards sustainability.&lt;br /&gt;&lt;br /&gt;For ultimately it is our aim to provide our partner companies and their customers with economically and ecologically perfected system solutions that justify the decisions they make in good faith. Good sense and responsibility &amp;ndash; with a clear conscience.&lt;/p&gt;","1326357962","1326377762","","1");



DROP TABLE profine_countries;

CREATE TABLE `profine_countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mastvalue` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=latin1;

INSERT INTO profine_countries VALUES("1","Afghanistan","0","AFA");
INSERT INTO profine_countries VALUES("2","Albania","0","ALL");
INSERT INTO profine_countries VALUES("3","Algeria","0","DZD");
INSERT INTO profine_countries VALUES("4","American Samoa","0","USD");
INSERT INTO profine_countries VALUES("5","Andorra","0","EUR");
INSERT INTO profine_countries VALUES("6","Angola","0","AOA");
INSERT INTO profine_countries VALUES("7","Anguilla","0","XCD");
INSERT INTO profine_countries VALUES("8","Antarctica","0","");
INSERT INTO profine_countries VALUES("9","Antigua and Barbuda","0","XCD");
INSERT INTO profine_countries VALUES("10","Argentina","0","ARS");
INSERT INTO profine_countries VALUES("11","Armenia","0","AMD");
INSERT INTO profine_countries VALUES("12","Aruba","0","AWG");
INSERT INTO profine_countries VALUES("13","Ashmore and Cartier","0","");
INSERT INTO profine_countries VALUES("14","Australia","0","AUD");
INSERT INTO profine_countries VALUES("15","Austria","0","EUR");
INSERT INTO profine_countries VALUES("16","Azerbaijan","0","AZM");
INSERT INTO profine_countries VALUES("17","The Bahamas","0","BSD");
INSERT INTO profine_countries VALUES("18","Bahrain","0","BHD");
INSERT INTO profine_countries VALUES("19","Baker Island","0","");
INSERT INTO profine_countries VALUES("20","Bangladesh","0","BDT");
INSERT INTO profine_countries VALUES("21","Barbados","0","BBD");
INSERT INTO profine_countries VALUES("22","Bassas da India","0","");
INSERT INTO profine_countries VALUES("23","Belarus","0","BYR");
INSERT INTO profine_countries VALUES("24","Belgium","0","EUR");
INSERT INTO profine_countries VALUES("25","Belize","0","BZD");
INSERT INTO profine_countries VALUES("26","Benin","0","XOF");
INSERT INTO profine_countries VALUES("27","Bermuda","0","BMD");
INSERT INTO profine_countries VALUES("28","Bhutan","0","BTN");
INSERT INTO profine_countries VALUES("29","Bolivia","0","BOB");
INSERT INTO profine_countries VALUES("30","Bosnia and Herzegovina","0","BAM");
INSERT INTO profine_countries VALUES("31","Botswana","0","BWP");
INSERT INTO profine_countries VALUES("32","Bouvet Island","0","NOK");
INSERT INTO profine_countries VALUES("33","Brazil","0","BRL");
INSERT INTO profine_countries VALUES("34","British Indian Ocean Territory","0","USD");
INSERT INTO profine_countries VALUES("35","British Virgin Islands","0","USD");
INSERT INTO profine_countries VALUES("36","Brunei Darussalam","0","BND");
INSERT INTO profine_countries VALUES("37","Bulgaria","0","BGN");
INSERT INTO profine_countries VALUES("38","Burkina Faso","0","XOF");
INSERT INTO profine_countries VALUES("39","Burma","0","MMK");
INSERT INTO profine_countries VALUES("40","Burundi","0","BIF");
INSERT INTO profine_countries VALUES("41","Cambodia","0","KHR");
INSERT INTO profine_countries VALUES("42","Cameroon","0","XAF");
INSERT INTO profine_countries VALUES("43","Canada","0","CAD");
INSERT INTO profine_countries VALUES("44","Cape Verde","0","CVE");
INSERT INTO profine_countries VALUES("45","Cayman Islands","0","KYD");
INSERT INTO profine_countries VALUES("46","Central African Republic","0","XAF");
INSERT INTO profine_countries VALUES("47","Chad","0","XAF");
INSERT INTO profine_countries VALUES("48","Chile","0","CLP");
INSERT INTO profine_countries VALUES("49","China","0","CNY");
INSERT INTO profine_countries VALUES("50","Christmas Island","0","AUD");
INSERT INTO profine_countries VALUES("51","Clipperton Island","0","");
INSERT INTO profine_countries VALUES("52","Cocos (Keeling) Islands","0","AUD");
INSERT INTO profine_countries VALUES("53","Colombia","0","COP");
INSERT INTO profine_countries VALUES("54","Comoros","0","KMF");
INSERT INTO profine_countries VALUES("55","Congo, Democratic Republic of the","0","CDF");
INSERT INTO profine_countries VALUES("56","Congo, Republic of the","0","XAF");
INSERT INTO profine_countries VALUES("57","Cook Islands","0","NZD");
INSERT INTO profine_countries VALUES("58","Coral Sea Islands","0","");
INSERT INTO profine_countries VALUES("59","Costa Rica","0","CRC");
INSERT INTO profine_countries VALUES("60","Cote d\'Ivoire","0","XOF");
INSERT INTO profine_countries VALUES("61","Croatia","0","HRK");
INSERT INTO profine_countries VALUES("62","Cuba","0","CUP");
INSERT INTO profine_countries VALUES("63","Cyprus","0","CYP");
INSERT INTO profine_countries VALUES("64","Czech Republic","0","CZK");
INSERT INTO profine_countries VALUES("65","Denmark","0","DKK");
INSERT INTO profine_countries VALUES("66","Djibouti","0","DJF");
INSERT INTO profine_countries VALUES("67","Dominica","0","XCD");
INSERT INTO profine_countries VALUES("68","Dominican Republic","0","DOP");
INSERT INTO profine_countries VALUES("69","East Timor","0","TPE");
INSERT INTO profine_countries VALUES("70","Ecuador","0","USD");
INSERT INTO profine_countries VALUES("71","Egypt","0","EGP");
INSERT INTO profine_countries VALUES("72","El Salvador","0","SVC");
INSERT INTO profine_countries VALUES("73","Equatorial Guinea","0","XAF");
INSERT INTO profine_countries VALUES("74","Eritrea","0","ERN");
INSERT INTO profine_countries VALUES("75","Estonia","0","EEK");
INSERT INTO profine_countries VALUES("76","Ethiopia","0","ETB");
INSERT INTO profine_countries VALUES("77","Europa Island","0","");
INSERT INTO profine_countries VALUES("78","Falkland Islands (Islas Malvinas)","0","FKP");
INSERT INTO profine_countries VALUES("79","Faroe Islands","0","DKK");
INSERT INTO profine_countries VALUES("80","Fiji","0","FJD");
INSERT INTO profine_countries VALUES("81","Finland","0","EUR");
INSERT INTO profine_countries VALUES("82","France","0","EUR");
INSERT INTO profine_countries VALUES("83","France, Metropolitan","0","EUR");
INSERT INTO profine_countries VALUES("84","French Guiana","0","EUR");
INSERT INTO profine_countries VALUES("85","French Polynesia","0","XPF");
INSERT INTO profine_countries VALUES("86","French Southern and Antarctic Lands","0","EUR");
INSERT INTO profine_countries VALUES("87","Gabon","0","XAF");
INSERT INTO profine_countries VALUES("88","The Gambia","0","GMD");
INSERT INTO profine_countries VALUES("89","Gaza Strip","0","ILS");
INSERT INTO profine_countries VALUES("90","Georgia","0","GEL");
INSERT INTO profine_countries VALUES("91","Germany","0","EUR");
INSERT INTO profine_countries VALUES("92","Ghana","0","GHC");
INSERT INTO profine_countries VALUES("93","Gibraltar","0","GIP");
INSERT INTO profine_countries VALUES("94","Glorioso Islands","0","");
INSERT INTO profine_countries VALUES("95","Greece","0","EUR");
INSERT INTO profine_countries VALUES("96","Greenland","0","DKK");
INSERT INTO profine_countries VALUES("97","Grenada","0","XCD");
INSERT INTO profine_countries VALUES("98","Guadeloupe","0","EUR");
INSERT INTO profine_countries VALUES("99","Guam","0","USD");
INSERT INTO profine_countries VALUES("100","Guatemala","0","GTQ");
INSERT INTO profine_countries VALUES("101","Guernsey","0","GBP");
INSERT INTO profine_countries VALUES("102","Guinea","0","GNF");
INSERT INTO profine_countries VALUES("103","Guinea-Bissau","0","XOF");
INSERT INTO profine_countries VALUES("104","Guyana","0","GYD");
INSERT INTO profine_countries VALUES("105","Haiti","0","HTG");
INSERT INTO profine_countries VALUES("106","Heard Island and McDonald Islands","0","AUD");
INSERT INTO profine_countries VALUES("107","Holy See (Vatican City)","0","EUR");
INSERT INTO profine_countries VALUES("108","Honduras","0","HNL");
INSERT INTO profine_countries VALUES("109","Hong Kong (SAR)","0","HKD");
INSERT INTO profine_countries VALUES("110","Howland Island","0","");
INSERT INTO profine_countries VALUES("111","Hungary","0","HUF");
INSERT INTO profine_countries VALUES("112","Iceland","0","ISK");
INSERT INTO profine_countries VALUES("113","India","0","INR");
INSERT INTO profine_countries VALUES("114","Indonesia","0","IDR");
INSERT INTO profine_countries VALUES("115","Iran","0","IRR");
INSERT INTO profine_countries VALUES("116","Iraq","0","IQD");
INSERT INTO profine_countries VALUES("117","Ireland","0","EUR");
INSERT INTO profine_countries VALUES("118","Israel","0","ILS");
INSERT INTO profine_countries VALUES("119","Italy","0","EUR");
INSERT INTO profine_countries VALUES("120","Jamaica","0","JMD");
INSERT INTO profine_countries VALUES("121","Jan Mayen","0","NOK");
INSERT INTO profine_countries VALUES("122","Japan","0","JPY");
INSERT INTO profine_countries VALUES("123","Jarvis Island","0","");
INSERT INTO profine_countries VALUES("124","Jersey","0","GBP");
INSERT INTO profine_countries VALUES("125","Johnston Atoll","0","");
INSERT INTO profine_countries VALUES("126","Jordan","0","JOD");
INSERT INTO profine_countries VALUES("127","Juan de Nova Island","0","");
INSERT INTO profine_countries VALUES("128","Kazakhstan","0","KZT");
INSERT INTO profine_countries VALUES("129","Kenya","0","KES");
INSERT INTO profine_countries VALUES("130","Kingman Reef","0","");
INSERT INTO profine_countries VALUES("131","Kiribati","0","AUD");
INSERT INTO profine_countries VALUES("132","Korea, North","0","KPW");
INSERT INTO profine_countries VALUES("133","Korea, South","0","KRW");
INSERT INTO profine_countries VALUES("134","Kuwait","0","KWD");
INSERT INTO profine_countries VALUES("135","Kyrgyzstan","0","KGS");
INSERT INTO profine_countries VALUES("136","Laos","0","LAK");
INSERT INTO profine_countries VALUES("137","Latvia","0","LVL");
INSERT INTO profine_countries VALUES("138","Lebanon","0","LBP");
INSERT INTO profine_countries VALUES("139","Lesotho","0","LSL");
INSERT INTO profine_countries VALUES("140","Liberia","0","LRD");
INSERT INTO profine_countries VALUES("141","Libya","0","LYD");
INSERT INTO profine_countries VALUES("142","Liechtenstein","0","CHF");
INSERT INTO profine_countries VALUES("143","Lithuania","0","LTL");
INSERT INTO profine_countries VALUES("144","Luxembourg","0","EUR");
INSERT INTO profine_countries VALUES("145","Macao","0","MOP");
INSERT INTO profine_countries VALUES("146","Macedonia, The Former Yugoslav Republic of","0","MKD");
INSERT INTO profine_countries VALUES("147","Madagascar","0","MGF");
INSERT INTO profine_countries VALUES("148","Malawi","0","MWK");
INSERT INTO profine_countries VALUES("149","Malaysia","0","MYR");
INSERT INTO profine_countries VALUES("150","Maldives","0","MVR");
INSERT INTO profine_countries VALUES("151","Mali","0","XOF");
INSERT INTO profine_countries VALUES("152","Malta","0","EUR");
INSERT INTO profine_countries VALUES("153","Man, Isle of","0","GBP");
INSERT INTO profine_countries VALUES("154","Marshall Islands","0","USD");
INSERT INTO profine_countries VALUES("155","Martinique","0","EUR");
INSERT INTO profine_countries VALUES("156","Mauritania","0","MRO");
INSERT INTO profine_countries VALUES("157","Mauritius","0","MUR");
INSERT INTO profine_countries VALUES("158","Mayotte","0","EUR");
INSERT INTO profine_countries VALUES("159","Mexico","0","MXN");
INSERT INTO profine_countries VALUES("160","Micronesia, Federated States of","0","USD");
INSERT INTO profine_countries VALUES("161","Midway Islands","0","USD");
INSERT INTO profine_countries VALUES("162","Miscellaneous (French)","0","");
INSERT INTO profine_countries VALUES("163","Moldova","0","MDL");
INSERT INTO profine_countries VALUES("164","Monaco","0","EUR");
INSERT INTO profine_countries VALUES("165","Mongolia","0","MNT");
INSERT INTO profine_countries VALUES("166","Montenegro","0","");
INSERT INTO profine_countries VALUES("167","Montserrat","0","XCD");
INSERT INTO profine_countries VALUES("168","Morocco","0","MAD");
INSERT INTO profine_countries VALUES("169","Mozambique","0","MZM");
INSERT INTO profine_countries VALUES("170","Myanmar","0","MMK");
INSERT INTO profine_countries VALUES("171","Namibia","0","NAD");
INSERT INTO profine_countries VALUES("172","Nauru","0","AUD");
INSERT INTO profine_countries VALUES("173","Navassa Island","0","");
INSERT INTO profine_countries VALUES("174","Nepal","0","NPR");
INSERT INTO profine_countries VALUES("175","Netherlands","0","EUR");
INSERT INTO profine_countries VALUES("176","Netherlands Antilles","0","ANG");
INSERT INTO profine_countries VALUES("177","New Caledonia","0","XPF");
INSERT INTO profine_countries VALUES("178","New Zealand","0","NZD");
INSERT INTO profine_countries VALUES("179","Nicaragua","0","NIO");
INSERT INTO profine_countries VALUES("180","Niger","0","XOF");
INSERT INTO profine_countries VALUES("181","Nigeria","0","NGN");
INSERT INTO profine_countries VALUES("182","Niue","0","NZD");
INSERT INTO profine_countries VALUES("183","Norfolk Island","0","AUD");
INSERT INTO profine_countries VALUES("184","Northern Mariana Islands","0","USD");
INSERT INTO profine_countries VALUES("185","Norway","0","NOK");
INSERT INTO profine_countries VALUES("186","Oman","0","OMR");
INSERT INTO profine_countries VALUES("187","Pakistan","0","PKR");
INSERT INTO profine_countries VALUES("188","Palau","0","USD");
INSERT INTO profine_countries VALUES("189","Palmyra Atoll","0","");
INSERT INTO profine_countries VALUES("190","Panama","0","PAB");
INSERT INTO profine_countries VALUES("191","Papua New Guinea","0","PGK");
INSERT INTO profine_countries VALUES("192","Paracel Islands","0","");
INSERT INTO profine_countries VALUES("193","Paraguay","0","PYG");
INSERT INTO profine_countries VALUES("194","Peru","0","PEN");
INSERT INTO profine_countries VALUES("195","Philippines","0","PHP");
INSERT INTO profine_countries VALUES("196","Pitcairn Islands","0","NZD");
INSERT INTO profine_countries VALUES("197","Poland","0","PLN");
INSERT INTO profine_countries VALUES("198","Portugal","0","EUR");
INSERT INTO profine_countries VALUES("199","Puerto Rico","0","USD");
INSERT INTO profine_countries VALUES("200","Qatar","0","QAR");
INSERT INTO profine_countries VALUES("201","Réunion","0","EUR");
INSERT INTO profine_countries VALUES("202","Romania","0","ROL");
INSERT INTO profine_countries VALUES("203","Russia","0","RUB");
INSERT INTO profine_countries VALUES("204","Rwanda","0","RWF");
INSERT INTO profine_countries VALUES("205","Saint Helena","0","SHP");
INSERT INTO profine_countries VALUES("206","Saint Kitts and Nevis","0","XCD");
INSERT INTO profine_countries VALUES("207","Saint Lucia","0","XCD");
INSERT INTO profine_countries VALUES("208","Saint Pierre and Miquelon","0","EUR");
INSERT INTO profine_countries VALUES("209","Saint Vincent and the Grenadines","0","XCD");
INSERT INTO profine_countries VALUES("210","Samoa","0","WST");
INSERT INTO profine_countries VALUES("211","San Marino","0","EUR");
INSERT INTO profine_countries VALUES("212","São Tomé and Príncipe","0","STD");
INSERT INTO profine_countries VALUES("213","Saudi Arabia","0","SAR");
INSERT INTO profine_countries VALUES("214","Senegal","0","XOF");
INSERT INTO profine_countries VALUES("215","Serbia","0","");
INSERT INTO profine_countries VALUES("216","Serbia and Montenegro","0","");
INSERT INTO profine_countries VALUES("217","Seychelles","0","SCR");
INSERT INTO profine_countries VALUES("218","Sierra Leone","0","SLL");
INSERT INTO profine_countries VALUES("219","Singapore","0","SGD");
INSERT INTO profine_countries VALUES("220","Slovakia","0","EUR");
INSERT INTO profine_countries VALUES("221","Slovenia","0","EUR");
INSERT INTO profine_countries VALUES("222","Solomon Islands","0","SBD");
INSERT INTO profine_countries VALUES("223","Somalia","0","SOS");
INSERT INTO profine_countries VALUES("224","South Africa","0","ZAR");
INSERT INTO profine_countries VALUES("225","South Georgia and the South Sandwich Islands","0","GBP");
INSERT INTO profine_countries VALUES("226","Spain","0","EUR");
INSERT INTO profine_countries VALUES("227","Spratly Islands","0","");
INSERT INTO profine_countries VALUES("228","Sri Lanka","0","LKR");
INSERT INTO profine_countries VALUES("229","Sudan","0","SDD");
INSERT INTO profine_countries VALUES("230","Suriname","0","SRG");
INSERT INTO profine_countries VALUES("231","Svalbard","0","NOK");
INSERT INTO profine_countries VALUES("232","Swaziland","0","SZL");
INSERT INTO profine_countries VALUES("233","Sweden","0","SEK");
INSERT INTO profine_countries VALUES("234","Switzerland","0","CHF");
INSERT INTO profine_countries VALUES("235","Syria","0","SYP");
INSERT INTO profine_countries VALUES("236","Taiwan","0","TWD");
INSERT INTO profine_countries VALUES("237","Tajikistan","0","TJS");
INSERT INTO profine_countries VALUES("238","Tanzania","0","TZS");
INSERT INTO profine_countries VALUES("239","Thailand","0","THB");
INSERT INTO profine_countries VALUES("240","Togo","0","XOF");
INSERT INTO profine_countries VALUES("241","Tokelau","0","NZD");
INSERT INTO profine_countries VALUES("242","Tonga","0","TOP");
INSERT INTO profine_countries VALUES("243","Trinidad and Tobago","0","TTD");
INSERT INTO profine_countries VALUES("244","Tromelin Island","0","");
INSERT INTO profine_countries VALUES("245","Tunisia","0","TND");
INSERT INTO profine_countries VALUES("246","Turkey","0","TRL");
INSERT INTO profine_countries VALUES("247","Turkmenistan","0","TMM");
INSERT INTO profine_countries VALUES("248","Turks and Caicos Islands","0","USD");
INSERT INTO profine_countries VALUES("249","Tuvalu","0","AUD");
INSERT INTO profine_countries VALUES("250","Uganda","0","UGX");
INSERT INTO profine_countries VALUES("251","Ukraine","0","UAH");
INSERT INTO profine_countries VALUES("252","United Arab Emirates","0","AED");
INSERT INTO profine_countries VALUES("253","United Kingdom","0","GBP");
INSERT INTO profine_countries VALUES("254","United States","0","USD");
INSERT INTO profine_countries VALUES("255","United States Minor Outlying Islands","0","USD");
INSERT INTO profine_countries VALUES("256","Uruguay","0","UYU");
INSERT INTO profine_countries VALUES("257","Uzbekistan","0","UZS");
INSERT INTO profine_countries VALUES("258","Vanuatu","0","VUV");
INSERT INTO profine_countries VALUES("259","Venezuela","0","VEB");
INSERT INTO profine_countries VALUES("260","Vietnam","0","VND");
INSERT INTO profine_countries VALUES("261","Virgin Islands","0","USD");
INSERT INTO profine_countries VALUES("262","Virgin Islands (UK)","0","USD");
INSERT INTO profine_countries VALUES("263","Virgin Islands (US)","0","USD");
INSERT INTO profine_countries VALUES("264","Wake Island","0","USD");
INSERT INTO profine_countries VALUES("265","Wallis and Futuna","0","XPF");
INSERT INTO profine_countries VALUES("266","West Bank","0","ILS");
INSERT INTO profine_countries VALUES("267","Western Sahara","0","MAD");
INSERT INTO profine_countries VALUES("268","Western Samoa","0","WST");
INSERT INTO profine_countries VALUES("269","World","0","");
INSERT INTO profine_countries VALUES("270","Yemen","0","YER");
INSERT INTO profine_countries VALUES("271","Yugoslavia","0","YUM");
INSERT INTO profine_countries VALUES("272","Zaire","0","");
INSERT INTO profine_countries VALUES("273","Zambia","0","ZMK");
INSERT INTO profine_countries VALUES("274","Zimbabwe","0","ZWD");
INSERT INTO profine_countries VALUES("275","Palestinian Territory, Occupied","0","");



DROP TABLE profine_countries1;

CREATE TABLE `profine_countries1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

INSERT INTO profine_countries1 VALUES("1","US","United States","0");
INSERT INTO profine_countries1 VALUES("2","CA","Canada","0");
INSERT INTO profine_countries1 VALUES("3","AF","Afghanistan","0");
INSERT INTO profine_countries1 VALUES("4","AL","Albania","0");
INSERT INTO profine_countries1 VALUES("5","DZ","Algeria","0");
INSERT INTO profine_countries1 VALUES("6","DS","American Samoa","0");
INSERT INTO profine_countries1 VALUES("7","AD","Andorra","0");
INSERT INTO profine_countries1 VALUES("8","AO","Angola","0");
INSERT INTO profine_countries1 VALUES("9","AI","Anguilla","0");
INSERT INTO profine_countries1 VALUES("10","AQ","Antarctica","0");
INSERT INTO profine_countries1 VALUES("11","AG","Antigua and/or Barbuda","0");
INSERT INTO profine_countries1 VALUES("12","AR","Argentina","0");
INSERT INTO profine_countries1 VALUES("13","AM","Armenia","0");
INSERT INTO profine_countries1 VALUES("14","AW","Aruba","0");
INSERT INTO profine_countries1 VALUES("15","AU","Australia","0");
INSERT INTO profine_countries1 VALUES("16","AT","Austria","0");
INSERT INTO profine_countries1 VALUES("17","AZ","Azerbaijan","0");
INSERT INTO profine_countries1 VALUES("18","BS","Bahamas","0");
INSERT INTO profine_countries1 VALUES("19","BH","Bahrain","0");
INSERT INTO profine_countries1 VALUES("20","BD","Bangladesh","0");
INSERT INTO profine_countries1 VALUES("21","BB","Barbados","0");
INSERT INTO profine_countries1 VALUES("22","BY","Belarus","0");
INSERT INTO profine_countries1 VALUES("23","BE","Belgium","0");
INSERT INTO profine_countries1 VALUES("24","BZ","Belize","0");
INSERT INTO profine_countries1 VALUES("25","BJ","Benin","0");
INSERT INTO profine_countries1 VALUES("26","BM","Bermuda","0");
INSERT INTO profine_countries1 VALUES("27","BT","Bhutan","0");
INSERT INTO profine_countries1 VALUES("28","BO","Bolivia","0");
INSERT INTO profine_countries1 VALUES("29","BA","Bosnia and Herzegovina","0");
INSERT INTO profine_countries1 VALUES("30","BW","Botswana","0");
INSERT INTO profine_countries1 VALUES("31","BV","Bouvet Island","0");
INSERT INTO profine_countries1 VALUES("32","BR","Brazil","0");
INSERT INTO profine_countries1 VALUES("33","IO","British lndian Ocean Territory","0");
INSERT INTO profine_countries1 VALUES("34","BN","Brunei Darussalam","0");
INSERT INTO profine_countries1 VALUES("35","BG","Bulgaria","0");
INSERT INTO profine_countries1 VALUES("36","BF","Burkina Faso","0");
INSERT INTO profine_countries1 VALUES("37","BI","Burundi","0");
INSERT INTO profine_countries1 VALUES("38","KH","Cambodia","0");
INSERT INTO profine_countries1 VALUES("39","CM","Cameroon","0");
INSERT INTO profine_countries1 VALUES("40","CV","Cape Verde","0");
INSERT INTO profine_countries1 VALUES("41","KY","Cayman Islands","0");
INSERT INTO profine_countries1 VALUES("42","CF","Central African Republic","0");
INSERT INTO profine_countries1 VALUES("43","TD","Chad","0");
INSERT INTO profine_countries1 VALUES("44","CL","Chile","0");
INSERT INTO profine_countries1 VALUES("45","CN","China","0");
INSERT INTO profine_countries1 VALUES("46","CX","Christmas Island","0");
INSERT INTO profine_countries1 VALUES("47","CC","Cocos (Keeling) Islands","0");
INSERT INTO profine_countries1 VALUES("48","CO","Colombia","0");
INSERT INTO profine_countries1 VALUES("49","KM","Comoros","0");
INSERT INTO profine_countries1 VALUES("50","CG","Congo","0");
INSERT INTO profine_countries1 VALUES("51","CK","Cook Islands","0");
INSERT INTO profine_countries1 VALUES("52","CR","Costa Rica","0");
INSERT INTO profine_countries1 VALUES("53","HR","Croatia (Hrvatska)","0");
INSERT INTO profine_countries1 VALUES("54","CU","Cuba","0");
INSERT INTO profine_countries1 VALUES("55","CY","Cyprus","0");
INSERT INTO profine_countries1 VALUES("56","CZ","Czech Republic","0");
INSERT INTO profine_countries1 VALUES("57","DK","Denmark","0");
INSERT INTO profine_countries1 VALUES("58","DJ","Djibouti","0");
INSERT INTO profine_countries1 VALUES("59","DM","Dominica","0");
INSERT INTO profine_countries1 VALUES("60","DO","Dominican Republic","0");
INSERT INTO profine_countries1 VALUES("61","TP","East Timor","0");
INSERT INTO profine_countries1 VALUES("62","EC","Ecudaor","0");
INSERT INTO profine_countries1 VALUES("63","EG","Egypt","0");
INSERT INTO profine_countries1 VALUES("64","SV","El Salvador","0");
INSERT INTO profine_countries1 VALUES("65","GQ","Equatorial Guinea","0");
INSERT INTO profine_countries1 VALUES("66","ER","Eritrea","0");
INSERT INTO profine_countries1 VALUES("67","EE","Estonia","0");
INSERT INTO profine_countries1 VALUES("68","ET","Ethiopia","0");
INSERT INTO profine_countries1 VALUES("69","FK","Falkland Islands (Malvinas)","0");
INSERT INTO profine_countries1 VALUES("70","FO","Faroe Islands","0");
INSERT INTO profine_countries1 VALUES("71","FJ","Fiji","0");
INSERT INTO profine_countries1 VALUES("72","FI","Finland","0");
INSERT INTO profine_countries1 VALUES("73","FR","France","0");
INSERT INTO profine_countries1 VALUES("74","FX","France, Metropolitan","0");
INSERT INTO profine_countries1 VALUES("75","GF","French Guiana","0");
INSERT INTO profine_countries1 VALUES("76","PF","French Polynesia","0");
INSERT INTO profine_countries1 VALUES("77","TF","French Southern Territories","0");
INSERT INTO profine_countries1 VALUES("78","GA","Gabon","0");
INSERT INTO profine_countries1 VALUES("79","GM","Gambia","0");
INSERT INTO profine_countries1 VALUES("80","GE","Georgia","0");
INSERT INTO profine_countries1 VALUES("81","DE","Germany","0");
INSERT INTO profine_countries1 VALUES("82","GH","Ghana","0");
INSERT INTO profine_countries1 VALUES("83","GI","Gibraltar","0");
INSERT INTO profine_countries1 VALUES("84","GR","Greece","0");
INSERT INTO profine_countries1 VALUES("85","GL","Greenland","0");
INSERT INTO profine_countries1 VALUES("86","GD","Grenada","0");
INSERT INTO profine_countries1 VALUES("87","GP","Guadeloupe","0");
INSERT INTO profine_countries1 VALUES("88","GU","Guam","0");
INSERT INTO profine_countries1 VALUES("89","GT","Guatemala","0");
INSERT INTO profine_countries1 VALUES("90","GN","Guinea","0");
INSERT INTO profine_countries1 VALUES("91","GW","Guinea-Bissau","0");
INSERT INTO profine_countries1 VALUES("92","GY","Guyana","0");
INSERT INTO profine_countries1 VALUES("93","HT","Haiti","0");
INSERT INTO profine_countries1 VALUES("94","HM","Heard and Mc Donald Islands","0");
INSERT INTO profine_countries1 VALUES("95","HN","Honduras","0");
INSERT INTO profine_countries1 VALUES("96","HK","Hong Kong","0");
INSERT INTO profine_countries1 VALUES("97","HU","Hungary","0");
INSERT INTO profine_countries1 VALUES("98","IS","Iceland","0");
INSERT INTO profine_countries1 VALUES("99","IN","India","1");
INSERT INTO profine_countries1 VALUES("100","ID","Indonesia","0");
INSERT INTO profine_countries1 VALUES("101","IR","Iran (Islamic Republic of)","0");
INSERT INTO profine_countries1 VALUES("102","IQ","Iraq","0");
INSERT INTO profine_countries1 VALUES("103","IE","Ireland","0");
INSERT INTO profine_countries1 VALUES("104","IL","Israel","0");
INSERT INTO profine_countries1 VALUES("105","IT","Italy","0");
INSERT INTO profine_countries1 VALUES("106","CI","Ivory Coast","0");
INSERT INTO profine_countries1 VALUES("107","JM","Jamaica","0");
INSERT INTO profine_countries1 VALUES("108","JP","Japan","0");
INSERT INTO profine_countries1 VALUES("109","JO","Jordan","0");
INSERT INTO profine_countries1 VALUES("110","KZ","Kazakhstan","0");
INSERT INTO profine_countries1 VALUES("111","KE","Kenya","0");
INSERT INTO profine_countries1 VALUES("112","KI","Kiribati","0");
INSERT INTO profine_countries1 VALUES("113","KP","Korea, Democratic People\'s Republic of","0");
INSERT INTO profine_countries1 VALUES("114","KR","Korea, Republic of","0");
INSERT INTO profine_countries1 VALUES("115","KW","Kuwait","0");
INSERT INTO profine_countries1 VALUES("116","KG","Kyrgyzstan","0");
INSERT INTO profine_countries1 VALUES("117","LA","Lao People\'s Democratic Republic","0");
INSERT INTO profine_countries1 VALUES("118","LV","Latvia","0");
INSERT INTO profine_countries1 VALUES("119","LB","Lebanon","0");
INSERT INTO profine_countries1 VALUES("120","LS","Lesotho","0");
INSERT INTO profine_countries1 VALUES("121","LR","Liberia","0");
INSERT INTO profine_countries1 VALUES("122","LY","Libyan Arab Jamahiriya","0");
INSERT INTO profine_countries1 VALUES("123","LI","Liechtenstein","0");
INSERT INTO profine_countries1 VALUES("124","LT","Lithuania","0");
INSERT INTO profine_countries1 VALUES("125","LU","Luxembourg","0");
INSERT INTO profine_countries1 VALUES("126","MO","Macau","0");
INSERT INTO profine_countries1 VALUES("127","MK","Macedonia","0");
INSERT INTO profine_countries1 VALUES("128","MG","Madagascar","0");
INSERT INTO profine_countries1 VALUES("129","MW","Malawi","0");
INSERT INTO profine_countries1 VALUES("130","MY","Malaysia","0");
INSERT INTO profine_countries1 VALUES("131","MV","Maldives","0");
INSERT INTO profine_countries1 VALUES("132","ML","Mali","0");
INSERT INTO profine_countries1 VALUES("133","MT","Malta","0");
INSERT INTO profine_countries1 VALUES("134","MH","Marshall Islands","0");
INSERT INTO profine_countries1 VALUES("135","MQ","Martinique","0");
INSERT INTO profine_countries1 VALUES("136","MR","Mauritania","0");
INSERT INTO profine_countries1 VALUES("137","MU","Mauritius","0");
INSERT INTO profine_countries1 VALUES("138","TY","Mayotte","0");
INSERT INTO profine_countries1 VALUES("139","MX","Mexico","0");
INSERT INTO profine_countries1 VALUES("140","FM","Micronesia, Federated States of","0");
INSERT INTO profine_countries1 VALUES("141","MD","Moldova, Republic of","0");
INSERT INTO profine_countries1 VALUES("142","MC","Monaco","0");
INSERT INTO profine_countries1 VALUES("143","MN","Mongolia","0");
INSERT INTO profine_countries1 VALUES("144","MS","Montserrat","0");
INSERT INTO profine_countries1 VALUES("145","MA","Morocco","0");
INSERT INTO profine_countries1 VALUES("146","MZ","Mozambique","0");
INSERT INTO profine_countries1 VALUES("147","MM","Myanmar","0");
INSERT INTO profine_countries1 VALUES("148","NA","Namibia","0");
INSERT INTO profine_countries1 VALUES("149","NR","Nauru","0");
INSERT INTO profine_countries1 VALUES("150","NP","Nepal","0");
INSERT INTO profine_countries1 VALUES("151","NL","Netherlands","0");
INSERT INTO profine_countries1 VALUES("152","AN","Netherlands Antilles","0");
INSERT INTO profine_countries1 VALUES("153","NC","New Caledonia","0");
INSERT INTO profine_countries1 VALUES("154","NZ","New Zealand","0");
INSERT INTO profine_countries1 VALUES("155","NI","Nicaragua","0");
INSERT INTO profine_countries1 VALUES("156","NE","Niger","0");
INSERT INTO profine_countries1 VALUES("157","NG","Nigeria","0");
INSERT INTO profine_countries1 VALUES("158","NU","Niue","0");
INSERT INTO profine_countries1 VALUES("159","NF","Norfork Island","0");
INSERT INTO profine_countries1 VALUES("160","MP","Northern Mariana Islands","0");
INSERT INTO profine_countries1 VALUES("161","NO","Norway","0");
INSERT INTO profine_countries1 VALUES("162","OM","Oman","0");
INSERT INTO profine_countries1 VALUES("163","PK","Pakistan","0");
INSERT INTO profine_countries1 VALUES("164","PW","Palau","0");
INSERT INTO profine_countries1 VALUES("165","PA","Panama","0");
INSERT INTO profine_countries1 VALUES("166","PG","Papua New Guinea","0");
INSERT INTO profine_countries1 VALUES("167","PY","Paraguay","0");
INSERT INTO profine_countries1 VALUES("168","PE","Peru","0");
INSERT INTO profine_countries1 VALUES("169","PH","Philippines","0");
INSERT INTO profine_countries1 VALUES("170","PN","Pitcairn","0");
INSERT INTO profine_countries1 VALUES("171","PL","Poland","0");
INSERT INTO profine_countries1 VALUES("172","PT","Portugal","0");
INSERT INTO profine_countries1 VALUES("173","PR","Puerto Rico","0");
INSERT INTO profine_countries1 VALUES("174","QA","Qatar","0");
INSERT INTO profine_countries1 VALUES("175","RE","Reunion","0");
INSERT INTO profine_countries1 VALUES("176","RO","Romania","0");
INSERT INTO profine_countries1 VALUES("177","RU","Russian Federation","0");
INSERT INTO profine_countries1 VALUES("178","RW","Rwanda","0");
INSERT INTO profine_countries1 VALUES("179","KN","Saint Kitts and Nevis","0");
INSERT INTO profine_countries1 VALUES("180","LC","Saint Lucia","0");
INSERT INTO profine_countries1 VALUES("181","VC","Saint Vincent and the Grenadines","0");
INSERT INTO profine_countries1 VALUES("182","WS","Samoa","0");
INSERT INTO profine_countries1 VALUES("183","SM","San Marino","0");
INSERT INTO profine_countries1 VALUES("184","ST","Sao Tome and Principe","0");
INSERT INTO profine_countries1 VALUES("185","SA","Saudi Arabia","0");
INSERT INTO profine_countries1 VALUES("186","SN","Senegal","0");
INSERT INTO profine_countries1 VALUES("187","SC","Seychelles","0");
INSERT INTO profine_countries1 VALUES("188","SL","Sierra Leone","0");
INSERT INTO profine_countries1 VALUES("189","SG","Singapore","0");
INSERT INTO profine_countries1 VALUES("190","SK","Slovakia","0");
INSERT INTO profine_countries1 VALUES("191","SI","Slovenia","0");
INSERT INTO profine_countries1 VALUES("192","SB","Solomon Islands","0");
INSERT INTO profine_countries1 VALUES("193","SO","Somalia","0");
INSERT INTO profine_countries1 VALUES("194","ZA","South Africa","0");
INSERT INTO profine_countries1 VALUES("195","GS","South Georgia South Sandwich Islands","0");
INSERT INTO profine_countries1 VALUES("196","ES","Spain","0");
INSERT INTO profine_countries1 VALUES("197","LK","Sri Lanka","1");
INSERT INTO profine_countries1 VALUES("198","SH","St. Helena","0");
INSERT INTO profine_countries1 VALUES("199","PM","St. Pierre and Miquelon","0");
INSERT INTO profine_countries1 VALUES("200","SD","Sudan","0");
INSERT INTO profine_countries1 VALUES("201","SR","Suriname","0");
INSERT INTO profine_countries1 VALUES("202","SJ","Svalbarn and Jan Mayen Islands","0");
INSERT INTO profine_countries1 VALUES("203","SZ","Swaziland","0");
INSERT INTO profine_countries1 VALUES("204","SE","Sweden","0");
INSERT INTO profine_countries1 VALUES("205","CH","Switzerland","0");
INSERT INTO profine_countries1 VALUES("206","SY","Syrian Arab Republic","0");
INSERT INTO profine_countries1 VALUES("207","TW","Taiwan","0");
INSERT INTO profine_countries1 VALUES("208","TJ","Tajikistan","0");
INSERT INTO profine_countries1 VALUES("209","TZ","Tanzania, United Republic of","0");
INSERT INTO profine_countries1 VALUES("210","TH","Thailand","0");
INSERT INTO profine_countries1 VALUES("211","TG","Togo","0");
INSERT INTO profine_countries1 VALUES("212","TK","Tokelau","0");
INSERT INTO profine_countries1 VALUES("213","TO","Tonga","0");
INSERT INTO profine_countries1 VALUES("214","TT","Trinidad and Tobago","0");
INSERT INTO profine_countries1 VALUES("215","TN","Tunisia","0");
INSERT INTO profine_countries1 VALUES("216","TR","Turkey","0");
INSERT INTO profine_countries1 VALUES("217","TM","Turkmenistan","0");
INSERT INTO profine_countries1 VALUES("218","TC","Turks and Caicos Islands","0");
INSERT INTO profine_countries1 VALUES("219","TV","Tuvalu","0");
INSERT INTO profine_countries1 VALUES("220","UG","Uganda","0");
INSERT INTO profine_countries1 VALUES("221","UA","Ukraine","0");
INSERT INTO profine_countries1 VALUES("222","AE","United Arab Emirates","0");
INSERT INTO profine_countries1 VALUES("223","GB","United Kingdom","0");
INSERT INTO profine_countries1 VALUES("224","UM","United States minor outlying islands","0");
INSERT INTO profine_countries1 VALUES("225","UY","Uruguay","0");
INSERT INTO profine_countries1 VALUES("226","UZ","Uzbekistan","0");
INSERT INTO profine_countries1 VALUES("227","VU","Vanuatu","0");
INSERT INTO profine_countries1 VALUES("228","VA","Vatican City State","0");
INSERT INTO profine_countries1 VALUES("229","VE","Venezuela","0");
INSERT INTO profine_countries1 VALUES("230","VN","Vietnam","0");
INSERT INTO profine_countries1 VALUES("231","VG","Virigan Islands (British)","0");
INSERT INTO profine_countries1 VALUES("232","VI","Virgin Islands (U.S.)","0");
INSERT INTO profine_countries1 VALUES("233","WF","Wallis and Futuna Islands","0");
INSERT INTO profine_countries1 VALUES("234","EH","Western Sahara","0");
INSERT INTO profine_countries1 VALUES("235","YE","Yemen","0");
INSERT INTO profine_countries1 VALUES("236","YU","Yugoslavia","0");
INSERT INTO profine_countries1 VALUES("237","ZR","Zaire","0");
INSERT INTO profine_countries1 VALUES("238","ZM","Zambia","0");
INSERT INTO profine_countries1 VALUES("239","ZW","Zimbabwe","0");



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




DROP TABLE profine_event_images;

CREATE TABLE `profine_event_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO profine_event_images VALUES("10","39","thumb_1391083258_5.jpg","","","1");
INSERT INTO profine_event_images VALUES("11","39","thumb_1391083256_2.jpg","","","1");
INSERT INTO profine_event_images VALUES("12","39","thumb_1391083254_1.jpg","","","1");
INSERT INTO profine_event_images VALUES("13","39","thumb_1391083252_6.jpg","","","1");
INSERT INTO profine_event_images VALUES("14","39","thumb_1391083250_8.jpg","","","1");
INSERT INTO profine_event_images VALUES("15","21","thumb_1391153029_3.jpg","","","1");
INSERT INTO profine_event_images VALUES("16","21","thumb_1391153033_4.jpg","","","1");
INSERT INTO profine_event_images VALUES("17","21","thumb_1391153038_images02.gif","","","1");
INSERT INTO profine_event_images VALUES("18","21","thumb_1391153040_images01.gif","","","1");
INSERT INTO profine_event_images VALUES("19","21","thumb_1391153044_images06.gif","","","1");
INSERT INTO profine_event_images VALUES("20","18","thumb_1391153064_8.gif","","","1");
INSERT INTO profine_event_images VALUES("21","18","thumb_1391153060_7.gif","","","1");



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



DROP TABLE profine_gal_category;

CREATE TABLE `profine_gal_category` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO profine_gal_category VALUES("4","0","Commercial Building","&lt;p&gt;\n	Commercial Building&lt;/p&gt;\n","","","","1","1391166797","0");
INSERT INTO profine_gal_category VALUES("3","0","Residential Building","&lt;p&gt;\n	Residential Building&lt;/p&gt;\n","Residential Building","","","1","1391166778","0");
INSERT INTO profine_gal_category VALUES("5","0","Hotel Building","&lt;p&gt;\n	Hotel Building&lt;/p&gt;\n","","","","1","1391166812","0");



DROP TABLE profine_images_gallery;

CREATE TABLE `profine_images_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `image_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) NOT NULL,
  `date_edited` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO profine_images_gallery VALUES("1","3","products/thumb_1391147048_1.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("2","3","products/thumb_1391147054_2.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("3","3","products/thumb_1391147060_3.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("4","4","products/thumb_1391147094_1.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("5","4","products/thumb_1391147104_8.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("6","4","products/thumb_1391147113_7.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("7","4","products/thumb_1391147119_5.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("8","5","products/thumb_1391147125_7.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("9","5","products/thumb_1391147131_3.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("10","5","products/thumb_1391147137_4.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("11","5","products/thumb_1391147144_5.jpg","0","0","1");
INSERT INTO profine_images_gallery VALUES("12","4","products/thumb_1391147917_6.jpg","0","0","0");
INSERT INTO profine_images_gallery VALUES("13","5","products/thumb_1391148005_2.jpg","0","0","0");
INSERT INTO profine_images_gallery VALUES("14","3","products/thumb_1391148067_8.jpg","1391167867","0","1");
INSERT INTO profine_images_gallery VALUES("15","4","products/thumb_1391148138_7.jpg","1391167889","1391167938","1");



DROP TABLE profine_news;

CREATE TABLE `profine_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `job_cat_id` int(11) DEFAULT NULL,
  `news_title` text,
  `description` text,
  `images` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `thumb_img` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `added_date` int(11) DEFAULT NULL,
  `edited_date` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

INSERT INTO profine_news VALUES("15","1","","News","","","","","1999-11-30","0000-00-00","","1366203367","1368533946","1");
INSERT INTO profine_news VALUES("19","1","","Profine India Window Technology Pvt Ltd., to start Extrusion Facility at Vadodara, Gujarat,  in May 2013","&lt;p&gt;The official inauguration by Owner cum CEO, Dr. Peter Mrosik, Profine GmbH, of the new production facility takes place on 25th May 2013 at Vadodara, Gujarat.  Profine commences production of u-PVC profiles for window &amp;amp; door systems under &quot;Koemmerling&quot; brand with 3 extruder lines in 2013 and more lines in offering.  This is the biggest investment within the profine group currently and profine is fully committed to the Indian market towards significant growth in the coming years.&lt;/p&gt;","","","","2013-11-23","2013-11-26","1366270051_India Extrusion Press Release Jan 12.pdf","1366289851","1391000070","1");
INSERT INTO profine_news VALUES("16","3","4","This is HR job","&lt;p&gt;\n	&lt;strong&gt;Required Assistant Sales Managers :&lt;br /&gt;\n	Northern India:&amp;nbsp;&amp;nbsp; UP/ Uttarakhand( Lucknow), MP( Bhopal/ Indore/Raipur) and Punjab (Ludhiana/Chandigarh/ Jallandhar)&lt;br /&gt;\n	Eastern India:&amp;nbsp;&amp;nbsp; Bhubaneswar&lt;br /&gt;\n	Western India:&amp;nbsp; Gujarat (Vadodara/ Ahmedabad), Aurangabad and Mumbai&lt;br /&gt;\n	Southern India: Chennai, Hyderabad and Kochi.&lt;/strong&gt;&lt;br /&gt;\n	&lt;br /&gt;\n	&lt;br /&gt;\n	&lt;strong&gt;Eligibility :&lt;/strong&gt;&lt;br /&gt;\n	Graduates with 4-6 years of sales experience preferably in uPVC, Aluminum, Glass or Building material&amp;nbsp; industry. Have knowledge about the recent developments, trends in the market, as regards to Construction industry.&amp;nbsp; Should be Energetic, Go-getter and with never say die attitude.&lt;br /&gt;\n	&lt;br /&gt;\n	&lt;strong&gt;Job Description:&amp;nbsp;&lt;/strong&gt;&amp;nbsp; &amp;nbsp;&lt;br /&gt;\n	1.&amp;nbsp;&amp;nbsp; &amp;nbsp;Creating Brand awareness and Increase Market share of Koemmerling&lt;br /&gt;\n	2.&amp;nbsp;&amp;nbsp; &amp;nbsp;Specifying Projects with Architects&lt;br /&gt;\n	3.&amp;nbsp;&amp;nbsp; &amp;nbsp;Interaction with Builders/ Developers for Project sales&lt;br /&gt;\n	4.&amp;nbsp;&amp;nbsp; &amp;nbsp;Develop new Fabricators&lt;br /&gt;\n	5.&amp;nbsp;&amp;nbsp; &amp;nbsp;Assist fabricators Commercially and Technically&lt;br /&gt;\n	&lt;br /&gt;\n	Interested Candidates may send in their CV to info.india@profine-group.com&lt;/p&gt;\n","","","","0000-00-00","0000-00-00","","1366288374","","1");
INSERT INTO profine_news VALUES("17","3","2","marketting and sales","&lt;p&gt;\n	&amp;lt;p&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;strong&amp;gt;Required Assistant Sales Managers :&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Northern India:&amp;amp;nbsp;&amp;amp;nbsp; UP/ Uttarakhand( Lucknow), MP( Bhopal/ Indore/Raipur) and Punjab (Ludhiana/Chandigarh/ Jallandhar)&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Eastern India:&amp;amp;nbsp;&amp;amp;nbsp; Bhubaneswar&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Western India:&amp;amp;nbsp; Gujarat (Vadodara/ Ahmedabad), Aurangabad and Mumbai&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Southern India: Chennai, Hyderabad and Kochi.&amp;lt;/strong&amp;gt;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;strong&amp;gt;Eligibility :&amp;lt;/strong&amp;gt;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Graduates with 4-6 years of sales experience preferably in uPVC, Aluminum, Glass or Building material&amp;amp;nbsp; industry. Have knowledge about the recent developments, trends in the market, as regards to Construction industry.&amp;amp;nbsp; Should be Energetic, Go-getter and with never say die attitude.&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;strong&amp;gt;Job Description:&amp;amp;nbsp;&amp;lt;/strong&amp;gt;&amp;amp;nbsp; &amp;amp;nbsp;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;1.&amp;amp;nbsp;&amp;amp;nbsp; &amp;amp;nbsp;Creating Brand awareness and Increase Market share of Koemmerling&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;2.&amp;amp;nbsp;&amp;amp;nbsp; &amp;amp;nbsp;Specifying Projects with Architects&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;3.&amp;amp;nbsp;&amp;amp;nbsp; &amp;amp;nbsp;Interaction with Builders/ Developers for Project sales&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;4.&amp;amp;nbsp;&amp;amp;nbsp; &amp;amp;nbsp;Develop new Fabricators&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;5.&amp;amp;nbsp;&amp;amp;nbsp; &amp;amp;nbsp;Assist fabricators Commercially and Technically&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;lt;br /&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&amp;nbsp; &amp;nbsp;Interested Candidates may send in their CV to info.india@profine-group.com&amp;lt;/p&amp;gt;&lt;br /&gt;\n	&amp;nbsp;&lt;/p&gt;\n","","","","0000-00-00","0000-00-00","","1366288426","","1");
INSERT INTO profine_news VALUES("18","2","","Participation in Events during 2013","&lt;p&gt;\n	Sri Lanka Windows &amp;amp; Doors International Expo 2013, 27th -29th Sept&amp;rsquo;2013&amp;nbsp; at Hall-A Stand No. A-2, BMICH, Colombo, Sri Lanka, organized by Futurex Trade Fair &amp;amp; Events Pvt Ltd.&lt;br /&gt;\n	&lt;br /&gt;\n	ACETECH-2013&amp;nbsp; at&amp;nbsp; Bengaluru&amp;nbsp; 08th-10th Nov&amp;rsquo;2013 at Bangalore International Exhibition Centre. Hall 2 Stand No.B-13.&lt;br /&gt;\n	&lt;br /&gt;\n	&lt;br /&gt;\n	ACETECH-2013&amp;nbsp; at&amp;nbsp; New Delhi 05th-08th Dec&amp;rsquo;2013 at Pragati Maidan, New Delhi. Hall 12 Stall No. D-10&lt;/p&gt;\n","","fgdfgdfg","","2014-02-11","2014-02-20","","1366288585","1391180804","1");
INSERT INTO profine_news VALUES("21","2","","&quot;ZAK World of Windows Conference&quot; on 5th July 2013 at Vivanta by Taj MG Road, Bengaluru. ","&lt;p&gt;\n	xxfdhsdfhsfgdfg&lt;/p&gt;\n","","","","2014-01-31","2014-01-31","1391081663_1387372453_IIAArchExpo2013Invitation.pdf","1371635613","1391172845","1");
INSERT INTO profine_news VALUES("37","1","","Grand Opening of Koemmerling Manufacturing Facility","&lt;p&gt;\n	The official inauguration by Owner cum CEO, Dr. Peter Mrosik, Profine GmbH, of the new production facility takes place on 25th May 2013 at Vadodara, Gujarat. Profine commences production of u-PVC profiles for window &amp;amp; door systems under &amp;quot;Koemmerling&amp;quot; brand with 3 extruder lines in 2013 and more lines in offering. This is the biggest investment within the profine group currently and profine is fully committed to the Indian market towards significant growth in the coming years.&lt;/p&gt;\n","","Vadodara, Gujarat","","2014-02-13","1970-01-01","1391080356_1387372453_IIAArchExpo2013Invitation.pdf","1391099431","1391100156","1");
INSERT INTO profine_news VALUES("46","1","","asfdasa","","","delhi","","2014-02-13","2014-02-21","","1392227144","1392227673","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO profine_news_category VALUES("1","Press News","Press News","Press News","Press News","Press News","1");
INSERT INTO profine_news_category VALUES("2","Trade Fairs & Events","Trade Fairs and Events","Trade Fairs and Events","Trade Fairs and Events","Trade Fairs and Events","1");
INSERT INTO profine_news_category VALUES("3","Latest Openings","Latest Openings","Latest Openings","Latest Openings","Latest Openings","1");



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



DROP TABLE profine_partners;

CREATE TABLE `profine_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cntry_id` int(11) NOT NULL,
  `state_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text,
  `email` varchar(255) NOT NULL,
  `website` text NOT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO profine_partners VALUES("12","99","0","       Aparna Enterprises Limited","Hyderabad ","rajendra@aparnaenterprisesltd.com","www.aparnaenterprisesltd.com","1385565485","","1");
INSERT INTO profine_partners VALUES("13","99","0","Alplast International","Indore","alplast.ind@gmail.com","","1385565551","","1");
INSERT INTO profine_partners VALUES("14","99","0","Durable Doors and Windows","Bhiwadi","sandeep@durable.co.in","","1385565579","","1");
INSERT INTO profine_partners VALUES("15","99","0","Ecodur Windoors","Gurgaon","sm.kapur@windoors.co.in","","1385565604","","1");
INSERT INTO profine_partners VALUES("16","99","0","Essen Windows and Doors","Surendranagar","sales@essenwindowsndoors.com","","1385576155","","1");
INSERT INTO profine_partners VALUES("17","99","0","Fabastra Impex Pvt Ltd","Mumbai","sameer.lad@fabastra.com","","1385576328","","1");
INSERT INTO profine_partners VALUES("18","99","0","Greenline Windows Pvt. Ltd.","Jammu","masoudi_sajjad@rediffmail.com","","1385576503","","1");
INSERT INTO profine_partners VALUES("19","99","0","Laxminarayan Industries","Ahmedabad","kar161953@yahoo.com","","1385576533","","1");
INSERT INTO profine_partners VALUES("20","99","0","Ramtex Overseas Pvt. Ltd.","Haryana ","neetu@windowmagicindia.com","www.windowmagicindia.com","1385576576","","1");
INSERT INTO profine_partners VALUES("21","99","0","Royal Welding Wires Pvt Ltd","Urapakkam","royalfentech@gmail.com","","1385576603","","1");
INSERT INTO profine_partners VALUES("22","99","0","Sim Designs and Engineering","Mumbai","indiaprecision@gmail.com","","1385576629","","1");
INSERT INTO profine_partners VALUES("23","99","0","SNG Building Systems","Chennai","sngbuildingsystems@yahoo.co.in","","1385576655","","1");
INSERT INTO profine_partners VALUES("24","99","0","Sunwin Technologies Pvt Ltd","Guwahati","yogesh.bhagat@kbgc.co.in","www.kbgc.co.in","1385576680","","1");
INSERT INTO profine_partners VALUES("25","99","0","Win-Square Systems (India) LLP ","Pune","contact@winsquare.in ","www.winsquare.in","1385576712","","1");
INSERT INTO profine_partners VALUES("26","197","0","Windoor Pvt Ltd","Sri Lanka","info@windoor.lk","","1385576753","1392662070","1");



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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `pdf_name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE profine_states;

CREATE TABLE `profine_states` (
  `id` bigint(20) NOT NULL,
  `state` varchar(255) NOT NULL,
  `id_country` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO profine_states VALUES("1","Victoria","14","1");
INSERT INTO profine_states VALUES("2","Tasmania","14","1");
INSERT INTO profine_states VALUES("3","Queensland","14","1");
INSERT INTO profine_states VALUES("4","New South Wales","14","1");
INSERT INTO profine_states VALUES("5","South Australia","14","1");
INSERT INTO profine_states VALUES("6","Western Australia","14","1");
INSERT INTO profine_states VALUES("7","Northern Territory","14","1");
INSERT INTO profine_states VALUES("8","Acre","33","1");
INSERT INTO profine_states VALUES("10","Amapá","33","1");
INSERT INTO profine_states VALUES("11","Bahia","33","1");
INSERT INTO profine_states VALUES("12","Goiás","33","1");
INSERT INTO profine_states VALUES("13","Piauí","33","1");
INSERT INTO profine_states VALUES("14","Ceará","33","1");
INSERT INTO profine_states VALUES("15","Paraná","33","1");
INSERT INTO profine_states VALUES("16","Alagoas","33","1");
INSERT INTO profine_states VALUES("17","Paraíba","33","1");
INSERT INTO profine_states VALUES("18","Roraima","33","1");
INSERT INTO profine_states VALUES("19","Sergipe","33","1");
INSERT INTO profine_states VALUES("20","Amazonas","33","1");
INSERT INTO profine_states VALUES("21","Maranhão","33","1");
INSERT INTO profine_states VALUES("22","Rondônia","33","1");
INSERT INTO profine_states VALUES("24","São Paulo","33","1");
INSERT INTO profine_states VALUES("25","Tocantins","33","1");
INSERT INTO profine_states VALUES("26","Mato Grosso","33","1");
INSERT INTO profine_states VALUES("27","Minas Gerais","33","1");
INSERT INTO profine_states VALUES("28","Espírito Santo","33","1");
INSERT INTO profine_states VALUES("29","Rio de Janeiro","33","1");
INSERT INTO profine_states VALUES("30","Santa Catarina","33","1");
INSERT INTO profine_states VALUES("32","Rio Grande do Sul","33","1");
INSERT INTO profine_states VALUES("33","Mato Grosso do Sul","33","1");
INSERT INTO profine_states VALUES("34","Rio Grande do Norte","33","1");
INSERT INTO profine_states VALUES("35","Quebec","43","1");
INSERT INTO profine_states VALUES("36","Alberta","43","1");
INSERT INTO profine_states VALUES("37","Ontario","43","1");
INSERT INTO profine_states VALUES("38","Manitoba","43","1");
INSERT INTO profine_states VALUES("39","Nova Scotia","43","1");
INSERT INTO profine_states VALUES("40","Saskatchewan","43","1");
INSERT INTO profine_states VALUES("41","Newfoundland and Labrador","43","1");
INSERT INTO profine_states VALUES("42","New Brunswick","43","1");
INSERT INTO profine_states VALUES("43","British Columbia","43","1");
INSERT INTO profine_states VALUES("45","Prince Edward Island","43","1");
INSERT INTO profine_states VALUES("46","Northwest Territories","43","1");
INSERT INTO profine_states VALUES("49","Bali","114","1");
INSERT INTO profine_states VALUES("56","Sonora","159","1");
INSERT INTO profine_states VALUES("59","Jalisco","159","1");
INSERT INTO profine_states VALUES("60","Hidalgo","159","1");
INSERT INTO profine_states VALUES("61","Morelos","159","1");
INSERT INTO profine_states VALUES("62","Chiapas","159","1");
INSERT INTO profine_states VALUES("63","Tabasco","159","1");
INSERT INTO profine_states VALUES("66","Guerrero","159","1");
INSERT INTO profine_states VALUES("69","Nuevo Leon","159","1");
INSERT INTO profine_states VALUES("70","Tamaulipas","159","1");
INSERT INTO profine_states VALUES("71","Guanajuato","159","1");
INSERT INTO profine_states VALUES("72","Quintana Roo","159","1");
INSERT INTO profine_states VALUES("73","Baja California","159","1");
INSERT INTO profine_states VALUES("74","Baja California Sur","159","1");
INSERT INTO profine_states VALUES("75","Tov","165","1");
INSERT INTO profine_states VALUES("76","Uvs","165","1");
INSERT INTO profine_states VALUES("80","Dornod","165","1");
INSERT INTO profine_states VALUES("81","Hovsgol","165","1");
INSERT INTO profine_states VALUES("82","Selenge","165","1");
INSERT INTO profine_states VALUES("86","Suhbaatar","165","1");
INSERT INTO profine_states VALUES("91","Komi","203","1");
INSERT INTO profine_states VALUES("105","Dagestan","203","1");
INSERT INTO profine_states VALUES("106","Mariy-El","203","1");
INSERT INTO profine_states VALUES("110","Tatarstan","203","1");
INSERT INTO profine_states VALUES("122","Alabama","254","1");
INSERT INTO profine_states VALUES("123","Alaska","254","1");
INSERT INTO profine_states VALUES("124","Arizona","254","1");
INSERT INTO profine_states VALUES("125","Arkansas","254","1");
INSERT INTO profine_states VALUES("126","California","254","1");
INSERT INTO profine_states VALUES("127","Colorado","254","1");
INSERT INTO profine_states VALUES("128","Connecticut","254","1");
INSERT INTO profine_states VALUES("129","Delaware","254","1");
INSERT INTO profine_states VALUES("130","District of Columbia","254","1");
INSERT INTO profine_states VALUES("131","Florida","254","1");
INSERT INTO profine_states VALUES("132","Georgia","254","1");
INSERT INTO profine_states VALUES("133","Hawaii","254","1");
INSERT INTO profine_states VALUES("134","Idaho","254","1");
INSERT INTO profine_states VALUES("135","Illinois","254","1");
INSERT INTO profine_states VALUES("136","Indiana","254","1");
INSERT INTO profine_states VALUES("137","Iowa","254","1");
INSERT INTO profine_states VALUES("138","Kansas","254","1");
INSERT INTO profine_states VALUES("139","Kentucky","254","1");
INSERT INTO profine_states VALUES("140","Louisiana","254","1");
INSERT INTO profine_states VALUES("141","Maine","254","1");
INSERT INTO profine_states VALUES("142","Maryland","254","1");
INSERT INTO profine_states VALUES("143","Massachusetts","254","1");
INSERT INTO profine_states VALUES("144","Michigan","254","1");
INSERT INTO profine_states VALUES("145","Minnesota","254","1");
INSERT INTO profine_states VALUES("146","Mississippi","254","1");
INSERT INTO profine_states VALUES("147","Missouri","254","1");
INSERT INTO profine_states VALUES("148","Montana","254","1");
INSERT INTO profine_states VALUES("149","Nebraska","254","1");
INSERT INTO profine_states VALUES("150","Nevada","254","1");
INSERT INTO profine_states VALUES("151","New Hampshire","254","1");
INSERT INTO profine_states VALUES("152","New Jersey","254","1");
INSERT INTO profine_states VALUES("153","New Mexico","254","1");
INSERT INTO profine_states VALUES("154","New York","254","1");
INSERT INTO profine_states VALUES("155","North Carolina","254","1");
INSERT INTO profine_states VALUES("156","North Dakota","254","1");
INSERT INTO profine_states VALUES("157","Ohio","254","1");
INSERT INTO profine_states VALUES("158","Oklahoma","254","1");
INSERT INTO profine_states VALUES("159","Oregon","254","1");
INSERT INTO profine_states VALUES("160","Pennsylvania","254","1");
INSERT INTO profine_states VALUES("161","Rhode Island","254","1");
INSERT INTO profine_states VALUES("162","South Carolina","254","1");
INSERT INTO profine_states VALUES("163","South Dakota","254","1");
INSERT INTO profine_states VALUES("164","Tennessee","254","1");
INSERT INTO profine_states VALUES("165","Texas","254","1");
INSERT INTO profine_states VALUES("166","Utah","254","1");
INSERT INTO profine_states VALUES("167","Virginia","254","1");
INSERT INTO profine_states VALUES("168","Washington","254","1");
INSERT INTO profine_states VALUES("169","West Virginia","254","1");
INSERT INTO profine_states VALUES("170","Wisconsin","254","1");
INSERT INTO profine_states VALUES("171","Wyoming","254","1");
INSERT INTO profine_states VALUES("172","Vermont","254","1");
INSERT INTO profine_states VALUES("174","Australian Capital Territory","14","1");
INSERT INTO profine_states VALUES("189","Papua","114","1");
INSERT INTO profine_states VALUES("193","Bulgan","165","1");
INSERT INTO profine_states VALUES("194","Hovd","165","1");
INSERT INTO profine_states VALUES("196","Chihuahua","159","1");
INSERT INTO profine_states VALUES("197","Colima","159","1");
INSERT INTO profine_states VALUES("198","Durango","159","1");
INSERT INTO profine_states VALUES("201","Oaxaca","159","1");
INSERT INTO profine_states VALUES("203","San Luis Potosi","159","1");
INSERT INTO profine_states VALUES("204","Tlaxcala","159","1");
INSERT INTO profine_states VALUES("206","Zacatecas","159","1");
INSERT INTO profine_states VALUES("268","World","269","1");
INSERT INTO profine_states VALUES("539","Albania","2","1");
INSERT INTO profine_states VALUES("540","Algeria","3","1");
INSERT INTO profine_states VALUES("541","American Samoa","4","1");
INSERT INTO profine_states VALUES("542","Andorra","5","1");
INSERT INTO profine_states VALUES("543","Angola","6","1");
INSERT INTO profine_states VALUES("544","Anguilla","7","1");
INSERT INTO profine_states VALUES("545","Antarctica","8","1");
INSERT INTO profine_states VALUES("546","Antigua and Barbuda","9","1");
INSERT INTO profine_states VALUES("547","Argentina","10","1");
INSERT INTO profine_states VALUES("548","Armenia","11","1");
INSERT INTO profine_states VALUES("549","Aruba","12","1");
INSERT INTO profine_states VALUES("550","Ashmore and Cartier","13","1");
INSERT INTO profine_states VALUES("551","Australia","14","1");
INSERT INTO profine_states VALUES("552","Austria","15","1");
INSERT INTO profine_states VALUES("553","Azerbaijan","16","1");
INSERT INTO profine_states VALUES("554","The Bahamas","17","1");
INSERT INTO profine_states VALUES("555","Bahrain","18","1");
INSERT INTO profine_states VALUES("556","Baker Island","19","1");
INSERT INTO profine_states VALUES("557","Bangladesh","20","1");
INSERT INTO profine_states VALUES("558","Barbados","21","1");
INSERT INTO profine_states VALUES("559","Bassas da India","22","1");
INSERT INTO profine_states VALUES("560","Belarus","23","1");
INSERT INTO profine_states VALUES("561","Belgium","24","1");
INSERT INTO profine_states VALUES("563","Benin","26","1");
INSERT INTO profine_states VALUES("564","Bermuda","27","1");
INSERT INTO profine_states VALUES("565","Bhutan","28","1");
INSERT INTO profine_states VALUES("566","Bolivia","29","1");
INSERT INTO profine_states VALUES("567","Bosnia and Herzegovina","30","1");
INSERT INTO profine_states VALUES("568","Botswana","31","1");
INSERT INTO profine_states VALUES("569","Bouvet Island","32","1");
INSERT INTO profine_states VALUES("570","Brazil","33","1");
INSERT INTO profine_states VALUES("571","British Indian Ocean Territory","34","1");
INSERT INTO profine_states VALUES("572","British Virgin Islands","35","1");
INSERT INTO profine_states VALUES("573","Brunei Darussalam","36","1");
INSERT INTO profine_states VALUES("574","Bulgaria","37","1");
INSERT INTO profine_states VALUES("575","Burkina Faso","38","1");
INSERT INTO profine_states VALUES("576","Burma","39","1");
INSERT INTO profine_states VALUES("577","Burundi","40","1");
INSERT INTO profine_states VALUES("578","Cambodia","41","1");
INSERT INTO profine_states VALUES("579","Cameroon","42","1");
INSERT INTO profine_states VALUES("580","Canada","43","1");
INSERT INTO profine_states VALUES("581","Cape Verde","44","1");
INSERT INTO profine_states VALUES("582","Cayman Islands","45","1");
INSERT INTO profine_states VALUES("583","Central African Republic","46","1");
INSERT INTO profine_states VALUES("584","Chad","47","1");
INSERT INTO profine_states VALUES("585","Chile","48","1");
INSERT INTO profine_states VALUES("586","China","49","1");
INSERT INTO profine_states VALUES("587","Christmas Island","50","1");
INSERT INTO profine_states VALUES("588","Clipperton Island","51","1");
INSERT INTO profine_states VALUES("589","Cocos (Keeling) Islands","52","1");
INSERT INTO profine_states VALUES("590","Colombia","53","1");
INSERT INTO profine_states VALUES("591","Comoros","54","1");
INSERT INTO profine_states VALUES("592","Democratic Republic of the Congo","55","1");
INSERT INTO profine_states VALUES("593","Republic of the Congo","56","1");
INSERT INTO profine_states VALUES("594","Cook Islands","57","1");
INSERT INTO profine_states VALUES("595","Coral Sea Islands","58","1");
INSERT INTO profine_states VALUES("596","Costa Rica","59","1");
INSERT INTO profine_states VALUES("597","Cote d\'Ivoire","60","1");
INSERT INTO profine_states VALUES("598","Croatia","61","1");
INSERT INTO profine_states VALUES("599","Cuba","62","1");
INSERT INTO profine_states VALUES("600","Cyprus","63","1");
INSERT INTO profine_states VALUES("601","Czech Republic","64","1");
INSERT INTO profine_states VALUES("602","Denmark","65","1");
INSERT INTO profine_states VALUES("604","Dominica","67","1");
INSERT INTO profine_states VALUES("605","Dominican Republic","68","1");
INSERT INTO profine_states VALUES("606","East Timor","69","1");
INSERT INTO profine_states VALUES("607","Ecuador","70","1");
INSERT INTO profine_states VALUES("608","Egypt","71","1");
INSERT INTO profine_states VALUES("609","El Salvador","72","1");
INSERT INTO profine_states VALUES("610","Equatorial Guinea","73","1");
INSERT INTO profine_states VALUES("611","Eritrea","74","1");
INSERT INTO profine_states VALUES("612","Estonia","75","1");
INSERT INTO profine_states VALUES("613","Ethiopia","76","1");
INSERT INTO profine_states VALUES("614","Europa Island","77","1");
INSERT INTO profine_states VALUES("615","Falkland Islands (Islas Malvinas)","78","1");
INSERT INTO profine_states VALUES("616","Faroe Islands","79","1");
INSERT INTO profine_states VALUES("617","Fiji","80","1");
INSERT INTO profine_states VALUES("618","Finland","81","1");
INSERT INTO profine_states VALUES("619","France","82","1");
INSERT INTO profine_states VALUES("620","Metropolitan France","83","1");
INSERT INTO profine_states VALUES("621","French Guiana","84","1");
INSERT INTO profine_states VALUES("622","French Polynesia","85","1");
INSERT INTO profine_states VALUES("623","French Southern and Antarctic Lands","86","1");
INSERT INTO profine_states VALUES("624","Gabon","87","1");
INSERT INTO profine_states VALUES("625","The Gambia","88","1");
INSERT INTO profine_states VALUES("626","Gaza Strip","89","1");
INSERT INTO profine_states VALUES("627","Georgia","90","1");
INSERT INTO profine_states VALUES("628","Germany","91","1");
INSERT INTO profine_states VALUES("629","Ghana","92","1");
INSERT INTO profine_states VALUES("630","Gibraltar","93","1");
INSERT INTO profine_states VALUES("631","Glorioso Islands","94","1");
INSERT INTO profine_states VALUES("632","Greece","95","1");
INSERT INTO profine_states VALUES("633","Greenland","96","1");
INSERT INTO profine_states VALUES("634","Grenada","97","1");
INSERT INTO profine_states VALUES("635","Guadeloupe","98","1");
INSERT INTO profine_states VALUES("636","Guam","99","1");
INSERT INTO profine_states VALUES("638","Guernsey","101","1");
INSERT INTO profine_states VALUES("639","Guinea","102","1");
INSERT INTO profine_states VALUES("640","Guinea-Bissau","103","1");
INSERT INTO profine_states VALUES("641","Guyana","104","1");
INSERT INTO profine_states VALUES("642","Haiti","105","1");
INSERT INTO profine_states VALUES("643","Heard Island and McDonald Islands","106","1");
INSERT INTO profine_states VALUES("644","Holy See (Vatican City)","107","1");
INSERT INTO profine_states VALUES("645","Honduras","108","1");
INSERT INTO profine_states VALUES("646","Hong Kong (SAR)","109","1");
INSERT INTO profine_states VALUES("647","Howland Island","110","1");
INSERT INTO profine_states VALUES("648","Hungary","111","1");
INSERT INTO profine_states VALUES("649","Iceland","112","1");
INSERT INTO profine_states VALUES("650","India","113","1");
INSERT INTO profine_states VALUES("651","Indonesia","114","1");
INSERT INTO profine_states VALUES("652","Iran","115","1");
INSERT INTO profine_states VALUES("653","Iraq","116","1");
INSERT INTO profine_states VALUES("654","Ireland","117","1");
INSERT INTO profine_states VALUES("655","Israel","118","1");
INSERT INTO profine_states VALUES("656","Italy","119","1");
INSERT INTO profine_states VALUES("657","Jamaica","120","1");
INSERT INTO profine_states VALUES("658","Jan Mayen","121","1");
INSERT INTO profine_states VALUES("659","Japan","122","1");
INSERT INTO profine_states VALUES("660","Jarvis Island","123","1");
INSERT INTO profine_states VALUES("661","Jersey","124","1");
INSERT INTO profine_states VALUES("662","Johnston Atoll","125","1");
INSERT INTO profine_states VALUES("663","Jordan","126","1");
INSERT INTO profine_states VALUES("664","Juan de Nova Island","127","1");
INSERT INTO profine_states VALUES("665","Kazakhstan","128","1");
INSERT INTO profine_states VALUES("666","Kenya","129","1");
INSERT INTO profine_states VALUES("667","Kingman Reef","130","1");
INSERT INTO profine_states VALUES("668","Kiribati","131","1");
INSERT INTO profine_states VALUES("669","North Korea","132","1");
INSERT INTO profine_states VALUES("670","South Korea","133","1");
INSERT INTO profine_states VALUES("671","Kuwait","134","1");
INSERT INTO profine_states VALUES("672","Kyrgyzstan","135","1");
INSERT INTO profine_states VALUES("673","Laos","136","1");
INSERT INTO profine_states VALUES("674","Latvia","137","1");
INSERT INTO profine_states VALUES("675","Lebanon","138","1");
INSERT INTO profine_states VALUES("676","Lesotho","139","1");
INSERT INTO profine_states VALUES("677","Liberia","140","1");
INSERT INTO profine_states VALUES("678","Libya","141","1");
INSERT INTO profine_states VALUES("679","Liechtenstein","142","1");
INSERT INTO profine_states VALUES("680","Lithuania","143","1");
INSERT INTO profine_states VALUES("682","Macao","145","1");
INSERT INTO profine_states VALUES("683","The Former Yugoslav Republic of Macedonia","146","1");
INSERT INTO profine_states VALUES("684","Madagascar","147","1");
INSERT INTO profine_states VALUES("685","Malawi","148","1");
INSERT INTO profine_states VALUES("686","Malaysia","149","1");
INSERT INTO profine_states VALUES("687","Maldives","150","1");
INSERT INTO profine_states VALUES("688","Mali","151","1");
INSERT INTO profine_states VALUES("689","Malta","152","1");
INSERT INTO profine_states VALUES("690","Isle of Man","153","1");
INSERT INTO profine_states VALUES("691","Marshall Islands","154","1");
INSERT INTO profine_states VALUES("692","Martinique","155","1");
INSERT INTO profine_states VALUES("693","Mauritania","156","1");
INSERT INTO profine_states VALUES("694","Mauritius","157","1");
INSERT INTO profine_states VALUES("695","Mayotte","158","1");
INSERT INTO profine_states VALUES("697","Federated States of Micronesia","160","1");
INSERT INTO profine_states VALUES("698","Midway Islands","161","1");
INSERT INTO profine_states VALUES("699","Miscellaneous (French)","162","1");
INSERT INTO profine_states VALUES("700","Moldova","163","1");
INSERT INTO profine_states VALUES("701","Monaco","164","1");
INSERT INTO profine_states VALUES("702","Mongolia","165","1");
INSERT INTO profine_states VALUES("703","Montenegro","166","1");
INSERT INTO profine_states VALUES("704","Montserrat","167","1");
INSERT INTO profine_states VALUES("705","Morocco","168","1");
INSERT INTO profine_states VALUES("706","Mozambique","169","1");
INSERT INTO profine_states VALUES("707","Myanmar","170","1");
INSERT INTO profine_states VALUES("708","Namibia","171","1");
INSERT INTO profine_states VALUES("709","Nauru","172","1");
INSERT INTO profine_states VALUES("710","Navassa Island","173","1");
INSERT INTO profine_states VALUES("711","Nepal","174","1");
INSERT INTO profine_states VALUES("712","The Netherlands","175","1");
INSERT INTO profine_states VALUES("713","Netherlands Antilles","176","1");
INSERT INTO profine_states VALUES("714","New Caledonia","177","1");
INSERT INTO profine_states VALUES("715","New Zealand","178","1");
INSERT INTO profine_states VALUES("716","Nicaragua","179","1");
INSERT INTO profine_states VALUES("717","Niger","180","1");
INSERT INTO profine_states VALUES("718","Nigeria","181","1");
INSERT INTO profine_states VALUES("719","Niue","182","1");
INSERT INTO profine_states VALUES("720","Norfolk Island","183","1");
INSERT INTO profine_states VALUES("721","Northern Mariana Islands","184","1");
INSERT INTO profine_states VALUES("722","Norway","185","1");
INSERT INTO profine_states VALUES("723","Oman","186","1");
INSERT INTO profine_states VALUES("724","Pakistan","187","1");
INSERT INTO profine_states VALUES("725","Palau","188","1");
INSERT INTO profine_states VALUES("726","Palmyra Atoll","189","1");
INSERT INTO profine_states VALUES("728","Papua New Guinea","191","1");
INSERT INTO profine_states VALUES("729","Paracel Islands","192","1");
INSERT INTO profine_states VALUES("730","Paraguay","193","1");
INSERT INTO profine_states VALUES("731","Peru","194","1");
INSERT INTO profine_states VALUES("732","Philippines","195","1");
INSERT INTO profine_states VALUES("733","Pitcairn Islands","196","1");
INSERT INTO profine_states VALUES("734","Poland","197","1");
INSERT INTO profine_states VALUES("735","Portugal","198","1");
INSERT INTO profine_states VALUES("736","Puerto Rico","199","1");
INSERT INTO profine_states VALUES("737","Qatar","200","1");
INSERT INTO profine_states VALUES("738","Réunion","201","1");
INSERT INTO profine_states VALUES("739","Romania","202","1");
INSERT INTO profine_states VALUES("740","Russia","203","1");
INSERT INTO profine_states VALUES("741","Rwanda","204","1");
INSERT INTO profine_states VALUES("743","Saint Kitts and Nevis","206","1");
INSERT INTO profine_states VALUES("744","Saint Lucia","207","1");
INSERT INTO profine_states VALUES("745","Saint Pierre and Miquelon","208","1");
INSERT INTO profine_states VALUES("746","Saint Vincent and the Grenadines","209","1");
INSERT INTO profine_states VALUES("747","Samoa","210","1");
INSERT INTO profine_states VALUES("750","Saudi Arabia","213","1");
INSERT INTO profine_states VALUES("751","Senegal","214","1");
INSERT INTO profine_states VALUES("752","Serbia","215","1");
INSERT INTO profine_states VALUES("753","Serbia and Montenegro","216","1");
INSERT INTO profine_states VALUES("754","Seychelles","217","1");
INSERT INTO profine_states VALUES("755","Sierra Leone","218","1");
INSERT INTO profine_states VALUES("756","Singapore","219","1");
INSERT INTO profine_states VALUES("757","Slovakia","220","1");
INSERT INTO profine_states VALUES("758","Slovenia","221","1");
INSERT INTO profine_states VALUES("759","Solomon Islands","222","1");
INSERT INTO profine_states VALUES("760","Somalia","223","1");
INSERT INTO profine_states VALUES("761","South Africa","224","1");
INSERT INTO profine_states VALUES("762","South Georgia and the South Sandwich Islands","225","1");
INSERT INTO profine_states VALUES("763","Spain","226","1");
INSERT INTO profine_states VALUES("764","Spratly Islands","227","1");
INSERT INTO profine_states VALUES("765","Sri Lanka","228","1");
INSERT INTO profine_states VALUES("766","Sudan","229","1");
INSERT INTO profine_states VALUES("767","Suriname","230","1");
INSERT INTO profine_states VALUES("768","Svalbard","231","1");
INSERT INTO profine_states VALUES("769","Swaziland","232","1");
INSERT INTO profine_states VALUES("770","Sweden","233","1");
INSERT INTO profine_states VALUES("771","Switzerland","234","1");
INSERT INTO profine_states VALUES("772","Syria","235","1");
INSERT INTO profine_states VALUES("773","Taiwan","236","1");
INSERT INTO profine_states VALUES("774","Tajikistan","237","1");
INSERT INTO profine_states VALUES("775","Tanzania","238","1");
INSERT INTO profine_states VALUES("776","Thailand","239","1");
INSERT INTO profine_states VALUES("777","Togo","240","1");
INSERT INTO profine_states VALUES("778","Tokelau","241","1");
INSERT INTO profine_states VALUES("779","Tonga","242","1");
INSERT INTO profine_states VALUES("780","Trinidad and Tobago","243","1");
INSERT INTO profine_states VALUES("781","Tromelin Island","244","1");
INSERT INTO profine_states VALUES("782","Tunisia","245","1");
INSERT INTO profine_states VALUES("783","Turkey","246","1");
INSERT INTO profine_states VALUES("784","Turkmenistan","247","1");
INSERT INTO profine_states VALUES("785","Turks and Caicos Islands","248","1");
INSERT INTO profine_states VALUES("786","Tuvalu","249","1");
INSERT INTO profine_states VALUES("787","Uganda","250","1");
INSERT INTO profine_states VALUES("788","Ukraine","251","1");
INSERT INTO profine_states VALUES("789","United Arab Emirates","252","1");
INSERT INTO profine_states VALUES("790","United Kingdom","253","1");
INSERT INTO profine_states VALUES("791","United States","254","1");
INSERT INTO profine_states VALUES("792","United States Minor Outlying Islands","255","1");
INSERT INTO profine_states VALUES("793","Uruguay","256","1");
INSERT INTO profine_states VALUES("794","Uzbekistan","257","1");
INSERT INTO profine_states VALUES("795","Vanuatu","258","1");
INSERT INTO profine_states VALUES("796","Venezuela","259","1");
INSERT INTO profine_states VALUES("797","Vietnam","260","1");
INSERT INTO profine_states VALUES("798","Virgin Islands","261","1");
INSERT INTO profine_states VALUES("799","Virgin Islands (UK)","262","1");
INSERT INTO profine_states VALUES("800","Virgin Islands (US)","263","1");
INSERT INTO profine_states VALUES("801","Wake Island","264","1");
INSERT INTO profine_states VALUES("802","Wallis and Futuna","265","1");
INSERT INTO profine_states VALUES("803","West Bank","266","1");
INSERT INTO profine_states VALUES("804","Western Sahara","267","1");
INSERT INTO profine_states VALUES("805","Western Samoa","268","1");
INSERT INTO profine_states VALUES("806","Yemen","270","1");
INSERT INTO profine_states VALUES("808","Zaire","272","1");
INSERT INTO profine_states VALUES("809","Zambia","273","1");
INSERT INTO profine_states VALUES("810","Zimbabwe","274","1");
INSERT INTO profine_states VALUES("815","Yukon Territory","43","1");
INSERT INTO profine_states VALUES("816","Barbuda","9","1");
INSERT INTO profine_states VALUES("817","Saint George","9","1");
INSERT INTO profine_states VALUES("818","Saint John","9","1");
INSERT INTO profine_states VALUES("819","Saint Mary","9","1");
INSERT INTO profine_states VALUES("820","Saint Paul","9","1");
INSERT INTO profine_states VALUES("821","Saint Peter","9","1");
INSERT INTO profine_states VALUES("822","Saint Philip","9","1");
INSERT INTO profine_states VALUES("823","Badakhshan","1","1");
INSERT INTO profine_states VALUES("824","Badghis","1","1");
INSERT INTO profine_states VALUES("825","Baghlan","1","1");
INSERT INTO profine_states VALUES("827","Bamian","1","1");
INSERT INTO profine_states VALUES("828","Farah","1","1");
INSERT INTO profine_states VALUES("829","Faryab","1","1");
INSERT INTO profine_states VALUES("830","Ghazni","1","1");
INSERT INTO profine_states VALUES("831","Ghowr","1","1");
INSERT INTO profine_states VALUES("832","Helmand","1","1");
INSERT INTO profine_states VALUES("833","Herat","1","1");
INSERT INTO profine_states VALUES("835","Kabol","1","1");
INSERT INTO profine_states VALUES("836","Kapisa","1","1");
INSERT INTO profine_states VALUES("837","Konar","1","1");
INSERT INTO profine_states VALUES("838","Laghman","1","1");
INSERT INTO profine_states VALUES("839","Lowgar","1","1");
INSERT INTO profine_states VALUES("840","Nangarhar","1","1");
INSERT INTO profine_states VALUES("841","Nimruz","1","1");
INSERT INTO profine_states VALUES("842","Oruzgan","1","1");
INSERT INTO profine_states VALUES("843","Paktia","1","1");
INSERT INTO profine_states VALUES("844","Parvan","1","1");
INSERT INTO profine_states VALUES("845","Kandahar","1","1");
INSERT INTO profine_states VALUES("846","Kondoz","1","1");
INSERT INTO profine_states VALUES("848","Takhar","1","1");
INSERT INTO profine_states VALUES("849","Vardak","1","1");
INSERT INTO profine_states VALUES("850","Zabol","1","1");
INSERT INTO profine_states VALUES("851","Paktika","1","1");
INSERT INTO profine_states VALUES("852","Balkh","1","1");
INSERT INTO profine_states VALUES("853","Jowzjan","1","1");
INSERT INTO profine_states VALUES("854","Samangan","1","1");
INSERT INTO profine_states VALUES("855","Sare Pol","1","1");
INSERT INTO profine_states VALUES("856","Alger","3","1");
INSERT INTO profine_states VALUES("857","Batna","3","1");
INSERT INTO profine_states VALUES("858","Constantine","3","1");
INSERT INTO profine_states VALUES("859","Medea","3","1");
INSERT INTO profine_states VALUES("860","Mostaganem","3","1");
INSERT INTO profine_states VALUES("861","Oran","3","1");
INSERT INTO profine_states VALUES("862","Saida","3","1");
INSERT INTO profine_states VALUES("863","Setif","3","1");
INSERT INTO profine_states VALUES("864","Tiaret","3","1");
INSERT INTO profine_states VALUES("865","Tizi Ouzou","3","1");
INSERT INTO profine_states VALUES("866","Tlemcen","3","1");
INSERT INTO profine_states VALUES("867","Bejaia","3","1");
INSERT INTO profine_states VALUES("868","Biskra","3","1");
INSERT INTO profine_states VALUES("869","Blida","3","1");
INSERT INTO profine_states VALUES("870","Bouira","3","1");
INSERT INTO profine_states VALUES("871","Djelfa","3","1");
INSERT INTO profine_states VALUES("872","Guelma","3","1");
INSERT INTO profine_states VALUES("873","Jijel","3","1");
INSERT INTO profine_states VALUES("874","Laghouat","3","1");
INSERT INTO profine_states VALUES("875","Mascara","3","1");
INSERT INTO profine_states VALUES("876","M\'Sila","3","1");
INSERT INTO profine_states VALUES("877","Oum el Bouaghi","3","1");
INSERT INTO profine_states VALUES("878","Sidi Bel Abbes","3","1");
INSERT INTO profine_states VALUES("879","Skikda","3","1");
INSERT INTO profine_states VALUES("880","Tebessa","3","1");
INSERT INTO profine_states VALUES("881","Adrar","3","1");
INSERT INTO profine_states VALUES("882","Ain Defla","3","1");
INSERT INTO profine_states VALUES("883","Ain Temouchent","3","1");
INSERT INTO profine_states VALUES("884","Annaba","3","1");
INSERT INTO profine_states VALUES("885","Bechar","3","1");
INSERT INTO profine_states VALUES("886","Bordj Bou Arreridj","3","1");
INSERT INTO profine_states VALUES("887","Boumerdes","3","1");
INSERT INTO profine_states VALUES("888","Chlef","3","1");
INSERT INTO profine_states VALUES("889","El Bayadh","3","1");
INSERT INTO profine_states VALUES("890","El Oued","3","1");
INSERT INTO profine_states VALUES("891","El Tarf","3","1");
INSERT INTO profine_states VALUES("892","Ghardaia","3","1");
INSERT INTO profine_states VALUES("893","Illizi","3","1");
INSERT INTO profine_states VALUES("894","Khenchela","3","1");
INSERT INTO profine_states VALUES("895","Mila","3","1");
INSERT INTO profine_states VALUES("896","Naama","3","1");
INSERT INTO profine_states VALUES("897","Ouargla","3","1");
INSERT INTO profine_states VALUES("898","Relizane","3","1");
INSERT INTO profine_states VALUES("899","Souk Ahras","3","1");
INSERT INTO profine_states VALUES("900","Tamanghasset","3","1");
INSERT INTO profine_states VALUES("901","Tindouf","3","1");
INSERT INTO profine_states VALUES("902","Tipaza","3","1");
INSERT INTO profine_states VALUES("903","Tissemsilt","3","1");
INSERT INTO profine_states VALUES("904","Abseron","16","1");
INSERT INTO profine_states VALUES("905","Agcabadi","16","1");
INSERT INTO profine_states VALUES("906","Agdam","16","1");
INSERT INTO profine_states VALUES("907","Agdas","16","1");
INSERT INTO profine_states VALUES("908","Agstafa","16","1");
INSERT INTO profine_states VALUES("909","Agsu","16","1");
INSERT INTO profine_states VALUES("910","Ali Bayramli","16","1");
INSERT INTO profine_states VALUES("911","Astara","16","1");
INSERT INTO profine_states VALUES("912","Baki","16","1");
INSERT INTO profine_states VALUES("913","Balakan","16","1");
INSERT INTO profine_states VALUES("914","Barda","16","1");
INSERT INTO profine_states VALUES("915","Beylaqan","16","1");
INSERT INTO profine_states VALUES("916","Bilasuvar","16","1");
INSERT INTO profine_states VALUES("917","Cabrayil","16","1");
INSERT INTO profine_states VALUES("918","Calilabad","16","1");
INSERT INTO profine_states VALUES("919","Daskasan","16","1");
INSERT INTO profine_states VALUES("920","Davaci","16","1");
INSERT INTO profine_states VALUES("921","Fuzuli","16","1");
INSERT INTO profine_states VALUES("922","Gadabay","16","1");
INSERT INTO profine_states VALUES("923","Ganca","16","1");
INSERT INTO profine_states VALUES("924","Goranboy","16","1");
INSERT INTO profine_states VALUES("925","Goycay","16","1");
INSERT INTO profine_states VALUES("926","Haciqabul","16","1");
INSERT INTO profine_states VALUES("927","Imisli","16","1");
INSERT INTO profine_states VALUES("928","Ismayilli","16","1");
INSERT INTO profine_states VALUES("929","Kalbacar","16","1");
INSERT INTO profine_states VALUES("930","Kurdamir","16","1");
INSERT INTO profine_states VALUES("931","Lacin","16","1");
INSERT INTO profine_states VALUES("932","Lankaran","16","1");
INSERT INTO profine_states VALUES("934","Lerik","16","1");
INSERT INTO profine_states VALUES("935","Masalli","16","1");
INSERT INTO profine_states VALUES("936","Mingacevir","16","1");
INSERT INTO profine_states VALUES("937","Naftalan","16","1");
INSERT INTO profine_states VALUES("938","Naxcivan","16","1");
INSERT INTO profine_states VALUES("939","Neftcala","16","1");
INSERT INTO profine_states VALUES("940","Oguz","16","1");
INSERT INTO profine_states VALUES("941","Qabala","16","1");
INSERT INTO profine_states VALUES("942","Qax","16","1");
INSERT INTO profine_states VALUES("943","Qazax","16","1");
INSERT INTO profine_states VALUES("944","Qobustan","16","1");
INSERT INTO profine_states VALUES("945","Quba","16","1");
INSERT INTO profine_states VALUES("946","Qubadli","16","1");
INSERT INTO profine_states VALUES("947","Qusar","16","1");
INSERT INTO profine_states VALUES("948","Saatli","16","1");
INSERT INTO profine_states VALUES("949","Sabirabad","16","1");
INSERT INTO profine_states VALUES("950","Saki","16","1");
INSERT INTO profine_states VALUES("952","Salyan","16","1");
INSERT INTO profine_states VALUES("953","Samaxi","16","1");
INSERT INTO profine_states VALUES("954","Samkir","16","1");
INSERT INTO profine_states VALUES("955","Samux","16","1");
INSERT INTO profine_states VALUES("956","Siyazan","16","1");
INSERT INTO profine_states VALUES("957","Sumqayit","16","1");
INSERT INTO profine_states VALUES("958","Susa","16","1");
INSERT INTO profine_states VALUES("960","Tartar","16","1");
INSERT INTO profine_states VALUES("961","Tovuz","16","1");
INSERT INTO profine_states VALUES("962","Ucar","16","1");
INSERT INTO profine_states VALUES("963","Xacmaz","16","1");
INSERT INTO profine_states VALUES("964","Xankandi","16","1");
INSERT INTO profine_states VALUES("965","Xanlar","16","1");
INSERT INTO profine_states VALUES("966","Xizi","16","1");
INSERT INTO profine_states VALUES("967","Xocali","16","1");
INSERT INTO profine_states VALUES("968","Xocavand","16","1");
INSERT INTO profine_states VALUES("969","Yardimli","16","1");
INSERT INTO profine_states VALUES("970","Yevlax","16","1");
INSERT INTO profine_states VALUES("972","Zangilan","16","1");
INSERT INTO profine_states VALUES("973","Zaqatala","16","1");
INSERT INTO profine_states VALUES("974","Zardab","16","1");
INSERT INTO profine_states VALUES("975","Berat","2","1");
INSERT INTO profine_states VALUES("976","Diber","2","1");
INSERT INTO profine_states VALUES("977","Durres","2","1");
INSERT INTO profine_states VALUES("978","Elbasan","2","1");
INSERT INTO profine_states VALUES("979","Fier","2","1");
INSERT INTO profine_states VALUES("980","Gjirokaster","2","1");
INSERT INTO profine_states VALUES("981","Gramsh","2","1");
INSERT INTO profine_states VALUES("982","Kolonje","2","1");
INSERT INTO profine_states VALUES("983","Korce","2","1");
INSERT INTO profine_states VALUES("984","Kruje","2","1");
INSERT INTO profine_states VALUES("985","Kukes","2","1");
INSERT INTO profine_states VALUES("986","Lezhe","2","1");
INSERT INTO profine_states VALUES("987","Librazhd","2","1");
INSERT INTO profine_states VALUES("988","Lushnje","2","1");
INSERT INTO profine_states VALUES("989","Mat","2","1");
INSERT INTO profine_states VALUES("990","Mirdite","2","1");
INSERT INTO profine_states VALUES("991","Permet","2","1");
INSERT INTO profine_states VALUES("992","Pogradec","2","1");
INSERT INTO profine_states VALUES("993","Puke","2","1");
INSERT INTO profine_states VALUES("994","Sarande","2","1");
INSERT INTO profine_states VALUES("995","Shkoder","2","1");
INSERT INTO profine_states VALUES("996","Skrapar","2","1");
INSERT INTO profine_states VALUES("997","Tepelene","2","1");
INSERT INTO profine_states VALUES("998","Tropoje","2","1");
INSERT INTO profine_states VALUES("999","Vlore","2","1");
INSERT INTO profine_states VALUES("1000","Tiran","2","1");
INSERT INTO profine_states VALUES("1001","Bulqize","2","1");
INSERT INTO profine_states VALUES("1002","Delvine","2","1");
INSERT INTO profine_states VALUES("1003","Devoll","2","1");
INSERT INTO profine_states VALUES("1004","Has","2","1");
INSERT INTO profine_states VALUES("1005","Kavaje","2","1");
INSERT INTO profine_states VALUES("1006","Kucove","2","1");
INSERT INTO profine_states VALUES("1007","Kurbin","2","1");
INSERT INTO profine_states VALUES("1008","Malesi e Madhe","2","1");
INSERT INTO profine_states VALUES("1009","Mallakaster","2","1");
INSERT INTO profine_states VALUES("1010","Peqin","2","1");
INSERT INTO profine_states VALUES("1011","Tirane","2","1");
INSERT INTO profine_states VALUES("1012","Aragatsotn","11","1");
INSERT INTO profine_states VALUES("1013","Ararat","11","1");
INSERT INTO profine_states VALUES("1014","Armavir","11","1");
INSERT INTO profine_states VALUES("1015","Geghark\'unik\'","11","1");
INSERT INTO profine_states VALUES("1016","Kotayk\'","11","1");
INSERT INTO profine_states VALUES("1017","Lorri","11","1");
INSERT INTO profine_states VALUES("1018","Shirak","11","1");
INSERT INTO profine_states VALUES("1019","Syunik\'","11","1");
INSERT INTO profine_states VALUES("1020","Tavush","11","1");
INSERT INTO profine_states VALUES("1021","Vayots\' Dzor","11","1");
INSERT INTO profine_states VALUES("1022","Yerevan","11","1");
INSERT INTO profine_states VALUES("1023","Andorra la Vella","5","1");
INSERT INTO profine_states VALUES("1024","Canillo","5","1");
INSERT INTO profine_states VALUES("1025","Encamp","5","1");
INSERT INTO profine_states VALUES("1026","La Massana","5","1");
INSERT INTO profine_states VALUES("1027","Ordino","5","1");
INSERT INTO profine_states VALUES("1028","Sant Julia de Loria","5","1");
INSERT INTO profine_states VALUES("1029","Benguela","6","1");
INSERT INTO profine_states VALUES("1030","Bie","6","1");
INSERT INTO profine_states VALUES("1031","Cabinda","6","1");
INSERT INTO profine_states VALUES("1032","Cuando Cubango","6","1");
INSERT INTO profine_states VALUES("1033","Cuanza Norte","6","1");
INSERT INTO profine_states VALUES("1034","Cuanza Sul","6","1");
INSERT INTO profine_states VALUES("1035","Cunene","6","1");
INSERT INTO profine_states VALUES("1036","Huambo","6","1");
INSERT INTO profine_states VALUES("1037","Huila","6","1");
INSERT INTO profine_states VALUES("1038","Luanda","6","1");
INSERT INTO profine_states VALUES("1039","Malanje","6","1");
INSERT INTO profine_states VALUES("1040","Namibe","6","1");
INSERT INTO profine_states VALUES("1041","Moxico","6","1");
INSERT INTO profine_states VALUES("1046","Uige","6","1");
INSERT INTO profine_states VALUES("1047","Zaire","6","1");
INSERT INTO profine_states VALUES("1048","Lunda Norte","6","1");
INSERT INTO profine_states VALUES("1049","Lunda Sul","6","1");
INSERT INTO profine_states VALUES("1050","Bengo","6","1");
INSERT INTO profine_states VALUES("1051","Buenos Aires","10","1");
INSERT INTO profine_states VALUES("1052","Catamarca","10","1");
INSERT INTO profine_states VALUES("1053","Chaco","10","1");
INSERT INTO profine_states VALUES("1054","Chubut","10","1");
INSERT INTO profine_states VALUES("1055","Cordoba","10","1");
INSERT INTO profine_states VALUES("1056","Corrientes","10","1");
INSERT INTO profine_states VALUES("1057","Distrito Federal","10","1");
INSERT INTO profine_states VALUES("1058","Entre Rios","10","1");
INSERT INTO profine_states VALUES("1059","Formosa","10","1");
INSERT INTO profine_states VALUES("1060","Jujuy","10","1");
INSERT INTO profine_states VALUES("1061","La Pampa","10","1");
INSERT INTO profine_states VALUES("1062","La Rioja","10","1");
INSERT INTO profine_states VALUES("1063","Mendoza","10","1");
INSERT INTO profine_states VALUES("1064","Misiones","10","1");
INSERT INTO profine_states VALUES("1065","Neuquen","10","1");
INSERT INTO profine_states VALUES("1066","Rio Negro","10","1");
INSERT INTO profine_states VALUES("1067","Salta","10","1");
INSERT INTO profine_states VALUES("1068","San Juan","10","1");
INSERT INTO profine_states VALUES("1069","San Luis","10","1");
INSERT INTO profine_states VALUES("1070","Santa Cruz","10","1");
INSERT INTO profine_states VALUES("1071","Santa Fe","10","1");
INSERT INTO profine_states VALUES("1072","Santiago del Estero","10","1");
INSERT INTO profine_states VALUES("1073","Antartida e Islas del Atlan Tierra del Fuego","10","1");
INSERT INTO profine_states VALUES("1074","Tucuman","10","1");
INSERT INTO profine_states VALUES("1075","Burgenland","15","1");
INSERT INTO profine_states VALUES("1076","Karnten","15","1");
INSERT INTO profine_states VALUES("1077","Niederosterreich","15","1");
INSERT INTO profine_states VALUES("1078","Oberosterreich","15","1");
INSERT INTO profine_states VALUES("1079","Salzburg","15","1");
INSERT INTO profine_states VALUES("1080","Steiermark","15","1");
INSERT INTO profine_states VALUES("1081","Tirol","15","1");
INSERT INTO profine_states VALUES("1082","Vorarlberg","15","1");
INSERT INTO profine_states VALUES("1083","Wien","15","1");
INSERT INTO profine_states VALUES("1084","Al Hadd","18","1");
INSERT INTO profine_states VALUES("1085","Al Manamah","18","1");
INSERT INTO profine_states VALUES("1086","Al Muharraq","18","1");
INSERT INTO profine_states VALUES("1087","Jidd Hafs","18","1");
INSERT INTO profine_states VALUES("1088","Sitrah","18","1");
INSERT INTO profine_states VALUES("1090","Al Mintaqah al Gharbiyah","18","1");
INSERT INTO profine_states VALUES("1091","Mintaqat Juzur Hawar","18","1");
INSERT INTO profine_states VALUES("1092","Al Mintaqah ash Shamaliyah","18","1");
INSERT INTO profine_states VALUES("1093","Al Mintaqah al Wusta","18","1");
INSERT INTO profine_states VALUES("1094","Madinat Isa","18","1");
INSERT INTO profine_states VALUES("1096","Madinat Hamad","18","1");
INSERT INTO profine_states VALUES("1097","Christ Church","21","1");
INSERT INTO profine_states VALUES("1098","Saint Andrew","21","1");
INSERT INTO profine_states VALUES("1099","Saint George","21","1");
INSERT INTO profine_states VALUES("1100","Saint James","21","1");
INSERT INTO profine_states VALUES("1101","Saint John","21","1");
INSERT INTO profine_states VALUES("1102","Saint Joseph","21","1");
INSERT INTO profine_states VALUES("1103","Saint Lucy","21","1");
INSERT INTO profine_states VALUES("1104","Saint Michael","21","1");
INSERT INTO profine_states VALUES("1105","Saint Peter","21","1");
INSERT INTO profine_states VALUES("1106","Saint Philip","21","1");
INSERT INTO profine_states VALUES("1107","Saint Thomas","21","1");
INSERT INTO profine_states VALUES("1108","Central","31","1");
INSERT INTO profine_states VALUES("1109","Chobe","31","1");
INSERT INTO profine_states VALUES("1110","Ghanzi","31","1");
INSERT INTO profine_states VALUES("1111","Kgalagadi","31","1");
INSERT INTO profine_states VALUES("1112","Kgatleng","31","1");
INSERT INTO profine_states VALUES("1113","Kweneng","31","1");
INSERT INTO profine_states VALUES("1114","Ngamiland","31","1");
INSERT INTO profine_states VALUES("1115","NorthEast","31","1");
INSERT INTO profine_states VALUES("1116","SouthEast","31","1");
INSERT INTO profine_states VALUES("1117","Southern","31","1");
INSERT INTO profine_states VALUES("1118","Devonshire","27","1");
INSERT INTO profine_states VALUES("1119","Hamilton Municipality","27","1");
INSERT INTO profine_states VALUES("1121","Paget","27","1");
INSERT INTO profine_states VALUES("1122","Pembroke","27","1");
INSERT INTO profine_states VALUES("1123","Saint George","27","1");
INSERT INTO profine_states VALUES("1124","Saint George\'s","27","1");
INSERT INTO profine_states VALUES("1125","Sandys","27","1");
INSERT INTO profine_states VALUES("1126","Smiths","27","1");
INSERT INTO profine_states VALUES("1127","Southampton","27","1");
INSERT INTO profine_states VALUES("1128","Warwick","27","1");
INSERT INTO profine_states VALUES("1129","Antwerpen","24","1");
INSERT INTO profine_states VALUES("1131","Hainaut","24","1");
INSERT INTO profine_states VALUES("1132","Liege","24","1");
INSERT INTO profine_states VALUES("1133","Limburg","24","1");
INSERT INTO profine_states VALUES("1134","Luxembourg","24","1");
INSERT INTO profine_states VALUES("1135","Namur","24","1");
INSERT INTO profine_states VALUES("1136","Oost-Vlaanderen","24","1");
INSERT INTO profine_states VALUES("1137","West-Vlaanderen","24","1");
INSERT INTO profine_states VALUES("1138","Bimini","17","1");
INSERT INTO profine_states VALUES("1139","Cat Island","17","1");
INSERT INTO profine_states VALUES("1140","Exuma","17","1");
INSERT INTO profine_states VALUES("1143","Inagua","17","1");
INSERT INTO profine_states VALUES("1144","Long Island","17","1");
INSERT INTO profine_states VALUES("1145","Mayaguana","17","1");
INSERT INTO profine_states VALUES("1146","Ragged Island","17","1");
INSERT INTO profine_states VALUES("1147","Harbour Island","17","1");
INSERT INTO profine_states VALUES("1148","New Providence","17","1");
INSERT INTO profine_states VALUES("1149","Acklins and Crooked Islands","17","1");
INSERT INTO profine_states VALUES("1150","Freeport","17","1");
INSERT INTO profine_states VALUES("1151","Fresh Creek","17","1");
INSERT INTO profine_states VALUES("1152","Governor\'s Harbour","17","1");
INSERT INTO profine_states VALUES("1153","Green Turtle Cay","17","1");
INSERT INTO profine_states VALUES("1154","High Rock","17","1");
INSERT INTO profine_states VALUES("1155","Kemps Bay","17","1");
INSERT INTO profine_states VALUES("1156","Marsh Harbour","17","1");
INSERT INTO profine_states VALUES("1157","Nichollstown and Berry Islands","17","1");
INSERT INTO profine_states VALUES("1158","Rock Sound","17","1");
INSERT INTO profine_states VALUES("1159","Sandy Point","17","1");
INSERT INTO profine_states VALUES("1160","San Salvador and Rum Cay","17","1");
INSERT INTO profine_states VALUES("1161","Chittagong","20","1");
INSERT INTO profine_states VALUES("1162","Dhaka","20","1");
INSERT INTO profine_states VALUES("1163","Khulna","20","1");
INSERT INTO profine_states VALUES("1164","Rajshahi","20","1");
INSERT INTO profine_states VALUES("1165","Belize","25","1");
INSERT INTO profine_states VALUES("1166","Cayo","25","1");
INSERT INTO profine_states VALUES("1167","Corozal","25","1");
INSERT INTO profine_states VALUES("1168","Orange Walk","25","1");
INSERT INTO profine_states VALUES("1169","Stann Creek","25","1");
INSERT INTO profine_states VALUES("1170","Toledo","25","1");
INSERT INTO profine_states VALUES("1171","Chuquisaca","29","1");
INSERT INTO profine_states VALUES("1172","Cochabamba","29","1");
INSERT INTO profine_states VALUES("1173","El Beni","29","1");
INSERT INTO profine_states VALUES("1174","La Paz","29","1");
INSERT INTO profine_states VALUES("1175","Oruro","29","1");
INSERT INTO profine_states VALUES("1176","Pando","29","1");
INSERT INTO profine_states VALUES("1177","Potosi","29","1");
INSERT INTO profine_states VALUES("1178","Santa Cruz","29","1");
INSERT INTO profine_states VALUES("1179","Tarija","29","1");
INSERT INTO profine_states VALUES("1180","Rakhine State","39","1");
INSERT INTO profine_states VALUES("1181","Chin State","39","1");
INSERT INTO profine_states VALUES("1182","Ayeyarwady","39","1");
INSERT INTO profine_states VALUES("1183","Kachin State","39","1");
INSERT INTO profine_states VALUES("1184","Kayin State","39","1");
INSERT INTO profine_states VALUES("1185","Kayah State","39","1");
INSERT INTO profine_states VALUES("1187","Mandalay","39","1");
INSERT INTO profine_states VALUES("1189","Sagaing","39","1");
INSERT INTO profine_states VALUES("1190","Shan State","39","1");
INSERT INTO profine_states VALUES("1191","Tanintharyi","39","1");
INSERT INTO profine_states VALUES("1192","Mon State","39","1");
INSERT INTO profine_states VALUES("1194","Magway","39","1");
INSERT INTO profine_states VALUES("1195","Bago","39","1");
INSERT INTO profine_states VALUES("1196","Yangon","39","1");
INSERT INTO profine_states VALUES("1197","Atakora","26","1");
INSERT INTO profine_states VALUES("1198","Atlantique","26","1");
INSERT INTO profine_states VALUES("1199","Borgou","26","1");
INSERT INTO profine_states VALUES("1200","Mono","26","1");
INSERT INTO profine_states VALUES("1201","Oueme","26","1");
INSERT INTO profine_states VALUES("1202","Zou","26","1");
INSERT INTO profine_states VALUES("1203","Brestskaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1204","Homyel\'skaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1205","Hrodzyenskaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1206","Minsk","23","1");
INSERT INTO profine_states VALUES("1207","Minskaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1208","Mahilyowskaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1209","Vitsyebskaya Voblasts\'","23","1");
INSERT INTO profine_states VALUES("1210","Malaita","222","1");
INSERT INTO profine_states VALUES("1211","Western","222","1");
INSERT INTO profine_states VALUES("1212","Central","222","1");
INSERT INTO profine_states VALUES("1213","Guadalcanal","222","1");
INSERT INTO profine_states VALUES("1214","Isabel","222","1");
INSERT INTO profine_states VALUES("1215","Makira","222","1");
INSERT INTO profine_states VALUES("1216","Temotu","222","1");
INSERT INTO profine_states VALUES("1217","Distrito Federal","33","1");
INSERT INTO profine_states VALUES("1219","Paro","33","1");
INSERT INTO profine_states VALUES("1220","Pernambuco","33","1");
INSERT INTO profine_states VALUES("1221","Bumthang","28","1");
INSERT INTO profine_states VALUES("1222","Chhukha","28","1");
INSERT INTO profine_states VALUES("1223","Chirang","28","1");
INSERT INTO profine_states VALUES("1224","Daga","28","1");
INSERT INTO profine_states VALUES("1225","Geylegphug","28","1");
INSERT INTO profine_states VALUES("1226","Ha","28","1");
INSERT INTO profine_states VALUES("1227","Lhuntshi","28","1");
INSERT INTO profine_states VALUES("1228","Mongar","28","1");
INSERT INTO profine_states VALUES("1229","Paro","28","1");
INSERT INTO profine_states VALUES("1230","Pemagatsel","28","1");
INSERT INTO profine_states VALUES("1231","Punakha","28","1");
INSERT INTO profine_states VALUES("1232","Samchi","28","1");
INSERT INTO profine_states VALUES("1233","Samdrup","28","1");
INSERT INTO profine_states VALUES("1234","Shemgang","28","1");
INSERT INTO profine_states VALUES("1235","Tashigang","28","1");
INSERT INTO profine_states VALUES("1236","Thimphu","28","1");
INSERT INTO profine_states VALUES("1237","Tongsa","28","1");
INSERT INTO profine_states VALUES("1238","Wangdi Phodrang","28","1");
INSERT INTO profine_states VALUES("1239","Burgas","37","1");
INSERT INTO profine_states VALUES("1240","Sofiya-Grad","37","1");
INSERT INTO profine_states VALUES("1241","Khaskovo","37","1");
INSERT INTO profine_states VALUES("1242","Lovech","37","1");
INSERT INTO profine_states VALUES("1243","Montana","37","1");
INSERT INTO profine_states VALUES("1244","Plovdiv","37","1");
INSERT INTO profine_states VALUES("1245","Razgrad","37","1");
INSERT INTO profine_states VALUES("1246","Sofiya","37","1");
INSERT INTO profine_states VALUES("1247","Varna","37","1");
INSERT INTO profine_states VALUES("1248","Belait","36","1");
INSERT INTO profine_states VALUES("1249","Brunei and Muara","36","1");
INSERT INTO profine_states VALUES("1250","Temburong","36","1");
INSERT INTO profine_states VALUES("1251","Tutong","36","1");
INSERT INTO profine_states VALUES("1252","Bujumbura","40","1");
INSERT INTO profine_states VALUES("1253","Muramvya","40","1");
INSERT INTO profine_states VALUES("1254","Bubanza","40","1");
INSERT INTO profine_states VALUES("1255","Bururi","40","1");
INSERT INTO profine_states VALUES("1256","Cankuzo","40","1");
INSERT INTO profine_states VALUES("1257","Cibitoke","40","1");
INSERT INTO profine_states VALUES("1258","Gitega","40","1");
INSERT INTO profine_states VALUES("1259","Karuzi","40","1");
INSERT INTO profine_states VALUES("1260","Kayanza","40","1");
INSERT INTO profine_states VALUES("1261","Kirundo","40","1");
INSERT INTO profine_states VALUES("1262","Makamba","40","1");
INSERT INTO profine_states VALUES("1263","Muyinga","40","1");
INSERT INTO profine_states VALUES("1264","Ngozi","40","1");
INSERT INTO profine_states VALUES("1265","Rutana","40","1");
INSERT INTO profine_states VALUES("1266","Ruyigi","40","1");
INSERT INTO profine_states VALUES("1267","Batdambang","41","1");
INSERT INTO profine_states VALUES("1268","Kampong Cham","41","1");
INSERT INTO profine_states VALUES("1269","Kampong Chhnang","41","1");
INSERT INTO profine_states VALUES("1270","Kampong Spoe","41","1");
INSERT INTO profine_states VALUES("1271","Kampong Thum","41","1");
INSERT INTO profine_states VALUES("1272","Kampot","41","1");
INSERT INTO profine_states VALUES("1273","Kandal","41","1");
INSERT INTO profine_states VALUES("1274","Kaoh Kong","41","1");
INSERT INTO profine_states VALUES("1275","Krachen","41","1");
INSERT INTO profine_states VALUES("1276","Mondol Kiri","41","1");
INSERT INTO profine_states VALUES("1277","Phnum Penh","41","1");
INSERT INTO profine_states VALUES("1278","Pouthisat","41","1");
INSERT INTO profine_states VALUES("1279","Preah Vihear","41","1");
INSERT INTO profine_states VALUES("1280","Prey Veng","41","1");
INSERT INTO profine_states VALUES("1283","Stoeng Treng","41","1");
INSERT INTO profine_states VALUES("1284","Svay Rieng","41","1");
INSERT INTO profine_states VALUES("1285","Takev","41","1");
INSERT INTO profine_states VALUES("1286","Rotanah Kiri","41","1");
INSERT INTO profine_states VALUES("1287","Siem Reab","41","1");
INSERT INTO profine_states VALUES("1288","Banteay Mean Cheay","41","1");
INSERT INTO profine_states VALUES("1289","Keb","41","1");
INSERT INTO profine_states VALUES("1290","Otdar Mean Cheay","41","1");
INSERT INTO profine_states VALUES("1291","Preah Seihanu","41","1");
INSERT INTO profine_states VALUES("1292","Batha","47","1");
INSERT INTO profine_states VALUES("1293","Biltine","47","1");
INSERT INTO profine_states VALUES("1294","Borkou-Ennedi-Tibesti","47","1");
INSERT INTO profine_states VALUES("1295","ChariBaguirmi","47","1");
INSERT INTO profine_states VALUES("1296","Guera","47","1");
INSERT INTO profine_states VALUES("1297","Kanem","47","1");
INSERT INTO profine_states VALUES("1298","Lac","47","1");
INSERT INTO profine_states VALUES("1299","Logone Occidental","47","1");
INSERT INTO profine_states VALUES("1300","Logone Oriental","47","1");
INSERT INTO profine_states VALUES("1301","Mayo-Kebbi","47","1");
INSERT INTO profine_states VALUES("1302","Moyen-Chari","47","1");
INSERT INTO profine_states VALUES("1303","Ouaddai","47","1");
INSERT INTO profine_states VALUES("1304","Salamat","47","1");
INSERT INTO profine_states VALUES("1305","Tandjile","47","1");
INSERT INTO profine_states VALUES("1306","Central","228","1");
INSERT INTO profine_states VALUES("1307","North Central","228","1");
INSERT INTO profine_states VALUES("1308","North Eastern","228","1");
INSERT INTO profine_states VALUES("1309","North Western","228","1");
INSERT INTO profine_states VALUES("1310","Sabaragamuwa","228","1");
INSERT INTO profine_states VALUES("1311","Southern","228","1");
INSERT INTO profine_states VALUES("1312","Uva","228","1");
INSERT INTO profine_states VALUES("1313","Western","228","1");
INSERT INTO profine_states VALUES("1314","Bouenza","56","1");
INSERT INTO profine_states VALUES("1315","Cuvette","56","1");
INSERT INTO profine_states VALUES("1316","Kouilou","56","1");
INSERT INTO profine_states VALUES("1317","Lekoumou","56","1");
INSERT INTO profine_states VALUES("1318","Likouala","56","1");
INSERT INTO profine_states VALUES("1319","Niari","56","1");
INSERT INTO profine_states VALUES("1320","Plateaux","56","1");
INSERT INTO profine_states VALUES("1321","Sangha","56","1");
INSERT INTO profine_states VALUES("1322","Pool","56","1");
INSERT INTO profine_states VALUES("1323","Brazzaville","56","1");
INSERT INTO profine_states VALUES("1324","Bandundu","55","1");
INSERT INTO profine_states VALUES("1325","Equateur","55","1");
INSERT INTO profine_states VALUES("1326","Kasai-Occidental","55","1");
INSERT INTO profine_states VALUES("1327","Kasai-Oriental","55","1");
INSERT INTO profine_states VALUES("1328","Katanga","55","1");
INSERT INTO profine_states VALUES("1329","Kinshasa","55","1");
INSERT INTO profine_states VALUES("1331","Bas-Congo","55","1");
INSERT INTO profine_states VALUES("1332","Orientale","55","1");
INSERT INTO profine_states VALUES("1333","Anhui","49","1");
INSERT INTO profine_states VALUES("1334","Zhejiang","49","1");
INSERT INTO profine_states VALUES("1335","Jiangxi","49","1");
INSERT INTO profine_states VALUES("1336","Jiangsu","49","1");
INSERT INTO profine_states VALUES("1337","Jilin","49","1");
INSERT INTO profine_states VALUES("1338","Qinghai","49","1");
INSERT INTO profine_states VALUES("1339","Fujian","49","1");
INSERT INTO profine_states VALUES("1340","Heilongjiang","49","1");
INSERT INTO profine_states VALUES("1341","Henan","49","1");
INSERT INTO profine_states VALUES("1342","Hebei","49","1");
INSERT INTO profine_states VALUES("1343","Hunan","49","1");
INSERT INTO profine_states VALUES("1344","Hubei","49","1");
INSERT INTO profine_states VALUES("1345","Xinjiang","49","1");
INSERT INTO profine_states VALUES("1346","Xizang","49","1");
INSERT INTO profine_states VALUES("1347","Gansu","49","1");
INSERT INTO profine_states VALUES("1348","Guangxi","49","1");
INSERT INTO profine_states VALUES("1349","Guizhou","49","1");
INSERT INTO profine_states VALUES("1350","Liaoning","49","1");
INSERT INTO profine_states VALUES("1351","Nei Mongol","49","1");
INSERT INTO profine_states VALUES("1352","Ningxia","49","1");
INSERT INTO profine_states VALUES("1353","Beijing","49","1");
INSERT INTO profine_states VALUES("1354","Shanghai","49","1");
INSERT INTO profine_states VALUES("1355","Shanxi","49","1");
INSERT INTO profine_states VALUES("1356","Shandong","49","1");
INSERT INTO profine_states VALUES("1357","Shaanxi","49","1");
INSERT INTO profine_states VALUES("1358","Sichuan","49","1");
INSERT INTO profine_states VALUES("1359","Tianjin","49","1");
INSERT INTO profine_states VALUES("1360","Yunnan","49","1");
INSERT INTO profine_states VALUES("1361","Guangdong","49","1");
INSERT INTO profine_states VALUES("1362","Hainan","49","1");
INSERT INTO profine_states VALUES("1363","Chongqing","49","1");
INSERT INTO profine_states VALUES("1364","Valparaiso","48","1");
INSERT INTO profine_states VALUES("1365","Aisen del General Carlos Ibanez del Campo","48","1");
INSERT INTO profine_states VALUES("1366","Antofagasta","48","1");
INSERT INTO profine_states VALUES("1367","Araucania","48","1");
INSERT INTO profine_states VALUES("1368","Atacama","48","1");
INSERT INTO profine_states VALUES("1369","Bio-Bio","48","1");
INSERT INTO profine_states VALUES("1370","Coquimbo","48","1");
INSERT INTO profine_states VALUES("1371","Libertador General Bernardo O\'Higgins","48","1");
INSERT INTO profine_states VALUES("1372","Los Lagos","48","1");
INSERT INTO profine_states VALUES("1373","Magallanes y de la Antartica Chilena","48","1");
INSERT INTO profine_states VALUES("1374","Maule","48","1");
INSERT INTO profine_states VALUES("1375","Region Metropolitana","48","1");
INSERT INTO profine_states VALUES("1376","Tarapaca","48","1");
INSERT INTO profine_states VALUES("1377","Creek","45","1");
INSERT INTO profine_states VALUES("1378","Eastern","45","1");
INSERT INTO profine_states VALUES("1379","Midland","45","1");
INSERT INTO profine_states VALUES("1380","South Town","45","1");
INSERT INTO profine_states VALUES("1381","Spot Bay","45","1");
INSERT INTO profine_states VALUES("1382","Stake Bay","45","1");
INSERT INTO profine_states VALUES("1383","West End","45","1");
INSERT INTO profine_states VALUES("1384","Western","45","1");
INSERT INTO profine_states VALUES("1385","Est","42","1");
INSERT INTO profine_states VALUES("1386","Littoral","42","1");
INSERT INTO profine_states VALUES("1387","NordOuest","42","1");
INSERT INTO profine_states VALUES("1388","Ouest","42","1");
INSERT INTO profine_states VALUES("1389","SudOuest","42","1");
INSERT INTO profine_states VALUES("1390","Adamaoua","42","1");
INSERT INTO profine_states VALUES("1391","Centre","42","1");
INSERT INTO profine_states VALUES("1392","ExtremeNord","42","1");
INSERT INTO profine_states VALUES("1393","Nord","42","1");
INSERT INTO profine_states VALUES("1394","Sud","42","1");
INSERT INTO profine_states VALUES("1395","Anjouan","54","1");
INSERT INTO profine_states VALUES("1396","Grande Comore","54","1");
INSERT INTO profine_states VALUES("1397","Moheli","54","1");
INSERT INTO profine_states VALUES("1398","Amazonas","53","1");
INSERT INTO profine_states VALUES("1399","Antioquia","53","1");
INSERT INTO profine_states VALUES("1400","Arauca","53","1");
INSERT INTO profine_states VALUES("1401","Atlantico","53","1");
INSERT INTO profine_states VALUES("1402","Caqueta","53","1");
INSERT INTO profine_states VALUES("1403","Cauca","53","1");
INSERT INTO profine_states VALUES("1404","Cesar","53","1");
INSERT INTO profine_states VALUES("1405","Choco","53","1");
INSERT INTO profine_states VALUES("1406","Cordoba","53","1");
INSERT INTO profine_states VALUES("1408","Guaviare","53","1");
INSERT INTO profine_states VALUES("1409","Guainia","53","1");
INSERT INTO profine_states VALUES("1410","Huila","53","1");
INSERT INTO profine_states VALUES("1411","La Guajira","53","1");
INSERT INTO profine_states VALUES("1412","Meta","53","1");
INSERT INTO profine_states VALUES("1413","Narino","53","1");
INSERT INTO profine_states VALUES("1414","Norte de Santander","53","1");
INSERT INTO profine_states VALUES("1415","Putumayo","53","1");
INSERT INTO profine_states VALUES("1416","Quindio","53","1");
INSERT INTO profine_states VALUES("1417","Risaralda","53","1");
INSERT INTO profine_states VALUES("1418","San Andres y Providencia","53","1");
INSERT INTO profine_states VALUES("1419","Santander","53","1");
INSERT INTO profine_states VALUES("1420","Sucre","53","1");
INSERT INTO profine_states VALUES("1421","Tolima","53","1");
INSERT INTO profine_states VALUES("1422","Valle del Cauca","53","1");
INSERT INTO profine_states VALUES("1423","Vaupes","53","1");
INSERT INTO profine_states VALUES("1424","Vichada","53","1");
INSERT INTO profine_states VALUES("1425","Casanare","53","1");
INSERT INTO profine_states VALUES("1426","Cundinamarca","53","1");
INSERT INTO profine_states VALUES("1427","Distrito Capital","53","1");
INSERT INTO profine_states VALUES("1428","Bolivar","53","1");
INSERT INTO profine_states VALUES("1429","Boyaca","53","1");
INSERT INTO profine_states VALUES("1430","Caldas","53","1");
INSERT INTO profine_states VALUES("1431","Magdalena","53","1");
INSERT INTO profine_states VALUES("1432","Alajuela","59","1");
INSERT INTO profine_states VALUES("1433","Cartago","59","1");
INSERT INTO profine_states VALUES("1434","Guanacaste","59","1");
INSERT INTO profine_states VALUES("1435","Heredia","59","1");
INSERT INTO profine_states VALUES("1436","Limon","59","1");
INSERT INTO profine_states VALUES("1437","Puntarenas","59","1");
INSERT INTO profine_states VALUES("1438","San Jose","59","1");
INSERT INTO profine_states VALUES("1439","Bamingui-Bangoran","46","1");
INSERT INTO profine_states VALUES("1440","Basse-Kotto","46","1");
INSERT INTO profine_states VALUES("1441","Haute-Kotto","46","1");
INSERT INTO profine_states VALUES("1442","Haute-Sangha","46","1");
INSERT INTO profine_states VALUES("1443","Haut-Mbomou","46","1");
INSERT INTO profine_states VALUES("1444","Kemo-Gribingui","46","1");
INSERT INTO profine_states VALUES("1445","Lobaye","46","1");
INSERT INTO profine_states VALUES("1446","Mbomou","46","1");
INSERT INTO profine_states VALUES("1447","Nana-Mambere","46","1");
INSERT INTO profine_states VALUES("1448","Ouaka","46","1");
INSERT INTO profine_states VALUES("1449","Ouham","46","1");
INSERT INTO profine_states VALUES("1450","Ouham-Pende","46","1");
INSERT INTO profine_states VALUES("1451","Vakaga","46","1");
INSERT INTO profine_states VALUES("1452","Gribingui","46","1");
INSERT INTO profine_states VALUES("1453","Sangha","46","1");
INSERT INTO profine_states VALUES("1454","Ombella-Mpoko","46","1");
INSERT INTO profine_states VALUES("1455","Bangui","46","1");
INSERT INTO profine_states VALUES("1456","Pinar del Rio","62","1");
INSERT INTO profine_states VALUES("1457","Ciudad de La Habana","62","1");
INSERT INTO profine_states VALUES("1458","Matanzas","62","1");
INSERT INTO profine_states VALUES("1459","Isla de la Juventud","62","1");
INSERT INTO profine_states VALUES("1460","Camaguey","62","1");
INSERT INTO profine_states VALUES("1461","Ciego de Avila","62","1");
INSERT INTO profine_states VALUES("1462","Cienfuegos","62","1");
INSERT INTO profine_states VALUES("1463","Granma","62","1");
INSERT INTO profine_states VALUES("1464","Guantanamo","62","1");
INSERT INTO profine_states VALUES("1465","La Habana","62","1");
INSERT INTO profine_states VALUES("1466","Holguin","62","1");
INSERT INTO profine_states VALUES("1467","Las Tunas","62","1");
INSERT INTO profine_states VALUES("1468","Sancti Spiritus","62","1");
INSERT INTO profine_states VALUES("1469","Santiago de Cuba","62","1");
INSERT INTO profine_states VALUES("1470","Villa Clara","62","1");
INSERT INTO profine_states VALUES("1471","Boa Vista","44","1");
INSERT INTO profine_states VALUES("1472","Brava","44","1");
INSERT INTO profine_states VALUES("1473","Calheta de São Miguel","44","1");
INSERT INTO profine_states VALUES("1474","Maio","44","1");
INSERT INTO profine_states VALUES("1475","Paul","44","1");
INSERT INTO profine_states VALUES("1476","Praia","44","1");
INSERT INTO profine_states VALUES("1477","Ribeira Grande","44","1");
INSERT INTO profine_states VALUES("1478","Sal","44","1");
INSERT INTO profine_states VALUES("1479","Santa Catarina","44","1");
INSERT INTO profine_states VALUES("1480","Sao Nicolau","44","1");
INSERT INTO profine_states VALUES("1481","Sao Vicente","44","1");
INSERT INTO profine_states VALUES("1482","Tarrafal","44","1");
INSERT INTO profine_states VALUES("1483","Famagusta","63","1");
INSERT INTO profine_states VALUES("1484","Kyrenia","63","1");
INSERT INTO profine_states VALUES("1485","Larnaca","63","1");
INSERT INTO profine_states VALUES("1486","Nicosia","63","1");
INSERT INTO profine_states VALUES("1487","Limassol","63","1");
INSERT INTO profine_states VALUES("1488","Paphos","63","1");
INSERT INTO profine_states VALUES("1489","Arhus","65","1");
INSERT INTO profine_states VALUES("1490","Bornholm","65","1");
INSERT INTO profine_states VALUES("1491","Frederiksborg","65","1");
INSERT INTO profine_states VALUES("1492","Fyn","65","1");
INSERT INTO profine_states VALUES("1493","Kobenhavn","65","1");
INSERT INTO profine_states VALUES("1494","Nordjylland","65","1");
INSERT INTO profine_states VALUES("1495","Ribe","65","1");
INSERT INTO profine_states VALUES("1496","Ringkobing","65","1");
INSERT INTO profine_states VALUES("1497","Roskilde","65","1");
INSERT INTO profine_states VALUES("1498","Sonderjylland","65","1");
INSERT INTO profine_states VALUES("1499","Storstrom","65","1");
INSERT INTO profine_states VALUES("1500","Vejle","65","1");
INSERT INTO profine_states VALUES("1501","Vestsjalland","65","1");
INSERT INTO profine_states VALUES("1502","Viborg","65","1");
INSERT INTO profine_states VALUES("1503","Fredericksberg","65","1");
INSERT INTO profine_states VALUES("1504","\'Ali Sabih","66","1");
INSERT INTO profine_states VALUES("1505","Dikhil","66","1");
INSERT INTO profine_states VALUES("1506","Djibouti","66","1");
INSERT INTO profine_states VALUES("1507","Obock","66","1");
INSERT INTO profine_states VALUES("1508","Tadjoura","66","1");
INSERT INTO profine_states VALUES("1509","Saint Andrew","67","1");
INSERT INTO profine_states VALUES("1510","Saint David","67","1");
INSERT INTO profine_states VALUES("1511","Saint George","67","1");
INSERT INTO profine_states VALUES("1512","Saint John","67","1");
INSERT INTO profine_states VALUES("1513","Saint Joseph","67","1");
INSERT INTO profine_states VALUES("1514","Saint Luke","67","1");
INSERT INTO profine_states VALUES("1515","Saint Mark","67","1");
INSERT INTO profine_states VALUES("1516","Saint Patrick","67","1");
INSERT INTO profine_states VALUES("1517","Saint Paul","67","1");
INSERT INTO profine_states VALUES("1518","Saint Peter","67","1");
INSERT INTO profine_states VALUES("1519","Azua","68","1");
INSERT INTO profine_states VALUES("1520","Baoruco","68","1");
INSERT INTO profine_states VALUES("1521","Barahona","68","1");
INSERT INTO profine_states VALUES("1522","Dajabon","68","1");
INSERT INTO profine_states VALUES("1523","Distrito Nacional","68","1");
INSERT INTO profine_states VALUES("1524","Duarte","68","1");
INSERT INTO profine_states VALUES("1525","Espaillat","68","1");
INSERT INTO profine_states VALUES("1526","Independencia","68","1");
INSERT INTO profine_states VALUES("1527","La Altagracia","68","1");
INSERT INTO profine_states VALUES("1528","Elias Pina","68","1");
INSERT INTO profine_states VALUES("1529","La Romana","68","1");
INSERT INTO profine_states VALUES("1530","Maria Trinidad Sanchez","68","1");
INSERT INTO profine_states VALUES("1531","Monte Cristi","68","1");
INSERT INTO profine_states VALUES("1532","Pedernales","68","1");
INSERT INTO profine_states VALUES("1533","Peravia","68","1");
INSERT INTO profine_states VALUES("1534","Puerto Plata","68","1");
INSERT INTO profine_states VALUES("1535","Salcedo","68","1");
INSERT INTO profine_states VALUES("1536","Samana","68","1");
INSERT INTO profine_states VALUES("1537","Sanchez Ramirez","68","1");
INSERT INTO profine_states VALUES("1538","San Juan","68","1");
INSERT INTO profine_states VALUES("1539","San Pedro de Macoris","68","1");
INSERT INTO profine_states VALUES("1540","Santiago","68","1");
INSERT INTO profine_states VALUES("1541","Santiago Rodriguez","68","1");
INSERT INTO profine_states VALUES("1542","Valverde","68","1");
INSERT INTO profine_states VALUES("1543","El Seibo","68","1");
INSERT INTO profine_states VALUES("1544","Hato Mayor","68","1");
INSERT INTO profine_states VALUES("1545","La Vega","68","1");
INSERT INTO profine_states VALUES("1546","Monsenor Nouel","68","1");
INSERT INTO profine_states VALUES("1547","Monte Plata","68","1");
INSERT INTO profine_states VALUES("1548","San Cristobal","68","1");
INSERT INTO profine_states VALUES("1549","Galapagos","70","1");
INSERT INTO profine_states VALUES("1550","Azuay","70","1");
INSERT INTO profine_states VALUES("1551","Bolivar","70","1");
INSERT INTO profine_states VALUES("1552","Canar","70","1");
INSERT INTO profine_states VALUES("1553","Carchi","70","1");
INSERT INTO profine_states VALUES("1554","Chimborazo","70","1");
INSERT INTO profine_states VALUES("1555","Cotopaxi","70","1");
INSERT INTO profine_states VALUES("1556","El Oro","70","1");
INSERT INTO profine_states VALUES("1557","Esmeraldas","70","1");
INSERT INTO profine_states VALUES("1558","Guayas","70","1");
INSERT INTO profine_states VALUES("1559","Imbabura","70","1");
INSERT INTO profine_states VALUES("1560","Loja","70","1");
INSERT INTO profine_states VALUES("1561","Los Rios","70","1");
INSERT INTO profine_states VALUES("1562","Manabi","70","1");
INSERT INTO profine_states VALUES("1563","Morona-Santiago","70","1");
INSERT INTO profine_states VALUES("1564","Pastaza","70","1");
INSERT INTO profine_states VALUES("1565","Pichincha","70","1");
INSERT INTO profine_states VALUES("1566","Tungurahua","70","1");
INSERT INTO profine_states VALUES("1567","Zamora-Chinchipe","70","1");
INSERT INTO profine_states VALUES("1568","Napo","70","1");
INSERT INTO profine_states VALUES("1569","Sucumbios","70","1");
INSERT INTO profine_states VALUES("1570","Ad Daqahliyah","71","1");
INSERT INTO profine_states VALUES("1571","Al Bahr al Ahmar","71","1");
INSERT INTO profine_states VALUES("1572","Al Buhayrah","71","1");
INSERT INTO profine_states VALUES("1573","Al Fayyum","71","1");
INSERT INTO profine_states VALUES("1574","Al Gharbiyah","71","1");
INSERT INTO profine_states VALUES("1575","Al Iskandariyah","71","1");
INSERT INTO profine_states VALUES("1576","Al Isma\'iliyah","71","1");
INSERT INTO profine_states VALUES("1577","Al Jizah","71","1");
INSERT INTO profine_states VALUES("1578","Al Minufiyah","71","1");
INSERT INTO profine_states VALUES("1579","Al Minya","71","1");
INSERT INTO profine_states VALUES("1580","Al Qahirah","71","1");
INSERT INTO profine_states VALUES("1581","Al Qaly¯biyah","71","1");
INSERT INTO profine_states VALUES("1582","Al Wadi al Jadid","71","1");
INSERT INTO profine_states VALUES("1583","Ash Sharqiyah","71","1");
INSERT INTO profine_states VALUES("1584","As Suways","71","1");
INSERT INTO profine_states VALUES("1585","Aswan","71","1");
INSERT INTO profine_states VALUES("1586","Asyut","71","1");
INSERT INTO profine_states VALUES("1587","Bani Suwayf","71","1");
INSERT INTO profine_states VALUES("1588","Bur Sa\'id","71","1");
INSERT INTO profine_states VALUES("1589","Dumyat","71","1");
INSERT INTO profine_states VALUES("1590","Kafr ash Shaykh","71","1");
INSERT INTO profine_states VALUES("1591","Matruh","71","1");
INSERT INTO profine_states VALUES("1592","Qina","71","1");
INSERT INTO profine_states VALUES("1593","Suhaj","71","1");
INSERT INTO profine_states VALUES("1594","Janub Sina\'","71","1");
INSERT INTO profine_states VALUES("1595","Shamal Sina\'","71","1");
INSERT INTO profine_states VALUES("1596","Carlow","117","1");
INSERT INTO profine_states VALUES("1597","Cavan","117","1");
INSERT INTO profine_states VALUES("1598","Clare","117","1");
INSERT INTO profine_states VALUES("1599","Cork","117","1");
INSERT INTO profine_states VALUES("1600","Donegal","117","1");
INSERT INTO profine_states VALUES("1601","Dublin","117","1");
INSERT INTO profine_states VALUES("1602","Galway","117","1");
INSERT INTO profine_states VALUES("1603","Kerry","117","1");
INSERT INTO profine_states VALUES("1604","Kildare","117","1");
INSERT INTO profine_states VALUES("1605","Kilkenny","117","1");
INSERT INTO profine_states VALUES("1606","Leitrim","117","1");
INSERT INTO profine_states VALUES("1607","Laois","117","1");
INSERT INTO profine_states VALUES("1608","Limerick","117","1");
INSERT INTO profine_states VALUES("1609","Longford","117","1");
INSERT INTO profine_states VALUES("1610","Louth","117","1");
INSERT INTO profine_states VALUES("1611","Mayo","117","1");
INSERT INTO profine_states VALUES("1612","Meath","117","1");
INSERT INTO profine_states VALUES("1613","Monaghan","117","1");
INSERT INTO profine_states VALUES("1614","Offaly","117","1");
INSERT INTO profine_states VALUES("1615","Roscommon","117","1");
INSERT INTO profine_states VALUES("1616","Sligo","117","1");
INSERT INTO profine_states VALUES("1617","Tipperary","117","1");
INSERT INTO profine_states VALUES("1618","Waterford","117","1");
INSERT INTO profine_states VALUES("1619","Westmeath","117","1");
INSERT INTO profine_states VALUES("1620","Wexford","117","1");
INSERT INTO profine_states VALUES("1621","Wicklow","117","1");
INSERT INTO profine_states VALUES("1622","Annobon","73","1");
INSERT INTO profine_states VALUES("1623","Bioko Norte","73","1");
INSERT INTO profine_states VALUES("1624","Bioko Sur","73","1");
INSERT INTO profine_states VALUES("1625","Centro Sur","73","1");
INSERT INTO profine_states VALUES("1626","Kie-Ntem","73","1");
INSERT INTO profine_states VALUES("1627","Litoral","73","1");
INSERT INTO profine_states VALUES("1628","Wele-Nzas","73","1");
INSERT INTO profine_states VALUES("1629","Harjumaa","75","1");
INSERT INTO profine_states VALUES("1630","Hiiumaa","75","1");
INSERT INTO profine_states VALUES("1631","Ida-Virumaa","75","1");
INSERT INTO profine_states VALUES("1632","Jarvamaa","75","1");
INSERT INTO profine_states VALUES("1633","Jogevamaa","75","1");
INSERT INTO profine_states VALUES("1634","Laanemaa","75","1");
INSERT INTO profine_states VALUES("1635","Laane-Virumaa","75","1");
INSERT INTO profine_states VALUES("1636","Parnumaa","75","1");
INSERT INTO profine_states VALUES("1637","Polvamaa","75","1");
INSERT INTO profine_states VALUES("1638","Raplamaa","75","1");
INSERT INTO profine_states VALUES("1639","Saaremaa","75","1");
INSERT INTO profine_states VALUES("1640","Tartumaa","75","1");
INSERT INTO profine_states VALUES("1641","Valgamaa","75","1");
INSERT INTO profine_states VALUES("1642","Viljandimaa","75","1");
INSERT INTO profine_states VALUES("1643","Vorumaa","75","1");
INSERT INTO profine_states VALUES("1644","Ahuachapan","72","1");
INSERT INTO profine_states VALUES("1645","Cabanas","72","1");
INSERT INTO profine_states VALUES("1646","Chalatenango","72","1");
INSERT INTO profine_states VALUES("1647","Cuscatlan","72","1");
INSERT INTO profine_states VALUES("1648","La Libertad","72","1");
INSERT INTO profine_states VALUES("1649","La Paz","72","1");
INSERT INTO profine_states VALUES("1650","La Union","72","1");
INSERT INTO profine_states VALUES("1651","Morazan","72","1");
INSERT INTO profine_states VALUES("1652","San Miguel","72","1");
INSERT INTO profine_states VALUES("1653","San Salvador","72","1");
INSERT INTO profine_states VALUES("1654","Santa Ana","72","1");
INSERT INTO profine_states VALUES("1655","San Vicente","72","1");
INSERT INTO profine_states VALUES("1656","Sonsonate","72","1");
INSERT INTO profine_states VALUES("1657","Usulutan","72","1");
INSERT INTO profine_states VALUES("1687","Harari People","76","1");
INSERT INTO profine_states VALUES("1688","Gambela Peoples","76","1");
INSERT INTO profine_states VALUES("1690","Benshangul-Gumaz","76","1");
INSERT INTO profine_states VALUES("1691","Tigray","76","1");
INSERT INTO profine_states VALUES("1692","Amhara","76","1");
INSERT INTO profine_states VALUES("1693","Afar","76","1");
INSERT INTO profine_states VALUES("1694","Oromia","76","1");
INSERT INTO profine_states VALUES("1695","Somali","76","1");
INSERT INTO profine_states VALUES("1696","Addis Ababa","76","1");
INSERT INTO profine_states VALUES("1697","Southern Nations","76","1");
INSERT INTO profine_states VALUES("1746","Hlavni Mesto Praha","64","1");
INSERT INTO profine_states VALUES("1772","Ahvenanmaa","81","1");
INSERT INTO profine_states VALUES("1777","Lappi","81","1");
INSERT INTO profine_states VALUES("1779","Oulu Laani","81","1");
INSERT INTO profine_states VALUES("1784","Central","80","1");
INSERT INTO profine_states VALUES("1785","Eastern","80","1");
INSERT INTO profine_states VALUES("1786","Northern","80","1");
INSERT INTO profine_states VALUES("1787","Rotuma","80","1");
INSERT INTO profine_states VALUES("1788","Western","80","1");
INSERT INTO profine_states VALUES("1789","Kosrae","160","1");
INSERT INTO profine_states VALUES("1790","Pohnpei","160","1");
INSERT INTO profine_states VALUES("1791","Chuuk","160","1");
INSERT INTO profine_states VALUES("1792","Yap","160","1");
INSERT INTO profine_states VALUES("1793","Aquitaine","82","1");
INSERT INTO profine_states VALUES("1794","Auvergne","82","1");
INSERT INTO profine_states VALUES("1795","Basse-Normandie","82","1");
INSERT INTO profine_states VALUES("1796","Bourgogne","82","1");
INSERT INTO profine_states VALUES("1797","Bretagne","82","1");
INSERT INTO profine_states VALUES("1798","Centre","82","1");
INSERT INTO profine_states VALUES("1799","Champagne-Ardenne","82","1");
INSERT INTO profine_states VALUES("1800","Corse","82","1");
INSERT INTO profine_states VALUES("1801","Franche-Comte","82","1");
INSERT INTO profine_states VALUES("1802","Haute-Normandie","82","1");
INSERT INTO profine_states VALUES("1803","Ile-De-France","82","1");
INSERT INTO profine_states VALUES("1804","Languedoc-Roussillon","82","1");
INSERT INTO profine_states VALUES("1805","Limousin","82","1");
INSERT INTO profine_states VALUES("1806","Lorraine","82","1");
INSERT INTO profine_states VALUES("1807","Midi-Pyrenees","82","1");
INSERT INTO profine_states VALUES("1808","Nord-Pas-de-Calais","82","1");
INSERT INTO profine_states VALUES("1809","Pays de la Loire","82","1");
INSERT INTO profine_states VALUES("1810","Picardie","82","1");
INSERT INTO profine_states VALUES("1811","Poitou-Charentes","82","1");
INSERT INTO profine_states VALUES("1812","Provence-Alpes-Cote d\'Azur","82","1");
INSERT INTO profine_states VALUES("1813","Rhone-Alpes","82","1");
INSERT INTO profine_states VALUES("1814","Alsace","82","1");
INSERT INTO profine_states VALUES("1815","Banjul","88","1");
INSERT INTO profine_states VALUES("1816","Lower River","88","1");
INSERT INTO profine_states VALUES("1817","MacCarthy Island","88","1");
INSERT INTO profine_states VALUES("1818","Upper River","88","1");
INSERT INTO profine_states VALUES("1819","Western","88","1");
INSERT INTO profine_states VALUES("1820","North Bank","88","1");
INSERT INTO profine_states VALUES("1821","Estuaire","87","1");
INSERT INTO profine_states VALUES("1822","Haut-Ogooue","87","1");
INSERT INTO profine_states VALUES("1823","Moyen-Ogooue","87","1");
INSERT INTO profine_states VALUES("1824","Ngounie","87","1");
INSERT INTO profine_states VALUES("1825","Nyanga","87","1");
INSERT INTO profine_states VALUES("1826","Ogooue-Ivindo","87","1");
INSERT INTO profine_states VALUES("1827","Ogooue-Lolo","87","1");
INSERT INTO profine_states VALUES("1828","Ogooue-Maritime","87","1");
INSERT INTO profine_states VALUES("1829","Woleu-Ntem","87","1");
INSERT INTO profine_states VALUES("1831","Abkhazia","90","1");
INSERT INTO profine_states VALUES("1833","Ajaria","90","1");
INSERT INTO profine_states VALUES("1879","T\'bilisi","90","1");
INSERT INTO profine_states VALUES("1893","Greater Accra","92","1");
INSERT INTO profine_states VALUES("1894","Ashanti","92","1");
INSERT INTO profine_states VALUES("1895","Brong-Ahafo","92","1");
INSERT INTO profine_states VALUES("1896","Central","92","1");
INSERT INTO profine_states VALUES("1897","Eastern","92","1");
INSERT INTO profine_states VALUES("1898","Northern","92","1");
INSERT INTO profine_states VALUES("1899","Volta","92","1");
INSERT INTO profine_states VALUES("1900","Western","92","1");
INSERT INTO profine_states VALUES("1901","Upper East","92","1");
INSERT INTO profine_states VALUES("1902","Upper West","92","1");
INSERT INTO profine_states VALUES("1903","Saint Andrew","97","1");
INSERT INTO profine_states VALUES("1904","Saint David","97","1");
INSERT INTO profine_states VALUES("1905","Saint George","97","1");
INSERT INTO profine_states VALUES("1906","Saint John","97","1");
INSERT INTO profine_states VALUES("1907","Saint Mark","97","1");
INSERT INTO profine_states VALUES("1908","Saint Patrick","97","1");
INSERT INTO profine_states VALUES("1909","Nordgronland","96","1");
INSERT INTO profine_states VALUES("1910","Ostgronland","96","1");
INSERT INTO profine_states VALUES("1911","Vestgronland","96","1");
INSERT INTO profine_states VALUES("1912","Baden-Wurttemberg","91","1");
INSERT INTO profine_states VALUES("1913","Bayern","91","1");
INSERT INTO profine_states VALUES("1914","Bremen","91","1");
INSERT INTO profine_states VALUES("1915","Hamburg","91","1");
INSERT INTO profine_states VALUES("1916","Hessen","91","1");
INSERT INTO profine_states VALUES("1917","Niedersachsen","91","1");
INSERT INTO profine_states VALUES("1918","Nordrhein-Westfalen","91","1");
INSERT INTO profine_states VALUES("1919","Rheinland-Pfalz","91","1");
INSERT INTO profine_states VALUES("1920","Saarland","91","1");
INSERT INTO profine_states VALUES("1921","Schleswig-Holstein","91","1");
INSERT INTO profine_states VALUES("1922","Brandenburg","91","1");
INSERT INTO profine_states VALUES("1923","Mecklenburg-Vorpommern","91","1");
INSERT INTO profine_states VALUES("1924","Sachsen","91","1");
INSERT INTO profine_states VALUES("1925","Sachsen-Anhalt","91","1");
INSERT INTO profine_states VALUES("1926","Thuringen","91","1");
INSERT INTO profine_states VALUES("1927","Berlin","91","1");
INSERT INTO profine_states VALUES("1928","Evros","95","1");
INSERT INTO profine_states VALUES("1929","Rodhopi","95","1");
INSERT INTO profine_states VALUES("1930","Xanthi","95","1");
INSERT INTO profine_states VALUES("1931","Drama","95","1");
INSERT INTO profine_states VALUES("1932","Serrai","95","1");
INSERT INTO profine_states VALUES("1933","Kilkis","95","1");
INSERT INTO profine_states VALUES("1934","Pella","95","1");
INSERT INTO profine_states VALUES("1935","Florina","95","1");
INSERT INTO profine_states VALUES("1936","Kastoria","95","1");
INSERT INTO profine_states VALUES("1937","Grevena","95","1");
INSERT INTO profine_states VALUES("1938","Kozani","95","1");
INSERT INTO profine_states VALUES("1939","Imathia","95","1");
INSERT INTO profine_states VALUES("1940","Thessaloniki","95","1");
INSERT INTO profine_states VALUES("1941","Kavala","95","1");
INSERT INTO profine_states VALUES("1942","Khalkidhiki","95","1");
INSERT INTO profine_states VALUES("1943","Pieria","95","1");
INSERT INTO profine_states VALUES("1944","Ioannina","95","1");
INSERT INTO profine_states VALUES("1945","Thesprotia","95","1");
INSERT INTO profine_states VALUES("1946","Preveza","95","1");
INSERT INTO profine_states VALUES("1947","Arta","95","1");
INSERT INTO profine_states VALUES("1948","Larisa","95","1");
INSERT INTO profine_states VALUES("1949","Trikala","95","1");
INSERT INTO profine_states VALUES("1950","Kardhitsa","95","1");
INSERT INTO profine_states VALUES("1951","Magnisia","95","1");
INSERT INTO profine_states VALUES("1952","Kerkira","95","1");
INSERT INTO profine_states VALUES("1953","Levkas","95","1");
INSERT INTO profine_states VALUES("1954","Kefallinia","95","1");
INSERT INTO profine_states VALUES("1955","Zakinthos","95","1");
INSERT INTO profine_states VALUES("1956","Fthiotis","95","1");
INSERT INTO profine_states VALUES("1957","Evritania","95","1");
INSERT INTO profine_states VALUES("1958","Aitolia kai Akarnania","95","1");
INSERT INTO profine_states VALUES("1959","Fokis","95","1");
INSERT INTO profine_states VALUES("1960","Voiotia","95","1");
INSERT INTO profine_states VALUES("1961","Evvoia","95","1");
INSERT INTO profine_states VALUES("1962","Attiki","95","1");
INSERT INTO profine_states VALUES("1963","Argolis","95","1");
INSERT INTO profine_states VALUES("1964","Korinthia","95","1");
INSERT INTO profine_states VALUES("1965","Akhaia","95","1");
INSERT INTO profine_states VALUES("1966","Ilia","95","1");
INSERT INTO profine_states VALUES("1967","Messinia","95","1");
INSERT INTO profine_states VALUES("1968","Arkadhia","95","1");
INSERT INTO profine_states VALUES("1969","Lakonia","95","1");
INSERT INTO profine_states VALUES("1970","Khania","95","1");
INSERT INTO profine_states VALUES("1971","Rethimni","95","1");
INSERT INTO profine_states VALUES("1972","Iraklion (Crete)","95","1");
INSERT INTO profine_states VALUES("1973","Lasithi","95","1");
INSERT INTO profine_states VALUES("1974","Dhodhekanisos","95","1");
INSERT INTO profine_states VALUES("1975","Samos","95","1");
INSERT INTO profine_states VALUES("1976","Kikladhes","95","1");
INSERT INTO profine_states VALUES("1977","Khios","95","1");
INSERT INTO profine_states VALUES("1978","Lesvos","95","1");
INSERT INTO profine_states VALUES("1979","Alta Verapaz","100","1");
INSERT INTO profine_states VALUES("1980","Baja Verapaz","100","1");
INSERT INTO profine_states VALUES("1981","Chimaltenango","100","1");
INSERT INTO profine_states VALUES("1982","Chiquimula","100","1");
INSERT INTO profine_states VALUES("1983","El Progreso","100","1");
INSERT INTO profine_states VALUES("1984","Escuintla","100","1");
INSERT INTO profine_states VALUES("1985","Guatemala","100","1");
INSERT INTO profine_states VALUES("1986","Huehuetenango","100","1");
INSERT INTO profine_states VALUES("1987","Izabal","100","1");
INSERT INTO profine_states VALUES("1988","Jalapa","100","1");
INSERT INTO profine_states VALUES("1989","Jutiapa","100","1");
INSERT INTO profine_states VALUES("1990","Peten","100","1");
INSERT INTO profine_states VALUES("1991","Quetzaltenango","100","1");
INSERT INTO profine_states VALUES("1992","Quiche","100","1");
INSERT INTO profine_states VALUES("1993","Retalhuleu","100","1");
INSERT INTO profine_states VALUES("1994","Sacatepequez","100","1");
INSERT INTO profine_states VALUES("1995","San Marcos","100","1");
INSERT INTO profine_states VALUES("1996","Santa Rosa","100","1");
INSERT INTO profine_states VALUES("1997","Solola","100","1");
INSERT INTO profine_states VALUES("1998","Suchitepequez","100","1");
INSERT INTO profine_states VALUES("1999","Totonicapan","100","1");
INSERT INTO profine_states VALUES("2000","Zacapa","100","1");
INSERT INTO profine_states VALUES("2001","Beyla","102","1");
INSERT INTO profine_states VALUES("2002","Boffa","102","1");
INSERT INTO profine_states VALUES("2003","Boke","102","1");
INSERT INTO profine_states VALUES("2004","Conakry","102","1");
INSERT INTO profine_states VALUES("2005","Dabola","102","1");
INSERT INTO profine_states VALUES("2006","Dalaba","102","1");
INSERT INTO profine_states VALUES("2007","Dinguiraye","102","1");
INSERT INTO profine_states VALUES("2008","Dubreka","102","1");
INSERT INTO profine_states VALUES("2009","Faranah","102","1");
INSERT INTO profine_states VALUES("2010","Forecariah","102","1");
INSERT INTO profine_states VALUES("2011","Fria","102","1");
INSERT INTO profine_states VALUES("2012","Gaoual","102","1");
INSERT INTO profine_states VALUES("2013","Gueckedou","102","1");
INSERT INTO profine_states VALUES("2014","Kankan","102","1");
INSERT INTO profine_states VALUES("2015","Kerouane","102","1");
INSERT INTO profine_states VALUES("2016","Kindia","102","1");
INSERT INTO profine_states VALUES("2017","Kissidougou","102","1");
INSERT INTO profine_states VALUES("2018","Koundara","102","1");
INSERT INTO profine_states VALUES("2019","Kouroussa","102","1");
INSERT INTO profine_states VALUES("2020","Labe","102","1");
INSERT INTO profine_states VALUES("2021","Macenta","102","1");
INSERT INTO profine_states VALUES("2022","Mali","102","1");
INSERT INTO profine_states VALUES("2023","Mamou","102","1");
INSERT INTO profine_states VALUES("2024","Nzerekore","102","1");
INSERT INTO profine_states VALUES("2025","Pita","102","1");
INSERT INTO profine_states VALUES("2026","Siguiri","102","1");
INSERT INTO profine_states VALUES("2027","Telimele","102","1");
INSERT INTO profine_states VALUES("2028","Tougue","102","1");
INSERT INTO profine_states VALUES("2029","Yomou","102","1");
INSERT INTO profine_states VALUES("2030","Barima-Waini","104","1");
INSERT INTO profine_states VALUES("2031","Cuyuni-Mazaruni","104","1");
INSERT INTO profine_states VALUES("2032","Demerara-Mahaica","104","1");
INSERT INTO profine_states VALUES("2033","East Berbice-Corentyne","104","1");
INSERT INTO profine_states VALUES("2034","Essequibo Islands-West Demerara","104","1");
INSERT INTO profine_states VALUES("2035","Mahaica-Berbice","104","1");
INSERT INTO profine_states VALUES("2036","Pomeroon-Supenaam","104","1");
INSERT INTO profine_states VALUES("2037","Potaro-Siparuni","104","1");
INSERT INTO profine_states VALUES("2038","Upper Demerara-Berbice","104","1");
INSERT INTO profine_states VALUES("2039","Upper Takutu-Upper Essequibo","104","1");
INSERT INTO profine_states VALUES("2040","Nord-Ouest","105","1");
INSERT INTO profine_states VALUES("2041","Artibonite","105","1");
INSERT INTO profine_states VALUES("2042","Centre","105","1");
INSERT INTO profine_states VALUES("2043","Grand\'Anse","105","1");
INSERT INTO profine_states VALUES("2044","Nord","105","1");
INSERT INTO profine_states VALUES("2045","Nord-Est","105","1");
INSERT INTO profine_states VALUES("2046","Ouest","105","1");
INSERT INTO profine_states VALUES("2047","Sud","105","1");
INSERT INTO profine_states VALUES("2048","Sud-Est","105","1");
INSERT INTO profine_states VALUES("2049","Atlantida","108","1");
INSERT INTO profine_states VALUES("2050","Choluteca","108","1");
INSERT INTO profine_states VALUES("2051","Colon","108","1");
INSERT INTO profine_states VALUES("2052","Comayagua","108","1");
INSERT INTO profine_states VALUES("2053","Copan","108","1");
INSERT INTO profine_states VALUES("2054","Cortes","108","1");
INSERT INTO profine_states VALUES("2055","El Paraiso","108","1");
INSERT INTO profine_states VALUES("2056","Francisco Morazan","108","1");
INSERT INTO profine_states VALUES("2057","Gracias a Dios","108","1");
INSERT INTO profine_states VALUES("2058","Intibuca","108","1");
INSERT INTO profine_states VALUES("2059","Islas de la Bahia","108","1");
INSERT INTO profine_states VALUES("2060","La Paz","108","1");
INSERT INTO profine_states VALUES("2061","Lempira","108","1");
INSERT INTO profine_states VALUES("2062","Ocotepeque","108","1");
INSERT INTO profine_states VALUES("2063","Olancho","108","1");
INSERT INTO profine_states VALUES("2064","Santa Barbara","108","1");
INSERT INTO profine_states VALUES("2065","Valle","108","1");
INSERT INTO profine_states VALUES("2066","Yoro","108","1");
INSERT INTO profine_states VALUES("2067","Bacs-Kiskun","111","1");
INSERT INTO profine_states VALUES("2068","Baranya","111","1");
INSERT INTO profine_states VALUES("2069","Bekes","111","1");
INSERT INTO profine_states VALUES("2070","Borsod-Abauj-Zemplen","111","1");
INSERT INTO profine_states VALUES("2071","Budapest","111","1");
INSERT INTO profine_states VALUES("2072","Csongrad","111","1");
INSERT INTO profine_states VALUES("2073","Debrecen","111","1");
INSERT INTO profine_states VALUES("2074","Fejer","111","1");
INSERT INTO profine_states VALUES("2075","Gyor-Moson-Sopron","111","1");
INSERT INTO profine_states VALUES("2076","Hajdu-Bihar","111","1");
INSERT INTO profine_states VALUES("2077","Heves","111","1");
INSERT INTO profine_states VALUES("2078","Komarom-Esztergom","111","1");
INSERT INTO profine_states VALUES("2079","Miskolc","111","1");
INSERT INTO profine_states VALUES("2080","Nograd","111","1");
INSERT INTO profine_states VALUES("2081","Pees","111","1");
INSERT INTO profine_states VALUES("2082","Pest","111","1");
INSERT INTO profine_states VALUES("2083","Somogy","111","1");
INSERT INTO profine_states VALUES("2084","Szabolcs-Szatmar-Bereg","111","1");
INSERT INTO profine_states VALUES("2085","Szeged","111","1");
INSERT INTO profine_states VALUES("2086","Jasz-Nagykun-Szolnok","111","1");
INSERT INTO profine_states VALUES("2087","Tolna","111","1");
INSERT INTO profine_states VALUES("2088","Vas","111","1");
INSERT INTO profine_states VALUES("2089","Veszprem","111","1");
INSERT INTO profine_states VALUES("2090","Zala","111","1");
INSERT INTO profine_states VALUES("2091","Gyor","111","1");
INSERT INTO profine_states VALUES("2092","Bekescsaba","111","1");
INSERT INTO profine_states VALUES("2093","Dunaujvaros","111","1");
INSERT INTO profine_states VALUES("2094","Eger","111","1");
INSERT INTO profine_states VALUES("2095","Hodmezovasarhely","111","1");
INSERT INTO profine_states VALUES("2096","Kaposvar","111","1");
INSERT INTO profine_states VALUES("2097","Kecskemet","111","1");
INSERT INTO profine_states VALUES("2098","Nagykanizsa","111","1");
INSERT INTO profine_states VALUES("2099","Nyiregyhaza","111","1");
INSERT INTO profine_states VALUES("2100","Sopron","111","1");
INSERT INTO profine_states VALUES("2101","Szekesfehervar","111","1");
INSERT INTO profine_states VALUES("2102","Szolnok","111","1");
INSERT INTO profine_states VALUES("2103","Szombathely","111","1");
INSERT INTO profine_states VALUES("2104","Tatabanya","111","1");
INSERT INTO profine_states VALUES("2105","Zalaegerszeg","111","1");
INSERT INTO profine_states VALUES("2106","Akranes","112","1");
INSERT INTO profine_states VALUES("2107","Akureyri","112","1");
INSERT INTO profine_states VALUES("2108","Arnessysla","112","1");
INSERT INTO profine_states VALUES("2109","Austur-Bardastrandarsysla","112","1");
INSERT INTO profine_states VALUES("2110","Austur-Hunavatnssysla","112","1");
INSERT INTO profine_states VALUES("2111","Austur-Skaftafellssysla","112","1");
INSERT INTO profine_states VALUES("2112","Borgarfjardarsysla","112","1");
INSERT INTO profine_states VALUES("2113","Dalasysla","112","1");
INSERT INTO profine_states VALUES("2114","Eyjafjardarsysla","112","1");
INSERT INTO profine_states VALUES("2115","Gullbringusysla","112","1");
INSERT INTO profine_states VALUES("2116","Hafnarfjordur","112","1");
INSERT INTO profine_states VALUES("2117","Husavik","112","1");
INSERT INTO profine_states VALUES("2118","Isafjordur","112","1");
INSERT INTO profine_states VALUES("2119","Keflavik","112","1");
INSERT INTO profine_states VALUES("2120","Kjosarsysla","112","1");
INSERT INTO profine_states VALUES("2121","Kopavogur","112","1");
INSERT INTO profine_states VALUES("2122","Myrasysla","112","1");
INSERT INTO profine_states VALUES("2123","Neskaupstadur","112","1");
INSERT INTO profine_states VALUES("2124","Nordur-Isafjardarsysla","112","1");
INSERT INTO profine_states VALUES("2125","Nordur-Mulasysla","112","1");
INSERT INTO profine_states VALUES("2126","Nordur-Tingeyjarsysla","112","1");
INSERT INTO profine_states VALUES("2127","Olafsfjordur","112","1");
INSERT INTO profine_states VALUES("2128","Rang·rvallasysla","112","1");
INSERT INTO profine_states VALUES("2129","Reykjavik","112","1");
INSERT INTO profine_states VALUES("2130","Saudarkrokur","112","1");
INSERT INTO profine_states VALUES("2131","Seydisfjordur","112","1");
INSERT INTO profine_states VALUES("2132","Siglufjordur","112","1");
INSERT INTO profine_states VALUES("2133","Skagafjardarsysla","112","1");
INSERT INTO profine_states VALUES("2134","Snafellsnes-og Hnappadalssysla","112","1");
INSERT INTO profine_states VALUES("2135","Strandasysla","112","1");
INSERT INTO profine_states VALUES("2136","Sudur-Mulasysla","112","1");
INSERT INTO profine_states VALUES("2137","Sudur-Tingeyjarsysla","112","1");
INSERT INTO profine_states VALUES("2138","Vestmannaeyjar","112","1");
INSERT INTO profine_states VALUES("2139","Vestur-Bardastrandarsysla","112","1");
INSERT INTO profine_states VALUES("2140","Vestur-Hunavatnssysla","112","1");
INSERT INTO profine_states VALUES("2141","Vestur-Isafjardarsysla","112","1");
INSERT INTO profine_states VALUES("2142","Vestur-Skaftafellssysla","112","1");
INSERT INTO profine_states VALUES("2143","Aceh (Atjeh)","114","1");
INSERT INTO profine_states VALUES("2144","Bengkulu","114","1");
INSERT INTO profine_states VALUES("2145","Jakarta Raya (Djakarta Raya)","114","1");
INSERT INTO profine_states VALUES("2146","Jambi (Djambi)","114","1");
INSERT INTO profine_states VALUES("2147","Jawa Barat (Djawa Barat)","114","1");
INSERT INTO profine_states VALUES("2148","Jawa Tengah (Djawa Tengah)","114","1");
INSERT INTO profine_states VALUES("2149","Jawa Timur (Djawa Timur)","114","1");
INSERT INTO profine_states VALUES("2150","Yogyakarta (Jogjakarta)","114","1");
INSERT INTO profine_states VALUES("2151","Kalimantan Barat","114","1");
INSERT INTO profine_states VALUES("2152","Kalimantan Selatan","114","1");
INSERT INTO profine_states VALUES("2153","Kalimantan Tengah","114","1");
INSERT INTO profine_states VALUES("2154","Kalimantan Timur","114","1");
INSERT INTO profine_states VALUES("2155","Lampung","114","1");
INSERT INTO profine_states VALUES("2156","Maluku","114","1");
INSERT INTO profine_states VALUES("2157","Nusa Tenggara Barat","114","1");
INSERT INTO profine_states VALUES("2158","Nusa Tenggara Timur","114","1");
INSERT INTO profine_states VALUES("2159","Riau","114","1");
INSERT INTO profine_states VALUES("2160","Sulawesi Selatan","114","1");
INSERT INTO profine_states VALUES("2161","Sulawesi Tengah","114","1");
INSERT INTO profine_states VALUES("2162","Sulawesi Tenggara","114","1");
INSERT INTO profine_states VALUES("2163","Sulawesi Utara","114","1");
INSERT INTO profine_states VALUES("2164","Sumatera Barat","114","1");
INSERT INTO profine_states VALUES("2165","Sumatera Selatan","114","1");
INSERT INTO profine_states VALUES("2166","Sumatera Utara","114","1");
INSERT INTO profine_states VALUES("2168","Andaman and Nicobar Islands","113","1");
INSERT INTO profine_states VALUES("2169","Andhra Pradesh","113","1");
INSERT INTO profine_states VALUES("2170","Assam","113","1");
INSERT INTO profine_states VALUES("2171","Bihar","113","1");
INSERT INTO profine_states VALUES("2172","Chandigarh","113","1");
INSERT INTO profine_states VALUES("2173","Dadra and Nagar Haveli","113","1");
INSERT INTO profine_states VALUES("2174","Delhi","113","1");
INSERT INTO profine_states VALUES("2175","Gujarat","113","1");
INSERT INTO profine_states VALUES("2176","Haryana","113","1");
INSERT INTO profine_states VALUES("2177","Himachal Pradesh","113","1");
INSERT INTO profine_states VALUES("2178","Jammu and Kashmir","113","1");
INSERT INTO profine_states VALUES("2179","Kerala","113","1");
INSERT INTO profine_states VALUES("2180","Lakshadweep","113","1");
INSERT INTO profine_states VALUES("2181","Madhya Pradesh","113","1");
INSERT INTO profine_states VALUES("2182","Maharashtra","113","1");
INSERT INTO profine_states VALUES("2183","Manipur","113","1");
INSERT INTO profine_states VALUES("2184","Meghalaya","113","1");
INSERT INTO profine_states VALUES("2185","Karnataka","113","1");
INSERT INTO profine_states VALUES("2186","Nagaland","113","1");
INSERT INTO profine_states VALUES("2187","Orissa","113","1");
INSERT INTO profine_states VALUES("2188","Pondicherry","113","1");
INSERT INTO profine_states VALUES("2189","Punjab","113","1");
INSERT INTO profine_states VALUES("2190","Rajasthan","113","1");
INSERT INTO profine_states VALUES("2191","Tamil Nadu","113","1");
INSERT INTO profine_states VALUES("2192","Tripura","113","1");
INSERT INTO profine_states VALUES("2193","Uttar Pradesh","113","1");
INSERT INTO profine_states VALUES("2194","West Bengal","113","1");
INSERT INTO profine_states VALUES("2195","Sikkim","113","1");
INSERT INTO profine_states VALUES("2196","Arunachal Pradesh","113","1");
INSERT INTO profine_states VALUES("2197","Mizoram","113","1");
INSERT INTO profine_states VALUES("2198","Daman and Diu","113","1");
INSERT INTO profine_states VALUES("2199","Goa","113","1");
INSERT INTO profine_states VALUES("2200","Azarbayjan-e Gharbi","115","1");
INSERT INTO profine_states VALUES("2202","Chahar Ma±all va Bakhtiari","115","1");
INSERT INTO profine_states VALUES("2203","Sistan va Baluchestan","115","1");
INSERT INTO profine_states VALUES("2204","Kohgiluyeh va Buyer Ahmad","115","1");
INSERT INTO profine_states VALUES("2206","Fars","115","1");
INSERT INTO profine_states VALUES("2207","Gilan","115","1");
INSERT INTO profine_states VALUES("2208","Hamadan","115","1");
INSERT INTO profine_states VALUES("2209","Ilam","115","1");
INSERT INTO profine_states VALUES("2210","Hormozgan","115","1");
INSERT INTO profine_states VALUES("2212","Kermanshah","115","1");
INSERT INTO profine_states VALUES("2213","Khuzestan","115","1");
INSERT INTO profine_states VALUES("2214","Kordestan","115","1");
INSERT INTO profine_states VALUES("2215","Mazandaran","115","1");
INSERT INTO profine_states VALUES("2219","Bushehr","115","1");
INSERT INTO profine_states VALUES("2220","Lorestan","115","1");
INSERT INTO profine_states VALUES("2221","Markazi","115","1");
INSERT INTO profine_states VALUES("2222","Semnan","115","1");
INSERT INTO profine_states VALUES("2223","Tehran","115","1");
INSERT INTO profine_states VALUES("2224","Zanjan","115","1");
INSERT INTO profine_states VALUES("2225","Esfahan","115","1");
INSERT INTO profine_states VALUES("2226","Kerman","115","1");
INSERT INTO profine_states VALUES("2227","Khorasan","115","1");
INSERT INTO profine_states VALUES("2228","Yazd","115","1");
INSERT INTO profine_states VALUES("2229","Ardabil","115","1");
INSERT INTO profine_states VALUES("2230","Azarbayjan-e Sharqi","115","1");
INSERT INTO profine_states VALUES("2232","HaDarom (Southern)","118","1");
INSERT INTO profine_states VALUES("2233","HaMerkaz (Central)","118","1");
INSERT INTO profine_states VALUES("2234","Haûafon  (Northern)","118","1");
INSERT INTO profine_states VALUES("2235","Híefa  (Haifa)","118","1");
INSERT INTO profine_states VALUES("2236","Tel Aviv","118","1");
INSERT INTO profine_states VALUES("2237","Yerushalayim  (Jerusalem)","118","1");
INSERT INTO profine_states VALUES("2238","Abruzzi","119","1");
INSERT INTO profine_states VALUES("2239","Basilicata","119","1");
INSERT INTO profine_states VALUES("2240","Calabria","119","1");
INSERT INTO profine_states VALUES("2241","Campania","119","1");
INSERT INTO profine_states VALUES("2242","Emilia-Romagna","119","1");
INSERT INTO profine_states VALUES("2243","Friuli-Venezia Giulia","119","1");
INSERT INTO profine_states VALUES("2244","Lazio","119","1");
INSERT INTO profine_states VALUES("2245","Liguria","119","1");
INSERT INTO profine_states VALUES("2246","Lombardia","119","1");
INSERT INTO profine_states VALUES("2247","Marche","119","1");
INSERT INTO profine_states VALUES("2248","Molise","119","1");
INSERT INTO profine_states VALUES("2249","Piemonte","119","1");
INSERT INTO profine_states VALUES("2250","Puglia","119","1");
INSERT INTO profine_states VALUES("2251","Sardegna","119","1");
INSERT INTO profine_states VALUES("2252","Sicilia","119","1");
INSERT INTO profine_states VALUES("2253","Toscana","119","1");
INSERT INTO profine_states VALUES("2254","Trentino-Alto Adige","119","1");
INSERT INTO profine_states VALUES("2255","Umbria","119","1");
INSERT INTO profine_states VALUES("2256","Valle d\'Aosta","119","1");
INSERT INTO profine_states VALUES("2257","Veneto","119","1");
INSERT INTO profine_states VALUES("2259","Dabakala","60","1");
INSERT INTO profine_states VALUES("2260","Aboisso","60","1");
INSERT INTO profine_states VALUES("2261","Adzope","60","1");
INSERT INTO profine_states VALUES("2262","Agboville","60","1");
INSERT INTO profine_states VALUES("2263","Biankouma","60","1");
INSERT INTO profine_states VALUES("2264","Bouna","60","1");
INSERT INTO profine_states VALUES("2265","Boundiali","60","1");
INSERT INTO profine_states VALUES("2266","Danane","60","1");
INSERT INTO profine_states VALUES("2267","Divo","60","1");
INSERT INTO profine_states VALUES("2268","Ferkessedougou","60","1");
INSERT INTO profine_states VALUES("2269","Gagnoa","60","1");
INSERT INTO profine_states VALUES("2270","Katiola","60","1");
INSERT INTO profine_states VALUES("2271","Korhogo","60","1");
INSERT INTO profine_states VALUES("2272","Odienne","60","1");
INSERT INTO profine_states VALUES("2273","Seguela","60","1");
INSERT INTO profine_states VALUES("2274","Touba","60","1");
INSERT INTO profine_states VALUES("2275","Bongouanou","60","1");
INSERT INTO profine_states VALUES("2276","Issia","60","1");
INSERT INTO profine_states VALUES("2277","Lakota","60","1");
INSERT INTO profine_states VALUES("2278","Mankono","60","1");
INSERT INTO profine_states VALUES("2279","Oume","60","1");
INSERT INTO profine_states VALUES("2280","Soubre","60","1");
INSERT INTO profine_states VALUES("2281","Tingrela","60","1");
INSERT INTO profine_states VALUES("2282","Zuenoula","60","1");
INSERT INTO profine_states VALUES("2283","Abidjan","60","1");
INSERT INTO profine_states VALUES("2284","Bangolo","60","1");
INSERT INTO profine_states VALUES("2285","Beoumi","60","1");
INSERT INTO profine_states VALUES("2286","Bondoukou","60","1");
INSERT INTO profine_states VALUES("2287","Bouafle","60","1");
INSERT INTO profine_states VALUES("2288","Bouake","60","1");
INSERT INTO profine_states VALUES("2289","Daloa","60","1");
INSERT INTO profine_states VALUES("2290","Daoukro","60","1");
INSERT INTO profine_states VALUES("2291","Dimbokro","60","1");
INSERT INTO profine_states VALUES("2292","Duekoue","60","1");
INSERT INTO profine_states VALUES("2293","Grand-Lahou","60","1");
INSERT INTO profine_states VALUES("2294","Guiglo","60","1");
INSERT INTO profine_states VALUES("2295","Man","60","1");
INSERT INTO profine_states VALUES("2296","Mbahiakro","60","1");
INSERT INTO profine_states VALUES("2297","Sakassou","60","1");
INSERT INTO profine_states VALUES("2298","San Pedro","60","1");
INSERT INTO profine_states VALUES("2299","Sassandra","60","1");
INSERT INTO profine_states VALUES("2300","Sinfra","60","1");
INSERT INTO profine_states VALUES("2301","Tabou","60","1");
INSERT INTO profine_states VALUES("2302","Tanda","60","1");
INSERT INTO profine_states VALUES("2303","Tiassale","60","1");
INSERT INTO profine_states VALUES("2304","Toumodi","60","1");
INSERT INTO profine_states VALUES("2305","Vavoua","60","1");
INSERT INTO profine_states VALUES("2306","Yamoussoukro","60","1");
INSERT INTO profine_states VALUES("2307","Agnilbilekrou","60","1");
INSERT INTO profine_states VALUES("2308","Al Anbar","116","1");
INSERT INTO profine_states VALUES("2309","Al Basrah","116","1");
INSERT INTO profine_states VALUES("2310","Al Muthann·","116","1");
INSERT INTO profine_states VALUES("2311","Al Qadisiyah","116","1");
INSERT INTO profine_states VALUES("2312","As Sulaymaniyah","116","1");
INSERT INTO profine_states VALUES("2313","Babil","116","1");
INSERT INTO profine_states VALUES("2314","Baghdad","116","1");
INSERT INTO profine_states VALUES("2315","Dahuk","116","1");
INSERT INTO profine_states VALUES("2316","Dhi Qar","116","1");
INSERT INTO profine_states VALUES("2317","Diyala","116","1");
INSERT INTO profine_states VALUES("2318","Arbil","116","1");
INSERT INTO profine_states VALUES("2319","Karbala\'","116","1");
INSERT INTO profine_states VALUES("2320","At Ta\'mim","116","1");
INSERT INTO profine_states VALUES("2321","Maysan","116","1");
INSERT INTO profine_states VALUES("2322","Ninawa","116","1");
INSERT INTO profine_states VALUES("2323","Wasit","116","1");
INSERT INTO profine_states VALUES("2324","An Najaf","116","1");
INSERT INTO profine_states VALUES("2325","Sñalah ad Din","116","1");
INSERT INTO profine_states VALUES("2326","Aichi","122","1");
INSERT INTO profine_states VALUES("2327","Akita","122","1");
INSERT INTO profine_states VALUES("2328","Aomori","122","1");
INSERT INTO profine_states VALUES("2329","Chiba","122","1");
INSERT INTO profine_states VALUES("2330","Ehime","122","1");
INSERT INTO profine_states VALUES("2331","Fukui","122","1");
INSERT INTO profine_states VALUES("2332","Fukuoka","122","1");
INSERT INTO profine_states VALUES("2333","Fukushima","122","1");
INSERT INTO profine_states VALUES("2334","Gifu","122","1");
INSERT INTO profine_states VALUES("2335","Gumma","122","1");
INSERT INTO profine_states VALUES("2336","Hiroshima","122","1");
INSERT INTO profine_states VALUES("2337","Hokkaido","122","1");
INSERT INTO profine_states VALUES("2338","Hyogo","122","1");
INSERT INTO profine_states VALUES("2339","Ibaraki","122","1");
INSERT INTO profine_states VALUES("2340","Ishikawa","122","1");
INSERT INTO profine_states VALUES("2341","Iwate","122","1");
INSERT INTO profine_states VALUES("2342","Kagawa","122","1");
INSERT INTO profine_states VALUES("2343","Kagoshima","122","1");
INSERT INTO profine_states VALUES("2344","Kanagawa","122","1");
INSERT INTO profine_states VALUES("2345","Kochi","122","1");
INSERT INTO profine_states VALUES("2346","Kumamoto","122","1");
INSERT INTO profine_states VALUES("2347","Kyoto","122","1");
INSERT INTO profine_states VALUES("2348","Mie","122","1");
INSERT INTO profine_states VALUES("2349","Miyagi","122","1");
INSERT INTO profine_states VALUES("2350","Miyazaki","122","1");
INSERT INTO profine_states VALUES("2351","Nagano","122","1");
INSERT INTO profine_states VALUES("2352","Nagasaki","122","1");
INSERT INTO profine_states VALUES("2353","Nara","122","1");
INSERT INTO profine_states VALUES("2354","Niigata","122","1");
INSERT INTO profine_states VALUES("2355","Oita","122","1");
INSERT INTO profine_states VALUES("2356","Okayama","122","1");
INSERT INTO profine_states VALUES("2357","Osaka","122","1");
INSERT INTO profine_states VALUES("2358","Saga","122","1");
INSERT INTO profine_states VALUES("2359","Saitama","122","1");
INSERT INTO profine_states VALUES("2360","Shiga","122","1");
INSERT INTO profine_states VALUES("2361","Shimane","122","1");
INSERT INTO profine_states VALUES("2362","Shizuoka","122","1");
INSERT INTO profine_states VALUES("2363","Tochigi","122","1");
INSERT INTO profine_states VALUES("2364","Tokushima","122","1");
INSERT INTO profine_states VALUES("2365","Tokyo","122","1");
INSERT INTO profine_states VALUES("2366","Tottori","122","1");
INSERT INTO profine_states VALUES("2367","Toyama","122","1");
INSERT INTO profine_states VALUES("2368","Wakayama","122","1");
INSERT INTO profine_states VALUES("2369","Yamagata","122","1");
INSERT INTO profine_states VALUES("2370","Yamaguchi","122","1");
INSERT INTO profine_states VALUES("2371","Yamanashi","122","1");
INSERT INTO profine_states VALUES("2372","Okinawa","122","1");
INSERT INTO profine_states VALUES("2373","Clarendon","120","1");
INSERT INTO profine_states VALUES("2374","Hanover","120","1");
INSERT INTO profine_states VALUES("2375","Manchester","120","1");
INSERT INTO profine_states VALUES("2376","Portland","120","1");
INSERT INTO profine_states VALUES("2377","Saint Andrew","120","1");
INSERT INTO profine_states VALUES("2378","Saint Ann","120","1");
INSERT INTO profine_states VALUES("2379","Saint Catherine","120","1");
INSERT INTO profine_states VALUES("2380","Saint Elizabeth","120","1");
INSERT INTO profine_states VALUES("2381","Saint James","120","1");
INSERT INTO profine_states VALUES("2382","Saint Mary","120","1");
INSERT INTO profine_states VALUES("2383","Saint Thomas","120","1");
INSERT INTO profine_states VALUES("2384","Trelawny","120","1");
INSERT INTO profine_states VALUES("2385","Westmoreland","120","1");
INSERT INTO profine_states VALUES("2386","Kingston","120","1");
INSERT INTO profine_states VALUES("2387","Al Balqa\'","126","1");
INSERT INTO profine_states VALUES("2388","Ma\'an","126","1");
INSERT INTO profine_states VALUES("2389","Al Karak","126","1");
INSERT INTO profine_states VALUES("2390","Al Mafraq","126","1");
INSERT INTO profine_states VALUES("2391","\'Amman","126","1");
INSERT INTO profine_states VALUES("2392","At Tafilah","126","1");
INSERT INTO profine_states VALUES("2393","Az Zaraq","126","1");
INSERT INTO profine_states VALUES("2394","Irbid","126","1");
INSERT INTO profine_states VALUES("2395","Central","129","1");
INSERT INTO profine_states VALUES("2396","Coast","129","1");
INSERT INTO profine_states VALUES("2397","Eastern","129","1");
INSERT INTO profine_states VALUES("2398","Nairobi Area","129","1");
INSERT INTO profine_states VALUES("2399","NorthEastern","129","1");
INSERT INTO profine_states VALUES("2400","Nyanza","129","1");
INSERT INTO profine_states VALUES("2401","Rift Valley","129","1");
INSERT INTO profine_states VALUES("2402","Western","129","1");
INSERT INTO profine_states VALUES("2403","Bishkek","135","1");
INSERT INTO profine_states VALUES("2404","Chuy","135","1");
INSERT INTO profine_states VALUES("2405","Jalal-Abad","135","1");
INSERT INTO profine_states VALUES("2406","Naryn","135","1");
INSERT INTO profine_states VALUES("2407","Osh","135","1");
INSERT INTO profine_states VALUES("2408","Talas","135","1");
INSERT INTO profine_states VALUES("2409","Ysyk-Kol","135","1");
INSERT INTO profine_states VALUES("2410","Chagang-do","132","1");
INSERT INTO profine_states VALUES("2411","Hamgyong-namdo","132","1");
INSERT INTO profine_states VALUES("2412","Hwanghae-namdo","132","1");
INSERT INTO profine_states VALUES("2413","Hwanghae-bukto","132","1");
INSERT INTO profine_states VALUES("2414","Kaesong-si","132","1");
INSERT INTO profine_states VALUES("2415","Kangwon-do","132","1");
INSERT INTO profine_states VALUES("2416","P\'yongan-namdo","132","1");
INSERT INTO profine_states VALUES("2417","P\'yongyang-si","132","1");
INSERT INTO profine_states VALUES("2418","Yanggang-do","132","1");
INSERT INTO profine_states VALUES("2419","Namp\'o-si","132","1");
INSERT INTO profine_states VALUES("2420","Hamgyong-bukto","132","1");
INSERT INTO profine_states VALUES("2421","Gilbert Islands","131","1");
INSERT INTO profine_states VALUES("2422","Line Islands","131","1");
INSERT INTO profine_states VALUES("2423","Phoenix Islands","131","1");
INSERT INTO profine_states VALUES("2424","Cheju-do","133","1");
INSERT INTO profine_states VALUES("2425","Cholla-bukto","133","1");
INSERT INTO profine_states VALUES("2426","Ch\'ungch\'ong-bukto","133","1");
INSERT INTO profine_states VALUES("2427","Kangwon-do","133","1");
INSERT INTO profine_states VALUES("2428","Kyongsang-namdo","133","1");
INSERT INTO profine_states VALUES("2429","Pusan-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("2430","Soul-t\'ukpyolsi","133","1");
INSERT INTO profine_states VALUES("2431","Inch\'on-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("2432","Kyonggi-do","133","1");
INSERT INTO profine_states VALUES("2433","Kyongsang-bukto","133","1");
INSERT INTO profine_states VALUES("2434","Taegu-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("2435","Cholla-namdo","133","1");
INSERT INTO profine_states VALUES("2436","Ch\'ungch\'ong-namdo","133","1");
INSERT INTO profine_states VALUES("2437","Kwangju-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("2438","Taejon-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("2439","Al Kuwayt","134","1");
INSERT INTO profine_states VALUES("2441","Hawalli","134","1");
INSERT INTO profine_states VALUES("2442","Al Ahmadi","134","1");
INSERT INTO profine_states VALUES("2443","Al Jahra\'","134","1");
INSERT INTO profine_states VALUES("2444","Al Farwaniyah","134","1");
INSERT INTO profine_states VALUES("2445","Almaty","128","1");
INSERT INTO profine_states VALUES("2446","Aqmola","128","1");
INSERT INTO profine_states VALUES("2447","Aqtobe","128","1");
INSERT INTO profine_states VALUES("2448","Astana","128","1");
INSERT INTO profine_states VALUES("2449","Atyrau","128","1");
INSERT INTO profine_states VALUES("2450","Batys Qazaqstan","128","1");
INSERT INTO profine_states VALUES("2451","Bayqongyr","128","1");
INSERT INTO profine_states VALUES("2452","Mangghystau","128","1");
INSERT INTO profine_states VALUES("2453","Ongtustik Qazaqstan","128","1");
INSERT INTO profine_states VALUES("2454","Pavlodar","128","1");
INSERT INTO profine_states VALUES("2455","Qaraghandy","128","1");
INSERT INTO profine_states VALUES("2456","Qostanay","128","1");
INSERT INTO profine_states VALUES("2457","Qyzylorda","128","1");
INSERT INTO profine_states VALUES("2458","Shyghys Qazaqstan","128","1");
INSERT INTO profine_states VALUES("2459","Soltustik Qazaqstan","128","1");
INSERT INTO profine_states VALUES("2460","Zhambyl","128","1");
INSERT INTO profine_states VALUES("2464","Attapu","136","1");
INSERT INTO profine_states VALUES("2465","Champasak","136","1");
INSERT INTO profine_states VALUES("2466","Houaphan","136","1");
INSERT INTO profine_states VALUES("2467","Oudomxai","136","1");
INSERT INTO profine_states VALUES("2468","Xiagnabouli","136","1");
INSERT INTO profine_states VALUES("2469","Xiangkhoang","136","1");
INSERT INTO profine_states VALUES("2470","Khammouan","136","1");
INSERT INTO profine_states VALUES("2471","Louangnamtha","136","1");
INSERT INTO profine_states VALUES("2472","Louangphabang","136","1");
INSERT INTO profine_states VALUES("2473","Phongsali","136","1");
INSERT INTO profine_states VALUES("2474","Salavan","136","1");
INSERT INTO profine_states VALUES("2475","Savannakhet","136","1");
INSERT INTO profine_states VALUES("2476","Bokeo","136","1");
INSERT INTO profine_states VALUES("2477","Bolikhamxai","136","1");
INSERT INTO profine_states VALUES("2478","Viangchan","136","1");
INSERT INTO profine_states VALUES("2479","Xaisomboun","136","1");
INSERT INTO profine_states VALUES("2480","Xekong","136","1");
INSERT INTO profine_states VALUES("2481","Beqaa","138","1");
INSERT INTO profine_states VALUES("2482","Liban-Sud","138","1");
INSERT INTO profine_states VALUES("2483","Liban-Nord","138","1");
INSERT INTO profine_states VALUES("2484","Beyrouth","138","1");
INSERT INTO profine_states VALUES("2485","Mont-Liban","138","1");
INSERT INTO profine_states VALUES("2486","Aizjrayjkes Rajons","137","1");
INSERT INTO profine_states VALUES("2487","Aluksnes Rajons","137","1");
INSERT INTO profine_states VALUES("2488","Balvu Rajons","137","1");
INSERT INTO profine_states VALUES("2489","Bauskas Rajons","137","1");
INSERT INTO profine_states VALUES("2490","Cesu Rajons","137","1");
INSERT INTO profine_states VALUES("2491","Daugavpils","137","1");
INSERT INTO profine_states VALUES("2492","Daugavpils Rajons","137","1");
INSERT INTO profine_states VALUES("2493","Dobeles Rajons","137","1");
INSERT INTO profine_states VALUES("2494","Gulbenes Rajons","137","1");
INSERT INTO profine_states VALUES("2495","Jekabpils Rajons","137","1");
INSERT INTO profine_states VALUES("2496","Jelgava","137","1");
INSERT INTO profine_states VALUES("2497","Jelgavas Rajons","137","1");
INSERT INTO profine_states VALUES("2498","Jurmala","137","1");
INSERT INTO profine_states VALUES("2499","Kraslavas Rajons","137","1");
INSERT INTO profine_states VALUES("2500","Kuldigas Rajons","137","1");
INSERT INTO profine_states VALUES("2501","Liepaja","137","1");
INSERT INTO profine_states VALUES("2502","Liepajas Rajons","137","1");
INSERT INTO profine_states VALUES("2503","Limbazu Rajons","137","1");
INSERT INTO profine_states VALUES("2504","Ludzas Rajons","137","1");
INSERT INTO profine_states VALUES("2505","Madonas Rajons","137","1");
INSERT INTO profine_states VALUES("2506","Ogres Rajons","137","1");
INSERT INTO profine_states VALUES("2507","Preiju Rajons","137","1");
INSERT INTO profine_states VALUES("2508","Rezekne","137","1");
INSERT INTO profine_states VALUES("2509","Rezeknes Rajons","137","1");
INSERT INTO profine_states VALUES("2510","Riga","137","1");
INSERT INTO profine_states VALUES("2511","Rigas Rajons","137","1");
INSERT INTO profine_states VALUES("2512","Saldus Rajons","137","1");
INSERT INTO profine_states VALUES("2513","Talsu Rajons","137","1");
INSERT INTO profine_states VALUES("2514","Tukuma Rajons","137","1");
INSERT INTO profine_states VALUES("2515","Valkas Rajons","137","1");
INSERT INTO profine_states VALUES("2516","Valmieras Rajons","137","1");
INSERT INTO profine_states VALUES("2517","Ventspils","137","1");
INSERT INTO profine_states VALUES("2518","Ventspils Rajons","137","1");
INSERT INTO profine_states VALUES("2521","Alytaus Apskritis","143","1");
INSERT INTO profine_states VALUES("2531","Kauno Apskritis","143","1");
INSERT INTO profine_states VALUES("2535","Klaipedos Apskritis","143","1");
INSERT INTO profine_states VALUES("2540","Marijampoles Apskritis","143","1");
INSERT INTO profine_states VALUES("2548","Panevezio Apskritis","143","1");
INSERT INTO profine_states VALUES("2557","Siauliu Apskritis","143","1");
INSERT INTO profine_states VALUES("2564","Taurages Apskritis","143","1");
INSERT INTO profine_states VALUES("2565","Telsiu Apskritis","143","1");
INSERT INTO profine_states VALUES("2568","Utenos Apskritis","143","1");
INSERT INTO profine_states VALUES("2572","Vilniaus Apskritis","143","1");
INSERT INTO profine_states VALUES("2574","Bong","140","1");
INSERT INTO profine_states VALUES("2575","Grand Gedeh","140","1");
INSERT INTO profine_states VALUES("2576","Lofa","140","1");
INSERT INTO profine_states VALUES("2578","Nimba","140","1");
INSERT INTO profine_states VALUES("2579","Sinoe","140","1");
INSERT INTO profine_states VALUES("2580","Grand Bassa","140","1");
INSERT INTO profine_states VALUES("2581","Grand Cape Mount","140","1");
INSERT INTO profine_states VALUES("2582","Maryland","140","1");
INSERT INTO profine_states VALUES("2583","Montserrado","140","1");
INSERT INTO profine_states VALUES("2584","Bomi","140","1");
INSERT INTO profine_states VALUES("2585","Grand Kru","140","1");
INSERT INTO profine_states VALUES("2586","Margibi","140","1");
INSERT INTO profine_states VALUES("2587","River Cess","140","1");
INSERT INTO profine_states VALUES("2588","Banskobystricky","220","1");
INSERT INTO profine_states VALUES("2589","Bratislavsky","220","1");
INSERT INTO profine_states VALUES("2590","Kosicky","220","1");
INSERT INTO profine_states VALUES("2591","Nitrinsky","220","1");
INSERT INTO profine_states VALUES("2592","Presovsky","220","1");
INSERT INTO profine_states VALUES("2593","Treciansky","220","1");
INSERT INTO profine_states VALUES("2594","Trnavsky","220","1");
INSERT INTO profine_states VALUES("2595","Zilinsky","220","1");
INSERT INTO profine_states VALUES("2596","Balzers","142","1");
INSERT INTO profine_states VALUES("2597","Eschen","142","1");
INSERT INTO profine_states VALUES("2598","Gamprin","142","1");
INSERT INTO profine_states VALUES("2599","Mauren","142","1");
INSERT INTO profine_states VALUES("2600","Planken","142","1");
INSERT INTO profine_states VALUES("2601","Ruggell","142","1");
INSERT INTO profine_states VALUES("2602","Schaan","142","1");
INSERT INTO profine_states VALUES("2603","Schellenberg","142","1");
INSERT INTO profine_states VALUES("2604","Triesen","142","1");
INSERT INTO profine_states VALUES("2605","Triesenberg","142","1");
INSERT INTO profine_states VALUES("2606","Vaduz","142","1");
INSERT INTO profine_states VALUES("2613","Berea","139","1");
INSERT INTO profine_states VALUES("2614","Butha-Buthe","139","1");
INSERT INTO profine_states VALUES("2615","Leribe","139","1");
INSERT INTO profine_states VALUES("2616","Mafeteng","139","1");
INSERT INTO profine_states VALUES("2617","Maseru","139","1");
INSERT INTO profine_states VALUES("2618","Mohale\'s Hoek","139","1");
INSERT INTO profine_states VALUES("2619","Mokhotlong","139","1");
INSERT INTO profine_states VALUES("2620","Qacha\'s Hoek","139","1");
INSERT INTO profine_states VALUES("2621","Quthing","139","1");
INSERT INTO profine_states VALUES("2622","Thaba-Tseka","139","1");
INSERT INTO profine_states VALUES("2623","Diekirch","144","1");
INSERT INTO profine_states VALUES("2624","Grevenmacher","144","1");
INSERT INTO profine_states VALUES("2625","Luxembourg","144","1");
INSERT INTO profine_states VALUES("2627","Al \'Aziziyah","141","1");
INSERT INTO profine_states VALUES("2629","Al Jufrah","141","1");
INSERT INTO profine_states VALUES("2631","Al Kufrah","141","1");
INSERT INTO profine_states VALUES("2636","Ash Shati\'","141","1");
INSERT INTO profine_states VALUES("2646","Murzuq","141","1");
INSERT INTO profine_states VALUES("2650","Sabha","141","1");
INSERT INTO profine_states VALUES("2655","Tarhunah","141","1");
INSERT INTO profine_states VALUES("2656","Töubruq","141","1");
INSERT INTO profine_states VALUES("2658","Zlitan","141","1");
INSERT INTO profine_states VALUES("2660","Ajdabiya","141","1");
INSERT INTO profine_states VALUES("2661","Al Fatih","141","1");
INSERT INTO profine_states VALUES("2662","Al Jabal al Akhdar","141","1");
INSERT INTO profine_states VALUES("2663","Al Khums","141","1");
INSERT INTO profine_states VALUES("2664","An Nuqat al Khams","141","1");
INSERT INTO profine_states VALUES("2665","Awbari","141","1");
INSERT INTO profine_states VALUES("2666","Az Zawiyah","141","1");
INSERT INTO profine_states VALUES("2667","Banghazi","141","1");
INSERT INTO profine_states VALUES("2668","Darnah","141","1");
INSERT INTO profine_states VALUES("2669","Ghadamis","141","1");
INSERT INTO profine_states VALUES("2670","Gharyan","141","1");
INSERT INTO profine_states VALUES("2671","Misratah","141","1");
INSERT INTO profine_states VALUES("2672","Sawfajjin","141","1");
INSERT INTO profine_states VALUES("2673","Surt","141","1");
INSERT INTO profine_states VALUES("2674","Tarabulus","141","1");
INSERT INTO profine_states VALUES("2675","Yafran","141","1");
INSERT INTO profine_states VALUES("2676","Antsiranana","147","1");
INSERT INTO profine_states VALUES("2677","Fianarantsoa","147","1");
INSERT INTO profine_states VALUES("2678","Mahajanga","147","1");
INSERT INTO profine_states VALUES("2679","Toamasina","147","1");
INSERT INTO profine_states VALUES("2680","Antananarivo","147","1");
INSERT INTO profine_states VALUES("2681","Toliara","147","1");
INSERT INTO profine_states VALUES("2682","Ilhas","145","1");
INSERT INTO profine_states VALUES("2683","Macau","145","1");
INSERT INTO profine_states VALUES("2685","Balti","163","1");
INSERT INTO profine_states VALUES("2689","Cahul","163","1");
INSERT INTO profine_states VALUES("2696","Chisinau","163","1");
INSERT INTO profine_states VALUES("2702","Stinga Nistrului","163","1");
INSERT INTO profine_states VALUES("2703","Edinet","163","1");
INSERT INTO profine_states VALUES("2706","Gagauzia","163","1");
INSERT INTO profine_states VALUES("2714","Orhei","163","1");
INSERT INTO profine_states VALUES("2721","Soroca","163","1");
INSERT INTO profine_states VALUES("2727","Ungheni","163","1");
INSERT INTO profine_states VALUES("2729","Arhangay","165","1");
INSERT INTO profine_states VALUES("2730","Bayanhongor","165","1");
INSERT INTO profine_states VALUES("2731","Bayan-Olgiy","165","1");
INSERT INTO profine_states VALUES("2734","Dornogovi","165","1");
INSERT INTO profine_states VALUES("2735","Dundgovi","165","1");
INSERT INTO profine_states VALUES("2736","Dzavhan","165","1");
INSERT INTO profine_states VALUES("2737","Govi-Altay","165","1");
INSERT INTO profine_states VALUES("2738","Hentiy","165","1");
INSERT INTO profine_states VALUES("2739","Omnogovi","165","1");
INSERT INTO profine_states VALUES("2740","Ovorhangay","165","1");
INSERT INTO profine_states VALUES("2741","Ulaanbaatar","165","1");
INSERT INTO profine_states VALUES("2742","Orhon","165","1");
INSERT INTO profine_states VALUES("2743","Saint Anthony","167","1");
INSERT INTO profine_states VALUES("2744","Saint Georges","167","1");
INSERT INTO profine_states VALUES("2745","Saint Peter","167","1");
INSERT INTO profine_states VALUES("2746","Chikwawa","148","1");
INSERT INTO profine_states VALUES("2747","Chiradzulu","148","1");
INSERT INTO profine_states VALUES("2748","Chitipa","148","1");
INSERT INTO profine_states VALUES("2749","Thyolo","148","1");
INSERT INTO profine_states VALUES("2750","Dedza","148","1");
INSERT INTO profine_states VALUES("2751","Dowa","148","1");
INSERT INTO profine_states VALUES("2752","Karonga","148","1");
INSERT INTO profine_states VALUES("2753","Kasungu","148","1");
INSERT INTO profine_states VALUES("2754","Machinga (Kasupe)","148","1");
INSERT INTO profine_states VALUES("2755","Lilongwe","148","1");
INSERT INTO profine_states VALUES("2756","Mangochi (Fort Johnston)","148","1");
INSERT INTO profine_states VALUES("2757","Mchinji","148","1");
INSERT INTO profine_states VALUES("2758","Mulanje (Mlange)","148","1");
INSERT INTO profine_states VALUES("2759","Mzimba","148","1");
INSERT INTO profine_states VALUES("2760","Ntcheu","148","1");
INSERT INTO profine_states VALUES("2761","Nkhata Bay","148","1");
INSERT INTO profine_states VALUES("2762","Nkhotakota","148","1");
INSERT INTO profine_states VALUES("2763","Nsanje","148","1");
INSERT INTO profine_states VALUES("2764","Ntchisi (Nchisi)","148","1");
INSERT INTO profine_states VALUES("2765","Rumphi (Rumpil)","148","1");
INSERT INTO profine_states VALUES("2766","Salima","148","1");
INSERT INTO profine_states VALUES("2767","Zomba","148","1");
INSERT INTO profine_states VALUES("2768","Blantyre","148","1");
INSERT INTO profine_states VALUES("2769","Mwanza","148","1");
INSERT INTO profine_states VALUES("2770","Bamako","151","1");
INSERT INTO profine_states VALUES("2771","Gao","151","1");
INSERT INTO profine_states VALUES("2772","Kayes","151","1");
INSERT INTO profine_states VALUES("2773","Mopti","151","1");
INSERT INTO profine_states VALUES("2774","Segou","151","1");
INSERT INTO profine_states VALUES("2775","Sikasso","151","1");
INSERT INTO profine_states VALUES("2776","Koulikoro","151","1");
INSERT INTO profine_states VALUES("2777","Tombouctou","151","1");
INSERT INTO profine_states VALUES("2781","Agadir","168","1");
INSERT INTO profine_states VALUES("2782","Al HoceÔma","168","1");
INSERT INTO profine_states VALUES("2783","Azilal","168","1");
INSERT INTO profine_states VALUES("2784","Ben Slimane","168","1");
INSERT INTO profine_states VALUES("2785","Beni Mellal","168","1");
INSERT INTO profine_states VALUES("2786","Boulemane","168","1");
INSERT INTO profine_states VALUES("2787","Casablanca","168","1");
INSERT INTO profine_states VALUES("2788","Chaouen","168","1");
INSERT INTO profine_states VALUES("2789","El Jadida","168","1");
INSERT INTO profine_states VALUES("2790","El Kelaa des Sraghna","168","1");
INSERT INTO profine_states VALUES("2791","Er Rachidia","168","1");
INSERT INTO profine_states VALUES("2792","Essaouira","168","1");
INSERT INTO profine_states VALUES("2793","Fes","168","1");
INSERT INTO profine_states VALUES("2794","Figuig","168","1");
INSERT INTO profine_states VALUES("2795","Kenitra","168","1");
INSERT INTO profine_states VALUES("2796","Khemisset","168","1");
INSERT INTO profine_states VALUES("2797","Khenifra","168","1");
INSERT INTO profine_states VALUES("2798","Khouribga","168","1");
INSERT INTO profine_states VALUES("2799","Marrakech","168","1");
INSERT INTO profine_states VALUES("2800","Meknes","168","1");
INSERT INTO profine_states VALUES("2801","Nador","168","1");
INSERT INTO profine_states VALUES("2802","Ouarzazate","168","1");
INSERT INTO profine_states VALUES("2803","Oujda","168","1");
INSERT INTO profine_states VALUES("2804","Rabat-Sale","168","1");
INSERT INTO profine_states VALUES("2805","Safi","168","1");
INSERT INTO profine_states VALUES("2806","Settat","168","1");
INSERT INTO profine_states VALUES("2807","Tanger","168","1");
INSERT INTO profine_states VALUES("2808","Tata","168","1");
INSERT INTO profine_states VALUES("2809","Taza","168","1");
INSERT INTO profine_states VALUES("2810","Tiznit","168","1");
INSERT INTO profine_states VALUES("2811","Guelmim","168","1");
INSERT INTO profine_states VALUES("2812","Ifrane","168","1");
INSERT INTO profine_states VALUES("2813","Laayoune","168","1");
INSERT INTO profine_states VALUES("2814","Tan-Tan","168","1");
INSERT INTO profine_states VALUES("2815","Taounate","168","1");
INSERT INTO profine_states VALUES("2816","Sidi Kacem","168","1");
INSERT INTO profine_states VALUES("2817","Taroudannt","168","1");
INSERT INTO profine_states VALUES("2818","Tetouan","168","1");
INSERT INTO profine_states VALUES("2819","Larache","168","1");
INSERT INTO profine_states VALUES("2820","Assa-Zag","168","1");
INSERT INTO profine_states VALUES("2821","Es Smara","168","1");
INSERT INTO profine_states VALUES("2822","Black River","157","1");
INSERT INTO profine_states VALUES("2823","Flacq","157","1");
INSERT INTO profine_states VALUES("2824","Grand Port","157","1");
INSERT INTO profine_states VALUES("2825","Moka","157","1");
INSERT INTO profine_states VALUES("2826","Pamplemousses","157","1");
INSERT INTO profine_states VALUES("2827","Plaines Wilhems","157","1");
INSERT INTO profine_states VALUES("2828","Port Louis","157","1");
INSERT INTO profine_states VALUES("2829","RiviËre du Rempart","157","1");
INSERT INTO profine_states VALUES("2830","Savanne","157","1");
INSERT INTO profine_states VALUES("2831","Agalega Islands","157","1");
INSERT INTO profine_states VALUES("2832","Cargados Carajos","157","1");
INSERT INTO profine_states VALUES("2833","Rodrigues","157","1");
INSERT INTO profine_states VALUES("2834","Hodh Ech Chargui","156","1");
INSERT INTO profine_states VALUES("2835","Hodh El Gharbi","156","1");
INSERT INTO profine_states VALUES("2836","Assaba","156","1");
INSERT INTO profine_states VALUES("2837","Gorgol","156","1");
INSERT INTO profine_states VALUES("2838","Brakna","156","1");
INSERT INTO profine_states VALUES("2839","Trarza","156","1");
INSERT INTO profine_states VALUES("2840","Adrar","156","1");
INSERT INTO profine_states VALUES("2841","Dakhlet Nouadhibou","156","1");
INSERT INTO profine_states VALUES("2842","Tagant","156","1");
INSERT INTO profine_states VALUES("2843","Guidimaka","156","1");
INSERT INTO profine_states VALUES("2844","Tiris Zemmour","156","1");
INSERT INTO profine_states VALUES("2845","Inchiri","156","1");
INSERT INTO profine_states VALUES("2846","Ad Dakhiliyah","186","1");
INSERT INTO profine_states VALUES("2847","Al Batinah","186","1");
INSERT INTO profine_states VALUES("2848","Al Wusta","186","1");
INSERT INTO profine_states VALUES("2849","Ash Sharqiyah","186","1");
INSERT INTO profine_states VALUES("2850","Az Zahirah","186","1");
INSERT INTO profine_states VALUES("2851","Masqat","186","1");
INSERT INTO profine_states VALUES("2852","Musandam","186","1");
INSERT INTO profine_states VALUES("2853","Zufar","186","1");
INSERT INTO profine_states VALUES("2854","Seenu","150","1");
INSERT INTO profine_states VALUES("2858","Laamu","150","1");
INSERT INTO profine_states VALUES("2860","Thaa","150","1");
INSERT INTO profine_states VALUES("2862","Raa","150","1");
INSERT INTO profine_states VALUES("2865","Baa","150","1");
INSERT INTO profine_states VALUES("2867","Shaviyani","150","1");
INSERT INTO profine_states VALUES("2868","Noonu","150","1");
INSERT INTO profine_states VALUES("2869","Kaafu","150","1");
INSERT INTO profine_states VALUES("2873","Alifu","150","1");
INSERT INTO profine_states VALUES("2874","Dhaalu","150","1");
INSERT INTO profine_states VALUES("2875","Faafa","150","1");
INSERT INTO profine_states VALUES("2876","Gaafu Alifu","150","1");
INSERT INTO profine_states VALUES("2877","Gaafu Dhaalu","150","1");
INSERT INTO profine_states VALUES("2878","Haa Alifu","150","1");
INSERT INTO profine_states VALUES("2879","Haa Dhaalu","150","1");
INSERT INTO profine_states VALUES("2880","Lhaviyani","150","1");
INSERT INTO profine_states VALUES("2881","Maale","150","1");
INSERT INTO profine_states VALUES("2882","Meenu","150","1");
INSERT INTO profine_states VALUES("2883","Gnaviyani","150","1");
INSERT INTO profine_states VALUES("2884","Vaavu","150","1");
INSERT INTO profine_states VALUES("2885","Aguascalientes","159","1");
INSERT INTO profine_states VALUES("2886","Campeche","159","1");
INSERT INTO profine_states VALUES("2887","Coahuila de Zaragoza","159","1");
INSERT INTO profine_states VALUES("2888","Distrito Federal","159","1");
INSERT INTO profine_states VALUES("2889","Mexico","159","1");
INSERT INTO profine_states VALUES("2890","Michoacan de Ocampo","159","1");
INSERT INTO profine_states VALUES("2891","Nayarit","159","1");
INSERT INTO profine_states VALUES("2892","Puebla","159","1");
INSERT INTO profine_states VALUES("2893","Queretaro de Arteaga","159","1");
INSERT INTO profine_states VALUES("2894","Sinaloa","159","1");
INSERT INTO profine_states VALUES("2895","Veracruz-Llave","159","1");
INSERT INTO profine_states VALUES("2896","Yucatan","159","1");
INSERT INTO profine_states VALUES("2897","Johor","149","1");
INSERT INTO profine_states VALUES("2898","Kedah","149","1");
INSERT INTO profine_states VALUES("2899","Kelantan","149","1");
INSERT INTO profine_states VALUES("2900","Melaka","149","1");
INSERT INTO profine_states VALUES("2901","Negeri Sembilan","149","1");
INSERT INTO profine_states VALUES("2902","Pahang","149","1");
INSERT INTO profine_states VALUES("2903","Perak","149","1");
INSERT INTO profine_states VALUES("2904","Perlis","149","1");
INSERT INTO profine_states VALUES("2905","Pulau Pinang","149","1");
INSERT INTO profine_states VALUES("2906","Sarawak","149","1");
INSERT INTO profine_states VALUES("2907","Selangor","149","1");
INSERT INTO profine_states VALUES("2908","Terengganu","149","1");
INSERT INTO profine_states VALUES("2909","Wilayah Persekutuan","149","1");
INSERT INTO profine_states VALUES("2910","Labuan","149","1");
INSERT INTO profine_states VALUES("2911","Sabah","149","1");
INSERT INTO profine_states VALUES("2912","Cabo Delgado","169","1");
INSERT INTO profine_states VALUES("2913","Gaza","169","1");
INSERT INTO profine_states VALUES("2914","Inhambane","169","1");
INSERT INTO profine_states VALUES("2915","Maputo","169","1");
INSERT INTO profine_states VALUES("2916","Sofala","169","1");
INSERT INTO profine_states VALUES("2917","Nampula","169","1");
INSERT INTO profine_states VALUES("2918","Niassa","169","1");
INSERT INTO profine_states VALUES("2919","Tete","169","1");
INSERT INTO profine_states VALUES("2920","Zambezia","169","1");
INSERT INTO profine_states VALUES("2921","Manica","169","1");
INSERT INTO profine_states VALUES("2922","Agadez","180","1");
INSERT INTO profine_states VALUES("2923","Diffa","180","1");
INSERT INTO profine_states VALUES("2924","Dosso","180","1");
INSERT INTO profine_states VALUES("2925","Maradi","180","1");
INSERT INTO profine_states VALUES("2926","Niamey","180","1");
INSERT INTO profine_states VALUES("2927","Tahoua","180","1");
INSERT INTO profine_states VALUES("2928","Zinder","180","1");
INSERT INTO profine_states VALUES("2929","Tillaberi","180","1");
INSERT INTO profine_states VALUES("2931","Aoba//Maewo","258","1");
INSERT INTO profine_states VALUES("2932","Torba","258","1");
INSERT INTO profine_states VALUES("2938","Sanma","258","1");
INSERT INTO profine_states VALUES("2940","Tafea","258","1");
INSERT INTO profine_states VALUES("2941","Lagos","181","1");
INSERT INTO profine_states VALUES("2942","Bauchi","181","1");
INSERT INTO profine_states VALUES("2943","Rivers","181","1");
INSERT INTO profine_states VALUES("2944","Abuja Capital Territory","181","1");
INSERT INTO profine_states VALUES("2946","Ogun","181","1");
INSERT INTO profine_states VALUES("2947","Ondo","181","1");
INSERT INTO profine_states VALUES("2949","Plateau","181","1");
INSERT INTO profine_states VALUES("2951","Akwa Ibom","181","1");
INSERT INTO profine_states VALUES("2952","Cross River","181","1");
INSERT INTO profine_states VALUES("2953","Kaduna","181","1");
INSERT INTO profine_states VALUES("2955","Anambra","181","1");
INSERT INTO profine_states VALUES("2956","Benue","181","1");
INSERT INTO profine_states VALUES("2957","Borno","181","1");
INSERT INTO profine_states VALUES("2959","Kano","181","1");
INSERT INTO profine_states VALUES("2960","Kwara","181","1");
INSERT INTO profine_states VALUES("2961","Niger","181","1");
INSERT INTO profine_states VALUES("2962","Oyo","181","1");
INSERT INTO profine_states VALUES("2963","Sokoto","181","1");
INSERT INTO profine_states VALUES("2964","Abia","181","1");
INSERT INTO profine_states VALUES("2965","Adamawa","181","1");
INSERT INTO profine_states VALUES("2966","Delta","181","1");
INSERT INTO profine_states VALUES("2967","Edo","181","1");
INSERT INTO profine_states VALUES("2968","Enugu","181","1");
INSERT INTO profine_states VALUES("2969","Jigawa","181","1");
INSERT INTO profine_states VALUES("2970","Kebbi","181","1");
INSERT INTO profine_states VALUES("2971","Kogi","181","1");
INSERT INTO profine_states VALUES("2972","Osun","181","1");
INSERT INTO profine_states VALUES("2973","Taraba","181","1");
INSERT INTO profine_states VALUES("2974","Yobe","181","1");
INSERT INTO profine_states VALUES("2975","Drenthe","175","1");
INSERT INTO profine_states VALUES("2976","Friesland","175","1");
INSERT INTO profine_states VALUES("2977","Gelderland","175","1");
INSERT INTO profine_states VALUES("2978","Groningen","175","1");
INSERT INTO profine_states VALUES("2979","Limburg","175","1");
INSERT INTO profine_states VALUES("2980","Noord-Brabant","175","1");
INSERT INTO profine_states VALUES("2981","Noord-Holland","175","1");
INSERT INTO profine_states VALUES("2982","Overijssel","175","1");
INSERT INTO profine_states VALUES("2983","Utrecht","175","1");
INSERT INTO profine_states VALUES("2984","Zeeland","175","1");
INSERT INTO profine_states VALUES("2985","Zuid-Holland","175","1");
INSERT INTO profine_states VALUES("2989","Flevoland","175","1");
INSERT INTO profine_states VALUES("2990","Akershus","185","1");
INSERT INTO profine_states VALUES("2991","Aust-Agder","185","1");
INSERT INTO profine_states VALUES("2992","Buskerud","185","1");
INSERT INTO profine_states VALUES("2993","Finnmark","185","1");
INSERT INTO profine_states VALUES("2994","Hedmark","185","1");
INSERT INTO profine_states VALUES("2995","Hordaland","185","1");
INSERT INTO profine_states VALUES("2996","More og Romsdal","185","1");
INSERT INTO profine_states VALUES("2997","Nordland","185","1");
INSERT INTO profine_states VALUES("2998","Nord-Trondelag","185","1");
INSERT INTO profine_states VALUES("2999","Oppland","185","1");
INSERT INTO profine_states VALUES("3000","Oslo","185","1");
INSERT INTO profine_states VALUES("3001","ÿstfold","185","1");
INSERT INTO profine_states VALUES("3002","Rogaland","185","1");
INSERT INTO profine_states VALUES("3003","Sogn og Fjordane","185","1");
INSERT INTO profine_states VALUES("3004","Sor-Trondelag","185","1");
INSERT INTO profine_states VALUES("3005","Telemark","185","1");
INSERT INTO profine_states VALUES("3006","Troms","185","1");
INSERT INTO profine_states VALUES("3007","Vest-Agder","185","1");
INSERT INTO profine_states VALUES("3008","Vestfold","185","1");
INSERT INTO profine_states VALUES("3009","Bagmati","174","1");
INSERT INTO profine_states VALUES("3010","Bheri","174","1");
INSERT INTO profine_states VALUES("3011","Dhawalagiri","174","1");
INSERT INTO profine_states VALUES("3012","Gandaki","174","1");
INSERT INTO profine_states VALUES("3013","Janakpur","174","1");
INSERT INTO profine_states VALUES("3014","Karnali","174","1");
INSERT INTO profine_states VALUES("3015","Kosi","174","1");
INSERT INTO profine_states VALUES("3016","Lumbini","174","1");
INSERT INTO profine_states VALUES("3017","Mahakali","174","1");
INSERT INTO profine_states VALUES("3018","Mechi","174","1");
INSERT INTO profine_states VALUES("3019","Narayani","174","1");
INSERT INTO profine_states VALUES("3020","Rapti","174","1");
INSERT INTO profine_states VALUES("3021","Sagarmatha","174","1");
INSERT INTO profine_states VALUES("3022","Seti","174","1");
INSERT INTO profine_states VALUES("3023","Aiwo","172","1");
INSERT INTO profine_states VALUES("3024","Anabar","172","1");
INSERT INTO profine_states VALUES("3025","Anetan","172","1");
INSERT INTO profine_states VALUES("3026","Anibare","172","1");
INSERT INTO profine_states VALUES("3027","Baiti","172","1");
INSERT INTO profine_states VALUES("3028","Boe","172","1");
INSERT INTO profine_states VALUES("3029","Buada","172","1");
INSERT INTO profine_states VALUES("3030","Denigomodu","172","1");
INSERT INTO profine_states VALUES("3031","Ewa","172","1");
INSERT INTO profine_states VALUES("3032","Ijuw","172","1");
INSERT INTO profine_states VALUES("3033","Meneng","172","1");
INSERT INTO profine_states VALUES("3034","Nibok","172","1");
INSERT INTO profine_states VALUES("3035","Uaboe","172","1");
INSERT INTO profine_states VALUES("3036","Yaren","172","1");
INSERT INTO profine_states VALUES("3037","Brokopondo","230","1");
INSERT INTO profine_states VALUES("3038","Commewijne","230","1");
INSERT INTO profine_states VALUES("3039","Coronie","230","1");
INSERT INTO profine_states VALUES("3040","Marowijne","230","1");
INSERT INTO profine_states VALUES("3041","Nickerie","230","1");
INSERT INTO profine_states VALUES("3042","Para","230","1");
INSERT INTO profine_states VALUES("3043","Paramaribo","230","1");
INSERT INTO profine_states VALUES("3044","Saramacca","230","1");
INSERT INTO profine_states VALUES("3045","Sipaliwini","230","1");
INSERT INTO profine_states VALUES("3046","Wanica","230","1");
INSERT INTO profine_states VALUES("3047","Boaco","179","1");
INSERT INTO profine_states VALUES("3048","Carazo","179","1");
INSERT INTO profine_states VALUES("3049","Chinandega","179","1");
INSERT INTO profine_states VALUES("3050","Chontales","179","1");
INSERT INTO profine_states VALUES("3051","Esteli","179","1");
INSERT INTO profine_states VALUES("3052","Granada","179","1");
INSERT INTO profine_states VALUES("3053","Jinotega","179","1");
INSERT INTO profine_states VALUES("3054","Leon","179","1");
INSERT INTO profine_states VALUES("3055","Madriz","179","1");
INSERT INTO profine_states VALUES("3056","Managua","179","1");
INSERT INTO profine_states VALUES("3057","Masaya","179","1");
INSERT INTO profine_states VALUES("3058","Matagalpa","179","1");
INSERT INTO profine_states VALUES("3059","Nueva Segovia","179","1");
INSERT INTO profine_states VALUES("3060","Rio San Juan","179","1");
INSERT INTO profine_states VALUES("3061","Rivas","179","1");
INSERT INTO profine_states VALUES("3063","Atlantico Norte","179","1");
INSERT INTO profine_states VALUES("3064","Atlantico Sur","179","1");
INSERT INTO profine_states VALUES("3089","Hawke\'s Bay","178","1");
INSERT INTO profine_states VALUES("3106","Marlborough","178","1");
INSERT INTO profine_states VALUES("3126","Southland","178","1");
INSERT INTO profine_states VALUES("3129","Taranaki","178","1");
INSERT INTO profine_states VALUES("3137","Waikato","178","1");
INSERT INTO profine_states VALUES("3170","Alto Parana","193","1");
INSERT INTO profine_states VALUES("3171","Amambay","193","1");
INSERT INTO profine_states VALUES("3172","Caaguazu","193","1");
INSERT INTO profine_states VALUES("3173","Caazapa","193","1");
INSERT INTO profine_states VALUES("3174","Central","193","1");
INSERT INTO profine_states VALUES("3175","Concepcion","193","1");
INSERT INTO profine_states VALUES("3176","Cordillera","193","1");
INSERT INTO profine_states VALUES("3177","Guaira","193","1");
INSERT INTO profine_states VALUES("3178","Itapua","193","1");
INSERT INTO profine_states VALUES("3179","Misiones","193","1");
INSERT INTO profine_states VALUES("3180","Neembucu","193","1");
INSERT INTO profine_states VALUES("3181","Paraguari","193","1");
INSERT INTO profine_states VALUES("3182","Presidente Hayes","193","1");
INSERT INTO profine_states VALUES("3183","San Pedro","193","1");
INSERT INTO profine_states VALUES("3184","Canindeyu","193","1");
INSERT INTO profine_states VALUES("3185","Asuncion","193","1");
INSERT INTO profine_states VALUES("3186","Alto Paraguay","193","1");
INSERT INTO profine_states VALUES("3187","Boqueron","193","1");
INSERT INTO profine_states VALUES("3188","Amazonas","194","1");
INSERT INTO profine_states VALUES("3189","Ancash","194","1");
INSERT INTO profine_states VALUES("3190","Apurimac","194","1");
INSERT INTO profine_states VALUES("3191","Arequipa","194","1");
INSERT INTO profine_states VALUES("3192","Ayacucho","194","1");
INSERT INTO profine_states VALUES("3193","Cajamarca","194","1");
INSERT INTO profine_states VALUES("3194","Callao","194","1");
INSERT INTO profine_states VALUES("3195","Cusco","194","1");
INSERT INTO profine_states VALUES("3196","Huancavelica","194","1");
INSERT INTO profine_states VALUES("3197","Huanuco","194","1");
INSERT INTO profine_states VALUES("3198","Ica","194","1");
INSERT INTO profine_states VALUES("3199","Junin","194","1");
INSERT INTO profine_states VALUES("3200","La Libertad","194","1");
INSERT INTO profine_states VALUES("3201","Lambayeque","194","1");
INSERT INTO profine_states VALUES("3202","Lima","194","1");
INSERT INTO profine_states VALUES("3203","Loreto","194","1");
INSERT INTO profine_states VALUES("3204","Madre de Dios","194","1");
INSERT INTO profine_states VALUES("3205","Moquegua","194","1");
INSERT INTO profine_states VALUES("3206","Pasco","194","1");
INSERT INTO profine_states VALUES("3207","Piura","194","1");
INSERT INTO profine_states VALUES("3208","Puno","194","1");
INSERT INTO profine_states VALUES("3209","San Martin","194","1");
INSERT INTO profine_states VALUES("3210","Tacna","194","1");
INSERT INTO profine_states VALUES("3211","Tumbes","194","1");
INSERT INTO profine_states VALUES("3212","Ucayali","194","1");
INSERT INTO profine_states VALUES("3216","Federally Administered Tribal Areas","187","1");
INSERT INTO profine_states VALUES("3217","Balochistan","187","1");
INSERT INTO profine_states VALUES("3218","North-West Frontier","187","1");
INSERT INTO profine_states VALUES("3219","Punjab","187","1");
INSERT INTO profine_states VALUES("3220","Sindh","187","1");
INSERT INTO profine_states VALUES("3221","Azad Kashmir","187","1");
INSERT INTO profine_states VALUES("3222","Northern Areas","187","1");
INSERT INTO profine_states VALUES("3223","Islamabad","187","1");
INSERT INTO profine_states VALUES("3274","Dolnoslaskie","197","1");
INSERT INTO profine_states VALUES("3275","Kujawsko-Pomorskie","197","1");
INSERT INTO profine_states VALUES("3276","Lodzkie","197","1");
INSERT INTO profine_states VALUES("3277","Lubelskie","197","1");
INSERT INTO profine_states VALUES("3278","Lubuskie","197","1");
INSERT INTO profine_states VALUES("3279","Malopolskie","197","1");
INSERT INTO profine_states VALUES("3280","Mazowieckie","197","1");
INSERT INTO profine_states VALUES("3281","Opolskie","197","1");
INSERT INTO profine_states VALUES("3282","Podkarpackie","197","1");
INSERT INTO profine_states VALUES("3283","Podlaskie","197","1");
INSERT INTO profine_states VALUES("3284","Pomorskie","197","1");
INSERT INTO profine_states VALUES("3285","Slaskie","197","1");
INSERT INTO profine_states VALUES("3286","Swietokrzyskie","197","1");
INSERT INTO profine_states VALUES("3287","Warminsko-Mazurskie","197","1");
INSERT INTO profine_states VALUES("3288","Wielkopolskie","197","1");
INSERT INTO profine_states VALUES("3289","Zachodniopomorskie","197","1");
INSERT INTO profine_states VALUES("3290","Bocas del Toro","190","1");
INSERT INTO profine_states VALUES("3291","Chiriqui","190","1");
INSERT INTO profine_states VALUES("3292","Cocle","190","1");
INSERT INTO profine_states VALUES("3293","Colon","190","1");
INSERT INTO profine_states VALUES("3294","Darien","190","1");
INSERT INTO profine_states VALUES("3295","Herrera","190","1");
INSERT INTO profine_states VALUES("3296","Los Santos","190","1");
INSERT INTO profine_states VALUES("3297","Panama","190","1");
INSERT INTO profine_states VALUES("3298","San Blas","190","1");
INSERT INTO profine_states VALUES("3299","Veraguas","190","1");
INSERT INTO profine_states VALUES("3300","Aveiro","198","1");
INSERT INTO profine_states VALUES("3301","Beja","198","1");
INSERT INTO profine_states VALUES("3302","Braga","198","1");
INSERT INTO profine_states VALUES("3303","Braganca","198","1");
INSERT INTO profine_states VALUES("3304","Castelo Branco","198","1");
INSERT INTO profine_states VALUES("3305","Coimbra","198","1");
INSERT INTO profine_states VALUES("3306","Evora","198","1");
INSERT INTO profine_states VALUES("3307","Faro","198","1");
INSERT INTO profine_states VALUES("3308","Madeira","198","1");
INSERT INTO profine_states VALUES("3309","Guarda","198","1");
INSERT INTO profine_states VALUES("3310","Leiria","198","1");
INSERT INTO profine_states VALUES("3311","Lisboa","198","1");
INSERT INTO profine_states VALUES("3312","Portalegre","198","1");
INSERT INTO profine_states VALUES("3313","Porto","198","1");
INSERT INTO profine_states VALUES("3314","Santarem","198","1");
INSERT INTO profine_states VALUES("3315","Setubal","198","1");
INSERT INTO profine_states VALUES("3316","Viana do Castelo","198","1");
INSERT INTO profine_states VALUES("3317","Vila Real","198","1");
INSERT INTO profine_states VALUES("3318","Viseu","198","1");
INSERT INTO profine_states VALUES("3319","Azores","198","1");
INSERT INTO profine_states VALUES("3320","Central","191","1");
INSERT INTO profine_states VALUES("3321","Gulf","191","1");
INSERT INTO profine_states VALUES("3322","Milne Bay","191","1");
INSERT INTO profine_states VALUES("3323","Northern","191","1");
INSERT INTO profine_states VALUES("3324","Southern Highlands","191","1");
INSERT INTO profine_states VALUES("3325","Western","191","1");
INSERT INTO profine_states VALUES("3326","Bougainville","191","1");
INSERT INTO profine_states VALUES("3327","Chimbu","191","1");
INSERT INTO profine_states VALUES("3328","Eastern Highlands","191","1");
INSERT INTO profine_states VALUES("3329","East New Britain","191","1");
INSERT INTO profine_states VALUES("3330","East Sepik","191","1");
INSERT INTO profine_states VALUES("3331","Madang","191","1");
INSERT INTO profine_states VALUES("3332","Manus","191","1");
INSERT INTO profine_states VALUES("3333","Morobe","191","1");
INSERT INTO profine_states VALUES("3334","New Ireland","191","1");
INSERT INTO profine_states VALUES("3335","Western Highlands","191","1");
INSERT INTO profine_states VALUES("3336","West New Britain","191","1");
INSERT INTO profine_states VALUES("3337","Sandaun","191","1");
INSERT INTO profine_states VALUES("3338","Enga","191","1");
INSERT INTO profine_states VALUES("3339","National Capital","191","1");
INSERT INTO profine_states VALUES("3340","Bafata","103","1");
INSERT INTO profine_states VALUES("3341","Quinara","103","1");
INSERT INTO profine_states VALUES("3342","Oio","103","1");
INSERT INTO profine_states VALUES("3343","Bolama","103","1");
INSERT INTO profine_states VALUES("3344","Cacheu","103","1");
INSERT INTO profine_states VALUES("3345","Tombali","103","1");
INSERT INTO profine_states VALUES("3346","Gabu","103","1");
INSERT INTO profine_states VALUES("3347","Bissau","103","1");
INSERT INTO profine_states VALUES("3348","Biombo","103","1");
INSERT INTO profine_states VALUES("3349","Ad Dawhah","200","1");
INSERT INTO profine_states VALUES("3350","Al Ghuwayriyah","200","1");
INSERT INTO profine_states VALUES("3351","Al Jumayliyah","200","1");
INSERT INTO profine_states VALUES("3352","Al Khawr","200","1");
INSERT INTO profine_states VALUES("3353","Al Wakrah","200","1");
INSERT INTO profine_states VALUES("3354","Ar Rayyan","200","1");
INSERT INTO profine_states VALUES("3355","Jarayan al Batinah","200","1");
INSERT INTO profine_states VALUES("3356","Madinat ash Shamal","200","1");
INSERT INTO profine_states VALUES("3357","Umm Salal","200","1");
INSERT INTO profine_states VALUES("3358","Alba","202","1");
INSERT INTO profine_states VALUES("3359","Arad","202","1");
INSERT INTO profine_states VALUES("3360","Arges","202","1");
INSERT INTO profine_states VALUES("3361","Bacau","202","1");
INSERT INTO profine_states VALUES("3362","Bihor","202","1");
INSERT INTO profine_states VALUES("3363","Bistrita-Nasaud","202","1");
INSERT INTO profine_states VALUES("3364","Botosani","202","1");
INSERT INTO profine_states VALUES("3365","Braila","202","1");
INSERT INTO profine_states VALUES("3366","Brasov","202","1");
INSERT INTO profine_states VALUES("3367","Bucuresti","202","1");
INSERT INTO profine_states VALUES("3368","Buzau","202","1");
INSERT INTO profine_states VALUES("3369","Caras-Severin","202","1");
INSERT INTO profine_states VALUES("3370","Cluj","202","1");
INSERT INTO profine_states VALUES("3371","Constanta","202","1");
INSERT INTO profine_states VALUES("3372","Covasna","202","1");
INSERT INTO profine_states VALUES("3373","Dambovita","202","1");
INSERT INTO profine_states VALUES("3374","Dolj","202","1");
INSERT INTO profine_states VALUES("3375","Galati","202","1");
INSERT INTO profine_states VALUES("3376","Gorj","202","1");
INSERT INTO profine_states VALUES("3377","Harghita","202","1");
INSERT INTO profine_states VALUES("3378","Hunedoara","202","1");
INSERT INTO profine_states VALUES("3379","Ialomita","202","1");
INSERT INTO profine_states VALUES("3380","Iasi","202","1");
INSERT INTO profine_states VALUES("3381","Maramures","202","1");
INSERT INTO profine_states VALUES("3382","Mehedinti","202","1");
INSERT INTO profine_states VALUES("3383","Mures","202","1");
INSERT INTO profine_states VALUES("3384","Neamt","202","1");
INSERT INTO profine_states VALUES("3385","Olt","202","1");
INSERT INTO profine_states VALUES("3386","Prahova","202","1");
INSERT INTO profine_states VALUES("3387","Salaj","202","1");
INSERT INTO profine_states VALUES("3388","Satu Mare","202","1");
INSERT INTO profine_states VALUES("3389","Sibiu","202","1");
INSERT INTO profine_states VALUES("3390","Suceava","202","1");
INSERT INTO profine_states VALUES("3391","Teleorman","202","1");
INSERT INTO profine_states VALUES("3392","Timis","202","1");
INSERT INTO profine_states VALUES("3393","Tulcea","202","1");
INSERT INTO profine_states VALUES("3394","Vaslui","202","1");
INSERT INTO profine_states VALUES("3395","Valcea","202","1");
INSERT INTO profine_states VALUES("3396","Vrancea","202","1");
INSERT INTO profine_states VALUES("3397","Calarasi","202","1");
INSERT INTO profine_states VALUES("3398","Giurgiu","202","1");
INSERT INTO profine_states VALUES("3399","Abra","195","1");
INSERT INTO profine_states VALUES("3400","Agusan del Norte","195","1");
INSERT INTO profine_states VALUES("3401","Agusan del Sur","195","1");
INSERT INTO profine_states VALUES("3402","Aklan","195","1");
INSERT INTO profine_states VALUES("3403","Albay","195","1");
INSERT INTO profine_states VALUES("3404","Antique","195","1");
INSERT INTO profine_states VALUES("3405","Bataan","195","1");
INSERT INTO profine_states VALUES("3406","Batanes","195","1");
INSERT INTO profine_states VALUES("3407","Batangas","195","1");
INSERT INTO profine_states VALUES("3408","Benguet","195","1");
INSERT INTO profine_states VALUES("3409","Bohol","195","1");
INSERT INTO profine_states VALUES("3410","Bukidnon","195","1");
INSERT INTO profine_states VALUES("3411","Bulacan","195","1");
INSERT INTO profine_states VALUES("3412","Cagayan","195","1");
INSERT INTO profine_states VALUES("3413","Camarines Norte","195","1");
INSERT INTO profine_states VALUES("3414","Camarines Sur","195","1");
INSERT INTO profine_states VALUES("3415","Camiguin","195","1");
INSERT INTO profine_states VALUES("3416","Capiz","195","1");
INSERT INTO profine_states VALUES("3417","Catanduanes","195","1");
INSERT INTO profine_states VALUES("3418","Cavite","195","1");
INSERT INTO profine_states VALUES("3419","Cebu","195","1");
INSERT INTO profine_states VALUES("3420","Basilan","195","1");
INSERT INTO profine_states VALUES("3421","Eastern Samar","195","1");
INSERT INTO profine_states VALUES("3422","Davao del Norte","195","1");
INSERT INTO profine_states VALUES("3423","Davao del Sur","195","1");
INSERT INTO profine_states VALUES("3424","Davao Oriental","195","1");
INSERT INTO profine_states VALUES("3425","Ifugao","195","1");
INSERT INTO profine_states VALUES("3426","Ilocos Norte","195","1");
INSERT INTO profine_states VALUES("3427","Ilocos Sur","195","1");
INSERT INTO profine_states VALUES("3428","Iloilo","195","1");
INSERT INTO profine_states VALUES("3429","Isabela","195","1");
INSERT INTO profine_states VALUES("3430","Kalinga-Apayao","195","1");
INSERT INTO profine_states VALUES("3431","Laguna","195","1");
INSERT INTO profine_states VALUES("3432","Lanao del Norte","195","1");
INSERT INTO profine_states VALUES("3433","Lanao del Sur","195","1");
INSERT INTO profine_states VALUES("3434","La Union","195","1");
INSERT INTO profine_states VALUES("3435","Leyte","195","1");
INSERT INTO profine_states VALUES("3436","Marinduque","195","1");
INSERT INTO profine_states VALUES("3437","Masbate","195","1");
INSERT INTO profine_states VALUES("3438","Mindoro Occidental","195","1");
INSERT INTO profine_states VALUES("3439","Mindoro Oriental","195","1");
INSERT INTO profine_states VALUES("3440","Misamis Occidental","195","1");
INSERT INTO profine_states VALUES("3441","Misamis Oriental","195","1");
INSERT INTO profine_states VALUES("3442","Mountain","195","1");
INSERT INTO profine_states VALUES("3443","RP45","195","1");
INSERT INTO profine_states VALUES("3444","Negros Oriental","195","1");
INSERT INTO profine_states VALUES("3445","Nueva Ecija","195","1");
INSERT INTO profine_states VALUES("3446","Nueva Vizcaya","195","1");
INSERT INTO profine_states VALUES("3447","Palawan","195","1");
INSERT INTO profine_states VALUES("3448","Pampanga","195","1");
INSERT INTO profine_states VALUES("3449","Pangasinan","195","1");
INSERT INTO profine_states VALUES("3450","Rizal","195","1");
INSERT INTO profine_states VALUES("3451","Romblon","195","1");
INSERT INTO profine_states VALUES("3452","Samar","195","1");
INSERT INTO profine_states VALUES("3453","Maguindanao","195","1");
INSERT INTO profine_states VALUES("3454","North Cotabato","195","1");
INSERT INTO profine_states VALUES("3455","Sorsogon","195","1");
INSERT INTO profine_states VALUES("3456","Southern Leyte","195","1");
INSERT INTO profine_states VALUES("3457","Sulu","195","1");
INSERT INTO profine_states VALUES("3458","Surigao del Norte","195","1");
INSERT INTO profine_states VALUES("3459","Surigao del Sur","195","1");
INSERT INTO profine_states VALUES("3460","Tarlac","195","1");
INSERT INTO profine_states VALUES("3461","Zambales","195","1");
INSERT INTO profine_states VALUES("3462","Zamboanga del Norte","195","1");
INSERT INTO profine_states VALUES("3463","Zamboanga del Sur","195","1");
INSERT INTO profine_states VALUES("3464","Northern Samar","195","1");
INSERT INTO profine_states VALUES("3465","Quirino","195","1");
INSERT INTO profine_states VALUES("3466","Siquijor","195","1");
INSERT INTO profine_states VALUES("3467","South Cotabato","195","1");
INSERT INTO profine_states VALUES("3468","Sultan Kudarat","195","1");
INSERT INTO profine_states VALUES("3469","Tawi-Tawi","195","1");
INSERT INTO profine_states VALUES("3470","Angeles","195","1");
INSERT INTO profine_states VALUES("3471","Bacolod","195","1");
INSERT INTO profine_states VALUES("3472","Bago","195","1");
INSERT INTO profine_states VALUES("3473","Baguio","195","1");
INSERT INTO profine_states VALUES("3474","Bais","195","1");
INSERT INTO profine_states VALUES("3475","Basilan City","195","1");
INSERT INTO profine_states VALUES("3476","Batangas City","195","1");
INSERT INTO profine_states VALUES("3477","Butuan","195","1");
INSERT INTO profine_states VALUES("3478","Cabanatuan","195","1");
INSERT INTO profine_states VALUES("3479","Cadiz","195","1");
INSERT INTO profine_states VALUES("3480","Cagayan de Oro","195","1");
INSERT INTO profine_states VALUES("3481","Calbayog","195","1");
INSERT INTO profine_states VALUES("3482","Caloocan","195","1");
INSERT INTO profine_states VALUES("3483","Canlaon","195","1");
INSERT INTO profine_states VALUES("3484","Cavite City","195","1");
INSERT INTO profine_states VALUES("3485","Cebu City","195","1");
INSERT INTO profine_states VALUES("3486","Cotabato","195","1");
INSERT INTO profine_states VALUES("3487","Dagupan","195","1");
INSERT INTO profine_states VALUES("3488","Danao","195","1");
INSERT INTO profine_states VALUES("3489","Dapitane","195","1");
INSERT INTO profine_states VALUES("3490","Davao City","195","1");
INSERT INTO profine_states VALUES("3491","Dipolog","195","1");
INSERT INTO profine_states VALUES("3492","Dumaguete","195","1");
INSERT INTO profine_states VALUES("3493","General Santos","195","1");
INSERT INTO profine_states VALUES("3494","Gingoog","195","1");
INSERT INTO profine_states VALUES("3495","Iligan","195","1");
INSERT INTO profine_states VALUES("3496","Iloilo City","195","1");
INSERT INTO profine_states VALUES("3497","Iriga","195","1");
INSERT INTO profine_states VALUES("3498","La Carlota","195","1");
INSERT INTO profine_states VALUES("3499","Laoag","195","1");
INSERT INTO profine_states VALUES("3500","LapuLapu","195","1");
INSERT INTO profine_states VALUES("3501","Legaspi","195","1");
INSERT INTO profine_states VALUES("3502","Lipa","195","1");
INSERT INTO profine_states VALUES("3503","Lucena","195","1");
INSERT INTO profine_states VALUES("3504","Mandaue","195","1");
INSERT INTO profine_states VALUES("3505","Manila","195","1");
INSERT INTO profine_states VALUES("3506","Marawi","195","1");
INSERT INTO profine_states VALUES("3507","Naga","195","1");
INSERT INTO profine_states VALUES("3508","Olongapo","195","1");
INSERT INTO profine_states VALUES("3509","Ormoc","195","1");
INSERT INTO profine_states VALUES("3510","Oroquieta","195","1");
INSERT INTO profine_states VALUES("3511","Ozamis","195","1");
INSERT INTO profine_states VALUES("3512","Pagadiane","195","1");
INSERT INTO profine_states VALUES("3513","Palayan","195","1");
INSERT INTO profine_states VALUES("3514","Pasay","195","1");
INSERT INTO profine_states VALUES("3515","Puerto Princesa","195","1");
INSERT INTO profine_states VALUES("3516","Quezon City","195","1");
INSERT INTO profine_states VALUES("3517","Roxas","195","1");
INSERT INTO profine_states VALUES("3518","Negros Occidental San Carlos","195","1");
INSERT INTO profine_states VALUES("3519","Pangasinan San Carlos","195","1");
INSERT INTO profine_states VALUES("3520","San Jose","195","1");
INSERT INTO profine_states VALUES("3521","San Pablo","195","1");
INSERT INTO profine_states VALUES("3522","Silay","195","1");
INSERT INTO profine_states VALUES("3523","Surigao","195","1");
INSERT INTO profine_states VALUES("3524","Tacloban","195","1");
INSERT INTO profine_states VALUES("3525","Tagaytay","195","1");
INSERT INTO profine_states VALUES("3526","Tagbilaran","195","1");
INSERT INTO profine_states VALUES("3527","Tangub","195","1");
INSERT INTO profine_states VALUES("3528","Toledo","195","1");
INSERT INTO profine_states VALUES("3529","Trece Martires","195","1");
INSERT INTO profine_states VALUES("3530","Zamboanga","195","1");
INSERT INTO profine_states VALUES("3531","Aurora","195","1");
INSERT INTO profine_states VALUES("3532","Quezon","195","1");
INSERT INTO profine_states VALUES("3533","Negros Occidental","195","1");
INSERT INTO profine_states VALUES("3534","Adygeya","203","1");
INSERT INTO profine_states VALUES("3535","Aginskiy Buryatskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3536","Altay","203","1");
INSERT INTO profine_states VALUES("3537","Altayskiy Kray","203","1");
INSERT INTO profine_states VALUES("3538","Amurskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3539","Arkhangel\'skaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3540","Astrakhanskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3541","Bashkortostan","203","1");
INSERT INTO profine_states VALUES("3542","Belgorodskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3543","Bryanskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3544","Buryatiya","203","1");
INSERT INTO profine_states VALUES("3545","Chechnya","203","1");
INSERT INTO profine_states VALUES("3546","Chelyabinskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3547","Chitinskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3548","Chukotskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3549","Chuvashiya","203","1");
INSERT INTO profine_states VALUES("3550","Evenkiyskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3551","Ingushetiya","203","1");
INSERT INTO profine_states VALUES("3552","Irkutskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3553","Ivanovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3554","Kabardino-Balkariya","203","1");
INSERT INTO profine_states VALUES("3555","Kaliningradskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3556","Kalmykiya","203","1");
INSERT INTO profine_states VALUES("3557","Kaluzhskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3558","Kamchatskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3559","Karachayevo-Cherkesiya","203","1");
INSERT INTO profine_states VALUES("3560","Kareliya","203","1");
INSERT INTO profine_states VALUES("3561","Kemerovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3562","Khabarovskiy Kray","203","1");
INSERT INTO profine_states VALUES("3563","Khakasiya","203","1");
INSERT INTO profine_states VALUES("3564","Khanty-Mansiyskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3565","Kirovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3566","Komi-Permyatskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3567","Koryakskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3568","Kostromskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3569","Krasnodarskiy Kray","203","1");
INSERT INTO profine_states VALUES("3570","Krasnoyarskiy Kray","203","1");
INSERT INTO profine_states VALUES("3571","Kurganskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3572","Kurskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3573","Leningradskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3574","Lipetskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3575","Magadanskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3576","Mordoviya","203","1");
INSERT INTO profine_states VALUES("3577","Moskovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3578","Moskva","203","1");
INSERT INTO profine_states VALUES("3579","Murmanskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3580","Nenetskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3581","Nizhegorodskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3582","Novgorodskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3583","Novosibirskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3584","Omskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3585","Orenburgskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3586","Orlovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3587","Penzenskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3588","Permskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3589","Primorskiy Kray","203","1");
INSERT INTO profine_states VALUES("3590","Pskovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3591","Rostovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3592","Ryazanskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3593","Sakha (Yakutiya)","203","1");
INSERT INTO profine_states VALUES("3594","Sakhalinskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3595","Samarskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3596","Sankt-Peterburg","203","1");
INSERT INTO profine_states VALUES("3597","Saratovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3598","Severnaya Osetiya-Alaniya","203","1");
INSERT INTO profine_states VALUES("3599","Smolenskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3600","Stavropol\'skiy Kray","203","1");
INSERT INTO profine_states VALUES("3601","Sverdlovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3602","Tambovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3603","Taymyrskiy Dolgano-Nenetskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3604","Tomskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3605","Tul\'skaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3606","Tverskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3607","Tyumenskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3608","Udmurtiya","203","1");
INSERT INTO profine_states VALUES("3609","Ul\'yanovskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3610","Ust\'-Ordynskiy Buryatskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3611","Vladimirskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3612","Volgogradskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3613","Vologodskaya oblast\'","203","1");
INSERT INTO profine_states VALUES("3614","Voronezhskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3615","Yamalo-Nenetskiy Avtonomnyy Okrug","203","1");
INSERT INTO profine_states VALUES("3616","Yaroslavskaya Oblast\'","203","1");
INSERT INTO profine_states VALUES("3617","Yevreyskaya Avtonomnyy Oblast\'","203","1");
INSERT INTO profine_states VALUES("3619","Butare","204","1");
INSERT INTO profine_states VALUES("3620","Byumba","204","1");
INSERT INTO profine_states VALUES("3621","Cyangugu","204","1");
INSERT INTO profine_states VALUES("3622","Gikongoro","204","1");
INSERT INTO profine_states VALUES("3623","Gisenyi","204","1");
INSERT INTO profine_states VALUES("3624","Gitarama","204","1");
INSERT INTO profine_states VALUES("3625","Kibungo","204","1");
INSERT INTO profine_states VALUES("3626","Kibuye","204","1");
INSERT INTO profine_states VALUES("3627","Kigali-Rural","204","1");
INSERT INTO profine_states VALUES("3628","Ruhengeri","204","1");
INSERT INTO profine_states VALUES("3629","Al Bahah","213","1");
INSERT INTO profine_states VALUES("3630","Al Madinah","213","1");
INSERT INTO profine_states VALUES("3631","Ash Sharqiyah","213","1");
INSERT INTO profine_states VALUES("3632","Al Qasim","213","1");
INSERT INTO profine_states VALUES("3633","Ar Riyad","213","1");
INSERT INTO profine_states VALUES("3634","\'Asir","213","1");
INSERT INTO profine_states VALUES("3635","Ha\'il","213","1");
INSERT INTO profine_states VALUES("3636","Makkah","213","1");
INSERT INTO profine_states VALUES("3637","Al Hudud ash Shamaliyah","213","1");
INSERT INTO profine_states VALUES("3638","Najran","213","1");
INSERT INTO profine_states VALUES("3639","Jizan","213","1");
INSERT INTO profine_states VALUES("3640","Tabuk","213","1");
INSERT INTO profine_states VALUES("3641","Al Jawf","213","1");
INSERT INTO profine_states VALUES("3643","Christ Church Nicholatown","206","1");
INSERT INTO profine_states VALUES("3644","Saint Anne Sandy Point","206","1");
INSERT INTO profine_states VALUES("3645","Saint George Basseterre","206","1");
INSERT INTO profine_states VALUES("3646","Saint George Gingerland","206","1");
INSERT INTO profine_states VALUES("3647","Saint James Windward","206","1");
INSERT INTO profine_states VALUES("3648","Saint John Capesterre","206","1");
INSERT INTO profine_states VALUES("3649","Saint John Figtree","206","1");
INSERT INTO profine_states VALUES("3650","Saint Mary Cayon","206","1");
INSERT INTO profine_states VALUES("3651","Saint Paul Capesterre","206","1");
INSERT INTO profine_states VALUES("3652","Saint Paul Charlestown","206","1");
INSERT INTO profine_states VALUES("3653","Saint Peter Basseterre","206","1");
INSERT INTO profine_states VALUES("3654","Saint Thomas Lowland","206","1");
INSERT INTO profine_states VALUES("3655","Saint Thomas Middle Island","206","1");
INSERT INTO profine_states VALUES("3656","Trinity Palmetto Point","206","1");
INSERT INTO profine_states VALUES("3657","Anse aux Pins","217","1");
INSERT INTO profine_states VALUES("3658","Anse Boileau","217","1");
INSERT INTO profine_states VALUES("3659","Anse Etoile","217","1");
INSERT INTO profine_states VALUES("3660","Anse Louis","217","1");
INSERT INTO profine_states VALUES("3661","Anse Royale","217","1");
INSERT INTO profine_states VALUES("3662","Baie Lazare","217","1");
INSERT INTO profine_states VALUES("3663","Baie Sainte Anne","217","1");
INSERT INTO profine_states VALUES("3664","Beau Vallon","217","1");
INSERT INTO profine_states VALUES("3665","Bel Air","217","1");
INSERT INTO profine_states VALUES("3666","Bel Ombre","217","1");
INSERT INTO profine_states VALUES("3667","Cascade","217","1");
INSERT INTO profine_states VALUES("3668","Glacis","217","1");
INSERT INTO profine_states VALUES("3669","Grand\' Anse","217","1");
INSERT INTO profine_states VALUES("3670","La Digue","217","1");
INSERT INTO profine_states VALUES("3671","La Riviere Anglaise","217","1");
INSERT INTO profine_states VALUES("3672","Mont Buxton","217","1");
INSERT INTO profine_states VALUES("3673","Mont Fleuri","217","1");
INSERT INTO profine_states VALUES("3674","Plaisance","217","1");
INSERT INTO profine_states VALUES("3675","Pointe La Rue","217","1");
INSERT INTO profine_states VALUES("3676","Port Glaud","217","1");
INSERT INTO profine_states VALUES("3677","Saint Louis","217","1");
INSERT INTO profine_states VALUES("3678","Takamaka","217","1");
INSERT INTO profine_states VALUES("3680","KwaZulu-Natal","224","1");
INSERT INTO profine_states VALUES("3681","Free State","224","1");
INSERT INTO profine_states VALUES("3683","Eastern Cape","224","1");
INSERT INTO profine_states VALUES("3684","Gauteng","224","1");
INSERT INTO profine_states VALUES("3685","Mpumalanga","224","1");
INSERT INTO profine_states VALUES("3686","Northern Cape","224","1");
INSERT INTO profine_states VALUES("3687","Northern Province","224","1");
INSERT INTO profine_states VALUES("3688","North-West","224","1");
INSERT INTO profine_states VALUES("3689","Western Cape","224","1");
INSERT INTO profine_states VALUES("3690","Dakar","214","1");
INSERT INTO profine_states VALUES("3691","Diourbel","214","1");
INSERT INTO profine_states VALUES("3692","Saint-Louis","214","1");
INSERT INTO profine_states VALUES("3693","Tambacounda","214","1");
INSERT INTO profine_states VALUES("3694","Thies","214","1");
INSERT INTO profine_states VALUES("3695","Louga","214","1");
INSERT INTO profine_states VALUES("3696","Fatick","214","1");
INSERT INTO profine_states VALUES("3697","Kaolack","214","1");
INSERT INTO profine_states VALUES("3698","Kolda","214","1");
INSERT INTO profine_states VALUES("3699","Ziguinchor","214","1");
INSERT INTO profine_states VALUES("3700","Ascension","205","1");
INSERT INTO profine_states VALUES("3701","Saint Helena","205","1");
INSERT INTO profine_states VALUES("3702","Tristan da Cunha","205","1");
INSERT INTO profine_states VALUES("3703","Ajdovscina","221","1");
INSERT INTO profine_states VALUES("3704","Beltinci","221","1");
INSERT INTO profine_states VALUES("3705","Bled","221","1");
INSERT INTO profine_states VALUES("3706","Bohinj","221","1");
INSERT INTO profine_states VALUES("3707","Borovnica","221","1");
INSERT INTO profine_states VALUES("3708","Bovec","221","1");
INSERT INTO profine_states VALUES("3709","Brda","221","1");
INSERT INTO profine_states VALUES("3710","Brezice","221","1");
INSERT INTO profine_states VALUES("3711","Brezovica","221","1");
INSERT INTO profine_states VALUES("3712","Cankova-Tisina","221","1");
INSERT INTO profine_states VALUES("3713","Celje","221","1");
INSERT INTO profine_states VALUES("3714","Cerklje Na Gorenjskem","221","1");
INSERT INTO profine_states VALUES("3715","Cerknica","221","1");
INSERT INTO profine_states VALUES("3716","Cerkno","221","1");
INSERT INTO profine_states VALUES("3717","Crensovci","221","1");
INSERT INTO profine_states VALUES("3718","Crna na Koroskem","221","1");
INSERT INTO profine_states VALUES("3719","Crnomelj","221","1");
INSERT INTO profine_states VALUES("3720","Destrnik-Trnovska Vas","221","1");
INSERT INTO profine_states VALUES("3721","Divaca","221","1");
INSERT INTO profine_states VALUES("3722","Dobrepolje","221","1");
INSERT INTO profine_states VALUES("3723","Dobrova-Horjul-Polhov Gradec","221","1");
INSERT INTO profine_states VALUES("3724","Dol pri Ljubljani","221","1");
INSERT INTO profine_states VALUES("3725","Domzale","221","1");
INSERT INTO profine_states VALUES("3726","Dornava","221","1");
INSERT INTO profine_states VALUES("3727","Dravograd","221","1");
INSERT INTO profine_states VALUES("3728","Duplek","221","1");
INSERT INTO profine_states VALUES("3729","Gorenja Vas-Poljane","221","1");
INSERT INTO profine_states VALUES("3730","Gorisnica","221","1");
INSERT INTO profine_states VALUES("3731","Gornja Radgona","221","1");
INSERT INTO profine_states VALUES("3732","Gornji Grad","221","1");
INSERT INTO profine_states VALUES("3733","Gornji Petrovci","221","1");
INSERT INTO profine_states VALUES("3734","Grosuplje","221","1");
INSERT INTO profine_states VALUES("3735","HodosSalovci","221","1");
INSERT INTO profine_states VALUES("3736","Hrastnik","221","1");
INSERT INTO profine_states VALUES("3737","Hrpelje-Kozina","221","1");
INSERT INTO profine_states VALUES("3738","Idrija","221","1");
INSERT INTO profine_states VALUES("3739","Ig","221","1");
INSERT INTO profine_states VALUES("3740","Ilirska Bistrica","221","1");
INSERT INTO profine_states VALUES("3741","Ivancna Gorica","221","1");
INSERT INTO profine_states VALUES("3742","Izola","221","1");
INSERT INTO profine_states VALUES("3743","Jesenice","221","1");
INSERT INTO profine_states VALUES("3744","Jursinci","221","1");
INSERT INTO profine_states VALUES("3745","Kamnik","221","1");
INSERT INTO profine_states VALUES("3746","Kanal","221","1");
INSERT INTO profine_states VALUES("3747","Kidricevo","221","1");
INSERT INTO profine_states VALUES("3748","Kobarid","221","1");
INSERT INTO profine_states VALUES("3749","Kobilje","221","1");
INSERT INTO profine_states VALUES("3750","Kocevje","221","1");
INSERT INTO profine_states VALUES("3751","Komen","221","1");
INSERT INTO profine_states VALUES("3752","Koper","221","1");
INSERT INTO profine_states VALUES("3753","Kozje","221","1");
INSERT INTO profine_states VALUES("3754","Kranj","221","1");
INSERT INTO profine_states VALUES("3755","Kranjska Gora","221","1");
INSERT INTO profine_states VALUES("3756","Krsko","221","1");
INSERT INTO profine_states VALUES("3757","Kungota","221","1");
INSERT INTO profine_states VALUES("3758","Kuzma","221","1");
INSERT INTO profine_states VALUES("3759","Lasko","221","1");
INSERT INTO profine_states VALUES("3760","Lenart","221","1");
INSERT INTO profine_states VALUES("3761","Lendava","221","1");
INSERT INTO profine_states VALUES("3762","Litija","221","1");
INSERT INTO profine_states VALUES("3763","Ljubljana","221","1");
INSERT INTO profine_states VALUES("3764","Ljubno","221","1");
INSERT INTO profine_states VALUES("3765","Ljutomer","221","1");
INSERT INTO profine_states VALUES("3766","Logatec","221","1");
INSERT INTO profine_states VALUES("3767","Loska Dolina","221","1");
INSERT INTO profine_states VALUES("3768","Loski Potok","221","1");
INSERT INTO profine_states VALUES("3769","Luce","221","1");
INSERT INTO profine_states VALUES("3770","Lukovica","221","1");
INSERT INTO profine_states VALUES("3771","Majsperk","221","1");
INSERT INTO profine_states VALUES("3772","Maribor","221","1");
INSERT INTO profine_states VALUES("3773","Medvode","221","1");
INSERT INTO profine_states VALUES("3774","Menges","221","1");
INSERT INTO profine_states VALUES("3775","Metlika","221","1");
INSERT INTO profine_states VALUES("3776","Mezica","221","1");
INSERT INTO profine_states VALUES("3777","Miren-Kostanjevica","221","1");
INSERT INTO profine_states VALUES("3778","Mislinja","221","1");
INSERT INTO profine_states VALUES("3779","Moravce","221","1");
INSERT INTO profine_states VALUES("3780","Moravske Toplice","221","1");
INSERT INTO profine_states VALUES("3781","Mozirje","221","1");
INSERT INTO profine_states VALUES("3782","Murska Sobota","221","1");
INSERT INTO profine_states VALUES("3783","Muta","221","1");
INSERT INTO profine_states VALUES("3784","Naklo","221","1");
INSERT INTO profine_states VALUES("3785","Nazarje","221","1");
INSERT INTO profine_states VALUES("3786","Nova Gorica","221","1");
INSERT INTO profine_states VALUES("3787","Novo Mesto","221","1");
INSERT INTO profine_states VALUES("3788","Odranci","221","1");
INSERT INTO profine_states VALUES("3789","Ormoz","221","1");
INSERT INTO profine_states VALUES("3790","Osilnica","221","1");
INSERT INTO profine_states VALUES("3791","Pesnica","221","1");
INSERT INTO profine_states VALUES("3792","Piran","221","1");
INSERT INTO profine_states VALUES("3793","Pivka","221","1");
INSERT INTO profine_states VALUES("3794","Podcetrtek","221","1");
INSERT INTO profine_states VALUES("3795","Podvelka-Ribnica","221","1");
INSERT INTO profine_states VALUES("3796","Postojna","221","1");
INSERT INTO profine_states VALUES("3797","Preddvor","221","1");
INSERT INTO profine_states VALUES("3798","Ptuj","221","1");
INSERT INTO profine_states VALUES("3799","Puconci","221","1");
INSERT INTO profine_states VALUES("3800","Race-Fram","221","1");
INSERT INTO profine_states VALUES("3801","Radece","221","1");
INSERT INTO profine_states VALUES("3802","Radenci","221","1");
INSERT INTO profine_states VALUES("3803","Radlje ob Dravi","221","1");
INSERT INTO profine_states VALUES("3804","Radovljica","221","1");
INSERT INTO profine_states VALUES("3805","Ravne-Prevalje","221","1");
INSERT INTO profine_states VALUES("3806","Ribnica","221","1");
INSERT INTO profine_states VALUES("3807","Rogasevci","221","1");
INSERT INTO profine_states VALUES("3808","Rogaska Slatina","221","1");
INSERT INTO profine_states VALUES("3809","Rogatec","221","1");
INSERT INTO profine_states VALUES("3810","Ruse","221","1");
INSERT INTO profine_states VALUES("3811","Semic","221","1");
INSERT INTO profine_states VALUES("3812","Sencur","221","1");
INSERT INTO profine_states VALUES("3813","Sentilj","221","1");
INSERT INTO profine_states VALUES("3814","Sentjernej","221","1");
INSERT INTO profine_states VALUES("3815","Sentjur pri Celju","221","1");
INSERT INTO profine_states VALUES("3816","Sevnica","221","1");
INSERT INTO profine_states VALUES("3817","Sezana","221","1");
INSERT INTO profine_states VALUES("3818","Skocjan","221","1");
INSERT INTO profine_states VALUES("3819","Skofja Loka","221","1");
INSERT INTO profine_states VALUES("3820","Skofljica","221","1");
INSERT INTO profine_states VALUES("3821","Slovenj Gradec","221","1");
INSERT INTO profine_states VALUES("3822","Slovenska Bistrica","221","1");
INSERT INTO profine_states VALUES("3823","Slovenske Konjice","221","1");
INSERT INTO profine_states VALUES("3824","Smarje pri Jelsah","221","1");
INSERT INTO profine_states VALUES("3825","Smartno ob Paki","221","1");
INSERT INTO profine_states VALUES("3826","Sostanj","221","1");
INSERT INTO profine_states VALUES("3827","Starse","221","1");
INSERT INTO profine_states VALUES("3828","Store","221","1");
INSERT INTO profine_states VALUES("3829","Sveti Jurij","221","1");
INSERT INTO profine_states VALUES("3830","Tolmin","221","1");
INSERT INTO profine_states VALUES("3831","Trbovlje","221","1");
INSERT INTO profine_states VALUES("3832","Trebnje","221","1");
INSERT INTO profine_states VALUES("3833","Trzic","221","1");
INSERT INTO profine_states VALUES("3834","Turnisce","221","1");
INSERT INTO profine_states VALUES("3835","Velenje","221","1");
INSERT INTO profine_states VALUES("3836","Velike Lasce","221","1");
INSERT INTO profine_states VALUES("3837","Videm","221","1");
INSERT INTO profine_states VALUES("3838","Vipava","221","1");
INSERT INTO profine_states VALUES("3839","Vitanje","221","1");
INSERT INTO profine_states VALUES("3840","Vodice","221","1");
INSERT INTO profine_states VALUES("3841","Vojnik","221","1");
INSERT INTO profine_states VALUES("3842","Vrhnika","221","1");
INSERT INTO profine_states VALUES("3843","Vuzenica","221","1");
INSERT INTO profine_states VALUES("3844","Zagorje ob Savi","221","1");
INSERT INTO profine_states VALUES("3845","Zalec","221","1");
INSERT INTO profine_states VALUES("3846","Zavrc","221","1");
INSERT INTO profine_states VALUES("3847","Zelezniki","221","1");
INSERT INTO profine_states VALUES("3848","Ziri","221","1");
INSERT INTO profine_states VALUES("3849","Zrece","221","1");
INSERT INTO profine_states VALUES("3850","Eastern","218","1");
INSERT INTO profine_states VALUES("3851","Northern","218","1");
INSERT INTO profine_states VALUES("3852","Southern","218","1");
INSERT INTO profine_states VALUES("3853","Western Area","218","1");
INSERT INTO profine_states VALUES("3854","Acquaviva","211","1");
INSERT INTO profine_states VALUES("3855","Chiesanuova","211","1");
INSERT INTO profine_states VALUES("3856","Domagnano","211","1");
INSERT INTO profine_states VALUES("3857","Faetano","211","1");
INSERT INTO profine_states VALUES("3858","Fiorentino","211","1");
INSERT INTO profine_states VALUES("3859","Borgo Maaggiore","211","1");
INSERT INTO profine_states VALUES("3860","San Marino","211","1");
INSERT INTO profine_states VALUES("3861","Monte Giardino","211","1");
INSERT INTO profine_states VALUES("3862","Serravalle","211","1");
INSERT INTO profine_states VALUES("3863","Bakool","223","1");
INSERT INTO profine_states VALUES("3864","Banaadir","223","1");
INSERT INTO profine_states VALUES("3865","Bari","223","1");
INSERT INTO profine_states VALUES("3866","Bay","223","1");
INSERT INTO profine_states VALUES("3867","Galguduud","223","1");
INSERT INTO profine_states VALUES("3868","Gedo","223","1");
INSERT INTO profine_states VALUES("3869","Hiiraan","223","1");
INSERT INTO profine_states VALUES("3870","Jubbada Dhexe","223","1");
INSERT INTO profine_states VALUES("3871","Jubbada Hoose","223","1");
INSERT INTO profine_states VALUES("3872","Mudug","223","1");
INSERT INTO profine_states VALUES("3873","Nugaal","223","1");
INSERT INTO profine_states VALUES("3874","Sanaag","223","1");
INSERT INTO profine_states VALUES("3875","Shabeellaha Dhexe","223","1");
INSERT INTO profine_states VALUES("3876","Shabeellaha Hoose","223","1");
INSERT INTO profine_states VALUES("3877","Togdheer","223","1");
INSERT INTO profine_states VALUES("3878","Woqooyi Galbeed","223","1");
INSERT INTO profine_states VALUES("3886","Islas Baleares","226","1");
INSERT INTO profine_states VALUES("3906","La Rioja","226","1");
INSERT INTO profine_states VALUES("3908","Madrid","226","1");
INSERT INTO profine_states VALUES("3910","Murcia","226","1");
INSERT INTO profine_states VALUES("3911","Navarra","226","1");
INSERT INTO profine_states VALUES("3913","Asturias","226","1");
INSERT INTO profine_states VALUES("3918","Cantabria","226","1");
INSERT INTO profine_states VALUES("3930","Andalucia","226","1");
INSERT INTO profine_states VALUES("3931","Aragon","226","1");
INSERT INTO profine_states VALUES("3932","Canarias","226","1");
INSERT INTO profine_states VALUES("3933","Castilla-La Mancha","226","1");
INSERT INTO profine_states VALUES("3934","Castilla y Leon","226","1");
INSERT INTO profine_states VALUES("3935","Cataluña","226","1");
INSERT INTO profine_states VALUES("3936","Extremadura","226","1");
INSERT INTO profine_states VALUES("3937","Galicia","226","1");
INSERT INTO profine_states VALUES("3938","Pais Vasco","226","1");
INSERT INTO profine_states VALUES("3939","Valenciana","226","1");
INSERT INTO profine_states VALUES("3941","Vojvodina","271","1");
INSERT INTO profine_states VALUES("3942","Anse-la-Raye","207","1");
INSERT INTO profine_states VALUES("3943","Dauphin","207","1");
INSERT INTO profine_states VALUES("3944","Castries","207","1");
INSERT INTO profine_states VALUES("3945","Choiseul","207","1");
INSERT INTO profine_states VALUES("3946","Dennery","207","1");
INSERT INTO profine_states VALUES("3947","Gros-Islet","207","1");
INSERT INTO profine_states VALUES("3948","Laborie","207","1");
INSERT INTO profine_states VALUES("3949","Micoud","207","1");
INSERT INTO profine_states VALUES("3950","Soufriere","207","1");
INSERT INTO profine_states VALUES("3951","Vieux-Fort","207","1");
INSERT INTO profine_states VALUES("3952","Praslin","207","1");
INSERT INTO profine_states VALUES("3953","A\'ali an Nil","229","1");
INSERT INTO profine_states VALUES("3956","Al Khartum","229","1");
INSERT INTO profine_states VALUES("3957","Ash Shamaliyah","229","1");
INSERT INTO profine_states VALUES("3962","Al Babr al Ahmar","229","1");
INSERT INTO profine_states VALUES("3963","Al Buhayrat","229","1");
INSERT INTO profine_states VALUES("3964","Al Jazirah","229","1");
INSERT INTO profine_states VALUES("3965","Al Qadarif","229","1");
INSERT INTO profine_states VALUES("3966","Al Wahdah","229","1");
INSERT INTO profine_states VALUES("3967","An Nil al Abyad","229","1");
INSERT INTO profine_states VALUES("3968","An Nil al Azraq","229","1");
INSERT INTO profine_states VALUES("3969","Bahr al Jabal","229","1");
INSERT INTO profine_states VALUES("3970","Gharb al Istiwa\'iyah","229","1");
INSERT INTO profine_states VALUES("3971","Gharb Bahr al Ghazal","229","1");
INSERT INTO profine_states VALUES("3972","Gharb Darfur","229","1");
INSERT INTO profine_states VALUES("3973","Gharb Kurdufan","229","1");
INSERT INTO profine_states VALUES("3974","Janub Darfur","229","1");
INSERT INTO profine_states VALUES("3975","Janub Kurdufan","229","1");
INSERT INTO profine_states VALUES("3976","Junqali","229","1");
INSERT INTO profine_states VALUES("3977","Kassala","229","1");
INSERT INTO profine_states VALUES("3978","Nahr an Nil","229","1");
INSERT INTO profine_states VALUES("3979","Shamal Bahr al Ghazal","229","1");
INSERT INTO profine_states VALUES("3980","Shamal Darfur","229","1");
INSERT INTO profine_states VALUES("3981","Shamal Kurdufan","229","1");
INSERT INTO profine_states VALUES("3982","Sharq al Istiwa\'iyah","229","1");
INSERT INTO profine_states VALUES("3983","Sinnar","229","1");
INSERT INTO profine_states VALUES("3984","Warab","229","1");
INSERT INTO profine_states VALUES("3986","Blekinge Lan","233","1");
INSERT INTO profine_states VALUES("3987","Gavleborgs Lan","233","1");
INSERT INTO profine_states VALUES("3989","Gotlands Lan","233","1");
INSERT INTO profine_states VALUES("3990","Hallands Lan","233","1");
INSERT INTO profine_states VALUES("3991","Jamtlands Lan","233","1");
INSERT INTO profine_states VALUES("3992","Jonkopings Lan","233","1");
INSERT INTO profine_states VALUES("3993","Kalmar Lan","233","1");
INSERT INTO profine_states VALUES("3994","Dalarnas Lan","233","1");
INSERT INTO profine_states VALUES("3996","Kronobergs Lan","233","1");
INSERT INTO profine_states VALUES("3998","Norrbottens Lan","233","1");
INSERT INTO profine_states VALUES("3999","Orebro Lan","233","1");
INSERT INTO profine_states VALUES("4000","Ostergotlands Lan","233","1");
INSERT INTO profine_states VALUES("4002","Sodermanlands Lan","233","1");
INSERT INTO profine_states VALUES("4003","Uppsala Lan","233","1");
INSERT INTO profine_states VALUES("4004","Varmlands Lan","233","1");
INSERT INTO profine_states VALUES("4005","Vasterbottens Lan","233","1");
INSERT INTO profine_states VALUES("4006","Vasternorrlands Lan","233","1");
INSERT INTO profine_states VALUES("4007","Vastmanlands Lan","233","1");
INSERT INTO profine_states VALUES("4008","Stockholms Lan","233","1");
INSERT INTO profine_states VALUES("4009","Skane Lan","233","1");
INSERT INTO profine_states VALUES("4010","Vastra Gotaland","233","1");
INSERT INTO profine_states VALUES("4011","Al Hasakah","235","1");
INSERT INTO profine_states VALUES("4012","Al Ladhiqiyah","235","1");
INSERT INTO profine_states VALUES("4013","Al Qunaytirah","235","1");
INSERT INTO profine_states VALUES("4014","Ar Raqqah","235","1");
INSERT INTO profine_states VALUES("4015","As Suwayda\'","235","1");
INSERT INTO profine_states VALUES("4016","Dar\'a","235","1");
INSERT INTO profine_states VALUES("4017","Dayr az Zawr","235","1");
INSERT INTO profine_states VALUES("4018","Rif Dimashq","235","1");
INSERT INTO profine_states VALUES("4019","Halab","235","1");
INSERT INTO profine_states VALUES("4020","Hamah","235","1");
INSERT INTO profine_states VALUES("4021","Hims","235","1");
INSERT INTO profine_states VALUES("4022","Idlib","235","1");
INSERT INTO profine_states VALUES("4023","Dimashq","235","1");
INSERT INTO profine_states VALUES("4024","Tartus","235","1");
INSERT INTO profine_states VALUES("4025","Aargau","234","1");
INSERT INTO profine_states VALUES("4026","Ausser-Rhoden","234","1");
INSERT INTO profine_states VALUES("4027","Basel-Landschaft","234","1");
INSERT INTO profine_states VALUES("4028","Basel-Stadt","234","1");
INSERT INTO profine_states VALUES("4029","Bern","234","1");
INSERT INTO profine_states VALUES("4030","Fribourg","234","1");
INSERT INTO profine_states VALUES("4031","Geneve","234","1");
INSERT INTO profine_states VALUES("4032","Glarus","234","1");
INSERT INTO profine_states VALUES("4033","Graubunden","234","1");
INSERT INTO profine_states VALUES("4034","Inner-Rhoden","234","1");
INSERT INTO profine_states VALUES("4035","Luzern","234","1");
INSERT INTO profine_states VALUES("4036","Neuchatel","234","1");
INSERT INTO profine_states VALUES("4037","Nidwalden","234","1");
INSERT INTO profine_states VALUES("4038","Obwalden","234","1");
INSERT INTO profine_states VALUES("4039","Sankt Gallen","234","1");
INSERT INTO profine_states VALUES("4040","Schaffhausen","234","1");
INSERT INTO profine_states VALUES("4041","Schwyz","234","1");
INSERT INTO profine_states VALUES("4042","Solothurn","234","1");
INSERT INTO profine_states VALUES("4043","Thurgau","234","1");
INSERT INTO profine_states VALUES("4044","Ticino","234","1");
INSERT INTO profine_states VALUES("4045","Uri","234","1");
INSERT INTO profine_states VALUES("4046","Valais","234","1");
INSERT INTO profine_states VALUES("4047","Vaud","234","1");
INSERT INTO profine_states VALUES("4048","Zug","234","1");
INSERT INTO profine_states VALUES("4049","Zurich","234","1");
INSERT INTO profine_states VALUES("4050","Jura","234","1");
INSERT INTO profine_states VALUES("4051","Arima","243","1");
INSERT INTO profine_states VALUES("4052","Caroni","243","1");
INSERT INTO profine_states VALUES("4053","Mayaro","243","1");
INSERT INTO profine_states VALUES("4054","Nariva","243","1");
INSERT INTO profine_states VALUES("4055","Port-of-Spain","243","1");
INSERT INTO profine_states VALUES("4056","Saint Andrew","243","1");
INSERT INTO profine_states VALUES("4057","Saint David","243","1");
INSERT INTO profine_states VALUES("4058","Saint George","243","1");
INSERT INTO profine_states VALUES("4059","Saint Patrick","243","1");
INSERT INTO profine_states VALUES("4060","San Fernando","243","1");
INSERT INTO profine_states VALUES("4061","Tobago","243","1");
INSERT INTO profine_states VALUES("4062","Victoria","243","1");
INSERT INTO profine_states VALUES("4063","Mae Hong Son","239","1");
INSERT INTO profine_states VALUES("4064","Chiang Mai","239","1");
INSERT INTO profine_states VALUES("4065","Chiang Rai","239","1");
INSERT INTO profine_states VALUES("4066","Nan","239","1");
INSERT INTO profine_states VALUES("4067","Lamphun","239","1");
INSERT INTO profine_states VALUES("4068","Lampang","239","1");
INSERT INTO profine_states VALUES("4069","Phrae","239","1");
INSERT INTO profine_states VALUES("4070","Tak","239","1");
INSERT INTO profine_states VALUES("4071","Sukhothai","239","1");
INSERT INTO profine_states VALUES("4072","Uttaradit","239","1");
INSERT INTO profine_states VALUES("4073","Kamphaeng Phet","239","1");
INSERT INTO profine_states VALUES("4074","Phitsanulok","239","1");
INSERT INTO profine_states VALUES("4075","Phichit","239","1");
INSERT INTO profine_states VALUES("4076","Phetchabun","239","1");
INSERT INTO profine_states VALUES("4077","Uthai Thani","239","1");
INSERT INTO profine_states VALUES("4078","Nakhon Sawan","239","1");
INSERT INTO profine_states VALUES("4079","Nong Khai","239","1");
INSERT INTO profine_states VALUES("4080","Loei","239","1");
INSERT INTO profine_states VALUES("4081","Udon Thani","239","1");
INSERT INTO profine_states VALUES("4082","Sakon Nakhon","239","1");
INSERT INTO profine_states VALUES("4083","Nakhon Phanom","239","1");
INSERT INTO profine_states VALUES("4084","Khon Kaen","239","1");
INSERT INTO profine_states VALUES("4085","Kalasin","239","1");
INSERT INTO profine_states VALUES("4086","Maha Sarakham","239","1");
INSERT INTO profine_states VALUES("4087","Roi Et","239","1");
INSERT INTO profine_states VALUES("4088","Chaiyaphum","239","1");
INSERT INTO profine_states VALUES("4089","Nakhon Ratchasima","239","1");
INSERT INTO profine_states VALUES("4090","Buriram","239","1");
INSERT INTO profine_states VALUES("4091","Surin","239","1");
INSERT INTO profine_states VALUES("4092","Sisaket","239","1");
INSERT INTO profine_states VALUES("4093","Narathiwat","239","1");
INSERT INTO profine_states VALUES("4094","Chai Nat","239","1");
INSERT INTO profine_states VALUES("4095","Sing Buri","239","1");
INSERT INTO profine_states VALUES("4096","Lop Buri","239","1");
INSERT INTO profine_states VALUES("4097","Ang Thong","239","1");
INSERT INTO profine_states VALUES("4098","Phra Nakhon Si Ayutthaya","239","1");
INSERT INTO profine_states VALUES("4099","Sara Buri","239","1");
INSERT INTO profine_states VALUES("4100","Nonthaburi","239","1");
INSERT INTO profine_states VALUES("4101","Pathum Thani","239","1");
INSERT INTO profine_states VALUES("4102","Krung Thep Mahanakhon","239","1");
INSERT INTO profine_states VALUES("4103","Phayao","239","1");
INSERT INTO profine_states VALUES("4104","Samut Prakan","239","1");
INSERT INTO profine_states VALUES("4105","Nakhon Nayok","239","1");
INSERT INTO profine_states VALUES("4106","Chachoengsao","239","1");
INSERT INTO profine_states VALUES("4107","Prachin Buri","239","1");
INSERT INTO profine_states VALUES("4108","Chon Buri","239","1");
INSERT INTO profine_states VALUES("4109","Rayong","239","1");
INSERT INTO profine_states VALUES("4110","Chanthaburi","239","1");
INSERT INTO profine_states VALUES("4111","Trat","239","1");
INSERT INTO profine_states VALUES("4112","Kanchanaburi","239","1");
INSERT INTO profine_states VALUES("4113","Suphan Buri","239","1");
INSERT INTO profine_states VALUES("4114","Ratchaburi","239","1");
INSERT INTO profine_states VALUES("4115","Nakhon Pathom","239","1");
INSERT INTO profine_states VALUES("4116","Samut Songkhram","239","1");
INSERT INTO profine_states VALUES("4117","Samut Sakhon","239","1");
INSERT INTO profine_states VALUES("4118","Phetchaburi","239","1");
INSERT INTO profine_states VALUES("4119","Prachuap Khiri Khan","239","1");
INSERT INTO profine_states VALUES("4120","Chumphon","239","1");
INSERT INTO profine_states VALUES("4121","Ranong","239","1");
INSERT INTO profine_states VALUES("4122","Surat Thani","239","1");
INSERT INTO profine_states VALUES("4123","Phangnga","239","1");
INSERT INTO profine_states VALUES("4124","Phuket","239","1");
INSERT INTO profine_states VALUES("4125","Krabi","239","1");
INSERT INTO profine_states VALUES("4126","Nakon Si Thammarat","239","1");
INSERT INTO profine_states VALUES("4127","Trang","239","1");
INSERT INTO profine_states VALUES("4128","Phatthalung","239","1");
INSERT INTO profine_states VALUES("4129","Satun","239","1");
INSERT INTO profine_states VALUES("4130","Songkhla","239","1");
INSERT INTO profine_states VALUES("4131","Pattani","239","1");
INSERT INTO profine_states VALUES("4132","Yala","239","1");
INSERT INTO profine_states VALUES("4134","Yasothon","239","1");
INSERT INTO profine_states VALUES("4135","Ubon Ratchanthani","239","1");
INSERT INTO profine_states VALUES("4136","Amnat Charoen","239","1");
INSERT INTO profine_states VALUES("4137","Mukdahan","239","1");
INSERT INTO profine_states VALUES("4138","Nong Bua Lamphu","239","1");
INSERT INTO profine_states VALUES("4139","Sa Kaeo","239","1");
INSERT INTO profine_states VALUES("4140","Kuhistoni Badakhshon","237","1");
INSERT INTO profine_states VALUES("4141","Khatlon","237","1");
INSERT INTO profine_states VALUES("4142","Leninobod","237","1");
INSERT INTO profine_states VALUES("4143","Ha\'apai","242","1");
INSERT INTO profine_states VALUES("4144","Tongatapu","242","1");
INSERT INTO profine_states VALUES("4145","Vava\'u","242","1");
INSERT INTO profine_states VALUES("4167","Principe","212","1");
INSERT INTO profine_states VALUES("4168","Sao Tome","212","1");
INSERT INTO profine_states VALUES("4169","Al Qasrayn","245","1");
INSERT INTO profine_states VALUES("4170","Al Qayrawan","245","1");
INSERT INTO profine_states VALUES("4171","Jundubah","245","1");
INSERT INTO profine_states VALUES("4172","Al Kaf","245","1");
INSERT INTO profine_states VALUES("4173","Al Mahdiyah","245","1");
INSERT INTO profine_states VALUES("4174","Al Munastir","245","1");
INSERT INTO profine_states VALUES("4175","Bajah","245","1");
INSERT INTO profine_states VALUES("4176","Banzart","245","1");
INSERT INTO profine_states VALUES("4177","Nabul","245","1");
INSERT INTO profine_states VALUES("4178","Silyanah","245","1");
INSERT INTO profine_states VALUES("4179","Susah","245","1");
INSERT INTO profine_states VALUES("4180","Aryanah","245","1");
INSERT INTO profine_states VALUES("4181","Bin \'Arus","245","1");
INSERT INTO profine_states VALUES("4182","Madanin","245","1");
INSERT INTO profine_states VALUES("4183","Qabis","245","1");
INSERT INTO profine_states VALUES("4184","Qafsah","245","1");
INSERT INTO profine_states VALUES("4185","Qibili","245","1");
INSERT INTO profine_states VALUES("4186","Safaqi","245","1");
INSERT INTO profine_states VALUES("4187","Sidi Bu Zayd","245","1");
INSERT INTO profine_states VALUES("4188","Tatawin","245","1");
INSERT INTO profine_states VALUES("4189","Tawzar","245","1");
INSERT INTO profine_states VALUES("4190","Tunis","245","1");
INSERT INTO profine_states VALUES("4191","Zaghwan","245","1");
INSERT INTO profine_states VALUES("4192","Adana","246","1");
INSERT INTO profine_states VALUES("4193","Adiyaman","246","1");
INSERT INTO profine_states VALUES("4194","Afyon","246","1");
INSERT INTO profine_states VALUES("4195","Agri","246","1");
INSERT INTO profine_states VALUES("4196","Amasya","246","1");
INSERT INTO profine_states VALUES("4198","Antalya","246","1");
INSERT INTO profine_states VALUES("4199","Artvin","246","1");
INSERT INTO profine_states VALUES("4200","Aydin","246","1");
INSERT INTO profine_states VALUES("4201","Balikesir","246","1");
INSERT INTO profine_states VALUES("4202","Bilecik","246","1");
INSERT INTO profine_states VALUES("4203","Bingol","246","1");
INSERT INTO profine_states VALUES("4204","Bitlis","246","1");
INSERT INTO profine_states VALUES("4205","Bolu","246","1");
INSERT INTO profine_states VALUES("4206","Burdur","246","1");
INSERT INTO profine_states VALUES("4207","Bursa","246","1");
INSERT INTO profine_states VALUES("4208","Canakkale","246","1");
INSERT INTO profine_states VALUES("4209","Cankiri","246","1");
INSERT INTO profine_states VALUES("4210","Corum","246","1");
INSERT INTO profine_states VALUES("4211","Denizli","246","1");
INSERT INTO profine_states VALUES("4212","Diyarbakir","246","1");
INSERT INTO profine_states VALUES("4213","Edirne","246","1");
INSERT INTO profine_states VALUES("4214","Elazig","246","1");
INSERT INTO profine_states VALUES("4215","Erzincan","246","1");
INSERT INTO profine_states VALUES("4216","Erzurum","246","1");
INSERT INTO profine_states VALUES("4217","Eskisehir","246","1");
INSERT INTO profine_states VALUES("4218","Gaziantep","246","1");
INSERT INTO profine_states VALUES("4219","Giresun","246","1");
INSERT INTO profine_states VALUES("4222","Hatay","246","1");
INSERT INTO profine_states VALUES("4223","Icel","246","1");
INSERT INTO profine_states VALUES("4224","Isparta","246","1");
INSERT INTO profine_states VALUES("4225","Istanbul","246","1");
INSERT INTO profine_states VALUES("4226","Izmir","246","1");
INSERT INTO profine_states VALUES("4227","Kars","246","1");
INSERT INTO profine_states VALUES("4228","Kastamonu","246","1");
INSERT INTO profine_states VALUES("4229","Kayseri","246","1");
INSERT INTO profine_states VALUES("4230","Kirklareli","246","1");
INSERT INTO profine_states VALUES("4231","Kirsehir","246","1");
INSERT INTO profine_states VALUES("4232","Kocaeli","246","1");
INSERT INTO profine_states VALUES("4234","Kutahya","246","1");
INSERT INTO profine_states VALUES("4235","Malatya","246","1");
INSERT INTO profine_states VALUES("4236","Manisa","246","1");
INSERT INTO profine_states VALUES("4237","Kahramanmaras","246","1");
INSERT INTO profine_states VALUES("4239","Mugla","246","1");
INSERT INTO profine_states VALUES("4240","Mus","246","1");
INSERT INTO profine_states VALUES("4241","Nevsehir","246","1");
INSERT INTO profine_states VALUES("4243","Ordu","246","1");
INSERT INTO profine_states VALUES("4244","Rize","246","1");
INSERT INTO profine_states VALUES("4245","Sakarya","246","1");
INSERT INTO profine_states VALUES("4246","Samsun","246","1");
INSERT INTO profine_states VALUES("4248","Sinop","246","1");
INSERT INTO profine_states VALUES("4249","Sivas","246","1");
INSERT INTO profine_states VALUES("4250","Tekirdag","246","1");
INSERT INTO profine_states VALUES("4251","Tokat","246","1");
INSERT INTO profine_states VALUES("4252","Trabzon","246","1");
INSERT INTO profine_states VALUES("4253","Tunceli","246","1");
INSERT INTO profine_states VALUES("4254","Sanliurfa","246","1");
INSERT INTO profine_states VALUES("4255","Usak","246","1");
INSERT INTO profine_states VALUES("4256","Van","246","1");
INSERT INTO profine_states VALUES("4257","Yozgat","246","1");
INSERT INTO profine_states VALUES("4258","Zonguldak","246","1");
INSERT INTO profine_states VALUES("4259","Ankara","246","1");
INSERT INTO profine_states VALUES("4260","Gumushane","246","1");
INSERT INTO profine_states VALUES("4261","Hakkari","246","1");
INSERT INTO profine_states VALUES("4262","Konya","246","1");
INSERT INTO profine_states VALUES("4263","Mardin","246","1");
INSERT INTO profine_states VALUES("4264","Nigde","246","1");
INSERT INTO profine_states VALUES("4265","Siirt","246","1");
INSERT INTO profine_states VALUES("4266","Aksaray","246","1");
INSERT INTO profine_states VALUES("4267","Batman","246","1");
INSERT INTO profine_states VALUES("4268","Bayburt","246","1");
INSERT INTO profine_states VALUES("4269","Karaman","246","1");
INSERT INTO profine_states VALUES("4270","Kirikkale","246","1");
INSERT INTO profine_states VALUES("4271","Sirnak","246","1");
INSERT INTO profine_states VALUES("4272","Fu-chien","236","1");
INSERT INTO profine_states VALUES("4273","Kao-hsiung","236","1");
INSERT INTO profine_states VALUES("4274","T\'ai-pei","236","1");
INSERT INTO profine_states VALUES("4275","T\'ai-wan","236","1");
INSERT INTO profine_states VALUES("4276","Arusha","238","1");
INSERT INTO profine_states VALUES("4277","Dar es Salaam","238","1");
INSERT INTO profine_states VALUES("4278","Dodoma","238","1");
INSERT INTO profine_states VALUES("4279","Iringa","238","1");
INSERT INTO profine_states VALUES("4280","Kigoma","238","1");
INSERT INTO profine_states VALUES("4281","Kilimanjaro","238","1");
INSERT INTO profine_states VALUES("4282","Lindi","238","1");
INSERT INTO profine_states VALUES("4283","Mara","238","1");
INSERT INTO profine_states VALUES("4284","Mbeya","238","1");
INSERT INTO profine_states VALUES("4285","Morogoro","238","1");
INSERT INTO profine_states VALUES("4286","Mtwara","238","1");
INSERT INTO profine_states VALUES("4287","Mwanza","238","1");
INSERT INTO profine_states VALUES("4288","Pemba North","238","1");
INSERT INTO profine_states VALUES("4289","Ruvuma","238","1");
INSERT INTO profine_states VALUES("4290","Shinyanga","238","1");
INSERT INTO profine_states VALUES("4291","Singida","238","1");
INSERT INTO profine_states VALUES("4292","Tabora","238","1");
INSERT INTO profine_states VALUES("4293","Tanga","238","1");
INSERT INTO profine_states VALUES("4294","Kagera","238","1");
INSERT INTO profine_states VALUES("4295","Pemba South","238","1");
INSERT INTO profine_states VALUES("4296","Zanzibar Central//South","238","1");
INSERT INTO profine_states VALUES("4297","Zanzibar North","238","1");
INSERT INTO profine_states VALUES("4298","Rukwa","238","1");
INSERT INTO profine_states VALUES("4299","Zanzibar Urban//West","238","1");
INSERT INTO profine_states VALUES("4300","Apac","250","1");
INSERT INTO profine_states VALUES("4301","Arua","250","1");
INSERT INTO profine_states VALUES("4302","Bundibogyo","250","1");
INSERT INTO profine_states VALUES("4303","Bushenyi","250","1");
INSERT INTO profine_states VALUES("4304","Gulu","250","1");
INSERT INTO profine_states VALUES("4305","Hoima","250","1");
INSERT INTO profine_states VALUES("4306","Iganga","250","1");
INSERT INTO profine_states VALUES("4307","Jinja","250","1");
INSERT INTO profine_states VALUES("4308","Kabale","250","1");
INSERT INTO profine_states VALUES("4309","Kabarole","250","1");
INSERT INTO profine_states VALUES("4310","Kalangala","250","1");
INSERT INTO profine_states VALUES("4311","Kampala","250","1");
INSERT INTO profine_states VALUES("4312","Kamuli","250","1");
INSERT INTO profine_states VALUES("4313","Kapchorwa","250","1");
INSERT INTO profine_states VALUES("4314","Kasese","250","1");
INSERT INTO profine_states VALUES("4315","Kibale","250","1");
INSERT INTO profine_states VALUES("4316","Kiboga","250","1");
INSERT INTO profine_states VALUES("4317","Kisoro","250","1");
INSERT INTO profine_states VALUES("4318","Kitgum","250","1");
INSERT INTO profine_states VALUES("4319","Kotido","250","1");
INSERT INTO profine_states VALUES("4320","Kumi","250","1");
INSERT INTO profine_states VALUES("4321","Lira","250","1");
INSERT INTO profine_states VALUES("4322","Luwero","250","1");
INSERT INTO profine_states VALUES("4323","Masaka","250","1");
INSERT INTO profine_states VALUES("4324","Masindi","250","1");
INSERT INTO profine_states VALUES("4325","Mbale","250","1");
INSERT INTO profine_states VALUES("4326","Mbarara","250","1");
INSERT INTO profine_states VALUES("4327","Moroto","250","1");
INSERT INTO profine_states VALUES("4328","Moyo","250","1");
INSERT INTO profine_states VALUES("4329","Mpigi","250","1");
INSERT INTO profine_states VALUES("4330","Mubende","250","1");
INSERT INTO profine_states VALUES("4331","Mukono","250","1");
INSERT INTO profine_states VALUES("4332","Nebbi","250","1");
INSERT INTO profine_states VALUES("4333","Ntungamo","250","1");
INSERT INTO profine_states VALUES("4334","Pallisa","250","1");
INSERT INTO profine_states VALUES("4335","Rakai","250","1");
INSERT INTO profine_states VALUES("4336","Rukungiri","250","1");
INSERT INTO profine_states VALUES("4337","Soroti","250","1");
INSERT INTO profine_states VALUES("4338","Tororo","250","1");
INSERT INTO profine_states VALUES("4431","Cherkas\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4432","Chernihivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4433","Chernivets\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4434","Dnipropetrovs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4435","Donets\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4436","Ivano-Frankivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4437","Kharkivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4438","Khersons\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4439","Khmel\'nyts\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4440","Kirovohrads\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4441","Avtonomna Respublika Krym","251","1");
INSERT INTO profine_states VALUES("4442","Misto Kyyiv","251","1");
INSERT INTO profine_states VALUES("4443","Kyyivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4444","Luhans\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4445","L\'vivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4446","Mykolayivs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4447","Odes\'ka Oblast","251","1");
INSERT INTO profine_states VALUES("4448","Poltavs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4449","Rivnens\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4450","Misto Sevastopol","251","1");
INSERT INTO profine_states VALUES("4451","Sums\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4452","Ternopil\'s\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4453","Vinnyts\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4454","Volyns\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4455","Zakarpats\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4456","Zaporiz\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4457","Zhytomyrs\'ka Oblast\'","251","1");
INSERT INTO profine_states VALUES("4458","Bam","38","1");
INSERT INTO profine_states VALUES("4459","Bazega","38","1");
INSERT INTO profine_states VALUES("4460","Bougouriba","38","1");
INSERT INTO profine_states VALUES("4461","Boulgou","38","1");
INSERT INTO profine_states VALUES("4462","Boulkiemde","38","1");
INSERT INTO profine_states VALUES("4463","Ganzourgou","38","1");
INSERT INTO profine_states VALUES("4464","Gnagna","38","1");
INSERT INTO profine_states VALUES("4465","Gourma","38","1");
INSERT INTO profine_states VALUES("4466","Houe","38","1");
INSERT INTO profine_states VALUES("4467","Kadiogo","38","1");
INSERT INTO profine_states VALUES("4468","Kenedougou","38","1");
INSERT INTO profine_states VALUES("4469","Komoe","38","1");
INSERT INTO profine_states VALUES("4470","Kossi","38","1");
INSERT INTO profine_states VALUES("4471","Kouritenga","38","1");
INSERT INTO profine_states VALUES("4472","Mouhoun","38","1");
INSERT INTO profine_states VALUES("4473","Namentenga","38","1");
INSERT INTO profine_states VALUES("4474","Naouri","38","1");
INSERT INTO profine_states VALUES("4475","Oubritenga","38","1");
INSERT INTO profine_states VALUES("4476","Oudalan","38","1");
INSERT INTO profine_states VALUES("4477","Passore","38","1");
INSERT INTO profine_states VALUES("4478","Poni","38","1");
INSERT INTO profine_states VALUES("4479","Sanguie","38","1");
INSERT INTO profine_states VALUES("4480","Sanmatenga","38","1");
INSERT INTO profine_states VALUES("4481","Seno","38","1");
INSERT INTO profine_states VALUES("4482","Sissili","38","1");
INSERT INTO profine_states VALUES("4483","Soum","38","1");
INSERT INTO profine_states VALUES("4484","Sourou","38","1");
INSERT INTO profine_states VALUES("4485","Tapoa","38","1");
INSERT INTO profine_states VALUES("4486","Yatenga","38","1");
INSERT INTO profine_states VALUES("4487","Zoundweogo","38","1");
INSERT INTO profine_states VALUES("4488","Artigas","256","1");
INSERT INTO profine_states VALUES("4489","Canelones","256","1");
INSERT INTO profine_states VALUES("4490","Cerro Largo","256","1");
INSERT INTO profine_states VALUES("4491","Colonia","256","1");
INSERT INTO profine_states VALUES("4492","Durazno","256","1");
INSERT INTO profine_states VALUES("4493","Flores","256","1");
INSERT INTO profine_states VALUES("4494","Florida","256","1");
INSERT INTO profine_states VALUES("4495","Lavalleja","256","1");
INSERT INTO profine_states VALUES("4496","Maldonado","256","1");
INSERT INTO profine_states VALUES("4497","Montevideo","256","1");
INSERT INTO profine_states VALUES("4498","Paysandu","256","1");
INSERT INTO profine_states VALUES("4499","Rio Negro","256","1");
INSERT INTO profine_states VALUES("4500","Rivera","256","1");
INSERT INTO profine_states VALUES("4501","Rocha","256","1");
INSERT INTO profine_states VALUES("4502","Salto","256","1");
INSERT INTO profine_states VALUES("4503","San Jose","256","1");
INSERT INTO profine_states VALUES("4504","Soriano","256","1");
INSERT INTO profine_states VALUES("4505","Tacuarembo","256","1");
INSERT INTO profine_states VALUES("4506","Treinta y Tres","256","1");
INSERT INTO profine_states VALUES("4507","Andijon","257","1");
INSERT INTO profine_states VALUES("4508","Bukhoro","257","1");
INSERT INTO profine_states VALUES("4509","Farghona","257","1");
INSERT INTO profine_states VALUES("4510","Jizzakh","257","1");
INSERT INTO profine_states VALUES("4511","Khorazm","257","1");
INSERT INTO profine_states VALUES("4512","Namangan","257","1");
INSERT INTO profine_states VALUES("4513","Nawoiy","257","1");
INSERT INTO profine_states VALUES("4514","Qashqadaryo","257","1");
INSERT INTO profine_states VALUES("4515","Qoraqalpoghiston","257","1");
INSERT INTO profine_states VALUES("4516","Samarqand","257","1");
INSERT INTO profine_states VALUES("4517","Sirdaryo","257","1");
INSERT INTO profine_states VALUES("4518","Surkhondaryo","257","1");
INSERT INTO profine_states VALUES("4519","Toshkent","257","1");
INSERT INTO profine_states VALUES("4520","Charlotte","209","1");
INSERT INTO profine_states VALUES("4521","Saint Andrew","209","1");
INSERT INTO profine_states VALUES("4522","Saint David","209","1");
INSERT INTO profine_states VALUES("4523","Saint George","209","1");
INSERT INTO profine_states VALUES("4524","Saint Patrick","209","1");
INSERT INTO profine_states VALUES("4525","Grenadines","209","1");
INSERT INTO profine_states VALUES("4526","Amazonas","259","1");
INSERT INTO profine_states VALUES("4527","Anzoategui","259","1");
INSERT INTO profine_states VALUES("4528","Apure","259","1");
INSERT INTO profine_states VALUES("4529","Aragua","259","1");
INSERT INTO profine_states VALUES("4530","Barinas","259","1");
INSERT INTO profine_states VALUES("4531","Bolivar","259","1");
INSERT INTO profine_states VALUES("4532","Carabobo","259","1");
INSERT INTO profine_states VALUES("4533","Cojedes","259","1");
INSERT INTO profine_states VALUES("4534","Delta Amacuro","259","1");
INSERT INTO profine_states VALUES("4535","Distrito Federal","259","1");
INSERT INTO profine_states VALUES("4536","Falcon","259","1");
INSERT INTO profine_states VALUES("4537","Guarico","259","1");
INSERT INTO profine_states VALUES("4538","Lara","259","1");
INSERT INTO profine_states VALUES("4539","Merida","259","1");
INSERT INTO profine_states VALUES("4540","Miranda","259","1");
INSERT INTO profine_states VALUES("4541","Monagas","259","1");
INSERT INTO profine_states VALUES("4542","Nueva Esparta","259","1");
INSERT INTO profine_states VALUES("4543","Portuguesa","259","1");
INSERT INTO profine_states VALUES("4544","Sucre","259","1");
INSERT INTO profine_states VALUES("4545","Tachira","259","1");
INSERT INTO profine_states VALUES("4546","Trujillo","259","1");
INSERT INTO profine_states VALUES("4547","Yaracuy","259","1");
INSERT INTO profine_states VALUES("4548","Zulia","259","1");
INSERT INTO profine_states VALUES("4549","Dependencias Federales","259","1");
INSERT INTO profine_states VALUES("4551","An Giang","260","1");
INSERT INTO profine_states VALUES("4553","Ben Tre","260","1");
INSERT INTO profine_states VALUES("4555","Cao Bang","260","1");
INSERT INTO profine_states VALUES("4557","Dak Lak","260","1");
INSERT INTO profine_states VALUES("4558","Dong Thap","260","1");
INSERT INTO profine_states VALUES("4562","Hai Phong","260","1");
INSERT INTO profine_states VALUES("4564","Ha Noi","260","1");
INSERT INTO profine_states VALUES("4568","Ho Chi Minh","260","1");
INSERT INTO profine_states VALUES("4569","Kien Giang","260","1");
INSERT INTO profine_states VALUES("4570","Lai Chau","260","1");
INSERT INTO profine_states VALUES("4571","Lam Dong","260","1");
INSERT INTO profine_states VALUES("4572","Long An","260","1");
INSERT INTO profine_states VALUES("4578","Quang Ninh","260","1");
INSERT INTO profine_states VALUES("4580","Son La","260","1");
INSERT INTO profine_states VALUES("4581","Tay Ninh","260","1");
INSERT INTO profine_states VALUES("4582","Thanh Hoa","260","1");
INSERT INTO profine_states VALUES("4583","Thai Binh","260","1");
INSERT INTO profine_states VALUES("4585","Tien Giang","260","1");
INSERT INTO profine_states VALUES("4587","Lang Son","260","1");
INSERT INTO profine_states VALUES("4590","Dong Nai","260","1");
INSERT INTO profine_states VALUES("4591","Ba Ria-Vung Tau","260","1");
INSERT INTO profine_states VALUES("4592","Binh Dinh","260","1");
INSERT INTO profine_states VALUES("4593","Binh Thuan","260","1");
INSERT INTO profine_states VALUES("4594","Can Tho","260","1");
INSERT INTO profine_states VALUES("4595","Gia Lai","260","1");
INSERT INTO profine_states VALUES("4596","Ha Giang","260","1");
INSERT INTO profine_states VALUES("4597","Ha Tay","260","1");
INSERT INTO profine_states VALUES("4598","Ha Tinh","260","1");
INSERT INTO profine_states VALUES("4599","Hoa Binh","260","1");
INSERT INTO profine_states VALUES("4600","Khanh Hoa","260","1");
INSERT INTO profine_states VALUES("4601","Kon Tum","260","1");
INSERT INTO profine_states VALUES("4602","Lao Cai","260","1");
INSERT INTO profine_states VALUES("4604","Nghe An","260","1");
INSERT INTO profine_states VALUES("4605","Ninh Binh","260","1");
INSERT INTO profine_states VALUES("4606","Ninh Thuan","260","1");
INSERT INTO profine_states VALUES("4607","Phu Yen","260","1");
INSERT INTO profine_states VALUES("4608","Quang Binh","260","1");
INSERT INTO profine_states VALUES("4609","Quang Ngai","260","1");
INSERT INTO profine_states VALUES("4610","Quang Tri","260","1");
INSERT INTO profine_states VALUES("4611","Soc Trang","260","1");
INSERT INTO profine_states VALUES("4612","Thura Thien-Hue","260","1");
INSERT INTO profine_states VALUES("4613","Tra Vinh","260","1");
INSERT INTO profine_states VALUES("4614","Tuyen Quang","260","1");
INSERT INTO profine_states VALUES("4615","Vinh Long","260","1");
INSERT INTO profine_states VALUES("4616","Yen Bai","260","1");
INSERT INTO profine_states VALUES("4617","Bac Giang","260","1");
INSERT INTO profine_states VALUES("4618","Bac Kan","260","1");
INSERT INTO profine_states VALUES("4619","Bac Lieu","260","1");
INSERT INTO profine_states VALUES("4620","Bac Ninh","260","1");
INSERT INTO profine_states VALUES("4621","Bin Duong","260","1");
INSERT INTO profine_states VALUES("4622","Bin Phuoc","260","1");
INSERT INTO profine_states VALUES("4623","Ca Mau","260","1");
INSERT INTO profine_states VALUES("4624","Da Nang","260","1");
INSERT INTO profine_states VALUES("4625","Hai Duong","260","1");
INSERT INTO profine_states VALUES("4626","Ha Nam","260","1");
INSERT INTO profine_states VALUES("4627","Hung Yen","260","1");
INSERT INTO profine_states VALUES("4628","Nam Dinh","260","1");
INSERT INTO profine_states VALUES("4629","Phu Tho","260","1");
INSERT INTO profine_states VALUES("4630","Quang Nam","260","1");
INSERT INTO profine_states VALUES("4631","Thai Nguyen","260","1");
INSERT INTO profine_states VALUES("4632","Vinh Phuc","260","1");
INSERT INTO profine_states VALUES("4635","Khomas","171","1");
INSERT INTO profine_states VALUES("4636","Caprivi","171","1");
INSERT INTO profine_states VALUES("4637","Erongo","171","1");
INSERT INTO profine_states VALUES("4638","Hardap","171","1");
INSERT INTO profine_states VALUES("4639","Karas","171","1");
INSERT INTO profine_states VALUES("4640","Kunene","171","1");
INSERT INTO profine_states VALUES("4641","Ohangwena","171","1");
INSERT INTO profine_states VALUES("4642","Okavango","171","1");
INSERT INTO profine_states VALUES("4643","Omaheke","171","1");
INSERT INTO profine_states VALUES("4644","Omusati","171","1");
INSERT INTO profine_states VALUES("4645","Oshana","171","1");
INSERT INTO profine_states VALUES("4646","Oshikoto","171","1");
INSERT INTO profine_states VALUES("4647","Otjozondjupa","171","1");
INSERT INTO profine_states VALUES("4648","A\'ana","210","1");
INSERT INTO profine_states VALUES("4649","Aiga-i-le-Tai","210","1");
INSERT INTO profine_states VALUES("4650","Atua","210","1");
INSERT INTO profine_states VALUES("4651","Fa\'asaleleaga","210","1");
INSERT INTO profine_states VALUES("4652","Gaga\'emauga","210","1");
INSERT INTO profine_states VALUES("4653","Va\'a-o-Fonoti","210","1");
INSERT INTO profine_states VALUES("4654","Gagaifomauga","210","1");
INSERT INTO profine_states VALUES("4655","Palauli","210","1");
INSERT INTO profine_states VALUES("4656","Satupa\'itea","210","1");
INSERT INTO profine_states VALUES("4657","Tuamasaga","210","1");
INSERT INTO profine_states VALUES("4658","Vaisigano","210","1");
INSERT INTO profine_states VALUES("4659","Hhohho","232","1");
INSERT INTO profine_states VALUES("4660","Lubombo","232","1");
INSERT INTO profine_states VALUES("4661","Manzini","232","1");
INSERT INTO profine_states VALUES("4662","Shiselweni","232","1");
INSERT INTO profine_states VALUES("4663","Abyan","270","1");
INSERT INTO profine_states VALUES("4664","\'Adan","270","1");
INSERT INTO profine_states VALUES("4665","Al Mahrah","270","1");
INSERT INTO profine_states VALUES("4666","Hadramawt","270","1");
INSERT INTO profine_states VALUES("4667","Shabwah","270","1");
INSERT INTO profine_states VALUES("4668","Lahij","270","1");
INSERT INTO profine_states VALUES("4669","Al Bayda\'","270","1");
INSERT INTO profine_states VALUES("4670","Al Hudaydah","270","1");
INSERT INTO profine_states VALUES("4671","Al Jawf","270","1");
INSERT INTO profine_states VALUES("4672","Al Mahwit","270","1");
INSERT INTO profine_states VALUES("4673","Dhamar","270","1");
INSERT INTO profine_states VALUES("4674","Hajjah","270","1");
INSERT INTO profine_states VALUES("4675","Ibb","270","1");
INSERT INTO profine_states VALUES("4676","Ma\'rib","270","1");
INSERT INTO profine_states VALUES("4677","Sa\'dah","270","1");
INSERT INTO profine_states VALUES("4678","San\'a\'","270","1");
INSERT INTO profine_states VALUES("4679","Ta\'izz","270","1");
INSERT INTO profine_states VALUES("4680","North-Western","273","1");
INSERT INTO profine_states VALUES("4681","Copperbelt","273","1");
INSERT INTO profine_states VALUES("4682","Western","273","1");
INSERT INTO profine_states VALUES("4683","Southern","273","1");
INSERT INTO profine_states VALUES("4684","Central","273","1");
INSERT INTO profine_states VALUES("4685","Eastern","273","1");
INSERT INTO profine_states VALUES("4686","Northern","273","1");
INSERT INTO profine_states VALUES("4687","Luapula","273","1");
INSERT INTO profine_states VALUES("4688","Lusaka","273","1");
INSERT INTO profine_states VALUES("4689","Manicaland","274","1");
INSERT INTO profine_states VALUES("4690","Midlands","274","1");
INSERT INTO profine_states VALUES("4691","Mashonaland Central","274","1");
INSERT INTO profine_states VALUES("4692","Mashonaland East","274","1");
INSERT INTO profine_states VALUES("4693","Mashonaland West","274","1");
INSERT INTO profine_states VALUES("4694","Matabeleland North","274","1");
INSERT INTO profine_states VALUES("4695","Matabeleland South","274","1");
INSERT INTO profine_states VALUES("4696","Masvingo","274","1");
INSERT INTO profine_states VALUES("4706","Auckland","178","1");
INSERT INTO profine_states VALUES("4721","Wellington","178","1");
INSERT INTO profine_states VALUES("4723","Canterbury","178","1");
INSERT INTO profine_states VALUES("4729","Bay of Plenty","178","1");
INSERT INTO profine_states VALUES("4741","Northland","178","1");
INSERT INTO profine_states VALUES("4744","Otago","178","1");
INSERT INTO profine_states VALUES("4761","Enderby Land","8","1");
INSERT INTO profine_states VALUES("4763","Ross Island","8","1");
INSERT INTO profine_states VALUES("4814","Chatham Islands","178","1");
INSERT INTO profine_states VALUES("4879","Etela-Suomen Laani","81","1");
INSERT INTO profine_states VALUES("4975","Nouakchott","156","1");
INSERT INTO profine_states VALUES("4996","Nunavut","43","1");
INSERT INTO profine_states VALUES("4997","United Arab Emigrates (general)","252","1");
INSERT INTO profine_states VALUES("4998","Abu Zaby","252","1");
INSERT INTO profine_states VALUES("4999","\'Ajman","252","1");
INSERT INTO profine_states VALUES("5002","Dubayy","252","1");
INSERT INTO profine_states VALUES("5003","Al Fujayrah","252","1");
INSERT INTO profine_states VALUES("5004","Ra\'s al Khaymah","252","1");
INSERT INTO profine_states VALUES("5005","Ash Shariqah","252","1");
INSERT INTO profine_states VALUES("5006","Umm al Qaywayn","252","1");
INSERT INTO profine_states VALUES("5007","Gisborne","178","1");
INSERT INTO profine_states VALUES("5010","Nelson","178","1");
INSERT INTO profine_states VALUES("5018","Tasman","178","1");
INSERT INTO profine_states VALUES("5019","Wanganui-Manawatu","178","1");
INSERT INTO profine_states VALUES("5020","West Coast","178","1");
INSERT INTO profine_states VALUES("5022","Ita-Suomen Laani","81","1");
INSERT INTO profine_states VALUES("5023","Lansi-Suomen Laani","81","1");
INSERT INTO profine_states VALUES("5024","Yugoslavia","271","1");
INSERT INTO profine_states VALUES("5025","Bjelovarsko-Bilogorska","61","1");
INSERT INTO profine_states VALUES("5026","Brodsko-Posavka","61","1");
INSERT INTO profine_states VALUES("5027","Dubrovacko-Neretvanska","61","1");
INSERT INTO profine_states VALUES("5028","Istarska","61","1");
INSERT INTO profine_states VALUES("5029","Karlovacka","61","1");
INSERT INTO profine_states VALUES("5030","Koprivnicko-Krizevacka","61","1");
INSERT INTO profine_states VALUES("5031","Krapinsko-Zagorska","61","1");
INSERT INTO profine_states VALUES("5032","Licko-Senjska","61","1");
INSERT INTO profine_states VALUES("5033","Medimurska","61","1");
INSERT INTO profine_states VALUES("5034","Osjecko-Baranjska","61","1");
INSERT INTO profine_states VALUES("5035","Pozesko-Slavonska","61","1");
INSERT INTO profine_states VALUES("5036","Primorsko-Goranska","61","1");
INSERT INTO profine_states VALUES("5037","Sibensko-Kninska","61","1");
INSERT INTO profine_states VALUES("5038","Sisacko-Moslavacka","61","1");
INSERT INTO profine_states VALUES("5039","Splitsko-Dalmatinska","61","1");
INSERT INTO profine_states VALUES("5040","Varazdinska","61","1");
INSERT INTO profine_states VALUES("5041","Viroviticko-Podravska","61","1");
INSERT INTO profine_states VALUES("5042","Vukovarsko-Srijemska","61","1");
INSERT INTO profine_states VALUES("5043","Zadarska","61","1");
INSERT INTO profine_states VALUES("5044","Zagrebacka","61","1");
INSERT INTO profine_states VALUES("5045","Grad Zagreb","61","1");
INSERT INTO profine_states VALUES("5047","Curacao","176","1");
INSERT INTO profine_states VALUES("5048","Bonaire","176","1");
INSERT INTO profine_states VALUES("5049","St Maarten","176","1");
INSERT INTO profine_states VALUES("5051","Brussels","24","1");
INSERT INTO profine_states VALUES("5052","Escaldes-Engordany","5","1");
INSERT INTO profine_states VALUES("5053","Ahal","247","1");
INSERT INTO profine_states VALUES("5054","Balkan","247","1");
INSERT INTO profine_states VALUES("5055","Dashhowuz","247","1");
INSERT INTO profine_states VALUES("5056","Lebap","247","1");
INSERT INTO profine_states VALUES("5057","Mary","247","1");
INSERT INTO profine_states VALUES("5058","Pailin","41","1");
INSERT INTO profine_states VALUES("5059","Orellana","70","1");
INSERT INTO profine_states VALUES("5060","Maluku Utara","114","1");
INSERT INTO profine_states VALUES("5061","Vargas","259","1");
INSERT INTO profine_states VALUES("5062","Crna Gora (Montenegro)","271","1");
INSERT INTO profine_states VALUES("5063","Srbija (Serbia)","271","1");
INSERT INTO profine_states VALUES("5064","Maniema","55","1");
INSERT INTO profine_states VALUES("5065","Nord-Kivu","55","1");
INSERT INTO profine_states VALUES("5066","Sud-Kivu","55","1");
INSERT INTO profine_states VALUES("5067","Ajlun","126","1");
INSERT INTO profine_states VALUES("5068","Al Aqabah","126","1");
INSERT INTO profine_states VALUES("5069","Jarash","126","1");
INSERT INTO profine_states VALUES("5070","Madaba","126","1");
INSERT INTO profine_states VALUES("5071","Malampa","258","1");
INSERT INTO profine_states VALUES("5072","Penama","258","1");
INSERT INTO profine_states VALUES("5073","Shefa","258","1");
INSERT INTO profine_states VALUES("5074","Bayelsa","181","1");
INSERT INTO profine_states VALUES("5075","Ebonyi","181","1");
INSERT INTO profine_states VALUES("5079","Ekiti","181","1");
INSERT INTO profine_states VALUES("5080","Gombe","181","1");
INSERT INTO profine_states VALUES("5081","Nassarawa","181","1");
INSERT INTO profine_states VALUES("5082","Zamfara","181","1");
INSERT INTO profine_states VALUES("5083","Lapusna","163","1");
INSERT INTO profine_states VALUES("5084","Tighina","163","1");
INSERT INTO profine_states VALUES("5085","Blagoevgrad","37","1");
INSERT INTO profine_states VALUES("5086","Dobrich","37","1");
INSERT INTO profine_states VALUES("5087","Gabrovo ","37","1");
INSERT INTO profine_states VALUES("5088","Kurdzhali","37","1");
INSERT INTO profine_states VALUES("5089","Kyustendil","37","1");
INSERT INTO profine_states VALUES("5090","Pazardzhik","37","1");
INSERT INTO profine_states VALUES("5091","Pernik","37","1");
INSERT INTO profine_states VALUES("5092","Pleven","37","1");
INSERT INTO profine_states VALUES("5093","Ruse","37","1");
INSERT INTO profine_states VALUES("5094","Shumen","37","1");
INSERT INTO profine_states VALUES("5095","Silistra","37","1");
INSERT INTO profine_states VALUES("5096","Sliven","37","1");
INSERT INTO profine_states VALUES("5097","Smolyan","37","1");
INSERT INTO profine_states VALUES("5098","Stara Zagora","37","1");
INSERT INTO profine_states VALUES("5099","Turgovishte","37","1");
INSERT INTO profine_states VALUES("5100","Veliko Turnovo","37","1");
INSERT INTO profine_states VALUES("5101","Vidin","37","1");
INSERT INTO profine_states VALUES("5102","Vratsa","37","1");
INSERT INTO profine_states VALUES("5103","Yambol","37","1");
INSERT INTO profine_states VALUES("5104","Golestan","115","1");
INSERT INTO profine_states VALUES("5105","Qazvin","115","1");
INSERT INTO profine_states VALUES("5106","Qom","115","1");
INSERT INTO profine_states VALUES("5107","Ardahan","246","1");
INSERT INTO profine_states VALUES("5108","Bartin","246","1");
INSERT INTO profine_states VALUES("5109","Igdir","246","1");
INSERT INTO profine_states VALUES("5110","Karabuk","246","1");
INSERT INTO profine_states VALUES("5111","Kilis","246","1");
INSERT INTO profine_states VALUES("5112","Osmaniye","246","1");
INSERT INTO profine_states VALUES("5113","Yalova","246","1");
INSERT INTO profine_states VALUES("5114","Ar Rifa\' wa al Mintaqah al Janubiyah","18","1");
INSERT INTO profine_states VALUES("5115","Republika Srpska","30","1");
INSERT INTO profine_states VALUES("5116","Federation of Bosnia and Herzegovina","30","1");
INSERT INTO profine_states VALUES("5118","Batken","135","1");
INSERT INTO profine_states VALUES("5119","P\'yongan-bukto","132","1");
INSERT INTO profine_states VALUES("5120","Tyva","203","1");
INSERT INTO profine_states VALUES("5122","Jihomoravsky Kraj","64","1");
INSERT INTO profine_states VALUES("5123","Jihocesky Kraj","64","1");
INSERT INTO profine_states VALUES("5124","Vysocina","64","1");
INSERT INTO profine_states VALUES("5125","Karlovarsky Kraj","64","1");
INSERT INTO profine_states VALUES("5126","Kralovehradecky Kraj","64","1");
INSERT INTO profine_states VALUES("5127","Liberecky Kraj","64","1");
INSERT INTO profine_states VALUES("5128","Olomoucky Kraj","64","1");
INSERT INTO profine_states VALUES("5129","Moravskoslezsky Kraj","64","1");
INSERT INTO profine_states VALUES("5130","Pardubicky Kraj","64","1");
INSERT INTO profine_states VALUES("5131","Plzensky Kraj","64","1");
INSERT INTO profine_states VALUES("5132","Stredocesky Kraj","64","1");
INSERT INTO profine_states VALUES("5133","Ustecky Kraj","64","1");
INSERT INTO profine_states VALUES("5134","Zlinsky Kraj","64","1");
INSERT INTO profine_states VALUES("5135","Aracinovo","146","1");
INSERT INTO profine_states VALUES("5136","Bac","146","1");
INSERT INTO profine_states VALUES("5137","Belcista","146","1");
INSERT INTO profine_states VALUES("5138","Berovo","146","1");
INSERT INTO profine_states VALUES("5139","Bistrica","146","1");
INSERT INTO profine_states VALUES("5140","Bitola","146","1");
INSERT INTO profine_states VALUES("5141","Blatec","146","1");
INSERT INTO profine_states VALUES("5142","Bogdanci","146","1");
INSERT INTO profine_states VALUES("5143","Bogomila","146","1");
INSERT INTO profine_states VALUES("5144","Bogovinje","146","1");
INSERT INTO profine_states VALUES("5145","Bosilovo","146","1");
INSERT INTO profine_states VALUES("5146","Brvenica","146","1");
INSERT INTO profine_states VALUES("5147","Cair","146","1");
INSERT INTO profine_states VALUES("5148","Capari","146","1");
INSERT INTO profine_states VALUES("5149","Caska","146","1");
INSERT INTO profine_states VALUES("5150","Cegrane","146","1");
INSERT INTO profine_states VALUES("5151","Centar","146","1");
INSERT INTO profine_states VALUES("5152","Centar Zupa","146","1");
INSERT INTO profine_states VALUES("5153","Cesinovo","146","1");
INSERT INTO profine_states VALUES("5154","Cucer-Sandevo","146","1");
INSERT INTO profine_states VALUES("5155","Debar","146","1");
INSERT INTO profine_states VALUES("5156","Delcevo","146","1");
INSERT INTO profine_states VALUES("5157","Delogozdi","146","1");
INSERT INTO profine_states VALUES("5158","Demir Hisar","146","1");
INSERT INTO profine_states VALUES("5159","Demir Kapija","146","1");
INSERT INTO profine_states VALUES("5160","Dobrusevo","146","1");
INSERT INTO profine_states VALUES("5161","Dolna Banjica","146","1");
INSERT INTO profine_states VALUES("5162","Dolneni","146","1");
INSERT INTO profine_states VALUES("5163","Dorce Petrov","146","1");
INSERT INTO profine_states VALUES("5164","Drugovo","146","1");
INSERT INTO profine_states VALUES("5165","Dzepciste","146","1");
INSERT INTO profine_states VALUES("5166","Gazi Baba","146","1");
INSERT INTO profine_states VALUES("5167","Gevgelija","146","1");
INSERT INTO profine_states VALUES("5168","Gostivar","146","1");
INSERT INTO profine_states VALUES("5169","Gradsko","146","1");
INSERT INTO profine_states VALUES("5170","Ilinden","146","1");
INSERT INTO profine_states VALUES("5171","Izvor","146","1");
INSERT INTO profine_states VALUES("5172","Jegunovce","146","1");
INSERT INTO profine_states VALUES("5173","Kamenjane","146","1");
INSERT INTO profine_states VALUES("5174","Karbinci","146","1");
INSERT INTO profine_states VALUES("5175","Karpos","146","1");
INSERT INTO profine_states VALUES("5176","Kavadarci","146","1");
INSERT INTO profine_states VALUES("5177","Kicevo","146","1");
INSERT INTO profine_states VALUES("5178","Kisela Voda","146","1");
INSERT INTO profine_states VALUES("5179","Klecevce","146","1");
INSERT INTO profine_states VALUES("5180","Kocani","146","1");
INSERT INTO profine_states VALUES("5181","Konce","146","1");
INSERT INTO profine_states VALUES("5182","Kondovo","146","1");
INSERT INTO profine_states VALUES("5183","Konopiste","146","1");
INSERT INTO profine_states VALUES("5184","Kosel","146","1");
INSERT INTO profine_states VALUES("5185","Kartovo","146","1");
INSERT INTO profine_states VALUES("5186","Kriva Palanka","146","1");
INSERT INTO profine_states VALUES("5187","Krivogastani","146","1");
INSERT INTO profine_states VALUES("5188","Krusevo","146","1");
INSERT INTO profine_states VALUES("5189","Kuklis","146","1");
INSERT INTO profine_states VALUES("5190","Kukurecani","146","1");
INSERT INTO profine_states VALUES("5191","Kumanovo","146","1");
INSERT INTO profine_states VALUES("5192","Labunista","146","1");
INSERT INTO profine_states VALUES("5193","Lipkovo","146","1");
INSERT INTO profine_states VALUES("5194","Lozovo","146","1");
INSERT INTO profine_states VALUES("5195","Lukovo","146","1");
INSERT INTO profine_states VALUES("5196","Makedonska Kamenica","146","1");
INSERT INTO profine_states VALUES("5197","Makedonski Brod","146","1");
INSERT INTO profine_states VALUES("5198","Mavrovi Anovi","146","1");
INSERT INTO profine_states VALUES("5199","Meseista","146","1");
INSERT INTO profine_states VALUES("5200","Miravci","146","1");
INSERT INTO profine_states VALUES("5201","Mogila","146","1");
INSERT INTO profine_states VALUES("5202","Murtino","146","1");
INSERT INTO profine_states VALUES("5203","Negotino","146","1");
INSERT INTO profine_states VALUES("5204","Negotino-Polosko","146","1");
INSERT INTO profine_states VALUES("5205","Novaci","146","1");
INSERT INTO profine_states VALUES("5206","Novo Selo","146","1");
INSERT INTO profine_states VALUES("5207","Oblesevo","146","1");
INSERT INTO profine_states VALUES("5208","Ohrid","146","1");
INSERT INTO profine_states VALUES("5209","Orasac","146","1");
INSERT INTO profine_states VALUES("5210","Orizari","146","1");
INSERT INTO profine_states VALUES("5211","Oslomej","146","1");
INSERT INTO profine_states VALUES("5212","Pehcevo","146","1");
INSERT INTO profine_states VALUES("5213","Petrovec","146","1");
INSERT INTO profine_states VALUES("5214","Plasnica","146","1");
INSERT INTO profine_states VALUES("5215","Podares","146","1");
INSERT INTO profine_states VALUES("5216","Prilep","146","1");
INSERT INTO profine_states VALUES("5217","Probistip","146","1");
INSERT INTO profine_states VALUES("5218","Radovis","146","1");
INSERT INTO profine_states VALUES("5219","Rankovce","146","1");
INSERT INTO profine_states VALUES("5220","Resen","146","1");
INSERT INTO profine_states VALUES("5221","Rosoman","146","1");
INSERT INTO profine_states VALUES("5222","Rostusa","146","1");
INSERT INTO profine_states VALUES("5223","Samokov","146","1");
INSERT INTO profine_states VALUES("5224","Saraj","146","1");
INSERT INTO profine_states VALUES("5225","Sipkovica","146","1");
INSERT INTO profine_states VALUES("5226","Sopiste","146","1");
INSERT INTO profine_states VALUES("5227","Sopotnica","146","1");
INSERT INTO profine_states VALUES("5228","Srbinovo","146","1");
INSERT INTO profine_states VALUES("5229","Staravina","146","1");
INSERT INTO profine_states VALUES("5230","Star Dojran","146","1");
INSERT INTO profine_states VALUES("5231","Star Nagoricane","146","1");
INSERT INTO profine_states VALUES("5232","Stip","146","1");
INSERT INTO profine_states VALUES("5233","Struga","146","1");
INSERT INTO profine_states VALUES("5234","Strumica","146","1");
INSERT INTO profine_states VALUES("5235","Studenicani","146","1");
INSERT INTO profine_states VALUES("5236","Suto Orizari","146","1");
INSERT INTO profine_states VALUES("5237","Sveti Nikole","146","1");
INSERT INTO profine_states VALUES("5238","Tearce","146","1");
INSERT INTO profine_states VALUES("5239","Tetovo","146","1");
INSERT INTO profine_states VALUES("5240","Topolcani","146","1");
INSERT INTO profine_states VALUES("5241","Valandovo","146","1");
INSERT INTO profine_states VALUES("5242","Vasilevo","146","1");
INSERT INTO profine_states VALUES("5243","Veles","146","1");
INSERT INTO profine_states VALUES("5244","Velesta","146","1");
INSERT INTO profine_states VALUES("5245","Vevcani","146","1");
INSERT INTO profine_states VALUES("5246","Vinica","146","1");
INSERT INTO profine_states VALUES("5247","Vitoliste","146","1");
INSERT INTO profine_states VALUES("5248","Vranestica","146","1");
INSERT INTO profine_states VALUES("5249","Vrapciste","146","1");
INSERT INTO profine_states VALUES("5250","Vratnica","146","1");
INSERT INTO profine_states VALUES("5251","Vrutok","146","1");
INSERT INTO profine_states VALUES("5252","Zajas","146","1");
INSERT INTO profine_states VALUES("5253","Zelenikovo","146","1");
INSERT INTO profine_states VALUES("5254","Zelino","146","1");
INSERT INTO profine_states VALUES("5255","Zitose","146","1");
INSERT INTO profine_states VALUES("5256","Zletovo","146","1");
INSERT INTO profine_states VALUES("5257","Zrnovci","146","1");
INSERT INTO profine_states VALUES("5258","Kosovo","271","1");
INSERT INTO profine_states VALUES("5259","Uttaranchal","113","1");
INSERT INTO profine_states VALUES("5260","AOL","254","1");
INSERT INTO profine_states VALUES("5261","WebTV","254","1");
INSERT INTO profine_states VALUES("5262","AOL","14","1");
INSERT INTO profine_states VALUES("5263","AOL","253","1");
INSERT INTO profine_states VALUES("5264","AOL","33","1");
INSERT INTO profine_states VALUES("5265","AOL","122","1");
INSERT INTO profine_states VALUES("5266","AOL","91","1");
INSERT INTO profine_states VALUES("5267","Chhattisgarh","113","1");
INSERT INTO profine_states VALUES("5268","Jharkhand","113","1");
INSERT INTO profine_states VALUES("5269","Mwaro","40","1");
INSERT INTO profine_states VALUES("5270","Bulawayo","274","1");
INSERT INTO profine_states VALUES("5271","Harare","274","1");
INSERT INTO profine_states VALUES("5272","Adiake","60","1");
INSERT INTO profine_states VALUES("5273","Alepe","60","1");
INSERT INTO profine_states VALUES("5274","Bocanda","60","1");
INSERT INTO profine_states VALUES("5275","Dabou","60","1");
INSERT INTO profine_states VALUES("5276","Grand-Bassam","60","1");
INSERT INTO profine_states VALUES("5277","Jacqueville","60","1");
INSERT INTO profine_states VALUES("5278","Toulepleu","60","1");
INSERT INTO profine_states VALUES("5279","Mandiana","102","1");
INSERT INTO profine_states VALUES("5280","Lola","102","1");
INSERT INTO profine_states VALUES("5281","Lelouma","102","1");
INSERT INTO profine_states VALUES("5282","Koubia","102","1");
INSERT INTO profine_states VALUES("5283","Coyah","102","1");
INSERT INTO profine_states VALUES("5284","Gorontalo","114","1");
INSERT INTO profine_states VALUES("5285","Kepulauan Bangka Belitung","114","1");
INSERT INTO profine_states VALUES("5286","Banten","114","1");
INSERT INTO profine_states VALUES("5287","Ulsan-gwangyoksi","133","1");
INSERT INTO profine_states VALUES("5289","Sembabule","250","1");
INSERT INTO profine_states VALUES("5290","Nakasongola","250","1");
INSERT INTO profine_states VALUES("5291","Katakwi","250","1");
INSERT INTO profine_states VALUES("5292","Busia","250","1");
INSERT INTO profine_states VALUES("5293","Bugiri","250","1");
INSERT INTO profine_states VALUES("5294","Adjumani","250","1");
INSERT INTO profine_states VALUES("5295","Nabatiye","138","1");
INSERT INTO profine_states VALUES("5296","Khost","1","1");
INSERT INTO profine_states VALUES("5297","Nuristan","1","1");
INSERT INTO profine_states VALUES("5298","Sarur","16","1");
INSERT INTO profine_states VALUES("5299","Sahbuz","16","1");
INSERT INTO profine_states VALUES("5300","Sadarak","16","1");
INSERT INTO profine_states VALUES("5301","Ordubud","16","1");
INSERT INTO profine_states VALUES("5302","Babak","16","1");
INSERT INTO profine_states VALUES("5303","Barisal","20","1");
INSERT INTO profine_states VALUES("5304","Sylhet","20","1");
INSERT INTO profine_states VALUES("5305","Brabant Wallon","24","1");
INSERT INTO profine_states VALUES("5306","Vlaams-Brabant","24","1");
INSERT INTO profine_states VALUES("5308","Hamilton","27","1");
INSERT INTO profine_states VALUES("5309","Eastern Tutuila","4","1");
INSERT INTO profine_states VALUES("5310","Unorganized","4","1");
INSERT INTO profine_states VALUES("5311","Western Tutuila","4","1");
INSERT INTO profine_states VALUES("5312","Manu\'a","4","1");
INSERT INTO profine_states VALUES("5313","Brcko District","30","1");
INSERT INTO profine_states VALUES("5314","Tashi Yangtse","28","1");
INSERT INTO profine_states VALUES("5315","Gasa","28","1");
INSERT INTO profine_states VALUES("5316","Plateau","26","1");
INSERT INTO profine_states VALUES("5317","Littoral","26","1");
INSERT INTO profine_states VALUES("5318","Donga","26","1");
INSERT INTO profine_states VALUES("5319","Couffo","26","1");
INSERT INTO profine_states VALUES("5320","Collines","26","1");
INSERT INTO profine_states VALUES("5321","Alibori","26","1");
INSERT INTO profine_states VALUES("5322","Guria","90","1");
INSERT INTO profine_states VALUES("5323","Imereti","90","1");
INSERT INTO profine_states VALUES("5324","Kakheti","90","1");
INSERT INTO profine_states VALUES("5325","Kvemo Kartli","90","1");
INSERT INTO profine_states VALUES("5327","Mtskheta-Mtianeti","90","1");
INSERT INTO profine_states VALUES("5328","Racha-Lochkhumi-Kvemo Svaneti","90","1");
INSERT INTO profine_states VALUES("5329","Samegrelo-Zemo Svateni","90","1");
INSERT INTO profine_states VALUES("5330","Samtskhe-Javakheti","90","1");
INSERT INTO profine_states VALUES("5331","Shida Kartli","90","1");
INSERT INTO profine_states VALUES("5332","Govi-Sumber","165","1");
INSERT INTO profine_states VALUES("5333","Darhan Uul","165","1");
INSERT INTO profine_states VALUES("5334","Najin Sonbong-si","132","1");
INSERT INTO profine_states VALUES("5335","Anseba","74","1");
INSERT INTO profine_states VALUES("5336","Semenawi Keyih Bahri","74","1");
INSERT INTO profine_states VALUES("5337","Maekel","74","1");
INSERT INTO profine_states VALUES("5338","Gash Barka","74","1");
INSERT INTO profine_states VALUES("5339","Debubawi Keyih Bahri","74","1");
INSERT INTO profine_states VALUES("5340","Debub","74","1");
INSERT INTO profine_states VALUES("5341","Mosteiros","44","1");
INSERT INTO profine_states VALUES("5342","Porto Novo","44","1");
INSERT INTO profine_states VALUES("5343","Santa Cruz","44","1");
INSERT INTO profine_states VALUES("5344","São Domingos","44","1");
INSERT INTO profine_states VALUES("5345","São Filipe","44","1");
INSERT INTO profine_states VALUES("5346","Balé","38","1");
INSERT INTO profine_states VALUES("5347","Banwa","38","1");
INSERT INTO profine_states VALUES("5348","Ioba","38","1");
INSERT INTO profine_states VALUES("5349","Komondjari","38","1");
INSERT INTO profine_states VALUES("5350","Kompienga","38","1");
INSERT INTO profine_states VALUES("5351","Koulpélogo","38","1");
INSERT INTO profine_states VALUES("5352","Kourwéogo","38","1");
INSERT INTO profine_states VALUES("5353","Léraba","38","1");
INSERT INTO profine_states VALUES("5354","Loroum","38","1");
INSERT INTO profine_states VALUES("5355","Nayala","38","1");
INSERT INTO profine_states VALUES("5356","Noumbiel","38","1");
INSERT INTO profine_states VALUES("5357","Tui","38","1");
INSERT INTO profine_states VALUES("5358","Yagha","38","1");
INSERT INTO profine_states VALUES("5359","Ziro","38","1");
INSERT INTO profine_states VALUES("5360","Zondoma","38","1");
INSERT INTO profine_states VALUES("5361","Carriacou","97","1");
INSERT INTO profine_states VALUES("5362","River Gee","140","1");
INSERT INTO profine_states VALUES("5363","Gbarpolu","140","1");
INSERT INTO profine_states VALUES("5364","Pwani","238","1");
INSERT INTO profine_states VALUES("5365","Düzce","246","1");
INSERT INTO profine_states VALUES("5366","Manouba","245","1");
INSERT INTO profine_states VALUES("5367","Kidal","151","1");
INSERT INTO profine_states VALUES("5368","Rota","184","1");
INSERT INTO profine_states VALUES("5369","Saipan","184","1");
INSERT INTO profine_states VALUES("5370","Tinian","184","1");
INSERT INTO profine_states VALUES("5371","Kigali-Ville","204","1");
INSERT INTO profine_states VALUES("5372","Umutara","204","1");
INSERT INTO profine_states VALUES("5373","Trinité","155","1");
INSERT INTO profine_states VALUES("5374","Saint-Pierre","155","1");
INSERT INTO profine_states VALUES("5375","Marin","155","1");
INSERT INTO profine_states VALUES("5376","Fort-de-France","155","1");
INSERT INTO profine_states VALUES("5377","Taraclia","163","1");
INSERT INTO profine_states VALUES("5378","Phalombe","148","1");
INSERT INTO profine_states VALUES("5379","Likoma","148","1");
INSERT INTO profine_states VALUES("5380","Balaka","148","1");
INSERT INTO profine_states VALUES("5381","Putrajaya","149","1");
INSERT INTO profine_states VALUES("5382","Saint-Laurent-du-Maroni","84","1");
INSERT INTO profine_states VALUES("5383","Cayenne","84","1");
INSERT INTO profine_states VALUES("5384","Saint Thomas","261","1");
INSERT INTO profine_states VALUES("5385","Saint John","261","1");
INSERT INTO profine_states VALUES("5386","Saint Croix","261","1");
INSERT INTO profine_states VALUES("5387","West Bank","275","1");
INSERT INTO profine_states VALUES("5388","Gaza","275","1");
INSERT INTO profine_states VALUES("5389","Wales","253","1");
INSERT INTO profine_states VALUES("5390","Scotland","253","1");
INSERT INTO profine_states VALUES("5391","Northern Ireland","253","1");
INSERT INTO profine_states VALUES("5392","England","253","1");
INSERT INTO profine_states VALUES("5393","Centre","240","1");
INSERT INTO profine_states VALUES("5394","Kara","240","1");
INSERT INTO profine_states VALUES("5395","Maritime","240","1");
INSERT INTO profine_states VALUES("5396","Plateaux","240","1");
INSERT INTO profine_states VALUES("5397","Savanes","240","1");
INSERT INTO profine_states VALUES("5398","Imo","181","1");
INSERT INTO profine_states VALUES("5399","Katsina","181","1");



DROP TABLE profine_states1;

CREATE TABLE `profine_states1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `states_name` varchar(100) NOT NULL,
  `countries_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `date_added` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO profine_states1 VALUES("-1","Select","","1","0");
INSERT INTO profine_states1 VALUES("2","UP","99","1","0");
INSERT INTO profine_states1 VALUES("3","New Delhi","99","1","0");
INSERT INTO profine_states1 VALUES("10","fdgfd","99","1","1392662406");



DROP TABLE profine_testimonials;

CREATE TABLE `profine_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `testimonials_title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `date_edited` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO profine_testimonials VALUES("4","Mrs &amp; Mr. John Stamos","UK","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319798587testimonial-pic1.jpg","1319817121","1319823483","1");
INSERT INTO profine_testimonials VALUES("5","Mrs &amp; Mr. Smith Tayler","California","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802471testimonial-pic.jpg","1319822271","1319823470","1");
INSERT INTO profine_testimonials VALUES("6","Mrs &amp; Mr. Jaquce Callise","California","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802520testimonial-pic2.jpg","1319822320","1319823457","1");
INSERT INTO profine_testimonials VALUES("7","Mrs &amp; Mr. Tom","US","","&lt;p&gt;\n	We were fanatical about the finish of our home. That&amp;#39;s why we invested in flawless windows.&lt;/p&gt;\n","1319802587testimonial-pic3.jpg","1319822387","1319823441","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO profine_user VALUES("4","1","","","test","test","test@test.com","test","test","","test","1212112121","ÿØÿà\0JFIF\0\0x\0x\0\0ÿá\0·Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0\0V\0\0\0\0\0\0\0^(\0\0\0\0\0\0\01\0\0\0\0\0\0\0f2\0\0\0\0\0\0\0q‡i\0\0\0\0\0\0\0…\0\0\0\0\0-ÆÀ\0\0\'\0-ÆÀ\0\0\'PhotoScape\02009:03:18 23:21:50\0\0 \0\0\0\0ÿÿ\0\0 \0\0\0\0\0\0\n\0 \0\0\0\0\0\0@\0\0\0\0ÿáÞhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.1.1-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:xapMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\"\n    xmlns:xap=\"http://ns.adobe.com/xap/1.0/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:photoshop=\"http://ns.adobe.com/photoshop/1.0/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:exif=\"http://ns.adobe.com/exif/1.0/\"\n   xapMM:DocumentID=\"uuid:E752E731D013DE1182DC8964AAB6E8E8\"\n   xapMM:InstanceID=\"uuid:E852E731D013DE1182DC8964AAB6E8E8\"\n   xap:CreateDate=\"2009-03-18T23:21:50+08:00\"\n   xap:ModifyDate=\"2009-03-18T23:21:50+08:00\"\n   xap:MetadataDate=\"2009-03-18T23:21:50+08:00\"\n   xap:CreatorTool=\"Adobe Photoshop CS2 Windows\"\n   dc:format=\"image/jpeg\"\n   photoshop:ColorMode=\"3\"\n   photoshop:History=\"\"\n   tiff:Orientation=\"1\"\n   tiff:XResolution=\"3000000/10000\"\n   tiff:YResolution=\"3000000/10000\"\n   tiff:ResolutionUnit=\"2\"\n   tiff:NativeDigest=\"256,257,258,259,262,274,277,284,530,531,282,283,296,301,318,319,529,532,306,270,271,272,305,315,33432;72DD0A9CC44B72648117989D44870DE6\"\n   exif:PixelXDimension=\"2560\"\n   exif:PixelYDimension=\"1600\"\n   exif:ColorSpace=\"-1\"\n   exif:NativeDigest=\"36864,40960,40961,37121,37122,40962,40963,37510,40964,36867,36868,33434,33437,34850,34852,34855,34856,37377,37378,37379,37380,37381,37382,37383,37384,37385,37386,37396,41483,41484,41486,41487,41488,41492,41493,41495,41728,41729,41730,41985,41986,41987,41988,41989,41990,41991,41992,41993,41994,41995,41996,42016,0,2,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,22,23,24,25,26,27,28,30;EFEDD31BA18C3EB26027802A715F874C\">\n   <xapMM:DerivedFrom\n    stRef:instanceID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"\n    stRef:documentID=\"uuid:E652E731D013DE1182DC8964AAB6E8E8\"/>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>ÿÛ\0C\0		\n\n\n\n	ÿÛ\0CÿÀ\0@\n\0\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýÇù½¨ù½©Ø>†°{Ð)vJvÁéKÂ@(>ojOûê—-è)hc8÷§ÑE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(ÉPEPEPEPEPEPEPEPEPEPEPEPEPEPE»© ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¨êJgçŠ\0QO¨è 	*:( 	(¢Š\0`ê)*JŽ€$¨è¢€\n(¢€\n(¢€\n(¢€þtQE\0QMòýèÔÖù±ŽqC7aN `ú0}>Š\0f¡¡”­>Š\0oûÔÚw—ïNá‡¨4IE‚€\noÍN¢€\n(Àô`z\n\0(¢Š\0(£9éE\0QE\0QE\0QE\0QE\0QE\0Ò–ƒÐÐ2paIE\n:Š}GRTÈCcïN¢ŠRcjÁERQMòýèûžù­\0uQ@èh¦ùžÔê\0(¢Š\0(áG Q@QEÀ(£·¢€\nQÔRRŽ¢	KËRh=M±õ&‹€•%GE\\Ÿü…2Š\0©AQÒž¦†®ÇAQÑE	X	*:)Ñ÷¤•€uQRE4®RTtU5p$¨è©(JÀGRQE	ÜŠ(¡«€QEÀo—ïN¢Š\0(¢Š™\0QEÛ°Pz¸QBV\0¢Š(¸Š»ii€QE¹PQL.QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEŠ( Š( Š( Š( Š( Š( Š( Š( Š( ŠwßöÅ:¥Èè¢Š \n(¢‹€QKƒèhÁô4\\¢Š’“v:)YJÒP˜QLŠ( Š( Š(¥`\n]ÇÔÒQE˜PHM\0RäzQ¸úšI\0”RñïGôîÆ%.¡£#Ò0z\n.QEÄRî>¦’„À\\ŸZJ(¤•€(¢Š;>çó¦ÒäzRc—qõ4n>¦’˜‚Š:ðh¢ÚÜŠ(¢ãAKÇ½%XBáØ¤¢ŠJ#¸QEB\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n2EPEPEPEPEPEPEPEPEPEPEPEPEPLïÎiõ\0QE\0QE\0QE\0IEGE\0QE\0&Š( Š( Š( Š(=\0QE\06>ôê( Š)»¿ïž”\0ê(¢“@QE0\n(¢€\n(¢€øÿ\0\nZ( Š( Š( aEg=(QE\0QE\0QE\0QKÇ½>¥Èé²v§SSTQE¯­€*E9¨éÑ÷¥$¸zŠ(¢¤põS]º`Ò|ÞôÔ@}QHŠfãêiôÚ°Ó°QEù°¢Šlª„:Šo™íN \0tQFáê)$;…QCb\n(¥åO¡&RîùqFï—”\0QEÀ)ß-÷£æ©lQQÔ”š°ÑNòýéµI€S£ïM©)I€S;ñšJ)¥`$¢Š*\0*:’ŠiØêJ(áG 7p#©(¨ê“¸QE¹€(¢ŠiÜŠ(¦ERHŠ(¡;€QEÀ(¢Š\0(¢Š\0( tPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEP£ïIƒèi(¤QLŠ( Š\\CI@Q@ó=©´QI $¢›\'jmJˆ“µ6Š*’\0§y~ôÚt}è`_½:£¢“@/*}¤¢”Ý*€J(¢€åûÓißsß4ÚI€QEÀ(©(©æ:)ÛG­-;€Ú*J)s=Í%s\0ÌZJ’ŠJC#¢¤¢Ÿ0Áô4”ï/Þ/ÞÄ6—æ÷§Ò|­ìi\\üÞô•& ¦ù~ô&iySèE;jZ€fãëFãêhÁô4”Ò\0¢Šw—ïC`6Š(§qØ(¢ŠS¶QFÔÒæC°Ú)Þ_½.?Ùœ„7ÐÒQEP°úQ°úRQJÌŠ(¦EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPFáê(¢€\ngñþ4”PRQLåO¡\0úaêi( ¤¨êJ\0ŽŠ)Þ_½&ÀmQLŠ( põQAèh\0¢Š(\0¢ÃÔS|Ïj\0uS‰ ÓdíM¢€$¢£¢€$¢›÷ý±N ŠoÜ÷Í:€þÕóg<âˆûÓ¨\0¢£©(\0 tQ@ÍŠZ( 8ëE0õŠ\0O›Ú–ÐQ@QI0\n(¢˜Q@Q@0õ4úaêh(¢Š‰nJ:ŠJQÔU&ÇAET\0Ù;S¨¢†À)›¾\\Sê:¨€èûÒ¦’¤=6õ\0¦¦œpy¤òýèLÔ•(ê)€ú(¢“v\0¦ùžÔ}Ï|Ó©€ØûÓ¨ t\0QEÐ$ÑEI\0R³@ê(þ?Æ†À}7ýÚNXú“II $¢™ó{Ñ¸úšI\0þzƒQÓ•»u	Ø£©(¡;\0QE€(¢Š\0(¢Š\0(¢Š\0(¢ŠiØŠŽ¤¡«\0QE\'`\n(¢¬Š(¤Ý€(¢Š\0¢Š)€QE\0QE\0P:\n( Š( Š( Š( Š( Š)GQ@	EPEPEPEPEPEPEPEPEï3Ú“`6Š(¦EP”Ù;P«ÜÑ\'jM\0Ú(¢˜.¡¤¢€\n^TúIE\0»©¤¢€\nt}é´RhŠ)Þgµ€¿ÇøRÑEC`‚Š)²v¡\0IÚ›Nó=©µh	*:(¡+\0QEÀ’˜Ë·ç4•%E¬TnéŠ<¿zmVJfãëKæ{P_#¤	¸úÑÇ©£æ÷£aô¦Òbî”e}µ6’H./¦‘ýÓùS(§Ê¼{Ñ¼{ÓvJJI!Þ=é<ÏjmùPó=¨ó=©´QÊ¼Ïj<Ïj>Z0¾¦–ƒ°»¡¤Ý»Œc4ê)\\C|¿z<¿zuGM6¾ç¾hù©ÔR¸ó=¨òýèù¨ù©ú\0y~ôy~ôGÞ—j`\'—ïG™íKÇµ-+÷¾gµ:Š)6|¿zu7Ë÷£æ¦õÔß–šš„€mQVEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPtT•\0.ãêi(¢€\n(¢€\n(¢€\n’£¢“WÞgµ6Š(HŠ(¦E¡¢€zƒEŒØ fì)´¼©ô\"’€qõ4”QÉâ€\n)Þgµ6€$¨è¢€$¢˜:ŠQ@þí:›æ{S¨\0¢ŠŽ€$¢Š(\0¢Šj·c@¢›÷ý±N\0QE\0QENÀQEÀQE6ìES\0¢Š(\0 ô4SdíI¡¦6Š(©–â\n(¢ˆî£ïN¢ŠM€QE\0QE\0ß¹ïšuPØûÝ8Å8ô4QEÀ(ü±E\0QE\0QE&F ¢Š¥ \n(£ÐQ\n(£…€U\0RŽ¢’Š^ /==èå©4”Q`\n(¢˜ÐèûÓ©œ©ô\"ŸQ!QHŠ( Š(\0QE\0QE\0QE\0QEVàQEHQM»€QEIÜŠ(ÀôÀ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š‚Š( AEPEPE.¡¤¡0\n(¢€\n(¢€\n*J*y€ŽŠ’£¦À(¢Š`QE\0QKÊŸB(CžGÞ3Ú3Ú’@6”u•%0\n(¢€\n*:w—ï@©)¾_½:¦@IE:’Š)¶HË»ã´T&|¿zLCO¢«˜`ú}RnàQE \n(¢ª GRS|¿zuPGRQ@GE’°òýèòýèçgÐÓh³Ûµµÿ\0dÒ`ú,À~ ¢™ƒèhÁô4¹@_3Ú3Ú“•>„RSå@IEGNòýér€êCMòýéJdç8¢Ö<¿zu7Ë÷£Ë÷¤Àu`z\nO›ÚI°zRÑEÀN=©{qŠ(¢à\'ÍíKE\\ÃzŠ0Þ¢–Šw0Þ¢–“ê)h`QE \no—ïN¢„Ào—ïG—ïK†õa½EUØ	åûÓ¨£põ-€QE\'ÍíB”QEhEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPE\0QE\0QE\0T”TóQTEPEPEPEPE7nîsŒÓ¨¿sß4yžÔyžÔƒ¨ qõ4”Q@Q@Q@TtQ@¸úšJ*MÃÔRlè©*:`Rÿ\0ãI@Q@ÿ\0zEG@ScïM¥ÎO<Š\0}S~ç¾hÔQMûžù QE	\\Š(¡»€{sE ÐU€”SÅ»·@jh´ÙfáQ\0V¦ÉÚµÃ³»rG¹©×Â§?4Š(f)Z0}tqøfûÌOéV\"Ñí¡û¨¬ÞüÒhg*¨Å¸Ó¼©¢µuÉimòÇ?JpAÎþù§d+œšØNÿ\0òÍÿ\0ïšzè÷/È‰ÉúWTÜ4ËŽ¥…5æ9µÐ.›‘§Ý…û‹ù×B7FëN•)\\æ$Ð®bÆcfÏ§5ÙÈ†B?\në·Z÷³šmgbeê¢)v>LÜþùß²ÃœùIŸ ©²Î;ÐÓë®û,_ÜOûäR£òÎ?ÈPÕÁ3’¢º··„Œ´IùTijÇ˜V©Ââæ9º+~M2Í¹Ã/ÐÔM¢Z·I\nÔû6>db3mÇikZOÃÚcøŠcxmˆÌr+Õr43(«w4ÖýU±ê9¨Ü¯³q¥[µ%XŠ(¤¸zŠ(¢«˜Š(¦Ý€)p}%À)Tn8éIJŽ”˜¢›÷ý±M©QJ*:wÜ÷Í :Š(¤EPEPEPEPFáê(¢›`QE \n(¢€\n(¢­;€QEÀ(¢Šž`\n(¢¨Š( Š( Š( Š( Š( Š( Š\\CO¤ØÑRQK˜êJ(¤ÝÀl©´T”Û°QRQÑEZVJŽ¤¦`úQ(¢¤ª:(©(œ±õ&’¤¢“`QEJ`IER`QAèi€QE\0QE’°QLŠ(©q\0á‡¨4QE\0¢Š*R:’£©*Ú¸QR€k/qN¢Š¤À)±÷§QC`ÌCK\'j#ïLÑN“µ6€\nwÍM¢€¹½)p=)£¨§ÔÉ€˜”´QRØQNìØ=èØ=éh¢ìÐQE®FsÒŠ(\0¢Š(\0¢Š(\0Ü=EQC\0¢Š(@‚Š(¡€QE\0QE$E8PI°{ÒÑB`\0éEP˜ÑG^ Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@ r)(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0áG QE\0QE\0ILç§½\0%Q@T”%G@Q@sÛ­\0RŸlâ’Š\0(¢Žzƒ@6NÔêl¨\0ÿ\0z3ÚI»æÅ\07¿9¤©)œ©ô\"€Šw—ïN©r:)Òv¦ÓL»wÆiÕ	Ü	(¢›\'j„€uQ@Q@¡¢ÃÔP€(¢Š\0o™íNGNûžùªh‚Š7QG=A©\0¢ÐQ@Q@T°ÛN6äSJàE´·N*T¶-Z–8Ý!ÚçZVúlPŒ}O5IÌ;}\"Iþê6=OJÐƒÃ¸$Èÿ\0€­@tÀ¤ó=©¤+A¦Ãn8]ÇÔóS\0i¦AŽ\04Ö”§m5\'\"MÇÖÇÔÕsr[!W9¦–`71T\\„óv,»ÁëP<òéÅ5¯x4Õ»ryÀªPk ®)ºsÕE/Ú‹vjzÌ~m´MÎ)¦–èÏ9¤$§,EÀæœ ‹wAGß/AC}„Øå·Óò0˜Ìå¶­DòÈN\nóIE½ÆLÒ•Í#]2åMB†‘ëC\\¶Ü·>Õ\\¡©`]ŽŒ5 œ7BMg±f?0>ôÖ•¢b‡MÔg¨ÃÔVj^@oâüEJ—ûÔ¸Ëo‚sLhžG4ÄœvÍJ³)\\“ŠVhÍ‰ê	â•l7ót‹[ŠCx0Æ„å`vg(ùp)ìÉñÇÒ«½Ú·CšÈcŸåG+{‚}‰%Ô@nx›˜.†Ycª×ò‚HSúÕÒHÜ¸Ur ¹¥.‰£(Yæ+2÷J’Ðå†W±È¯.-Üá™½FkJÚîk”Ä‘¤sš—Li³©¤­kÍ¸ÝÌ=;Öd±4-µ†dáb“ER“QEš°QTÀ(¥ÉÎ{ÒP˜IQÑCWFF>£§GÞ”Â‰;Qæ{S©l~ç¾iÔQI°\n(¢€\n(¢€\n(¢€6XJZ( Š( Š( Š(¦ÝÀ(¢Š¸QHŠ(«nÀQE	XŠ(¦EQp\n(¢€\n(¢ ¢¤¢§˜DtQEPQ@½:£¢¥Ä	*:’ŠIØ\0ô5IQÓ‹\0¢Šw—ïM°E;Ë÷¦Ð˜IE¤Mó=©ÔÝ»¹Î3D@uS|ÏjMj¨¢›z¤ÀuQRÕ€(¢Š°S~ç¾iÅ€ê(¢¨Š( Š(¬Ú\0¢Š(H›åûÓ¨¦Õ€E]¹ç9¥¢Š€(¢ŠI€QEÛ¸QHŠ(«H›´zÓ¨¦Eß3Ú€Mó=¨ó=©ÜúŠM€ß3ÚF ¦ù~ô&¨¦ù~ôê`7Ìö£Ìö§QI°æ{S¨¢‹ åûÑåûÓ©¬½Å	€y~ôêf¡§Ó\0¢Š(\0¦íoZu7Ë÷¥tµ½hù¨ù—ÜS¨l|Þôú(©lŠ(¥`\n(¢€\n(¢€\n(£wû4$ES²:(¢¬Š( Š7QE\0QE\0QE\0QE\0QE\0QE\0QE\0¸>†’—â€Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( £¢Š\0)Øî)´¤ä“Jà/ñ|ÔêfryäRS\0¢Š(\0¢Š(\0£¯Q@x4Q@‡¨¢Š\0(¦ýÿ\0lS¨\0¢Šo™í@ßöÅ6¤¢€\n(¢³\0¢Š(\0¢£¢«”	)¿íQzu-€(¢Š@n¢›æ{Qæ{SåÔSå¥:“@QE\0QE\0Q@è(\0¨êJgð~5Qô­®îk_IÐ¼åMò¯aMDM”ì4·»~Ò·¬4Èì—<³úÔñÆ¨U\0Ns“ŽÂ©n&×P.p:TlÅ¹=)¯.84ŠÙàÕ(’åqÛð¼S\\­1Û8Í4ã©8ö«Q%itéHuc“éQ‰Bð*9çÚ¸ïT¢4‰¦¼ÇÁªÞas–5ð®IÎM#Ï³jÔm°\"Öà6óN2¨lMf›À£†¦µÑnŸ­;Ôk…èH¦ý±zÖa¸=7{Ñö“zM¬/´hûv8;k§nÇŠhœ‡ç¿zVAclßßysN*GEÍaù­¼õ º#§ÚŽP5‰fåoµA,—!ð9Qê*¢jL¼žjxµtbŽÓE„Ð4Øé´¯qÒ¢}HŒ$ƒi=ÇJ–T.7Ç#éTeÕeRTÛ¤Š½{f†ÆNŠÍœn#ô©	hñ…Ûê;Uxu6t!h›ÓøiÂ÷í*TÓš,E©\0v–Á^Ô§QlñòŠ¬–ÉÆöeúTÂÐ”îaëEÀQzÄôÍJžd¼Àý(?†™{­YéHââG«¸Súši7¢d¾C¹Â\0íëéH©sgó\0Î{æ¨¿Ä3#Gm,:õ jd^9–W*alöhq’ÝÑ 5é!m²DÇ‚¬.§À\nc$žÄUüMöƒ´F»¨¥þÐHäá~fëÚ¦Ã4r½sJnp>CYËvò.AùMJ’?F®iØÀ˜ÇÊx5õ¤w«‚0þµÝ2QIç´œ}ÚM\\3nmZÙŠ²ñPÖ¼¬²‚²Ã±ªW6F?˜r¦±”Ø´ÊÝ=A”SdíRÇQE)ØŠ(§ÌESLŠ]ÇÔÒQpz<¿zEÎxëIJÀIET€QMó=©Ô4EPEPEPEPF9Ïz( Š( Š( Š( Š(¦Õ€(¢ŠM…QZ(¢Š\0(¢Š\0)GQIE\0QE\0QE\0QE\0»¾\\b’œi0QÑE	X	(¢Š€\n0=QpåûÓjJMƒÞ©K¸©(¢‰\0QE ØûÓ©¿sß5iÜQE7Ë÷¦¨£ÐQI0\n(¢¥»€QEâEQ¸QTETÉ\0QE QEW0QRESJàQE QE&€( ô4U¦è)¾_½:ŠM°`ô¥ÀôQK™€ß/ÞE^àQE\0QEQE€)>ojZ)¦EP˜QUÌE‚†PO­C°QE®„QE&îER\0¢Š(\0¢Š(\0¢Š*¹†ÂŠ(©hAEPtQEhEQ`\n(¢€\n(¢€\n(£ÐPEGc@¯J8:QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPEPEPEPEPJÙïšJ(\0¢ƒžÝh ŠCMûžù QE\0QEIQÑ@QE\'ÍíY £¢¤ªØè¥=M%R`/,}I¥½6ŠVÐ	(¨êJ–¬ER\0¦ù~ôêo—ïM0ER\0¢£§GÞ›ˆ¢ŠoÍI úPpNTôÜe°+ÅÌö~0Ðt‹hÌÚ„Í%Ê)ÿ\0S\n©ù›þø×E\n.£å¯ÜEJŠ\nìêü5f×“´¥6Â‡\0Ÿã?á]°éL·ŒAU\0©û©©“ì	÷œÔ2O»Ž˜¢æàÀäÕFvfã ÕÂDÝË\0œÿ\0zž¹\0š‚õš’Y6}6º\nÃ&—hâ«´àœ´éŸw·ÒªÍ0‹ø–´ŒA\"i\'ò×=Ú©Ïp]ñ»÷fO¥WiËŸ–šc\'’àûØ·¤†¨$rÇ\' äÒ…äš`?s7^3Í=[wõ¦ÁZ–;VaÑ¨3&XûqNU<g¨«#O$.iëlGUÍ\0VòK-\"ÁƒïWDDøR,ô^(¸äŒ‘ž¦‘!i8Ç=*ü›\'Õe`H”®bÙÉÑ,$±­+¦P¸b¢²oá€ÜzŠNAaªmþaÀíRÇ¬EwòÈv?¨¬Ùáçæ,£­U`b‘Â>vŠ7ƒ%¿-\"•íRÇ4ü»”ƒúV¥ÔÈ¸bL³ –¯å M§œqƒ@‘ÆÈ«²MëïV?´¡¶Úž›«&ÛRÙ$Âšã?h‹éðëàïŠ5–D–]\'Nžu\\á·*0~µ­:nrQ]Y3šŠmŸ)ÁCà¬öß\nüQyàïÜF·6A“QÔUòXš8óÁ`:žÕù«ãßÛ³Ä5Y_Q¿Ô.£’O2šåÞ@?àUáŸ>#ê#±“Y3\\Mqxd–O7þXï¯Ô~&Ëc©ù-rcxÿ\0é§úÊý“–árêJ1Ž½_VÏ¯:¸·í*Ë}—Eåÿ\0û¯ÃŸ¶ÿ\0ˆ4]Z#m®jv3GåæHäƒ_Q~Îÿ\0ðYOx y7Ïmâ;%“æŠø\'ªÊ9ˆ5øí¤|aK»á4Ñ˜¿Õ¿›û¹+»ð¿ÇÖÓ§ˆL¶’uòø’£KˆN5\"˜éSÄRWÃÌþ™¿dÿ\0ÛƒÀ¿µ†ƒ¿E¹ÌiºãLº*·	þÐþúûŽ+×g³†BX|¥}+ùøAûhëß<{¥ë:-äÚuæŸ:0e“s:¯P~¢¿ ¯Øwö—ƒöÄý›ô/[\\Aô©äßÛ¡ÈŽuàÄ`þ5ùÿ\0äqÁÉU¢ï	t{¯Sê2¼}JËÙ×V’üO`{Ï³·Í´íïíO‹[ŠF\nNÜVˆP±Ff·™ã=Ó‘úWsâKÈßˆ×wÝz¾i#ÖlõˆnbœàiáG$+Î´/½Ó•`è»ƒ]FŸ­³°Íõ44	›æ5–>*%C	<e{ƒPÛÝ	]Nyõ«`–ù…!•.ôýãÌ‹§uôªDq[pº·*vžâ«jzauóbÿ\0œ¡Õ™™E)pE%a&PQE®ESLŠ(ªlÜ}M%.ÃéGñsI0EGRRjÀ7Ë÷§QE&À)¾gµ:Š\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š*Ó¸QR•À(¢Š°\n(¢€\n(¢€\n^Xú“IED”Tu%CVSdíN¢’`GRQE6î@è(¢‚Š(¸Q@Q@Qœu ÿ\0µN¢Š¶ìET\0QE\0QE\0QE4ESnàPz8aê>P\n8aêQ\n(¢“V\0¢Š)\0QE[€QE“°n¢Šw\0¢Š(æ\0£…€Q@è(R\n(¢‡!\n=\0¤Þ=éh¦Ð	¼{Ñ¼{Òàz\nnÝ¼ç8£•\0êMƒÞ–—qõ4–€ zQE›¸QHŠ(¢àQE4®EP’\0¢Š)Ù\0QE¬EQd4‚Š(§Ê ¢Š(å\0¢Š*@(¢Š\0(¢Š\0(¢Š\0(¢Š\0ŽŠ(­\0(¢Š\0(£ÐQè(\0¢Š(2=ih¢€\n(¢€\n(¢€\n(¢€\n(£½\0QE\0QE\0QE\0QE\0QE\0QF  Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( 4QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0GEPE»© ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŠoßöÅ\0:Š( Š)¿Û\0IÚE:>ôêŽ“@IEGRTµ`æ{R¦•›°¦ÓHÁô4”QT€(¢Š\0_›Þ’Š’¥»IQÒŽ¢›WôÝÛ¸Æ3GûÔê\nŽŠ*’°(ê)(¡¢JŽ•›v8éWô(ÞN»€Ø:ÑKbiÖ¸Š[™>XáRÙ=8¯<ý›¾*Z|h×5m_G±ºhœÅ.¡8\0]8þýQ}}Mtÿ\0´ÝÎ«cð+ÄVÞ´–ïY¼²{{(¢\0#.Ðyúçð®{öøG¬üýœtÄ2#êÐÆZeC•‡$€ú^æ•(eÕ+É®w%¯­¬Ûvû‘äW¯VY„(F/‘EÉ»i{¤•ûîÙìTŽÛÒ”€j½Ü˜W•ÝQO!-LOnj)¤ ¸¯ƒà§ðXÛÙK½Ò¼3nº®­l\'ºTó#´lp\0î}ºW«—åÕñ•U\nïð^lãÆã©aiûJ®Ëñ~‡Ûþ9øŸáÿ\0†zK^øƒYÓ4[AÖ[Ë”…âÄ\ng„>\'xâ.˜—º±§k’}Ù­.T?B¤Šþd|Iûl|Jý®<rn<O7ˆî­g‘Ù/&gTµÀ\nú³þaûHøžÛ2ûÂV÷——:KÛ°¸ûD¯*9ÏC_SŒá\nX|$«*ÜÓŠ»Iiò>{ÄUêâcJÔäìõ¿¥­ò?ug»	øtªsØUv¼.ù·/zŒÝ3®:Œ×Ä5së.NFà	\'BïÇÌhº‚r^¶´bÄBV\0¶Ü˜ä€\n±k§Žžµj¹ªg‘cÓ(lR,rj_)W«L7!ŽJ’5iO¥%æeK1ÇjG÷M]HkžõíåŒ“¶§šû]-˜5\"Bˆ>c»NóVŽ¼ËŠÇ¿ñlK!Œ8,ÏLHè§Ô’ @$m¬GÄ‹m]Û›¥r—¾=d#Í¸íÇ§ÔÖF©ã\"dØ€«ºÞ¿JK@lêu?–F?6Áæ³.<S·rk¿Ôî$1Æ^OŸþøzXmå¾œB©$es?ð%$3kPñà·$c·ûuŸ?Ä’dM¾L…±¼Õ^ÛÂ‚mSt›ÞûûþóÕ§ð|7’Æ\"4÷íZ@ÆÝøÇPKèÒ=³G7ð¯_Ë¥_Ñ­µ²gu–Bû¾WÜkKIÐlì“q<Æïš´–X­•¶/ä?;‰\"Ä¢æ,3¶z“\\í¤Øjÿ\0u&íY-5[w¶™“ï\0Ã×}fÓ^®ÔŒóÚ±¼[ i÷,ŸÚ’<¥>ì)ÊŸ¨ª¥.Y&)Æñhþp¿kO„ºìÑñYðÕÄ3Ë£¼Žl.ü¶·þ¿Jøóâ}ý®“{ö›þŽwÇü³ÿ\0j¿¦¯ÛÛþ	õáßÚóá@Ñí¬íôÝB)¶×«2D}«ð¿þ\nWÿ\0ø±û2è·:•Æ‘o®èj¬éyaûÉýäê?ZýÄñ4”jJÓ<J™kƒ÷V‡Ç¬:½Ü­!·µ>Gy?ÖVeŸÄùtx[Î]cuùë”Õ4­gIO.úÆúÒ(þþcd¬û}Ïµh9“î?ÍY9%§5Êx8»Iôì{U—ÇÙîïPÛZCnïòoOý\n¿¡oø6Rî÷Rý‘üIs«â†óWCÈ6‰6ÄöÍ~~ÈŸ²Oˆ>6xÞÊÆÛNšx$I&¹’2bHýMV°oÁ¯üý–ü/á}	{KDgr¸y%n]›Üšðó\\zt]î›_x,4½¯´{t¹ô¬qÆŸ»¸VNœóIq£iú‚‘<9=öà×-?„âšq-åÖŸ\"®\nFÀÇÿ\0|ž*6‹Äº[£C=•üÄ¬…ôÍ|ÛHõît/àK,/æ:¢§·ðÑ6°F«År£âUÍ…ÒÃy¥j±å¤‰7Ä¿ˆ­/ân™©´‹o¨De‹ï¦ñ”úŽÔ’$Í¶ÐÞÌGRBÏÊëùSm<@ÏbÂEoâZœj+\';³×<å	FåàÒ+Élãø…*\\BO?º\'×¡©ÑC¦C,‹íÍ\0QÔlRèbûãï/­f:×B-;—‚*†­¥˜Ï˜£å=k)Ç©I™´RGZJÁ¢‚Š(¸¡\0QE&EU&KßŒÒQT”S?<Sê°QHŠ( Š(Ü=E\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QEm\0P8ãÒŠ(H”u”S\0¢Š(\0§y~ôê*€(¦ÉÚI ø?\nZAE\0£…€QÃPh Š( Š( Š( Š( Š(¦ÝÀl}éÔQCw\0¢Š)\0R+f–ŠjÀQEXQI»\0QE)\\Š(«\0¢Š+4À(¢Š\0(¢Ši\\Š(¡+€QEù@(¢Š}@(¢ŠiXŠ(¡+\0QE¤ERLŠ(¤€(¢Ši\0QE7p\n(¢‹ \n(¢†îEP˜QUp\n(¢ Š(ªi\0QE-\0QE&4ÂŠ(¦¤\n(¢‹±QI0\n(¢€\n(¢šˆn¢ÃÔQÊÆGE09¾gµX‡QMó=©Û‡¨ Ü=ih¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€Ò–Š(\0¢Š(\0£ÐQE\0QE\0QE\0Q¸zŠ(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š3ž”\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEöëE.¡ ¢Š:ðh\0áG Pz(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢›æ{S¨\0¢Š(:*JŽ€\n)OSI@QE˜ÑRTuiÜŠ(¦ò§ÐŠJ( GÞE6NÕ°EU%/,}I©å(¢Š ÐÓÇAMY°&µôvÙ&ãÑirÜM•tí-îÝH^S]­¢YCµ}O­>8Ö\n €*¦·ªG¤iÓÝHÊ‘À…É=\\bÛåDÉÛVNâ)£mfëƒNP>èÀµsßæ¿Ô¼7¡ªD!¼½Ì¾QãÉC÷Sêt@mu­*Ã’N7½ŒéÏš*VÜ%“ž˜ªR’ïž¢§¶ñUÎXð9§ér™À~ÓwšÝÀŸIá­ë®®›)´+÷¼Í§÷¯ç_ö›øŸâý/ÄwSx“DŸOÊâ(¯¬ø›ý¿ž¿¦Å„^#û@þÂ??iëØîüoáM?Z»Š?%\'l¬ªž€ƒœWÖpö}K/Œ©Ö§Ì¥×ª<L×)ž*q©	ÙÇ§Cù±ðO‹¾#þÐšúøsÁú©v×R}žÞHŸ¿×oOÆ¿_¿àŠðIþÆ©øÇÇíø—]Œ*Û‰7µ¢žH\'¡5÷/À_Ù3áßì¹¡=‡¼+¦è9Ì\nfYO«9É?‰®ÝÌøÎr{RÍ¸’X˜º8xrÁýïñ%TdªÖ—4–ÝÂØW¿¥:Ò™¸CŠ³šYù§ef±§Nkæ=Ñ–º`\'øjú¨AI‹ŽõZ{¢Ã½;€û›À¼)ÅUûCKß8¨Ü™Š³cjÓò’°˜ûKv•­Xa[xÉ?/­Eº=:–\\­bkž(Ú¬¡ÂƒÓ¹zÔÔu„¶CƒÍrÚÇŠ†æ!›\0t‰®øšVW¹ö×1¨kqà$™ÞÇÎ•IXW45¿±ÜBÎª;¨¬ÝfYðÌžXï;oz±i`Ú• s$ƒÝM•¿á	³D¢b$wûß/j/ 4rö:š¢I#Û»ùmi~q(¹·0ÙÛ]ü#ÖúTxŽãì®)Úm£Ë\'\n@ïSphÊ°ðL)4’2süGÓéV¿³!±bí[sÆ¶ñà2çj“[Û4„»I#/làQa¶e›u‘ðª>ƒ­:ÛB•²|¦`ñZ/ªEkòÄŠ»zÕYµÆ‘™Ab¹ï÷j	­´GfÃº ïÎjìz}­€+4­Ø•FÂ«¸òµÜò]GÌ ôª¹š$ñ/Œ†§;DÊà\0v×‘ßkÒ	œ‡˜·ºk‹ÍÂ`kgñö{k¿³FÄ8åö¡¾År‰b ¢F~fN1^MûUü-?¼6šk@²Z>æ¸•úÆ›~mµíaTU!wLûV\'Ž­–÷Ã·6q*ìù~”\'aŸx£þ	¯àx;Iµºðæ‘x–É¸O,\0É\"l¯Ô?à?®õöš×Â61Û}÷òÎ%¯Ò=@I´+T1”ò¢Q±¿Ýª÷ž…Œoi›k*ÿ\0)ûÚ\\gÊ³çìEað›Äö÷všEŒVÑ”b1_]xK@‹ÃVíw¤HvþòÑW!GªŽÆH[K!Ðñí­36ÍÂ#CüKJ*ÚõÔØÒï—P·Yau%ºz¾ŽX|ß{Ú²Øy¦kB©1ûëÚ_þ½]²¿[¤*wG0à©ê¦¬E¶*Ë†\n¸¬ÍCÁÚVªìóÙ[;·ñl«U[p¾õ4À7n”XnÓáëhÛÛNÔ.í•¾ê1ß?CN‹X×tH[í¶qÞû¯k÷Ÿþz~uÐ`~óéž)w2ž‹BbK±‹¦|RÓ/fXe•­gèbž3¯ç]­úN›¡—gû¤b©j5Ž±Ew3+vtÈ®jãáSéÊï¢êwV.~eFo6?ÈÓI	¶wÑêSEËm•Z°šœWJc2“ÆyêëÞ!ðÍºµý Ô‘~óZýïûäÕýâ–•®±‰åkk…ûÐÏòHŸ…\'4ÎŠûMhIhÿ\0y¨ªen*õ­ÄrÃ\"Ÿ¡È©Ú9Fd1þ%ãô¬åL¾c,‚%]ŸLuå?x¾Ý*ªÉƒ‚\nšÁÆÅ\\e¤`â’•€(¢ŠmÜ—•>„RQM4EU\0ï3ÚQÓ£ïRÐ¢Š*@(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š¨€QE@QE\0RòÇÔšQJà%QLGÞQÓ¼¿z–€uQR\0£hÇZCE\\Š( Š(,Z\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢ŠmXŠ(¤ESJàQE	ØŠ(§&ESNàQEKw\0¢Š(JàQESW\0¢Š)%`\n(¢›@QE) \n(¢•€(¢Š$À(¢—ÐÓH¢Š^=è°	E.ãêhÜ}M4QEÀ(¢ŠI\0QE qõ4`úJ(ØŠ(¡°ÐÒQE&À(¢Š9€(¢Š9€(¢ŠW`QE	\\Š(§k\0QK¸úšJ>ojZ(¢öÂŠ(£”AEŸ7µ AEU\0QE\0»©§î¢£¢€$Ü=E%?põ ¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š7Q@`z\n(\0¢Š(\0¢Š3ž”\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nŽ¤¨è\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0 tß3Ú@Q@èi¿òÎ¹ïšu\0ßö¨“µ!êhôTtPK¸úšJ’“v¿ïS¨¦³v;€yžÔIÚQÓ[€Q’h¢›@QK¸úšw)Uˆ£\'9ïII;€QE+§hlûÜôÅ6Š(@QE0qõ4¡rØ¡W<šÓÑtàÏæÈ>QÒ„¯ ›\'Ò´¥·ŒM\'Ìç+R%\'ÄÔH¦GÉÎJ‘æ8ä\nÑÇK\"%ß»¾q^cñKS“Æü=áí2FœYÞ-æ¬ªu*¤¨sêÏ·ìOJêþ(üFÓþ|;Õ|E©´‹e¦[=Ã„f\n¹ÀÍc~Ï­§‹~iÞ!·²¯\'ÛeW³óóZïÂÓ•*Oã¢|©ô»_¢×ÖÇŸ‰©µJÍ®fºÙ5ù½>óºB… ³0œbŽTÉ»¥yñWg{vÐŠg.ø(ÀŒc½UmÆ¡¹›=8²@A{0Ç½g’|ÝXfÝÉÎj\0¹õ«¸ÈŸ÷§îÔÛmäSâŒ)ÏÝ©\\Ý)7`ayûÕ!œF8ª¦ëëQÈîíŒñNÀO%Ð<â¨Àiºž”ëHÎ\05x¤:|{æ+ŸJM‰‘ÙiÄüÏÂŠ/õÈtØÙc\n¬ÍcÄ¢Q²6ã°€òKy?Ì“I+î-k~+‘ä\nâM`ÝÅ¨j7LSt)ÐéºÉp²º€G\"´/^;$Ùâš•ºŽBçÀo4\nÒK±›®OéP7†í­Dq¼¥Œ]qZzßˆÕ%yÂõºVV—<úœÍ$‚T+ò;|´jõ-M€HZ$\0JétÛ>µ¦D¶J­!Y%=@è+^Ð´ƒ$mSÒ lK˜UþfäÕRòô[ÆËQÿ\0ê«7@¸U_súU1¥µÌ™c„êsüTF{É%,W©Ái&73·©,PÙ\"ñ½ª7º1£0ÇCû€ÃçiÏmiå—ÆÁ–\"›}|zÚs$ñZØï·ŸÍû¥¿½R	:ž¹ma¦àt¬kŸ5ÄÆ4Œ—/µTu®*ûV’Y$V’D?Ü®ãáïƒÍÍÄw*hÀ\n}œl¶v:¿‘¥™dÇb@ñ\\ënBƒ*ÿ\0°­¯ß­¤Iª’ÙÇ§‘ E\"°óv¡•U¾^LV®-8+>ÀYCÝyí¶¹OÝ/ÚìaVÝæIóT6QKQötK<[®ÎÐ¿.)Úzƒ¸?ÃJÃ%|õ¢âh­üvl„;©aåÿ\0sû¦†Ëÿ\0²Ôå•Iþóc ±e£q:>Üã5}j‘ÂŽ×ØÖu®ÈÛh`Tu;±™xÚqÇµ4ÅcVÏPi‚`ÑÌ¾¿Åî*à%¸Ö2yZ¢*ÊJƒå”uZšËR’Þsov»X}ÖqÇÖ­2Z4ˆÏSyœSã+&ÐM•\nœ@×ƒJ\\í÷¨Ãzþä”ôõ 	|¼…çYZçƒ´ÏÆËwm–ãwÝÌV Á<ƒšWJŒ“áÝþ…1—FÕ&…Oü²œy‰þ\"¦¶ñÞµ N°êºT²Ä?åâØïOË¨®¬çøK})¬Ù8aøÓO¸š#Ð<s§xŽ2Ö·\nY>V†ªaŠèaùôaÖ¹m_Àúvµ#LÐˆ.cÎ¼¹Gâ9ªÚøÂ€5¼é«ÚÇüü³ãëÐÐâžÀ›êu—:kÃÊéëU8éMð÷íõUXçG³¹=b—å`k^k8nÆèÆút¬eJÅ©ÜÉ¢¦¹´{f!†?‘¨k$ºQEH.ãêi)x÷ªæ*JŽ¤¢@5~lçœS¨¢¥°\n8aêPEP\0z(\\Š( Š( Š( Š(¢àQE\0QE7 \n(¢ªÚÜŠ(¦Ž¢’Š) \nwÜ÷Í ê)ô›\0¢Š*@(¢›zß–(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢ŠmXŠ(¡+€QE7p\n(¢Ÿ(QI+€QE÷\0¢Š)¥`\n(¢’@QE@QE4¬J3Û9¤¢’ySèE%U\0Rî>¦’Š\0(¢Š\0)p}%\0QE\0QE\0Rì>””»©¤ÀJ]ÇÔÒQC`.ãêi(¢šJaêi(¤•€(¢Š5\0¢Š^G¨¡°Š]ÇÔÒRlŠ(áAÀ¡&E\'ÍíKM\0QE\0QEW(QB@QE+€QEI€QE7@QE	QXŠ_3Ú›EXÜW±8ïIæ{Sh 	7QEPEPEPRn¢£¥Ü}M\0.æô£Ìö¦Ñ@n¢ŠŽŸöhÔQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0&G­-‡¨¢€\n(¢€\n(äqE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0IE\0GEPEPEPEÙ;P¨¦ÿ\0½N\0\'Íì)h¢€\n*:’€\nl©Ôß/Þ“`6Š(¦£ïN¢›\'jØ©*:*š¸Rž¦ÀJ(¢“`QE\0¢Š(NàQE0\n(¢€\n(«º^œ×³ŒýÁÉ4 ¸í7Mi‡˜ß*-kÂâG\n«„^\0ù“§\nµnÊ!z\nÙAF&nWÉDaQp6bT}i·.ò5ãn÷Â~Õµ-7O“TÔlídšÚÍ)º‘T•ŒÀÉÀÏ½\\ åh­Þ„TšŒ\\žÈó?ŽúwŠ¾&|O±ð†—c~šÅÛXÔfÿ\0–AøTˆwr2}\0Åzß†|?ká]ÓN³‰`µ±‰a†5\nª¸\0~å?±7Ä_ü`øTþ\'ñ|öwšÜÆX¯ÙáV(ªsÔäŸzöC8Ýš:”¤°2²öz;jœº¶ú¾Ÿ#ÎÊÕ:±úô.ý¢MshÒ¶‰.‹¯«#”’*9@iò8\0ûUYdï^tbzv4¿{Ñj¤®I§Ï0]Ã¹éTä›çã8ïZØbLÃ}êXÓ<¶~n”ÜƒÉéíG™°üÄázSI&ŸRj”»3M‘Œ‡§\\Ô–¶ä¿;Žh@\")o»ÔÕËM0Ê»™ˆÍJGey›`ôõ¬ý[\\iÐÇÓ±+ÈM—ou¨4Äd„+8êk\n÷RŸQ˜…9ÛÔw¥ÓãyÜïëž	ô«Wb;T8ùGz6Êš~ŠÃI+véS_­\n¹þU›«xÖÛK]¡ÌŒGÝæoÆ¹½IõL‹ÜÃ3;};\n¥õbæKc¦»ñ¦‘n$šQ“ò¢¼ßJËÖ¯µk1Û‘l€ò°ÉQì(Ó|1k§˜dtó¥q¾NO®>éÕW–É¥t¶ŸS2ÇÂvÖ“E<í%ÌñýÒí‘õ­‘q·o–v§`>½ª8\"ïÝ¹J•5´7³¥@\nQÞ”÷‰m § ž@Ü:Ù³gÝùqÀªšNž]·ËòI­‡KÀïŽ)¨ŒŠDXÃ/@j•ÕÙc²?º:þ·w[Ëîm dÖEÆ ×“ãRˆ§¯÷³I -]^,9#çuíøU7‘œï=Z•mÄo–l±¬Ïê¢ÊÜÛY}*[°Ìÿ\0ëicÅ9só»^©ë\"yäóîþ:—Yñ:­À…¾=÷Õ}>ÆKëý¯üu„ÊH×ð†ÛT»Rßêâûî½‹K³M2ÅHùHƒà/¥•¤J(í[ºä¾U« ÈÈÆ}+XGB/ÔçuËów¨˜ãÞêÖ™Š\0·¹<šÊKc5è•¤*í’µµnm f‰2’°öùûíPqõ®SÅ;§Ö¡\\#ª<õO¥uà¦[¥r2ÿ\0¥x’áÏÅü+91£jÜ‡ˆml*®7}(ŽRÑnØûš‘qä1oá/½,rN~JCl—ì)ˆvñÞ¥”MÃ­VÝ‡À¢àXŠ\\‚üÕf2í`¬½j‚3/ñSE()‚Ûj“Eø§\n€$ƒÐzUˆîã¾„Åp è{¥eFUpêWïSrÐ£mýãî?•Rb¹·óés®]Doþ©ÇFÿ\0ëÖ¬,ÑŒ6áØ×9i¨-Å—Ù®•$…—ŸcëN²Ô_F¸Kk–/Ÿê¦U8“êzT˜š:c*Ù0›–ÞádQ“Å,Ñ›*bI§Æþµ]˜¨ËgŠrÈ§æ­\0YÈ\0zR4`ƒ×Š‰cŽM=ea¨9aNwezH&hº…#Ö§ÜQQ².:dÐkýÓ]ˆ$ñ¤ ÊOU>ÄU`Ú‡†$S’úÍzƒþµ?Æ´6ÐqOŽFuÓ‹Oˆlõûpc–9uî¿…%ö–cËÅÊÝÅcjž·º¸7–}†üõ‘úÏ÷‡zKÝhR­¾±ˆžÂ©o¯¥)SO`Rkréàâ’´®m#Ô óíÙIÆHë8‚§ƒ\\²Š(©LaKËRi(ªØ­É(¨êJMX‘¿5:Š)6E6>ôê\0¢Š(\0¢ÐQ@Q@Q@Q@Q@QN,Š(ªHŠ(¦EP•{šåÎxÍ÷§T6ER±÷§QE€QE\0QE\0QE\0QE\0QE\0QE\0QEQ\0¢Š(QI+€QE`QEKW\0¢Š)§p\n9<QE\0QE0\n(¢‹\0QEÀ(¥å©4”€(¢Š\0¢—ÐÒSLŠ( Š)p}(¢”u\\¥Áô4¦’Ç½%¸>†„Ràú0}7½€”QE+\0»©¤¥ïš\\/©¡0J¸ïš	`i(ycêM>†ŒCGÍïB`ëIEÒ\0¢Š)€QRSY{Š• ¯¡¦Ó¿ïªLCIjQEÒì4QEƒ\n(¢˜‚Š(¤•€(¢Šm\\Š\\CIPÐQM0)ÑE`QE\0¿7½%/ô\0¿5;põßûæ3Ú€æö¥¦n>¦—ïûb€E(ôŠ\0(¢ÐPEP·J<Ïjm;ï@¥Ü}M%?iõ4\0n>†–Š(\0¢Š(\0¢Š(\0£ÐQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QE\0QE\0QEÏJ.EPEPEPEPEPEPEPQÔ”Pu%PtQE\0QE\0QE\07ýÚ>ÿ\0¶(ÿ\0v@ß/Þ@GE\0QNòýè“µ+€Ú’›z$íIêìh¥åO¡•@ICÃ*:’¡«é;Sj“\0¥=M%7¨QLŒ“E2`QE$À(¢Š¤À(¢Ÿ’H¢à:Þ#šèì-­ˆP¿;õªº.”F$uÈì+VBWb*Ål±4Û«Àj÷¦Ý]Â¢¡†2Í“ÑºšèŒz²QbÚ5òÕá?<Cã‹?­¼	àïéz&•aj.¼A*|÷Ê®HXã3“Úµÿ\0mŸÚU?fO„ê¨mF÷0Z¹$nG~•åðJ_ÙÛÄ¾\nÑüIñÆkz5ÿ\0J“/Û%Oä(Ê³ú,N;\0+èòÜ\n¡©›Vi[Ý¦šOšM«»?åZúØù|Ó0uñôòŠ)»ûÕmrÅl®¿éésêïøFÏÀ~³Òtø–[8„h£§ëNy6Œšs°QžÕVyGRx¯—r”äå\'vÏ§Œb¡d†K\'~ªÏ.,³tÅTšRÅ±ÐVÉX¡“ÌXóÒ«³ü¼uëNf/ÇZh‰Ð\0›ŽcOÆXdÓ¡ˆÈ8v9S/\'Ò›bek;¸n†®I4zlX^Jl×ÇfØFÐxúÕk‹Ýrw`äûÔ´Âåk«§¿ËÄ1ã=>´É-VÞÄ¯ÔÔ_Çi\'ï–éYÚÎ­q¬F`³@Ê:¹û§ÿ\0­M+ì’¦»omrjÎÕ5[L`µGX3óNÿ\0*±öªöþDÔåÄÂâg\02·ú°}\0­h	vª®ƒùÓrK`*iHË’×Ÿžf^Oµ\\[f”€méíÓ­[‚:)=3Ò§¬\"6úŸÆ‰¶õ­±ZKeå¾`IÀöT\nÉm–\\³øÔÛÍYr¤7ÞG·zÎµîòHMªA_ÀT$—¼öiPsÞ´4í5§eÜ7t\'>µ“d\\©{×ð®‚]>ßsuªˆÐé$M6ßý¬p+\nûQÜîÌþ¸üéuPÈíüD§ZÈxšì8›qÈüúQ~€Âæg¿˜F¬Ê	$~&¯[Z£Œ•ù€ÏçRYi«jÇïJuÌá#-×?•K7^¿t@,ÙÇé\\‰µ)n¥Œ?ûuÑx¶ñ¤fö³#|¾µÂÝ^‰ù\\íê\'±Q*M\nÜÜ·o­Ùûè‘zùë-!ó¤Ýåùn•Ü|>ÒE¤*í÷›æjÊìlï´qªž˜ª¾$›Ê…Éê½?•héÑâ,\nÍñ G9ÆA?‡?ÎºZ±1,`K¿6S»å9_ö¹­O1q¸¯\n:Vuƒ	Ô”ÞLnôæ­\\:ç…Ü+&Röè[Á$­÷BüµÉé2µÓ;„ØÏZÞ,»{MMª¤?ÉÏ½QÐ h£@ÏÒ¢L£Jf&ýïøS·®)³3oSŸ»÷©\"ní÷¿†•À¶íÚ¼š«#øÎÍ•eN*Uî«s÷¨`Eæ{TÐÈ¿tqUþçÞ§\'÷Ž’ßCŒ|ÔâÙ|öÿ\0f¢GíŸ˜Rï÷­XÝR<ÚjÍµô3ÀÖÒáâ~=Áö¬é$Û±¿†£Ñm·ïô“FåäšSù7Fÿ\0Tÿ\0Þ•µÒºfí\\Å¤é«[[‚V7û§ø”ÔÚeÔ¶7?c¹WÜ¿rFn%ãV¤K‰ÒHž£ñ¨`äšu­È!T¶GbjGPGš¡™rWò§,áò&˜Ã\'Ø¤ ·=(L	6:ÓÕ‹uê*°98<Šr±¿Â}¨ÁèiœnÎ)¢B«“Èö£xaÇS@FÀò¥¹·‹R·xgŽ9#aƒ•ëP©9ÇqRnÝÎs@VVž¼G³q>žÜI²{©þ•»4pêÖËujÛå–¡G#¨Èô¤„6›)šÙ~Bs\"zûŠ$¯¸â­±]†ÓŠJ½}w1ˆ~d~¾Æ¨×,£b“\n_Ï4”£=³š-ÐbR¨ÜqÒ’Šly~ô¿*ûšO¯NÔœô÷¤€XûÓ©±÷§R–àQE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢­;€QEÇp¢ŠQÔQq	Nó=©´»©¤Ð¢£©*Z°QHŠ( \0tQE\0QE\0QE\0QE\0QE\0QE€QE\0QE\\ QE\0¢Š)´EPQLŠ( =M%.ãêi)4ES\0¢—ÐÒR¸/ÍïIE\0QEÀ(¢Š\0(¢Š\0(¢Š\0(¢ŠM\0QE4Kƒèi(¦KËRiïªnH©¸ƒèi)wSIM0ÐÒRüÞô|Þô&RñïIE\0QE4Kƒèi(¡ ÐÑÊŸB)(¢À.ãëF¡¤¢„€(¢Š`QE\0QE+\0Rî>¦›Þ’„î>¦’…õ4|¾æ’`6Š(¦˜ŸaIE¬À§Fáê(¢š@QÂ@(Ü=E0\n(¢’`QE0qõ4¾gµ6Š\0’Šl}éÔ\0‚Ž¼( ÐQFáê(Ü=E\0QE\0.ãêiõ.¡ ÑLù½é(J*:_›Þ‹€ú*:’€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€ÐÑE\0QEIE\0TtQ@~†Š\0(¢Š\0(¢Š\0Žþõ:Š\0oßöÅ6”õ4”\0QE%QY€Tu%Ó°ÑRn¢Š|ÀGRQE&îL¼iôÌCD@J)ySèE\'N¢ªàQE€QE\0QE\0¢Š*ÛUKVÆ…¥y§Í|£ ªº6šo&\\“µz×J‘,QQµGÒ%°Ú`tZò|p*yäÀéTnæ­iÄ–ÈŠ—|WÈÿ\0ðS?ÛwÄ²ßˆü¡xMW> ¸2Os1Ù*c1ìNy=…}k˜äx¯.ý°¿g_þÐZÃÆREcmg šÚø°I,äÄ¬{žžõîdXœ-}9caÏn½U“·[ocÅâ>.¶¥<NJšYú4Ú¿K««ô8Ÿ„z\'Å/Ú7ZÓµˆz_‚toZªÝYé–nu«¹1òÈòTg ($ú×ÒQD¶Ñ@¡T`\\ìõáÝsÂÞ²Ó5&²\\	ib`h£UäÝÜ€8ßÌûWm‰ukòEEF:%—æïÞçNU‡öTT¥)JRÕ¹Zÿ\0‚JË¢JÄ73mJ£qp<Óï.‚šÌ¹¸.ã¹!‚%–p8Ç5«;`îæšƒNµnÖÕŠ€75PÈVÛç½M˜ÿ\0»W’Ò;dË¶íPM|ìˆc×)ß`¸¬\"Óããæz­s$—\nÌ úö«\"\0±“—jÊÕµu¶G,ÛB÷þí8ˆ»Ø;»W=âÏÅ¦Æè¬d›*/Þ?þºË»ñtÚô†ßMVdë&þãQéZzrÎò“-ÄîÈÜçž_/q9_b¾›¤O©Ý}§R`¬Ø1Â½#ÿ\0:Û[Í¦ÐWøECd ÿ\0\ncŸ~j{=;ÌùŸà.j^£±¼]&ð‡ŠÓµ°X“{Œ1?Ž*{[t´‹=OSI9.Œ3×Ÿ¦Žk¥·Â ãŠÊÔ/ˆnXŽ*—T¸\n£8úãs#LÁX\07|Å¿*„€.%@Ãzýïö~ZÓÒ4þˆÿ\0ÕUì¬~Ðää€Äçù\nê49aIÓJâHŸN²[8·7QÍPÕõ|†Á\\z~5&·­¥²`°íÇ¶k¾Õd¿ºE@{¹ÿ\0¾©ï 6[k‰/+·ëøÖ¥¨;Iç?§5KJ±U?w°q[ -¼{½¿Àb¥¹“h\n:“ý*Ò ·Ìæ­FÈä¯ßéU¯ÆÔ`:ôý(h#ÆÑ‰¥f”ì‰6ÿ\0ìÕÍÍúP^vìß÷+©ñUÂÅ+!>bã¥s°+H›I‘«R£°ºm¾n™ÃïOüv»Ÿ +¯Ý_–¹mÕLÅÜl&ºÏ’Ï÷OÍúÓŠÔ$v:hÌ\0Ö7Œð#*6ØûÞçüné ‹o Ís~5fo”>ÁÉÝú\nÝ²nQÐ•c‡Üê]¿\nšLòGášC…0á²°Y©n\\Ç ¹¬Yv0|ophY¾Y%o«jÎ1n»ŽêÊ×¤ë¡]þd­»4ò×wð­bŸ¼1\'œ›‚åUBÿ\0À©É’ÈÕ¸i%Ú~BÛ7Ý ñTÐwmß–¨îæ¹ÙHží–§ºÌ:ÿ\0v›@UGý>zHßt/ß¥iUmÁ¡>w‘Wøê@X¤bü¸4öe@Xb¡ù>í\'šªˆ­÷ªšWïUjoä©R’>×ù¿Ûª²0xÝJà=Y-¡G3oo—{}ßšµínà×lÅ¼²¸’6ýÜ«ü-ë\\ô£t7Z–;¯!Ñ¢ûÔ¹¬6uV¢ñÜ½œûDÐŸûí¼=«vÞà8ÁûßÎ¹	g}nÈ˜Ù>Ûú§o—\'û¦¬øsÅQßK%´¥Òîßï£JÑ2:–ÉäŽ)im§‚zÆ ·¼Y×\nÍ¹:ÓËî=BûUX’qm¼evïLaŒšd:Š£”nvÒÉw¸zŠ@!”\'œÒy£9`Å3wÍši`K¹°[š–)ùsTÉ+Õ¶šz¾Â	ëT˜\nÙO‰Êò§5R	ù ÔûÇPh$W:dæ@»í¥âEôÏzeõ¸‚\\©Ê8ÊŸj’7~eÜ­ÁEíÏ)÷¡\'Ó¸¨œn†´)QOt äu¦W;eQVòÇÔšJ(¤ÀQÔSéŠ7t§Ô°\n(¢Q@Q@Q@Q@Q@Q@QTÀ(¢Ši€QEÀ(¥E%\0ï¹ïšu@QE \n(¢€\n(¢€\n(¢€\n(¢€\n(¢„EPEPEUr€QE@QE(ìES\0¢Š)4E¼{ÐØ	ES\0¢Š(\0¥ç¯½¨¤¤ES\0¢Š)&Nûžù§QRätQRU7`#¢¤¨èNàR¿Þ4r§ÐŠ)wSIE0Ý(Áô4`ú0} êi´¼©ô\"¼{Ò½€oÍïCg¾i|ÏjFÏ|Ð€J(¢š`/ÍïF¡¤¢„€)p}%ZÀ¿7½%4üÞô`úJ(H”c¾qIEx÷¤¢Š6JŽ•qß4”¢€(¥ù½é)ÜŠ(¦EPEPE/ô”“\0¢Š)OÐQè(¢¡616z0Þ¢–ŠjB\n(¥ãÞÀJ(¢„ES\0¢Š(\0§GÞ›J:Š\0}ß/Þ@7æ§n¢Š\07QEPEPš]ÇÔÒQ@zc4›©¤¢€$¢£§î´\0´QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0gx¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(£† Ñ@Q@Q@pÃÔ(\0¢Š(\0¢ŠC@Q@Q@Q@Q@Q@Q@GNûþØ¦ÐFqÖŠ(\0¢ÃÔQ@7Ìö¢NÔyžÔ\0ê)¿òÎ@0õ4n>¦’€˜š9SèE%:>ô›´är)ÔT¹\0QE€8QèQ@‡¨¢Š\0CEQp\nŽ¤¦ù~ôâÀCÔÒRž¦’©\0QE-êER\0¢Š(\0§D78Ú’×þ>=2)Ä«I¶ÖŠ¸å¹5366v‚»HÇ$Ö©jCc$`TúÕcb©È\'§Z’(QZ^Ä¡!ˆªñXák_ÆRÞê?e¸Ó DVæ=Æ)2wHIþ,?ýuÑ3*sÞ„rÄÂœ*J7k®„Î\nV¿AÀÅU»—h#ŽjÄòm\\žMej—8éJœo©m”î¦gÏZ\"i[#“S¥«MœtÍhÚiË³Z·`¹Ž•É«®ñØÇ…šK‹…‚6	ÍeÜÝ5ä»œŽµ)7¸]_µÄ¸Sò Éÿ\0\n’Æ%Œ¼z\n«-$üÌæŸkx‹µTÖ‹°‘cZ¾[xAgÀ=+ÔtÙ|N	»_&Ù›˜÷rà3]ÆÚ‹E;’0H§Ö©ê$’6®ã“ÇãBvØm\\Íò£²„E\n¤qŒ(Uãÿ\0õ©lì^]Ûºd7ây«–Úwší•ãŽ}ÏZ½šÚ¦Öl–õ¤2­•!WiÇÔtÍZ‰1·…è\nÜ{u©‚†QÏ§€aÎ:gÿ\0­U/gQÜã?SS4ŠTî·osÖ©K)+žÜcõ4žÀgj?\"zž\\Õ;d3#;.€Âûõ«¯mæÊîÛ™@žügÎ–ÒØ	”©L,iè\"³Ï­^Öµ˜ô›^XŸ©ÅD·‰aóŸ—k€ñ‡‹šyqò”}wSˆX³¬x—ír…/ÿ\0wþú«>°f@ïÓî­exvÅ®LeÐFÝýk±Óìüµ$‚§úu¦Þ–‹V°¬qƒë×ò¢MÓ9\\(Éê)ò0Ž1éœÎˆT‰	lòõ¥˜…@}ò¬ÝRM‘y‡éZ$ÝžÙÈVf¡&Ÿ—¹úI«Çø‰(Ÿø[ýêÆ·f[1»ÿ\0V§ˆ‹ÝÈ„&Ék\'ÿ\0^¨º¤RG¹üû+6T^„šs—w,\"ù?¹]g†“{))³ü:×/|Ÿ*|§æoûêºÿ\0¦v0]ªq´SŠÔ$uºxÛvÍrž+·{ë±èì³þs]}¨ÙgŸA\\§ˆáûC¸óŒJY‡ÞèO«d4V°h6%…Àb›‰Ü[œ\nÎÔµžUsÐj…ïÌúA”¦ÅXò«ô^¿T¸Å­­ÉTýÚDÛ7~U”•¯râô24ûÑ­ksÎ[l®¦ÕTÀÜÛóW)àË¶¶}ÂCæ;?ýôÕÔG„÷à|¿/ûÕ’Ø¢$Ý›6l]»*H†_rÒ31›s}çzfÿ\0Þ|ÙÍU€µK#•áEG»k¾ãÀ¢Y\0Bjl[Œù™Çß¤G)ó+ÒK)&£ó6ÓùÛË¶ó¨·mLî¨žçË³ŒÌ±dýê‘²I±,ÄœÔ#crÿ\0ß4†àìÏîöÔL¿Å÷h³HÒ¡ðÕž_ï*9®|—ù~õW{ŸÞ|¿¼¬Þ÷4HÑ¶¾{iÎ\\UÝrå@U¶n-—÷Ë³ï¨ï\\÷Ú!ùÿ\0Öy§î|õcMÖå³™\0BR˜š;ké«Û%ÂÄ÷^•«ÚÜFNN:c^g¤ÞÔÛÇæi÷_7Éÿ\0,ø«¶±Ö¡òÄ¤…‰Àþ5¢’d8ØÐ»|:¶9OOJ–ÖèHÄÜ;éQK=]™q‘JNÇÇLt«L–®hƒ‘Ó½5”‘š†Œ§=ºÔ¹ã#§¥MXLð@R‡ÛÁÒ>äp*•b¹ëÇ<ÐŠe”‘wuåzÕÄ²qóVÜ´[,QzZVw,a‡JqzŠH¿›NjäD\\.ÍØ`r§ÐÕnÕ4Mµj‰Ù7üûÕR0H­9¡Ûd7#ŸÆ³\\çÖ¹æ¬Í¸Ú(¢³lŠ(ªæUˆ§ÓQIE®6‡yžÔêElðijXƒ·8¢Š7Q@Q@Q@Q@Q@Q@QUÊESµ€^üf’—ø?9cêM	€”QE0$¦ÿ\0»N¢³LŠ( ÐQÃPh Š( Š( Š( Š( Š( Š(ªæ\0¢Š)§p\n(¢†À(¢Š\0¢—•>„QËRh¸	ES\0¢Š(\0¢—óÅ%\0QE\0RòÇÔšJ.EPEP”Ttï3Ú¡ÄQE7Ë÷¤€uGRTuQ\0¢Š^TúUpÔRü´Ú)XyžÔŒÄÒRŽ¢’@%%GM;€RàúJ)€¸>†—Ë÷¤Ü}M%+\0¼©ô\"ÇÔÒù~ôy~ô®€MÇÔÒQNùiÜÑNÂúšm	€QE6EQp\nwËM¥Áô40ÇlÒT•(°\nvÔÓh§`òÑæ{Sh¢À;Ìö£Ìö¦ÑG*\0¢—qõ4¹_CC`6Šw™íN¤Û:(¢¨\ntQEO(QG(Qè)¥`\n\\CIE\0 àôÍ.óíM¢‹\0QEÀURÔúfãêiU»\0<Ïju7æ£æ `z\n0=3ÐÒù~ô\0êMÃÖ—ÐR|ÞÔ\0»‡¨¢ŠO›Ú€Š(=\0($t4g=ri( znIëE\0I¸zŠ7QQÒàú\0}Ï›Þ›Þ€EPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEPEçè Š( Š(¢àQE\0QE\0QE\0QE\0QE\0QE\0QF  Š)>oj\0Z(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(£põ\0Q@è( ŠŽŠ\0wÜ÷Í!ãJJ(\0¢Š(\0¢Š(\0¢Š(\0¨éÒv¢>ô¯¥ÀCÔÒT•#Š¸QL	7QIü…\'=úSjR\0©*:)µpç¾sIRTt\'p$¦ù~ôê*\0¢Š(\0¦¦’”õ5IX¢Š*€(¢ŠÍ°\n(¢€\n(¢€\n’óƒëQÕ­>,È?¼j¢€é­³öhó×•ðÄç¥8.Õ\0v¤\nCgV«s&	E2i€àu¥šm«œdÕs‡äÕEuaä9öÈ«*6­EnI©\\í4¥¸\"§;@ZªC;e·b­]ùéL™ÀV´‹¶ˆ,	D8çÍÐ^)²LuéY—·;ä\0têj”z°sv&}¹èj(æ+)#ï7(ˆ´;ºÕGÌ#q·ŸñªH&¡\"ªå›?Ö¡Ñâ’êMò|±c\'ß=©ñ[M™[\"8cýüœ{v«Ø§åSþ4Ð®,®Z</LqPEcæ3î_ÏÔš½WÌzm?ýj‚âïË>½qEÊj\'Ôuüê	$ù³žƒ?¦i‘³ç%¾¿©¨ä~	\'×ŸÀRë U`yýqQÍwóªŽÏ\\j¸ùö³{Ÿûêªý­K±,wq“øšM,—Š*·Ëòð?io0:\nõÝùk>ÎôNŠÅJ•aœþ\"´´èŒèÌ3ó(ýV„˜ÉbÄy=@úð*î–Î&bT*œ}qZâç·ôÉ×ãlÂd@›òÇ÷þqQaÜ<cã|¸À,Úÿ\0j¹-×ûkP‚i*îÏÿ\0³T7É{:+­wÿ\0¾>jê<!¢¢ÈPãEÿ\0Ðh¸4tº˜·@UwqùVõ¼`vœcRÊÔ	Ä8ý*ìŽ#‡©8þt€>løþý{ÓÉ$Œt<TJ:ã¥O\'µ[`=Èˆ~e°µ9¼«vsÐ.Oåý+fúM±pÜŽOþ½bk®©ªøØ–ýM´“×ÙK†ó]v/ýóTíbòÝ$JŸX-ÜÀœ>ã·ýÝÕ[vné&ê@ž…ˆÐ†ÇÜÿ\0gø+°ðÜdF£Ð×#JÓBªÿ\03ýêí´0À€Ó@ÑÒÄ¦+\"=Eq.®ä.$dH›-·øÆBâ»™NÛ,µÊjvâ9£fåd•íÇ<þ5R`cIj’ªI·Ê?âÙ¬OH ð­ìNbžtò‘ÿ\0çžïJè.¶Z¤»›q9o÷xË|Ef¸[hÕÃ+¾ÿ\0Ê°ªô*!áx™möçíVÝÄ¡!þóríÿ\0b²<>¥ ÷>zÑºdW‰‡ß}Û¿ÝíQŠ%•·>ïàŽšï¿¿~šŸ?û”Ôý÷ûi6öó:šo›\"Æå‡/Lo¹ÓeE$¬³n¤Ý€C»o|T\"ªß\'û´·lQ\0ïº«1UôÜj\nŠ%3è)D€ü¹ûõ_~çÛüB«‹•ûî“v‰b[åO¼†«=Ë7Ì¼¡¨‘ö| |õÓyŸ5Kw(—LîTœUifaóS¥}ƒýª¦“~ÿ\0mfÝÍ\"6þâ9@þ:±m*ù¹Yîû$Øß~›ö—þ¿H“~¡o=”¤\"NŸ#ÿ\0Ï9?½V¼=¨ÍdóY]È$–?ýûÕÍ%ÿ\0“åîÍ\\Õ5½‚ÔÇw§}öOùn¿ÝjiØEÐµkx­ÌŽYFwSZhþo¦ïÎ¸?T‹Q°Ž@òsó#/ßÝ[K¬È°$…OâÅ]1•Ñ“GCžG¥9gp½ûV,:ôr¢A¹Æå«vÚŸÚ#ªFåæ©0¹¦/ÝÚy£Í¥ˆªQ°esš•¤Ü1ßÖ€H|±–\\®åö¥Ó%\nH±Û5‡ãÃà/	êÅÑ‘­´èyŽp£&¾<ð—ükÁÚßÄ¨l$´¸J¹Ÿìâuhäô\"ºð¸Jµïì•í©jð§nwkŸyÂÛ—æ¬Äáx=kÃ$µñNmc<w6·H$ŽDä0=ë^+šveš¶RÂ­Ò©^EåNëÛ<T¶ÒpOJ›TU‘EúVUƒ‹3h¥<)+–QENÁRTt£¨¦6>Šg*}¥ÿ\0Ð¨°‡QMûžù£î{æ‹\0ê(¢Q@Q@Q@Q@QM;\0QEÓ¸Rî>¦ªà%Rž¦‹€•%GN½L¢Šo™íRQ@Q@Q@Q@Q@QB\0¢Š(\0¢Š)µ`\n(¢œ@(¢Šm€QEÀ){ñšJ(\0¢Š\\CEÀJ(¢€u”QB\0¢Š(\0¢Š(\0¢Š(\0¢¤¢§˜êJŽ¤¢@QQÒJà%GESW\0¢Š)€QNùiSI0Ë÷§TtT°$¦¦’•Tµ4¬QNòýé´Ó\0¢Š)€QRRlõ<À2Šq\0u$š>_sNà6ŠvWÐÑòÑpJzšJ)€QK°úRRLŠ_›Þ›Þ•ØÓŠ*JmØDt«Žù¤¢˜Óz0}©¤¤„R¶;f’‹€¸>†’Š^=è¸	E;+èi7SB`R¢Š)€QE\0QE.Ãé@•ô4˜>†ŒCF¡ ¢—ÐÑƒèh(¥Áô4ñžø¦€`ºPA^´ú)\0ß/Þ/Þ‰;R|Þô\0ú(¢€òÓ¨¢€\n0=Pa½E(Ï~´Rî>¦€Š( Š( ŠvóíK¼{Ð+±”QK¸úš%Q@IQÓ×© ¢Š(\0¢Š(\0¢Š(@×ÖŠ( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( ƒÐÑE\0QE\0Qè( ¦’¤¨è\0 “ŠSÔÐzš\0J(¢€\n(¢€ÍØS©±÷¤=M\08¾:Ó(¢’@IETé;Sk@$¦ÿ\0Ë:uš`GNN´IÚ›WºJŽ¤¦¦”X¦ÉÚ›E\n IQÔ”ÃÔÑQE@.ãêi(¢•À(¢Š€\n(¢€\n(¢€+[@ƒuÈ\' ¬¨çZét[a¶ãË?ò­\"…-‹¼0õ‘Î‘{çõ¦³u8«Fl†^XGÍŽÔŒ¤µKosZIÙÈ•F*)[54§VGÇ\0TA\\mt©ÅA+|Û©ò>ÒªÝÌ& ÖÑAr¾¡zwlSÉïô¬øwÝ(+“’}@éWíàóÑ·zšdŠ!ÚmÓÞ´hHšVÙjr¼‘Åb›f¾vUm«aÛÔßj#âÀ6ØÐÇéÚ™1XÇ–©„òúÔî>/Ý\"ÇÂŽŸLÕËKUŠ\0ÒMC§[	>sÛþtºŽ ¡B.:â“aæ%ÍçšÅJÏ¹”–Ï¿™«%B.O;«>iIÉnOýh3¸ŠØzŸÒªÜ\\Ðäd˜¥¼Ÿòð§Â²nîšRè‡æù‰ý)\\WïPÄî‹þ±zŸáûÕÝ¼Ògÿ\0ÅU[Ù¼Ùeð™Ê¯ñüËV!ÏÝûû±ÿ\0óNÝErKR«Þ Ž}ò¥tÚ}˜T\\8þU› éˆˆPÿ\0‰5¼ª-âR{PÆ‘‘â›£mnTrÍŒ~-^]âKÉ.gHbÕþo›øs|ÕÜøæøÅ[Á?©5ÇiÚc\\Ý!d“ªÉþïZ‹n;ÃZA–áe$>ÿ\0—î}Êìôkgh¹ÚŒ¶Þ‹ÅVÑ4ÔµŠHö„\0ýì\nØLG$m\07_e¡<@£\'–ÿ\0g™æ3Ñ;~u›âÙørÎ[›ë¨--á´’°P9òÄoø.7Á…^9m÷X»¼ÙrörÝZÄ^dV`Acô®¼.\n½{û¹zVÄÒ¥­IYfÉ0\n t\'õâ­Û¾Ü»¿úõà_²ïüáíqv¾	ñ5¦§%ƒ2q\"ûàö¯qMJ9UJ>AÂ³­B¥)8TM>ÌºU¡R<ÐwE©[z“×®?JÉ×?v$¥•†HÙ5·m\n¼Y<œü«[ÞË€Ü.3Ÿ\\“X³C»S-ÉTO›ø¿ïª®Éº|žf÷þ:}åÃ[ÌìÂMÇoëÍ2`Ždû§æU¤Ð-‹ÚæáTà6ÕþuÜèd ÅÖ¸ÿ\0	Zº!,wµvþˆ·=W`ÍMEÌV$÷ÁþUÎêÄÅi!”¨uo°$\0+w]—e¸\\óÓó®_YÚÂW›ÊÜ*çÐœ~‚©ì9íY¯5icCm%wýtÿ\0\nËñmÚ]ë6Ñ¢f8¢Êÿ\0ßTËwIÌEGÞíýÿ\0•`[êí®xžîL|–åaO÷vî¬+½—réìv1U€2¿lîI¦Üþb¾ß—ûŸþº£¥ü±J°òý™ÝY÷ÈŸÞ¨L¦ÉÖ\\}ß»K>ÿ\0øE¡údRy‹»ŒSlD²IµÉÎñQI1ùÑ…6IC#0qŠ©u;HÛ•ÇÏI°,ŒéÄƒmAïù¿‚:>Häÿ\0Çê\'o\'þy~ò³nå¥b_;dqÿ\0ËJ…æïPK*¬7j¯qz#ÂŸ»He†›~üýãQ\\»$d÷ª¿lo½Mšç÷|~ò¡»€é÷?–ÕÓ*yl¼Qs3y{›Wwßóf¾MÇûõ¿î¾ZuC7Ü ïgòÿ\0éXÓuE¶¸Ú¿rO¿Tf˜ù”ÝâI$eýß÷*±iXÓÒ5¯ìÍv{\">Y>x_þyÖôWóÚÝ¸WóÖå<¦ÿ\0&¹+«Yï-ÿ\0s\'—u«¥t:MÌzý¦Ù3±§ÈõtÞ–%«{&Óö+Ý·üéÿ\0<ëjÂóxÇòÉU-¥ú|krdK›eUöÿ\0Ú©­töDvç_÷k©Ö‹  >H«>váŽSÜÖ6+G¾6xÝ_îÖ¤r+çæ«ÌLãÿ\0i\"_|ñ]³•º›Lœ@W¨p‡­4Ÿ/µÏ®§¬Z^Au6vn.mâ<@Ë\'Íú×õ©[GMš&ùÄˆV¿?à¢³óþÈ¶‹4;Û|#ã¨d¾³”E’O¾Ÿ„ŸÌWÑðæ7Ø×pþcËÍ(sÓ¿côSþûgÛþÓ?³CirÝÕ¼>Ùx¨ºý¶˜ŽZ¿¿àß_µä6eòßh#¶ž0cÿ\0–#h`¯ï_»6ìsƒXg´#O.]ž¡•Õs ¯Òëî5 rÇŽ•|=“©ê9“níÖµté`§œŠñ¤´=¹˜ýiµ%Ü[euô5r´hg=(¢QM0\n(¢©¡Þgµ:£§IÚ¦HERQE\0QE\0QE\0QE\\Š( Š(¦•À(¢Ši€QE/,}Iª¸	EP”QEfcïN¢Š\0¢Š(\0¢Š(\0¢ŠCB\0¢Š(\0¢Š(\0¢Š(\0¢Š)¥p\n(¢žàQE\n RŽ¢’šC\n(¢˜‚Š( Š^Xú“IEÀ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0’£¢ŠIXŠ(¦EPEPK¸úš0}%	…Âæ{Sh¤ÐùiÕšÞgµ6Š)¤EQp\nw—ïM¢†ES\0¢—ÐÒãý“I°ÿ\0³HXž´n>¦’’@;íRn>¦’ŠwSIEHe}&ãêi(¤ó{Ñƒèhù½èù½é\0”QKƒèj®QE+œÒ`>›òÓh¤QT]£ÖMòýèòýèÔÏ›ÞŸE\0&=Ú“hõ§`z\nN=¨<¿z<¿zu\0Ý­ëKó{RÑ@Û»œã4y~ôê(\0Àô`z\n(Àô\0QGNœQ@ ¤ÃzŠZ(0Þ¢–Š(\0¢Š(\0¥Áô4”PàúJ’£¦Õ€(¢Š@QNÚ=h´S¼¿zv  üÔìAE\0`z\n(¢€\n(¢€\n(£¯€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(Î:Ñ@Q@Q@Q@gœw¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n=ù¢Š\0Ž¤¢Š\0(¢Š\0(¢Š\0(¢Š\0(Ü=EPEPEPEPE`z\n\0(¢Š\0(¢›\'j\0CÔÒRž¦’€\n(¢€\'jCÔÓéœ±õ&€Š( Š( ¤¨éÒv©hSdíN¢¥0x÷¦RªîÏ8Å>©$4Â£¢¤£a0õ4ú)&tQEXQ@QHŠ(¤ô\0¢Š*@(¢Ž¼.EP˜tØ|ë€£ŒšêQhª:ŠÁðÌa®Kû¢·¾ÿ\0¶+d´\"LWéQHrjWû¦šq÷ÓÔ††\"s’1S\0JDR8õ¥\'\0šM!“>Õª’>î}MMrp1UÇA[B:\\Ž@^j¤›¥tPyçÚ–kÞà~µbr#BÇ­ik	EˆÕ‡~µBõd¸•7Ë»,}\0ÿ\0ëÔ¿ii._ŸÈzÒ¡ò9÷&˜Å%`@ˆ0ƒ¯¹ÍZ‰¥Üyà`~4±Äd~sŒ“\\–YVp;ŒŸÎ†Á	sp¶§jôÇj¡\nµÑ,zR^JÒH0W\'üMKiòCÁàãùPùB\n}?cÞ]˜‘ómíøµ©^ˆŽãóþ=ŠçuKÙHãF$nüé-Á²î¥||ÆæÆ~¿.qøÖxy>c÷YƒŸ^¸éNILñ§÷ð?=´èâóÌ»wº¿Áòæ’V5`]T¡Þå¿ÝéZúnŸ–bNã“×ýê‚ÂË÷îv“×ûÙ·ìmJ\0piî	XZ,(ŠGõ¨uËñoÐƒÿ\0 “ZW,zs\\¾¹;Þ\\:©Úwß4f%ý³k¸nQ‡òJ³¥è¢ÞVcÊ®vŸ éZpi«|(sÿ\0è1D¬\0Ú>öOà3ƒRä	åƒõU?¢ŒšŠòð$~Q¸.*é˜·@Üá\0\nÄÖµV”N\"B\\,ÞùE8FàÏËßø.ïíã|Þ\"—áÇ†næ¶M%öÌÑLcdga…ùÙþuø§ñ#ã”z¼ih1n›ßïýÚû·þ+àxö†ñ9¼ŠK;oÌ×Ö29Ì“!ßUðÁmODðv¥=¶±¦‹àº¤sÈvoó£SóÅø×éx:‘Ãá!\nUÝ¼÷>_KÚÕ—µvþ´:…?´Œ~k·:¿‚|M¡µÈòÍÅ¬Æ)%{ûŸÿ\0;ÿ\0‚·jÿ\0¶\\²x?ÄV›5_iñ½iwý¨mÚú?Zü$ø¿s¡ÛÜßÍ¡ÚÇii¨^<Ûç&Øð+ôSþ{øw¬ê¼I©4Ç¦[ÛÂÒÅƒœZò³iûjE{u\'JTkÆ\'§cú³“0Nõ¬¯ †2Øû¹÷°¿ýzÖÓà1Û¨=@ãò¬o—{Y”pdGÕŽ?•|Kè}YÆÝíwÜÏóoß·ý­µf“•©¯~Ðíò:ïÿ\0Ù±O¶·W›?ÅCW6t5ÌJ˜ÚSïWq AåÂ­r^³;T2à“×Šî,\"0Û.zâ’@ŒŸÝùR\"òH*qíšæµùÌÖÏóÆKãø—åéúÖÏˆ.Ñ/CÈÁbM¦BßRq\\·ŒufƒO–á%—xBßÃœJl.sÊ°5ÌR9u¶Fÿ\0þïËx#ý\"{‰f´NÎ›ëg_¿û=ô¬ža‚tþþÕj£àû–¹Š9$Ëy}sMÞHÑ+mº/N­ü-Mlé÷Ø7ÏþõÌm×záÙuV…ÛËÚ¯×çßþõ	±’¼Ðò´O¹S;ê$”#Œÿ\0oÀâ“@5%aó$ê»º¤Ÿ4Ÿ8¦³†“æ1êŸõ›ª[W	œ§Ë’ žU‰Ët–k é·¥gÜÍü]²r,uÝØ{þøª¯7zkºÓw¯—&î‰óÇþÅ:µG¿÷‘úGN‘ÛødÅ #™ûT?rJ’oýP¿úÏúç@Gþïßû•íÿ\0+w¦ü¯ Ýþÿ\0ÉQ»ìù–§˜oïËQ½âç÷*IýßÝHõ]îWËÿ\0kýºÎNÝlh\\¶¿Ù$måæ¯è×ÙÁÛ û,î¿\"~²å|ÍßìUå¹{>xãŽ).£Mð¿ûUpbjç{§ê+m4gîn?tßßOJÖŠ&‚Y¡oàùÖ¸ÿ\0k’jö`å¯ñoùë©‚4¹´IˆO2&ÚßÞuìk®2¾¦Rm·ºnDuþý_´¸TL‡ZÎf3™6TÉÏ2³‚»«Dú[Y7ðÊõàß·çì-áÏÛ{á;é:Œ[jö‡Ì°Ô@ýí“zŠ÷Ÿ•¥ô–ˆ,7e~ò­T&ã%(î‰”T•™ù­ÿ\0½ÿ\0‚cxÿ\0öhý¦SñLÖ²èš#K%¬ðp·e†Ì‘ÛúlJHÀdªô5BÒF\\Š½Ú·ÄbêW—=GveKi¨õw/ÂJœV–žäJ‡5•¼sW­$ÚTŽÆ²,~©K†÷æ«UÝ\\e£pxeþUKpõË5© QE QE	€QE\\—qõ4”PÙQ$¢£©(V\n(¢Q@Q@Q@Q@Q@Q@(ê)(ªLE%/,}I¤¦€’Šo—ïN¨`S|Ïju\0QG\n=\0¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢š`QE8°u”QM1Ü(¢Šb\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€ÐÒQEqNYŽ9Í>£¢“W\0¢Š)€QE\0QE.¡ ¿£qõ4¢ÇÔÒCŠ)Ø_SLKÇ½.ÔÓiX\n(¥ãÞÁ Ü}M%;êi´¬ÁØ(§|´|´!´6åûÓh¡’(b:Q¸úšJ(°QLØ}(ù½é(¥`qõ£qõ£aô¤¤QNìŠ(¢à.ãêhÜ}M%XŠ(¢à»©¤¢˜ÓŸöi7SFãêhÜ}MJ0”R‚r94ìç$M	²¥‚Š3žœÓ`z\n0=PEPEPE.ãêi(\0ÀôQE\0QE\0QFÿ\0z\0)p}%\0QE\0QE\0S¾Z@G¦isþÍ\0v¦Ó³þÍ_½\0G­.ÁïL§}Ï|Ðàp\'™íFóíM cýªuGK“ë@£ÐQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QQÐRn¢›\'j>ÿ\0¶(ÔQE\0(ôŠ)îŠ\0Z(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¨èJFlRÑ@GRTt\0QE\0QE\0QE%GI;€èûÓ‡AQÔ•2@)êi*¢€w™íN¨è¤âEU%7ýšm* QE6À)HÁÅ©¤ Š(¡0\n(¢†€(¢Š€\n(£¯€ÐÑAèi¾gµ4€>ÿ\0¶)ÔR¨É“`mxb2¡ØsZéÇ­gøz-–¬ÝÉ­ß6yÅt#6ÅeÝŽØ¡WšÇ1À¤…¸+f‡;A„ÎAÎi“¾ÚÔVññŸj­-Éá~ö(»¸É\0½j–C¾:WLU–¢bZ©¸dcÀŸ©©ïøƒ2@Ç©¥Dû8\0àNYƒ!*}ßsëCzÜ*›ac7Þ‘Ç\'úUpãÌ$ýÕñ Š³t¦@ùèi±DªÈHùzÓ·pD™òˆïšÎ¿º	•Vë×Û‘R^]e éùU™™ˆûÇ¨¡In¦gCéþ\'5bW!#£ü) ˆZB	àvýj®¥v)<ã?ž)\\½^èùêª72“‘ëóW9q3<Û‡i?à;wÖ‡ˆn¤ƒVßùey¬)d?l}±~ïþ=š¸\"[6ìdÚH8ËcîôûÌ*ý¡)?369õàÖmƒF¼žƒjÿ\0ãÕ¹¥Yît;w#?†qŠ‰!¦hi¶{€$`þ³C`ùxÅWÓíÊíSÀ«r?—~í*j—>U©ÃcƒüaÛ[™%y¸Èý1Wµ<Øùÿ\0Ðjñ\"áG<åC@,ÄÆ\\óôÜ+*úr‚ýçïýßž´oð.xþL1XÚÁÙ)¸‚1ÿ\0}TÅSUÔ6Ù»¯Þ=ïº¡jAºEêwë%:mÓ33y‹÷í¥:Ø+:ÌÉò¦ÔþúªJÈ†Ï¿à®ðMÇý²¼eªéqiÚ¯…­ghÿ\0qæ½ü’:²ÂG¦Gë_ÿ\0´§ìuãßÙ³Æ÷ºˆ¼=¨é÷®>Ðæ8÷DSøIqòüÕýbYÁ›T3Í#ÿ\0y¹®CÇ_|1ñþ9õNÔ¼… ùÐ†gÜª?A^¶4¡%tŽLN\n5uÙŸÊÀOÙ/Ç¼¦išv›sv¯>Aû“ØWô½ÿ\0§ý†lÿ\0d‚úu‰‚íiíÔ^N$ƒZ½Sá×ì¹àïk—7º.ƒac$êÈbˆ.äMÛšöOèéalªª\04có\'ˆ\\«DliëÔ¾TC\0ÁÂ¹¯§˜Äµc9Ýô_ñ5ÓêDž+ñË$cï?Ëù·øWÎã¹ƒl…çò—æÿ\0¾j[Ei&BæùWÿ\0A§È»œ·ó~mSèöe®È?0Ýòþ4Ó&ÇUáë_6d8úÎº‡ÄppIÅexvÌ0èµ£ªMå[œu\0ÿ\0*I”rºä‰:\\;„+{ÆáÔ…Ï5ÀøÎýn¤”ÌÅ™‚?û«–®Ë[\né$¤¹6òeSwÞ8¸¯E³È­Ë#ÿ\0€ù‹º“`Žgâ$â/O™‘/¶‡þûÕsÃ6ÿ\0¼¼´¬¯;L--ã?h¹ùÿ\0ÝÜÍ]‡-ü½íœ×\"~ñ¡§#yV/·£¦ß’«ì[xö¯ÝŽ¬Mp«Ä¿ëfOåUþo/ý]o 	¾I7}úkÌÞeM²1·ïÔv>÷ï*°	3´ÒqÊGTä”.YŽJòotþëÕ+Æ`8¬¤4Èîfÿ\0¦•Vi·Sf}Ø¨dv#æâ²nåŽGßþý7ÎWûµÿ\0á¦½Îù6·†•Ë>×mB“/Þÿ\0Ç(ßýï¹@‡8þ,Tlû<ÏÝÐ÷*rj¼U 4}KGÿ\0|S_ûµÎ¯åûSQ÷ÿ\0Ï]õ›•ËjãwùÑûÔs|Ÿ7T›Ô|ËP¾ïÝÖrW#ì¸ù¾üŸr¤°¼ki7ß¨_çù©7þïv>ziëp64HÛø‡pH„7	ÿ\0×o`ß`šdÿ\0W7ÉòWž§úm–ØÀócùáÿ\0}k©ðÎº5\"3Iæ¢oÙÿ\0¡WU7Ð™”måNy†Dû¿îÖŒSÇ<[o÷k#MÔíRF“;SýºÕµ¸I>ê£-t¥¡‰4GæÚ~V_»VÌ¹$â¢ˆ©É´Õ”×!×éÞ4:ÙA8Û·\"¬B|¯¶¢€o¬êHŸ~3»Ûµ,ÀÇ¡«öì:\nÏŒlš¹lÀÕÅ“\"ýëyÖ1¶>çÕÐÕÃóéÍŽ Š¦zÂ{0 tQYŒ(¢Š\0(£põPEP4ÂŠ3žœÑ@Ó$¢˜	è)(‰(¢Š	\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢œXQT€^TúIE(ê()Þgµsß41ì)=@uSÝ©H‚Š( ÐQE\0QE\0QE\0QE\0QE\0QE\0QEŠ(«LŠ(¦KÊŸB)(¥p\n(¢˜.¡£ÐÒP0¢Š(QE“\0¢Š)€QE.ãêh¸	EPEPEPKƒèhE%&ÆQE.ãêiÜ”Rî>¦ÇÔÒL,©£–>¤ÒQB.¡¤¢Š-p¸QE(ê)‚Š)wSEÁ	ERº¸>†’Š) \n(¢“`ì²i´íÃÐRlÜ}M%.ãêhå©4Ó(¥Áô4”“\0¢Š^O©¢à%S¾Z/`E+c¶i*“\0¢Š\\CRÚ)x÷¤¢“v¾ßö¨¥Áô4•`;yö¦Ó‚îÏZ<¿zw´ï–›E \n\\JJ(Ùÿ\0fQÑ@\nÌM%PKƒèi)Þ_½\0µ&¡¥òýé´Ø“ö¨Ú=i´RQNòýéÔ;å£szQóPî¥\'™íM§W¡<Ðæ{Sh¢€\n(¥Àõ ¢Š]ÇÔÐQE;æ Ó¼Ïju\0ß3Ú3Úè(áG \0QFáê( Œç¥PEPEPEPEPEPEPEPEPEPEPEPEPEPEP\0:\n(¢€\n(¢€\n(¢€\n(¢€åûÓjJŽ€\nwßöÅ\nþ¦ö¨ÔScïBœ¿Ö€E7þZS¨¾gµ:›ÿ\0-)Ô\0QE\0QE\0QE\0QE\0QE\0TtQ@IQÑ@Q@Q@Q@=A¨êCÐÔt\0ï3Ú›E\0QE\0QE \n(¢€\n(É4RLw\n(¢˜‚—ø¸Í%š¸QB`QE)\0QE QE\0£…€QE\0¡¦ùžÔµDª’?ñ©í×sžÕ\nýóW4Èò…Ä@¢+PgC¥ÇåX îFjfÉç±¡P,aGE%l™“vƒ€qÍ1¾sÈëOÎWŠhÈæ‹CÔmª·RmV%ªÄÎ3Y·wTçÓŠªq¸›)]¸cœç\'\0õfÊ2K1-ÛÚ”[¯–ŽËÐqøÑäHycú\nÝ½4”k™•AýØ9¦:Se˜ÀÎÅãë·Ø›W¦jxÄŒàh[	“!Qg“Þ©Ý\\3#\0ÜôÅX¼¸+”SÈª.¹ï?3@u#dódöÁì8©¡@±î÷§¤ `„qùTW÷©e6p8ãñÅ”TÔ/Ø¤ÈÖN§zÏ¹AþùmË«Æšäè€`Æ©ÛÈyÅ†ÝïŒTÜM”5»µ´²!ØsíÏðóT­ +½¸uù¾oûæ­ÞX)ÞÛŽøWîýÜÕ˜tõ\'‡wéWt¹K:-™ë_š6bOü\nº2ÛiÈ\'¦?fi¶ù mÚÅô­û(\"øÔ§}F‹6ñíÆMVÔçÀ\n=¿[‘ü¸É¬k«ƒ,Äç€­ ¼-3y`9ü9©a£ÃgôÅGi˜nn¯Œ~Ufá$ÚxàçØdPmôûKHU‰9 }°õ5,q¡r­ø¾kVè´²¼¿6°ã¡ùúV5Ööi$?#‰ÍýïŸÒ—PeYbÛ	_¼Òîfþîíôø£S<¾g–\0ÿ\0¾·S†Ñ”ìÜ­·þû©bbtÚîÁWýï›&›d¢uTŽ\n6¼*6þ ÕiÜ›¸/ß_Ëþå#HÓ”eµX|ß÷ÕhxvÁ¯¯…p§jÍ¯éKol€®ÿ\0ßXÖ(Î:TV–Â>wùx§bŠ:¬årO§ùü+¼”Æræ‘FíÕÐëWk1o•2Çð_þ½r×÷\nî%c•òíöZ‹]‰²”::·ÝO•R·ü;§”e~qÁ?ÞàVTV\"y¤Ùù}ø®»ÃöXU·=júdTU?\\·vÀ¬!ZC÷qtê+Å“nÑ€Ì[+ýîœP€å/à’òö[Ÿ´:Ã¾Hüœ®çnÿ\0»Ö¹OÍöIöÂPÃò.ßîùŸ7ç]F·4ºp‰™£ò‡À=¤þƒšåõ-ßjò×Ÿ9•Ûý…25DßQÅ\\åõ™&¸ñŠ¬cìòBÎéüqüÛVº-18K/,k“Ó]¯¼Sq2É$ˆb‡ÿ\0CÝ]}¾Õ‚5Ïü°ŠÕ³B{‹oÜß{ýº¨÷$ÚßseÏæìi#þòT	·äÎÙ«l¼ÍœceFÇäùxj|Õ[ûÕ‡ªçefØ˜?Ûª—Ù`6õ§M2ïù~z…ßtu-Ø¸®¥—ß¿ÁPÍ¹ªiûµWî|µ‹wo_½Þ¼ßãÿ\0íSàßÙ¯K†ÿ\0ÅšÝŽ—GyÒàÌ}½k¹ñ÷Øt›‰Olÿ\0÷Í9ðVoÚÿ\0\\øÍûNk–×÷Ó&¦NâÒæó\"V>¦ºð8ooSÊµ^Esõ§Uÿ\0‚èüÓäº‚=xÍ2ü‘ …¿}úWÐ?³·íà¯Ú_G7Ö,u&‡fèâ—÷«»Ôv¯åy5»íKPÝf’ÝÊðüÿ\0\'Ï^“û+~Û>6ý–<kmªh¬Ð˜Ÿ÷‘õŠqèã½{Uò(ªoÙ½N:xš‰Þi[ñ?ªävNy£Ÿ½þÝyì›ñ²?¼5â û¿µìc¹z+Ó‘Õ-ëæZ³iô=(ËKŽÜûæšï²Ú‰Ÿ|{{S_äŒîÿ\0r¥Jå¶G¿–Ÿú:hvIØ¦ÿ\0ã¡ÿ\0ÖÇºJ&FtÙöèH„ìFéçÉ\"·ÜŽ£DýÞÕÿ\0ç«¿þP¾ï3ýeg%bËvsy2Gÿ\0LÞ­øm¿±5‰\"·ó^ÞOŸçÿ\0–mþÍb¤Ù“sËJ¸“Hö»ÿ\0[ÏD^·²ÓïÖÊîu›ç‰ÿ\0¹þÕmXj‘Åwä¯™GòíoãZå´ÉÛQ³vSæ>ß¹WþÛ7lólûýêí„´ÐÉ«Õ•Óù?rFÿ\0z®GrŠ²¡[Ö¹Ÿê’8EdoO¼ÿ\0r·ì®±åFuj¶¹›/†(uf†Õa4‹¼zvªq>ÀéWP†Î6úš‚F	Å[¶nsU\"9üjÅ±Á>µQb’4aùì¥Ýæª†®Ø¤«Î\nš¢ÇÎ¦ãLI;Sª:’²haMù©ÔRLŠ=ù¢€\n(¢€\n(¢€\n(¢‚”…ƒ‘O¨éGQ@X}7Ìö£Ìö§P˜š\n(¢QïÍ\0QE\0QE\0QE\0dŠ(¡0\n(¢­0\n(¥,OZôTu%KV\0¦îÛÆ3Š<Ïj#ïE€uP:\n@S|Ïjpè(hŠ( Š( Š( Š( Š(¡0\n(¢€\n(¢š`QE5 \n(¢¨Š(©Ø}Š(§ 6QEAE»©§pŠ)wSI0ÔRQNN´Æ†ÑE›QEÀ(¢—qõ4Û—•$f’ŠN@…Ü}M%R¸\\\\CIEÛÂŠ(©LnAESraESLç¾sIFáê(¡HQE)±wZ‰¤¢Ÿ0®QE…QJÂ\n(¤Èõ¦ES½ÆQE+…‚Š]ÇÔÑ¸úšXJ(£§jHAJAE%Û™^Šw—ïG—ïV ó=¨ÜÞ”Ú(JoËM¢€\n(©(›©£qõ4”PEPNÝ»Œc4Ú(JŽŠ(\0§y~ôÚvóíM\0êMãÞ“yö£yö¡€gýšu7yö¤ó©ü©\0¿5_½&IîhÜ}M\0?ŸQM“µ78ç¥\0ƒÓšwbAER%GE\0RüÞô”P¾j>jm\0ü7¨¦àúJ(\0©*:(J(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢„À(¢ŠQ@Q@R+f€£§IÚ›@IQÔ”\0ß3ÚMûþØ£þYÐ¨¨éËÿ\0ŽûÐ¨¦ÿ\0»Gû´\0y~ôê(Ü=E\0QE\0QE\0QE\0QLïÎhôQG\n=\0 £¢Š\0)OSIE\0QE\0QE\0QIó{PYJÒT•\0¸>†’Š\0(¢Š\0(¢ŠV\0¢Š)ÜŠ(¤ÆQG\n=\0¢â¸»©¤¢Š\0¢Š)s\0QEÛ°QRÕ€(¢Š@„àqÍ.áê(¡\0Ù;S¨¦ù~ôî÷ŸØV×†­Ã\\?À8¬`¸b}k¤ðô>]¡cüUpz“&hž†£©)®\0Æ;ÖˆÍHMÇÔÒ¨­6•ŸËŒ“C]ïçÀèµ˜d\\¼ÜÎ¬^N7mÅüXtÓ’p»”¬A»L±ËƒÍ¿(ö”·¸+éÕµ,‘±àâ‹i`¾¤3	H°ióÍöTù[¯¥IKÔµBðù·þƒúÑpCÍÅÓá°qßéRC	?–KXŠ…ã“Þ¬<v?Î‹Ï*ÁK`þƒ®Neƒ¸cþú­+ùŒ§\0àÿ\0JÅÔ$†À$ÿ\0èT›QbMÙïF©ŸÄµCn¡GUÛóãÕ,dE#3³’ßÃýÑ¿­GjŒì¤ó€[ñ¢ãj>Ïÿ\0º«ÿ\0²ÕÍ>*1ÿ\0ŽÒ¤_p1<úÕÝ>+a}3ÿ\0|Ô¶Ý>\0zãúVÔljŒY *áG­iñY=\0ÍRBL¥«Ý-Ø¼Aý+/i•Ô|Ù\'9öÍK}1º»p9T\'òâ¥¶·÷6ãŒcó d–‘Ô¼§òª×òd9Ï-‘ø*ÕËù8àþ‚²5[½±>2p	ýFi	²Ž©q²¡JçrãþŒþu™¨x1Èþ/ûê¥»¿i¦b>âÝþÏ#^MÞD¤Œ[oþ?I!1VÝc‘K§ÌÍµØËqHd0:Jïò*¬qÿ\0ß_z–Ý›fC?—ñ}·S.¤’$_™Sk7ýõL¶°<Â Ë€ß2¯ü»Oé¢0„€¡EaxvÁ¥\nvá?úßýzìôË&Üg©þTÓcH•Ô(àUBq![·?ËúÕû—íÚ°µ[‘LRÃŸøÿ\0Z“zÌ×Y¦‚D«ŸÏ¥c\\\"ï„;ŽÝ¿\\V£³È¤vÈýMf­±’ýHP?…¶ÿ\0À$&‹:=±há;x\'q?uú5¸‰A­cèúxT(®†ÇòÓ@‘mÎ#9ìr¾\'˜)Ú\\°ÝýÞ\0®žêSöIt×¯¸¸»xÜe¶}ñ·\\‹â„—SqÀ² giI]»¾uéëÒ¹K¥“íÛZMŸ\'Îéÿ\0]üšíu‹âcibË`Bû=y§‰eû´ì?ÞøHÕzìcø­ÒÞ\\©ù\'º}Ÿî¯Ë]Š«n6W1àÝ94íJR?›ç­åœËßu++\"Ç_7•u·Ì“s¦ýP£à–lî¦4²#Éç>dGùýšgž3µ¸¢@9¶«¦j³¶ù>_¹RLÍ/0õ_z%ÅHÒ¹¯üÛàt¯/™ïQoP>^jdYÏú½ÕUÓûÂ¦™öy›¤¨n]^?›Š†®GŽ\"{Ï\nj6ñ&¹´–8ÿ\0ïŠþU¿l¿ø‡À?µí#^ºµÔ²N‡ïç&¿«‹ÏŸÔG÷ëñóþ›ÿ\0Ÿ½ñž«sñ[Àð¸:¬™d?ÞéÖ½®¼hÖæ›²jÆUi¹%mÏÌï†ôï„‘ÛÜ¦ŸõÄpÝ£Ìr£¦ŸÆ¼Â[·¸ŽêoÜE;³\"\'Îõ·âß†ž\'ÒnÍ¾§¥Ý­ÕŸîÌo‚ð¯Yý‰ÿ\0`_~×ž4·ŠÆÂêÖÂÎtû]Ô˜Ûû[¯ÐWÓªÔiÅÔæõÔãöK•Ÿ¸_ðESÕ`¯ýº?,BÓEn}cšû.•¿y^Kû |´ý›¾èŠiæLX2ž¬Xäšõd“ýZ¿îÍ|=i^¤¤º³Ñ§u=ü˜Ç;j16ñÌxzkî„í£{y}Mes@ÞÉ\'üôD©úÕqÎd©üø³åÿ\0«¤‰‹ÖÃ·þóýºÿ\0ÕôòêOöªO;æ¬Ê óÓ…Áßü³«vW¨d8å*¯Ê’S‘ö¿¾œUµÍÜ5ƒ}™î2ñîùÿ\0ØþüvºÍ>%¹¾’?çŠ¸)5µ¾³™ºÈû?àuÕéš™u‹Ëï®ŠjÄI=”¾Cí’IÖæ9]¾uzÅ’Ì’®2_~êÕ¶ýòàù=uE«˜›09è\0rµzÞMã$qÐÖUœŒ±¡÷«BÎl:Þ˜’/Âr21œÕ˜/ÐÕUP2Gæ¬BIcÞšBiz~¸ÏU5I›ÞõsNÿ\0\\¤öÍSlïlTUXÚ(¢¢ã$¢™¸úš}K@QE \n(¢€\n(¢€\n(¢€\n(¢¦QE¦IEGN½¸Ž¢Š($(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š®`\n(¢„òÇÔš7SIE4E)pE\nÄQpE3¿¥ÿ\0–u6ÔSå¥:“@QF  Š7QE\0QE\0QE\0QE\0QE\0QE\0QE\0¢Š(°Q@QB`QE\0QE4À(¢Ši€Rî>¦’Š‚áEPØÚ°QE7QE0\n(¢€\n(¢€\n)0=)h°»©£qõ¦ÀJ(¢Q@áê)qî)( Š(¡°\n(¢€\n)0=)h\09¥&ÔRÒî>¦ÀJ(¢qÖŠ( Š( Š( Š(Àô$@Ï~´QEÆ™^Š(Àô ‚Š( Ü}M%P¸zŠ)0Þ¢–€ÃÔQG>¢Š\0(¢Š\07Q@ ô¢“`ô `úJ( Š(Àô\0`z\n(¢€\n(¢…Q@‚­þE.¡¤¡€™oAK¸zŠ)0Þ¢€“x÷¥ÀôPIéKè( Áô4`ú7SILÀô¥¢žýi\0QAÏn´P”QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QEŠCE\0QÃPh ŽzƒEG@ûþØ¦Òò=E%\0QNó=¨ÔÆR´±÷¡¸ç¡ S|Ïjm\0ï3Ú›E\0T”Q@ó=©ÔÕ9­:€\n(¤fÇ€Š*:\0’ŽzEQ@ï/Þ›@\n:ŠJ( Š( Š( Š)¿ïPª:( —qõ4x4PEPEPERnÀQE&À(¢Š\n(¢‹€QEÛ¸QHŠ( Š( †áŽ”S~ÿ\0¶)Ô0#¢Š+@$ŒeÔW[¦®ÛÒ¹;eÌ zëíÆØzN;\"Jk0=:˜sÞœY-Š•ì¹b¤,\0ãRo™¹þ*Ò×R[ìS\'-€¹9©îŽ}©a‹–fÛŸJ$A+¨äŒüÞõ»wAknmã$ýæ$ŸaN~ó‘Ö”fF8êiñ Œääí÷(ŠñÄQã½eì-7\'œ~µvú\\¹SÒ Hòù=:*´¬„ž¤‘.$rj;‡œwÈüJ¿/N*½Ñíú~tŠ3/dù¾îìÿ\0!X—îL¯¹U—\'v>£ŠÖÕ‰a°gæÿ\0 ÖUå¾øg%Šÿ\0µÎ)	”üÓ-ÔïÊÿ\0ìø«6VáUK.Áüwb‹{TI$;FKòÔ\nžWRV%^:ûê†Æ)žQž¡—ò­[@8ž?…S´€Æàz©Çç[:lDºñÀÇò¦-¡§FÇj5Y¼‹P£©Èý*Î<¾JËÕ¦.¸=qÇ×^-+_þµZ@ßõäÕkaûÌªð:~u5Ì›bEä`æ€*j—D)\\õÿ\0A®ZÔÌK1PKª±Qýï”U½cPýé,‡ÓÓms·no&˜7™„VýV’×q6Dí7”ÇûÛ¿Ûûµ<—™•_»jÿ\0ßUN†#òÛ[wþ;S[@ÑØ°aÝßÃþõSB@Ä¯È­ò¯Ýoö‹sVì­Í)·ÿ\0^’Ž¨yÇñÀòkkF´ó6±ùWµ\'Ù.›å€BíÏ_ÈVò\0¨j­coå©=1Vd;Ž‚“]2­óîüð+Õ$c\"þÉ?©­»ÆÛ€?éÖ°ç¥vÿ\0à?ãLek&ktñÉô8ÿ\0ëÔöZb§È•8õ>•¥g`-áÚN3üò?Â–ÒœIØŒŒþ&’@‰\"lkÆ1“V-Ÿl€¸ä*Šveÿ\0Ifssž:þfš`[Ôm›ƒÜäkƒÖ/×¥as–?w‚uº•è:ƒ»Ô^Wâ™ˆìŸi’ºS½ã|<q˜¹lÐ›-ý±ä²%ßîîÛü?ò×Šà¾%JSÃ×oÏpžJÌÒ7ÿ\0]œ³,Z;³±>êÿ\0Ñå×ã9EÌñÁ\'—³ÎÞ›?ÙjÊ«º**Ì~‰Øôèâó3å§þ‚µ}eßíûÏ÷+:Îmñ–o÷*äWqÚ™¸O–¢1Ð±²Ëºy†÷¿GÚz2ÇUw´>b·ÞŽ£{ñïÿ\0Vûè°\\Þ2GÎj›Þ3ýïÞS^oï\nG÷R¡»š=0?Ü¦ïdó)¿7™óP›ÚOö+ ù#Üß~©¼ß»«nO»Tæ?Ä´\0çv1—ŠÍñ&µa-­Õ´70Kþ³Ì«Ÿ2}áDÎeõ##Æ¼Aû|:ñN½u©êÓn/n¥ûL’Ë\0$ÉåìÏå]_ÃŸþøSe$Z‹a¦Ã/kX@Úy}6ã|tãûˆ·D$L¥rí—¿ýmY}ÞfêŽ2ÝþYÐ¦êÉ±\'a‰/Î?ÖR™D}{Ð›jH6Çj>å-JäeW¢IóÓÑÄr|Ÿr—Écÿ\0Mõ\'—H„®;!Ìoü{þJlßýú›,{¿å¥FŠ¯!gJmT¸Æ>z‹bÇåÿ\0­ýåZ½ˆ÷Wß»îÖiY±Ü£Ý[Iñ”ÞŸïÖç†µ®­£‘~ôŸqÿ\0Ú¬8_É’7ó>J—Â¬ºeÄ¶É‘¾ÿ\0Ÿýª¨?x™-Mðþ¥ç\"C/ï³þÅhÁ ‰¶Á÷wýÚæ<2ò]‡Ö¿ÎŸôÎ¶üÖ–a:$nÿ\0Æ]°–„ŸrD»BlZ6r²NÀÖƒ4i¹þFþîýÕ±bÛÝ[8Þ½+E±™´G,/‚qÈ&«Ú6ôç â§Œ`M¥§_\'=*³œ±56–IsOéPVsØi…QY(¢Š¤ÀQÔRÇÞ“zJ{ $¢˜¬E>¡ \n(¦ÇÞ¤:Š( AE\"¶ih+˜7QEPSaKÊŸB)3ElRÄõ§Ôt£¨ EP@ŸÇøRÑEl(¢‘[4Z(¢€\n(¢€\n(¢€\n(¢šQTÀPÄt£qõ4”Q`z»AÔRR°QE QE\0ScïN¡ \n(Ü=E‡¨¢ÀQE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE	€QE\0QE\0QE\0QE\0QE\0QE\0QE\0QE\0Q¸zŠ(¡\0n¢Š{QC\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢ŒAEŠ( Š( \nôQEhEPEPî>¦ÇÔÒQ@¸úšJ( Š)>oj\0Z(\\÷£ãš\0\\‘Ó\"ÇÔÒ¥‚€qõ4|Þô”PK¸úšJ(\0¥Ü}M& ¤ãÚ€Š(Ü=E\0QIÂûPÒe½.áê)8ö ¤ãÚ–Š\0N=©wQE\0™oAK¸zŠ0=\0n¢Š]ÇÔÒn¢€\n(Ü=E%‚Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢›æ{P€u6NÔêl¨ÔØûÓiyéï@	EPRTtPRSzRPJ¹Ïi( Š^Xú“Gñþ4\0#¥%P¶sÏZ}GRP9SèE*·cM¥lvÍ\0¨§Ôt£¨ fì)´S—æÎyÅ\0:›\'juG@\nzšJ( ‘›´PE†€\n(¢€\noßöÅ:£ 	)‡©¤¢€\n(¢€\n(¢“v\0¢Š)€QEXŠ(¤EPEPEPEPEPEPWïšm;å¤þ?Æ©0›ÞÇÔÒQM -i‘™.”{Šë\0ÀQ\\ß†áó/Áôæºj¤ô\"L)¯ÖLNÂœIds}Ú‡M1â º“jdv­b…kË.Õùœô§${cÔä’}MÑqæ°ÃsŒúS”~ó®ZÑ¾ÃD°¨Ÿ¼qQ\\Ë‚Ê¼’I>SÆÝÝ>•NvHÇ±0ZÝŠì¯;–¤~aƒ÷i½g\'œ”øÁ-Ï~• øžæªÜHT×š°I,sŽ•Ràî#=3ŸÈÐô2®Ð˜ØîçœªÕ9I>g8*Oä1W®\\¹b3µAÿ\0Ðj‹°X¤>ìAP÷7ÌBŒuý¦ZÈ…Ã’¤+útÃTWž)9vÉÇ×ømÆäx\nû…	h+š,\\,	?Ë&·tè¼¤P?ÏJÍÒmÉXÀþOë[pE´\'·_Â¨h[·Ã“É¬K¹Œ„û?J½«]n“júŽ¿ˆ¬È–BÀü¿à´ ,Ú’¥G÷zþu_[º€gË¦GòÉÇ\\ÿ\0ìÂ¹ïê§í\0,wýìQmDÙ—{pnÑ]7;¢þAª?\"Eßóþóø¿ïš’Þ(’UbÙWeÿ\0€0ÝB\'ßwO›j¯þ;MoanKüˆ\0ØU·½…­[EŒ·	’6ûæ™\nbGÌ€{`U‡ÜöüÍ“Çü­Cw(-¡\\Âåð=®—K²\nƒ¡{V>…`Á¼OCøšéáÊAN J0£µG+g¯AR~Y¨g|qß©¦&Q¼“åaÐ·Sø©Y‘Csì?RßN|Ÿ@?#QE(¹?¯J\\LykÇ^1ô&¡3ˆwõÛÏLSZç;€ôãÛ›©^˜—pn\\ù®Gò¤6Zžô´äû­×êÜÕÛi€äé\\äwL×8VùFsŸS†®†Î\"m]‰äñø\nlI™^%¿kxHM¥Ùù½7â¼³\\¸¸}I–Øˆ\"‡Ë7ÿ\0Lþo–½Å×I.vap?)y§öšÿ\0ÂA5ƒG,‹xZoàM²1üé§£®ìjj7CÈxäßþ=µZ¸vá_R{lßþõt·w~lÈÉû×ù>úç»s~Êk¯³_Ÿˆ¶ü\n°¨Í\"¬‹Vo˜÷7Ü«JëöYØ­þ§l›#Ûû­õ#Ã²Î9·üûÙ+$ØÈÝßïy”Ýÿ\0ÂÔßà“?Ž›z%\"¢v¦¦ß½ütïöª=þ_•‘C^oÞmZ<íŸwî\nkþï§þ|¿G’‹ip7Ïš§ó­ÆÚºÿ\0%¹j©4ßÄ¿~€!W/äò¶ÿ\0·B\'2ußNw_/.~MŸ%Góy5fæ4Þ?.(¹©÷jµ>ÿ\0½Nò8¶ÿ\0Ï:´ÜT_þÙÒ&^>Ò=7Égû¿|Uùæ¦¡{Â*ì_3—RB›¤ã;?ô];ìÊÿ\00£~Ç÷êèäÉl\'n>åZýæÅ=Ý¿‡ƒQ¬´‰OiØÛï-7ÏHò®s¿Ds|û¿Ö%5äYe“?r³¹¢!›/W}–‘ïòþHêgÈÃ§Üª·_»=z—+…„»E˜ÆœóêAä&¯o;þîo/ËOúkQÏ¹Ç ‚?ç7Tµ{»ÿ\0{å¼r+£ÇBv·‡u²ºIÖ?0ê4ÇûDFÏü\nËº¸6æO³FßÇþÅun¸ŸÏŽ1ò*»WM6dké·f>cì•c#WO¤Î³¯ËÑ+•H¿å²Uÿ\0¿ýêÙÐ\'V—vý™þö«¡ÕŽ¢Éðø(ÇëWP€k:ÉðW5¨ƒŒ÷¦„[ÒX‰zí5œõ¦A&Èä\'€£&Û—?E@Š(¬@:p(£ÐR.;PÑEîçëšˆ¤¢›\0§+v4Ú*Kz’QLœzÒÇÞ‰°íÃÔQ¸zŠl©~oj,!GAER\0¢ÃÔQ@îQE¸QE,w™íN¨éycêM°ú( tQ@è(\0¢ÃÔQ@Q@Q@QEÀ(¢Šn@QE”1õ&’Š.4®*±±÷¦ÒûŽ\0¡H}7î{æ3ÚE¬HQM½:“@QE\0QE\0‡¨¢ÃÔQ@¥\0QE\0QFáê( Š( Š( Š( Š( Š( Š( Š(¦•Æ•Ã8ëERLQEþadP:\n)0Ð(¤ãÚŒÇ‹Z(Ü=E\0QFáê)>oj,ÑIó{Qó{Q`ô4R|ÞÔ´0\n(¢€\n(¢€\n(¢€\n(£põ\0QFáê( ŠFlRÐEPE\'ÍíJ:\n\0(¢ƒÐÐ€(¢Š\0¯EV€QE\0QE\0QE\0‚Š(\0¢Š(\0Àô`z\n( Š( põQE\0¸>†’Š\00Þ‚Š( ¯^h¢Š\0(¢ƒïÒ€\n(¢€AE‡¨£põ\0QE‚€\n(¥Ü}M\0%Q@Q@‚Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š( Š(¡\0QE\0QE\0QQÑ@ûžù¦ÑE\0Sùo÷E2€\n(¢€qõ4wã4”PEPEPEPEPEPEPEPEPEPEŸÇøPÑE\0PÇ4QÂ@(\0¨éOSI@¸úÑ¸úšJ(\0¢Š(\0¢Š(\0¢Š+6À(¢ŠiØîÛÆ3Šu×n˜4^à:Šo—ïI¸úš¤Àxè(¢~ª\0Z(£põ\0QE\0QEüÐE¡¤còŸzh¦ùžÔê¬Ý…#g<õ£8<p)*’\0¢Š)¤ß„Py²· ­ÚÇð)Hõ­Š¢áL?3qÞœx^;SIãŽZd¥b)œ+\n‚àyò*vÎ)ì|ÇZ\"$ÝíZGA!\'pµ1p@ô4æ^I<ÿ\0ZŠV#…UDhIçÁÛÞ¡·‘úÐ¨KiÒ[=‡Oz´„DÇ÷€Ç4àÒ~èè)#À“wjWpNÐ8_òhÌv·b¨^¿<zãõ«SIÁÆ0£úU[ˆþ@ÊIþ´636rn,Hþ•Fé×qŒ°Þsòÿ\0{å¡t\0ç \0¡¬[©vL	ÿ\0!ÔÛQ6(`I2€ 7÷x{K€™Ÿ¹çùÕD‡Íbz+|ß ®‡F±$îÿ\0Vî“dc·,ÙÜ{Õ‹‹$azž´÷aÀè+>îà«31õÇä*†Ct““žzþ5j0¡{ãê8§	— çæ9úfšì¿{8Ú;»@jw!ñü9#Äb¹»ùLÓ…\'nÂ[o¯5«­Éû—Ú\\Çû£°®ÙÝBþñØíüM4®&I\n«4Yþ¿ÞÝÅ]‚Ø3©Îô`>oÎ>Á¦hÝ—k+n?Ÿô­£XÐñÀçëÁ©”†ˆZ5Œ(\nØQÇåšY\"vË6yb8ÿ\0xSŸ2!;zp>˜bÎ?5Øòî\'?ˆ¤·F®“–(ÛŠÔ@dóš§dàsÆjì@“íV‚äG¥R¼ŸËRç¦?¨«lÛ7Ö²5›-ApAÏåHw)Í(2\0X½ûsž´C)>cHÇã•ÍUiI“•QI\'ðlÿ\0Zt(o“‘ëÔP‹™€O—øIýMaêWo<ñmÚv>Í¶¯ß]¼c,7mÇñgúV%Ë«¼…°ˆ3·ëò±Í%²þ›7™vWo-ÆºpGô®µ•`G|W1á¸þÑr$p?ãŸäk§¼‘b°Ë.x<~5 Dá>\"ê+cc<­Ñ+÷;Ôâ¼ñ.ßØ¡ûØîÙîýæùkªø«¬4Í˜‹„Þ}r£å®n&8µ[ÛKq¤3+ÿ\0¾ß.êv²¸ÐíZâ0þLÑSåÿ\0v¹æi®.$n’=tzêµ´{cîFŸð&V®gEƒe¿úß÷MïXTFñ5­¶ù|ÓfK‰¾äŸ:\'üóùvþ´èr‘ÿ\0ì•]æk—ó¿Õùˆ©óÔ‰¡ßòÎš›¾ëS7Ç·µ5ûõ“v-++ßû¿ö)¿òÓrä=9¤tÝŸèß~ ¹ß\'Ë÷èO‘ýi³:ùžõ6ÍŸv©D]÷GU^O&?õuqÓÎûµVåÿ\0ÕÔþäFËûÊ642|´íÛþVïK7úÏöä i]Ø;T»&U7îÿ\0Õü”}±ü¿r•ÄHŽ©&|ºsíiê÷oßÿ\0ÐîÞfêcJàýbÿ\05?s&Ú>g’M´×|“òGJâûÍ¾”:~÷rÓ]Ù¾í5Ý ?òÎ£Ú\0yžXùäÅ7-?Íü0d”Ëõ”É<Ç%LÀS8NOª·xÆ!$«”ó7ùF«ß?–Çyó\052VÔÑFÄrïòŽÞ´áÝZ\\Äü¼‰÷é‘ìûé/È*K3&Çê*Zê4Í/ÞÏ-„O,~]Áûé÷ë°Ñæh¢I3ò¿Éÿ\0®ÂS½·Úb–?/Ë¼·ÿ\0ž©]¶‰7îü¶äûõµ¢%££[†òÞ6ùÑ¶4‰ìfþ¬ko.h$ýÝY¶¾h/*yi÷+®/S)½±$¯­kDõ‡¦\\,ê¬>ímY11ã9ÅRv%¸A-¤ÑžC®ßÎž*ªŽˆ1R$K+2±ÀëQ“œçÖ³¨]ÃÔQQÒî>¦²)Ä_3Ú3ÚQÐ	&II»æÅ2¤ °QMó=©Û‡¨ V\n( °hÂŠ:tíE4ÄªÄQŸ®i)¶4‰(¨è©)&áê(íÆ(£põ(¢Š;Q@7p¥V\"’Š\nd”Ttï3Ú8ŽÀôQEÜ(Ü=E7Ìö§P6„ÎGšZ( Š( AEPEPEPESNÀQE€£¨£qõ4”UXÜ}M%PÝ†•Â—qõ4”£=³š”Ãq|ÏjuGE	\\±%ÍÇÔÑ¸úš‡ÑMó=¨Vìh°‡n¢Š)›©¡ @è)›©¥ó=¨åÔQE \n7QMó=©´44‰7QE01)U»‡Tt»©§ÓJåE\0è(¦NG­/™íCw‡Q¸zŠo™íFáéE‰”S|Ïj7nãÍ&†ê)¿òÎŒÿ\0´iØC°=5—ŠLCKåûÑ°Ð|Ô¹oAL§yžÔ jÃ¨¢ŠB\'Ò›Ú™Nó=ªš~ojZMãÞ‘Ÿ#\0R°¦n>¦—Ìö£Ìö¦“\0ûþØ§S|Ïj<ÏjM0š¸zŠo™íN¡€pÀ€h¢ŠM€Re½-3qõ4Òû‡¨¢›¼ûQ•ô4XãÚŽ=©¸´”ÒJ(¦îÛÆ3Š‘¤:“ê)7Ÿj<Ïj!~ocF[ÐRe}_CNà…Ëz\nZnóíG™íI‚C·QFáê)›©¥Þ}¨ˆh¥Ü}M©­D& ¢—qõ4”€(¢Š\0(¢Š\0)wSIE\0QE\0c=¹¢Š\00=Q¸zŠ\0)p}& ¢€ÐÒQF  —ÐÒQ@Q@Q@Q@&áëKE\0QE1…QHAEPEÏJ’€zu7Ìö§PEPEPEPEPEPEPEPEPEPEPEÖûâ€RSdíGßöÅ\0:ÃÔQE\0GR†£¢€z<Ïjm9a@£$Ñš(\0¢Š(\0¢—qõ4”\0QE\0¼õæ’Š7Q@Q@Q@Q@n¢Š\0AE‚Š\0(¢Š\0(¢Š\0(¢Š\0)²v§p£Ð\n(¿sß4ê( Š( ùžÔ‡©§ÓS@	EPEPEPE†¦@QAèjPÍŠËØRËJqÈ¦7aNá‡¨4Õ^æ†ùqŽ3@¤lö¤ÚÞ´¼{Q`ƒÐÑM^ùýi »ŒóŠ)±KÃPh8ö¥¤û«ô¡›\0ž_½:Š(ló³êi´¬Û±ŠJ´ERr\0¢Š(rÂG÷R©ìEl×=ákƒÎÓÑø®†­ìˆ`z†bT`š”·Ë‘U§“t˜«‰,TUŒdô4ãóž3PLK8]Ãš˜ŸÈUµÔM•Àì:uª³e?O;dqš„e¹<J¸ ±ãù‰ý)’®XÔTÅ@9ê2‡å\'·5wŸ•½Ë7·JYØŒd}Þõ®C÷rp((níÙ#æ\n*µÑsÔxÿ\0TåÈ.ª¼ã¥V›ªÝ€ÿ\0Ç©FóÉîGåƒXÓáäFã`?7ýóZZœë½À\n?^•‰)}ÐÄÛMú6h°›4ô+a:¦Ieufºûkp®>_jÃð‘0#·\'ùVä³ÆÜžhC#»›*@ëŒ~u›}>1Üã§¯ARÏpst_ÿ\0]U¸$²¨Û	Ïà(5\"1ŒòÍÛÓu5åýÈü|gØæ¡v¸àÿ\0³S^P®¤1P¸©›+[f¹‘UW9B¿šTzU³ÜJÒõ`’?½Ñjk{uiÙ·«·é°Ö…¼&ÚØ…]£¿Â†ú—Rh•P(wÑ¹ªÓ±h2pGÞëV23¼@ÿ\0¾ª·ß¸rG\nSŸä*QB™\nDtlí•â­èÐ‹\'«~µUcûL¨œìL÷ŽÞ+kNBñü\'?­TD_´L ùzqV£ÿ\0\n†|¼tïR–\nÀwZ±Xl³™9Åsú­Þd$|ÛNäElj/åBÄƒò‚!\\æ¡1.~ûœþ\0ÿ\0õêd4RåKÇ÷ƒîýTéSÅ((ì~RÍ‘ôê+#S»hCcä?wÿ\0Àý*G¿Q`ªù_›òÅ¬.Ow©¤NØÎÞ=ŸÖª•F|¶fa»ÿ\0AªÓÜy‰…Më·vßï©^QVl10VT+þ&o÷ZªÖDÞçCáÄ¸uÚU€Çùü+[\\“e£©þ%?ú	ªÞ‡\0’>é4ÿ\0JV·¯Aø‚*JG–xù%Ôu3O†}Ã÷ËSXúbmOÞy³:³3ÿ\0ugUZŸÅ—òM«;B‘È™3ïù#_-Aýj³!³G·ßå¥²6Çÿ\0vHöÕIl(½lfxÂh¿°äXAžR‹÷>]Íº³m~Ïòæ¬xËÌ7Aæ¬å6²Ô–h¾]sKstìI	‚Î?´I\'î£ŸþÛWÿ\0¨v3É#Iýö­‘Ãi<Œ<Á±v\'ûUG~ÿ\0•©8ƒwòôó>zl)çGÖ¤ŸÚ¡ù¿‹îVbþõFÿ\0íS·ù|zQþÒÔò»¾ßÞS™¤òþY>zY¾ý#ºù/Üª,l¿êOû•]Óý4©>Øÿ\0€T;™Ë\'Z™\0çü¶|”Ù£Ì-üt?÷^£öjFÕ†¼Ìü-7üßúG &=˜4ècýçûu”I?7˜\n7ù—>oï(x÷Ç´ýÊ9þ¿Z$\0é³æÅG\0o3åÄiRlY0÷)¿ìÐÐÿ\03Ÿõ”ÙÃ\\E°ñN›þý¼uÀó!,0j\'Ð¶Õ\'2ÏJY$f˜\'<ò˜6y²Ô$ä“ª!æ«O‰%*™«¾AÇîÞ —ù:â©+X¬è#Ã§“#Ÿ‘Ò¤†@—D`‡4ÇELd|”Ô»ûOü²÷ê±mXžÖ_²k÷ýûˆÿ\0ïšì¼/rßkòwÂË½ë‰»/R³nžgîöjêô)”jp,dù*é0nçWdžT–œ¿ðU„–WŸr¦ÿ\0Ÿzoÿ\0–užíæ!?ÞßVmóö·ôþ:ìJÆGKáÛÃ\"|øû«Úº}*O”C\\^ˆË»/Þ5Öé³mN>÷z¦f[Ô®>Ïd$¨œ{š•ŽKSnbI’2ã&7>¢Œç¥g7°uàÑY¦EQp\n(¢Æ‚Š]ÇÔÑ¸úšEÜ_3ÚÃPj:QÔP&‡–­ÝÌ:Ó¸aê´\0äE ¢€LÏJ(ïÖŒüÝy iŠ9#=éõ(ê)¥q6>ŠŽ¤¡«(¢ÃÔR\0¢ÃÔQAIØ(\n( I†H¢Š(Ô’ŠŽŒ‘@¬IE3qõ4”DwßöÅ:™¸úš]ÛxÆq@4:Š( ¢ŠoÍ@ÒE\"¶iOC@X(¢ŠQE\0QE\0QE\0QENÁEP>`¢Š(aES»Xäæ’Š(¸4QE&ÆQE…Ýòâ’Š(l„ìQE\0‚—qõ4g=ri)¦]ÇÔÒQFH¡;ŠzšJ(¦¤&¬(÷ÎÚJ(¡»Wqõ4¹_CM¢‹ˆ)wSIE¡¦QEHî žÔ”SL‘wSFãêi(¡°\n(£$RQEÕ‚â…\'¸£o¸¤¢•Æ.ßqF¡¤ÀôSLVD”ÃÔÒQBadQE!Ø_SM¢Š.EQp\n(¢‹°\n(¢•À(¢Š0¢Š(QE\nìŽŠ(­ÇZ(¢€\n(¢€\n(¢€?í\nZ( —ÐÓxö¥ Š( \0ç·Z(¢€qõ4”Q@‡¨¢“j\0\\AE‡¨£põ\0`z\n(¤ãÚ€ŠoËN Š( Š^ºi0ßÝ4\0QF ¢€jZ)7Z\0\\ã­n¢‘[4\0´£¨¤ÎzRî>¦€Fáê)ƒ¨£\'í@¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(:(©(\0£põßùgN ›÷ý±Gû´ê\0)²v¤Ü}M*îÿ\0õÐ¨¢Š\0o™íN¦¦’€æ{Sh¢€\n(¥=M\0%Q@Q@Q¸zŠ\0(¢Š\0(Ü=Eß¹ïš\0uQ@ûþØ§QE\0ßöiÔPHW,¥-6NÔ\0êAE\0n¢Š( Š( Š( \0ô4QE\0QE\0QE\05›°§QQÐKÊŸB)( Š2M›\0¢Š(nÀžÙ;PÐ¢›æ{S©HŠ;qŠ*@o™íG—ïN 7Z\0Òû\0R2î¥¢•À8aêQ@\n=\0¦ýÏ|Ó˜àfšÍØS@Û|Íì)9SèE¨§`vÞ1œS©»G­ ºR°óRnùqG,}I¤ª°\nzšJ(¤Ý€(£<ã½ gh£põ -éù\nÇŒk«WÜª}k·}²WS¤Ü‰ìW9,£µƒÐ‰\"ÄÍµ@¨Pw=éÏó¶nj+‰|´b:žkÑ`EÝ)nÀ`T…‚¯4Ôc©4ÙXžõV¸ÈÜïÝéJc9ƒŸÆ—ãïUÞÂJã@8 ÔMùíëR¹ûÄÕ^cµ@íÖœP¢Ew0#=ÕiÜïZYØáùâ¡	ù‰ÉãúSå;P·|Jc¶ØÁÇÍ‘ús|Ûùöý*ÉpŸ/¿ZE×ÌDÙ=>\\{u¬{×Ú”h@Üw~«OWÕ\\©ÀÛô&á« eˆâ_ñëMï{V•´±_ïcúTwìÇŸò*ÁýÜaz`U+·)ÍÛÿ\0éH²	˜:(nÜŸÖ©MuæôûØüE]`:±Ïá“Ub”Í6ÐGÉùôÁ W&jcäçô5¡‘ö}ÞrOÕªh²F7rOà9#!‡þÍ@ÊqÇ›µ9pÇÝèjÚ®èœžƒŒõì)Ñ[ˆˆQÏoæhUm˜+·¨ÇÔ\nM	!²¸1å\\õÍU	´m\n¡»þ$æ¨ÜÛ\'ùÔpC¿äH$þ&¥·¦¡ó7ÿ\0Aâ¶lô÷æ©iñ\0¿ðü«RÒ2›±éVê\nzF~qÔÒg»T3MŽG^ZwŠú¬¹Âýàxüø®sU»P\\¯ßPQqî3Zú…Æã¼7Üþb¹jõ¡GØ»Yz7¾H©hfeÕÆçeã}Û¿ØnÔŸkýö…?ýuB)ÊGï~T§ÚOæE¹Ž©0p4’à-ú.þ›•›þW4˜¤™ÕIÜ¿îüÂ³¢eÑ›bGÿ\0Ø×C¤ÂéŽYOÞüA¦Ù)F‡ŠÙzçã;ñi	bÀ*•ñb+zÏ÷vØ•ÂüZÕ6×”_ªºãùÐ•ÚA\'¡ç–WSÝÃržGÏ¨4öÍFê.Îµ‘¤MòÍ¹?ëšþíªÎÊÇOû7–ìžgšÿ\0Á¸ðµGT–KŸ.D“dHŸÁþÔý9¾¡UÝ&«·ßÿ\0j½lƒËô5F	¾Ù¬]ÈÑžµ-¡ó-ó\\Ñ^õÍ‡\\Ûl°I÷›Ý“þùÛUQ:óS]¤Î—ÈñmGýÏû­·ÿ\0ÝP¾Ù#ù’‰\0Çÿ\0ULùŸËÇß©7ïùvPŽ¯ò¯zÉ«ÕÈi³.Èþj–gýßËÒ:­s1xþlÒ(ÙŸn*4mÿ\0/Gþå7îIGÊ™ýæ|ÊÍ6QÏ¾LGòŒ/@~å9Áòöã¥FŸ/Þª$ÛýüÊ‰ÐI”ÒaéèŒŸ2Ñ3«ñüu1O¨ÿ\0»OØÞô¤ªH6ÉÉþýþ&^:”€<ïàjwÊŸtS@òâù)Ð¾É1üMXþySL›2{ì§\'÷Z£y’lÇîéX¸n1å-0â—ÌòþbqI$ˆbÿ\0[ƒG™æEÞ#XØm\\Häã¨‘ê7÷ÿ\0¥K³Žù”ÙwÇæŸà¦ãc1ÿ\0#ý$¨ncVN7Ô†$Æô#ŠfôòúRH§Ð®ïŽN<ºc\'R(¹ÜŸvšdN×~ö”¢i{Ü‹äÛ7—æyn•Òhs—Ô#Ýþ§z×/¨Ÿ+Ã÷åù‚ßû•¿ L³ÛA\"Ë,Ÿv®š³°š;âû.ø~îU×¸–™„[+>ÑÚâH[÷q·ß§\\jH7ÆØÞk©JÆKÈÓ³•£s#N\n±]–›vcaÆkŽÓåÙ5né÷eöû¦¶QW:¤—íP²çŽ”ñ÷WëUtÙàúU¨ûÖ3$uß/Þ¹ïšÈ,:Šl}éU³@4-QEÄQE4À(¢Š€_àüi(¢‹¤;wl{S©²v§RØ(öæ™ËRiôV\nMÃÖ–“`÷ Š(¡°L]ÇÔÑ¸úšJ)ó‡yžÔáÐTt»©¤;.ƒ•³KMVìiÔ	 ¢“-è)h‚Š( .‚Š(ì»²sIEØ)wSIENâî>¦’Š(XŠ}GJ¬Eh}Sô*	HvqÖŠ)¾gµ\0ê(¢n¢£ iQFáê( AEPE‡¨¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€¸QEÂŠ( Š( Š( .QE\0QE\0QE\0Q¸zŠ7Q@ìQE\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(£põ\0QE\0n¢Š(Ü=E\n(¢Q@Q@n¢Š\0( œš7Q@ìG¼ÿ\0xRgý¡IòÑæ{V‚:\n)»›Ò@¸úšJo™íN Š7QEpÜ=E‡¨¢Š\0(¢Š\0O›Ú—ŸQE\0sê)0}ih ÃÔQE\07Ìö£Ë÷§Q@ùiÛ‡¨¢ŠáEQp\n(¢€\n(¢“@QE0\n(¢€\n)8ö¥ Š( Š( •XŠJ8P4\0»©§Óˆ¥ó=¨ÔQQÐ”QÂ@( Š7QAèh\0¢Š(\0Ü=EÖnÂ“qõ4\0¿ìÓiwSC§h\0f-Æ)(¢€\n]ÇÔÒQ@\n¬E{ÒQ@¸úšJ( Š( Š( Š( Š)ß\0§¡¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Š(\0¢Šnîøö QE\0n¢Š( Š( ŒAE\0QE\0QE\0QE\0QE\0QMó=©Ô%G@Q@QI»\0QE	\0S|ÏjuMØƒÐÑM õéIjÀTéIþõ!êi|¿zlQMó=¨^øýiXRáKFáê) [4´Öù±ŽqN=;\0Ù;S¨¦ýÿ\0lP©¿wŽ¹§Så¾à¦Òœ÷Îi)¦K¸úšJ)¤ET¶ER\0¢Š(U¶kk@¼Ù&ÂpùÖ¶jÅ¥ÁF¸9pzê&Ž¤c$âªå·@\\þ5%œâ{EqéÍ%²ye¾fbI®„ìdÑ.æ “xíO-Žý* v\'ž*¢¢DÇ´æ8Óç¥ b‹âH®S˜üÀŽ§¥\\nAª3ý8hH«!Cž‚£RÝÏJsžI=ÿ\0¦*7ù°	ÆOøÓlhRvDÞOó5ZäŸ›š´í»¯NÕZãsr02:~†dÞ…ó?N=wV—‡l„H¸ïÿ\0×ª†Ü<áÀÜ>»«cOO\"(Ôÿ\0ž´1§$äŸLÖV§vF@ëÏ€5¡w7’…›å+œ¸»î,6ç ~\"†2.C°`Û£BØÿ\0kæ&”…ÓqêÌsŸL‘Uâƒ±?.Xç:f´-ø›õRå‹0ÃÕ	äà~•4Š3ïÌRÛG‡$õ\0~†žq÷ùäQa2_ö»þµÌ»!|ñ…?¬É	2s»þ†³õ€±H\nî\n‡à´0)ÊŸé£ýsí’*õ„%ˆaüdsøš§mž|œ2?ÞäVµº}Ð£€Æ„Ä‘jÖ 1Æ;~• ¤í?/cùÕ{PzúªW}‘ƒ÷x¦0¸`NsíU%›.<uü¿ýt’Üo8?(Ï5Nòàìp½H?ÈP{Ûac·#þqÿ\0Ö®;Å7E+8Ãn?ð¹Òj7b)‚Xœò>¿ýzã5ËÁs~áxTÚ»¿¿†ÙN,MóJ©&ß3Ìåª{wÎÂß ß¿ä¬ÿ\07Ï•qSZL­÷†Ïàÿ\0ªd¥s¤Ò—t¨€aRº¼²àeù…rV{>Wûÿ\0ÝüëµÐ-–»W\n½)1§ÐÝ8ŽÜ€9Æ+Ï>!J—Ä­¹ÝÏ€®þùü«2q^aã5—S»’y9v3ïcÂ²î§ÂLçíäŽKPcŒ[ZÜmO÷·.æüwU[‡>Xÿ\0ÕAüÿ\0í|ËZW–FË@¶i„-,²ÿ\0ÏM¾^+\'Ä³G¦ér2þóÏÜŸð/2¦£.:ù‘‰WþZVÔ8Hÿ\0ë¥eéIèkR+•·´ŸÀÿ\0sþzV1ObÈnnî:HÏï>}•\nB©}yþ\nvÆó?Û¦ýÏ½ÍØì_3å¦ïó¤ä¬§?Ï\'¯ÿ\0Qïþì†:‚¢5ß÷Rnÿ\0r¨¸þ,U‰îÿ\0ëWÞ¾_þÉS\"ˆÑËÚ±ÓfuòöóNggçÿ\0Ô3>÷¨JÀÿ\0yòç5dÍ»ËéHd)}©±˜Ù,ÐÒ{?ú±ï¹QìØ÷ÒG\"yQó„¥Þ¯%LÀ<¶Oº~ïÐû~ñéHÍægšzËMµ	ô\0Þ,ñ²›z„ÿ\0ÇéÞg–cDïZJ7\0tÞûùâ—þZüÙ¨§>sŒ¿GÏÂ~ò³¸ûÔ7v‡þZÿ\0¬¥ó;õŽZ^ß»Åd‹S;ùÙD8zd¼—ýPiðîÇÉÒ›\'_ö?Ž­«67Ùú¬ÐøŒÿ\0ÏJHîÎ÷$Ôo>lœIjM›KqòFÖ¡–1Àô4Û|³º’BqtyhH€ÙÈ¾_™ò5jøx$LxýÚ|»+>Õ÷¿9ÙSø_t1IfD·û”Sz¦=ÎêÂçÎÿ\0–ç¥w_´|½jžªöbfä©åoß†òöVéØ‰+uäì‹fP\'É]„©4ˆQ6a+Ž²ºgt*k¸ð”F[eoâjÙ;™=ŽMµòbÎsÅXåO¡ûÛ]¦£¥\"æ{Sh¬M$¦ùžÔÚ(‰ è(,ZŽ•›v8é@¹GÑMó=©CŽ4\nÌZ*:’€jÁEQq.ãêi(¦˜.ãêi2Eš-;Žó=©ÔÍÇÔÒP¤œ(ôÃÔSU»u´Çz(J;sŠ\03Ï½ŠÙ¥Ïí@Ö8¥*“œ¢‚Ðÿ\0¿íŠ>ç¾i¼(ôŠ/BJCMÊúMÇÔÐÄÿ\0ni¾gµ&ãêhÜ}MHXûÐ­ØÓjMÃÔP6ÂŠLÇ‘ÛžHuÍÇÔÓ÷Q@ÛÐQFáê( ‚Š( ¸QE)Þgµ7§Š¡wSIE\0ånÆ¸zŠŽ•XŠâ<tŸÇøRÓcïA(uß3Ú@47Ìö§\0Íß3Ú€·axö¥Ü=EJä”Tt ‘È 9GÑœu¨êMÃÔPX)›©§î¢Š‚Š(Ü=E\n(¢€\n(¢€\n7QE\0n¢ÐQQÐ4®I¸zŠ7QMÜ=(ùh¥Ü}M.áéG™íAWqõ4úo™íG™í@š¸ê7QMó=¨Þ}¨Û‡¨¢›¼ûQæ{P£©7ZO3Ú3Ú€°íÃÔS|Ïj]ãÞãÞ€H]ÃÔSsþÍ.ñïI¸zP	‘ýÓùQÇµ&áéFáé@¢Šk/q@êo™íIƒèhÇ¸ j#÷QMó=©8÷§ÐXnæô¥ù½©•%\0ÂŠ)7Zai8ö¦QAJ$”ŠÙ¦Q@¹I(¦n>¦ÇÔÐ£è¦\'½© 9Fcýª]¥¹É ÒyžÔêÒäÜMƒÞ–ŠFlP$‡­2æ{S·Q@ÂŠMãÞ“Ìö Q¸zŠ( põn¢Š(\0Ü=E‡¨¦ü´ê\0MÃÖ—põß3Ú“qõ4\0ýÃÔRn´ÝÇÔÑ¸úš\0vñïFãèi7Ÿj]ãÞ€Ìö§SwAFáé@¤Ü=i7J>Z\0váê(¨è 	)¾gµ6Š\0~[ÐRÔtP¾Zváê*:(wSFãêi7³F}\0II°{Ó( L’ŠŽŠ¼±õ&’Š\0’”:Tc¨§ÐE‡¨¢€$¦ùžÔÚ(Jo™íM¢€æ{Rn>¦’Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0)¿sß4ê(\0¢‘zšZ\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\02qœÑMÿ\0–”ê\0)»¶ñŒâE\0Ù;S¨ ˜zš7SI@QEÀ(¢Š\0(Ü=EPu%p£Ð\n†îïÍ7Ìö¢NÔ|Ô$iwSIKÊŸB*˜14¿òÒ›K¸úšQº\nw›©£qõ4¬¸ç4¬Ý…&ãŒv£•>„P\n­ØÓ¨¦rÇÔšV¸	E(ê)*Ó\0¢Š*PQSp\n(¢€\n(¤þ?Â€Ìö¢NÔê)ÜÉÚ•ÑšO/ÞùgLmPÚ2x~?Úœ€«ž•ÈE!‹‘[ÚuçÛyAÈ­©Êú2\'Ì®ÎêTM¨÷©6ääšpñÒ·l„»âŽBóÒ”õã<Ðr8=ªYCY°3T&É$Ÿâ5zS3ÐÕ+°@ã¥h…rœÃj=Oÿ\0Z£$eO¿øÒÌNÜÄãùÓdÃH<!äûæ‹2æÝôüE ù“sÍ¬…z©~‚šÌÃ\n­Ë1?Ni\0yã5;HäcúSgp©“ÔéU^B7dñ’Qþ4­u½9:Ë~] ìúõ«·¾E=—“ùS?3°^\'?ˆ4Ž+5‚ã†©Uëx¶È¤Á?Ê‹h<¡žœ€¿™©­T|¹S‚3ôâ“¨Ú0=yúR<ŸÄþFž¼á9ýi“;þµ\0CpÁFî£Ç­a]»!~îòOþ;[L[\nýñÀúš¡EÛw\\ä}2¦„&‡ØB©/Èç?ÌV”j%ëÏ©ëU­ãTu#ž¾¼Š¸§’J‚3Ö•†OŒ{)Ò¢¾¸ÑsŒúŠ_4$`ž€géÒ²n¯ù-Ýˆÿ\0Ói.T–cÐsŸ¡ãT®.ðÙÝ¼ãžj´Ú†Øn\0›éŒÕG¹Y$[pbv¯°9þ´XW\"Ôn<¡3óm¿ïÍr:½ßšîÇ¬nÈŸîõ­}Jø‡Ç÷?ýUÏ^1`sœSVÈ™þÝýÚ—Oˆoäùÿ\0&¬íû­ÿ\0Û«šd¥]7}Øë8î3°ðìj%@§î*ÿ\0ìÂ»=¢’6œ×á]®LŠw£…uük½Ðb+çæ\"´kRbK¯\\µ#vOÖ¼¦ü\\êzû-²FVI¾Ë!û›#2¶ôŸ1—Mž5áÞ6Dú•5Éè™YrcÛ/žÓgøƒ.ª.×`ÕØkzz®ÑŽAR¿Oþµygˆî|Ùã¿å£³×ªx»SšhÚr¿ú+Èõ‡ó5É#|±¢Ö»7§±kOÛåüÕ¥%´pé³HÞWŸò¢\'ûU›eò¿R^žgúÄÙ³ÿ\0f¤\"Më÷ªs\'÷)¥¿Õ®i>mÿ\05L€‘›ÌÏ5Ýé»?‰yQïýäÜ?~¤´î2gýÞÚ­òþïwü³©&ãåoÞT/7z™&uxêº|ëRÍ·øzÓ<È°ônQK²,\"Óð[îR>~àòÎ¤6É.þì”ŒÌÿ\0{¥:=Ÿ»^)ß,2nþ\nÊNàFˆÞV>]:ÉGËÿ\0¡c’=£Ëàµ¸Ò¸ï,tÿ\0Xc¨ßäÎÚwü´¢<ÿ\0Z©FâŸ.-ÔçýçÊ±õ¦Ï±â;ñG™æ|Àæ²`E,[°	§ìêîS¼„?÷”ÑÄâ€\0RA”9—\'¨©¤Œcn?ÕÓ$ŒKà>•2¦,³ƒI\'ü|¥>_ŸäN$’šûYsÒ¥\\ÿ\0«?JƒçŽ.øŠ¬É#Iæ9ûæ«>×Ž0¿~©«»š¨ÙX#“ËÁ?òÖ¡´œØkwÜ‘7Ô×ÌÃ¦xªß-æ­o,¼þ¨¹tÖ·{‹á«•ŸFÚ­\\¾û—îVg‚v¦‚!o¿ÖŒßñ÷ÓÌHëx½Mô7¼?n·\"·ÜÙ½+½ðÜ>R Œ×á›…\n‘·æ®ûDÚÊ»zWD^†:(³‡ÕJ»dH‚O]¦©Vu0=&ï›Ê]ÇÔÔ>ŠD$ç=©h&ö\nUb)( ‚Š(  ¢Š(wSO3qõ4n>¦5qôTu%µ`¢ŠŽ‹‚W$¢Š)©QÔRÇÞ›E	\\¦ô$¢£¥Ýóf¬>ŠfãêiwJÃ¨¦n>¦•~ù E7pô¥þ?Â€°´­01)wnãÍ¤ÿ\0f¸zŠ( NAGNP.`¢Š{œÐSaK¸úšMÃÔRäã¨cè¦{RùžÔÊ:Š@àõâ—põAEP	ØCEn¢óáê(ÝÆyÅ7Ìö§n¢¶QErÃÔQE7î{æ‚‡QE7vî1ŒÐ	Ž£$Q@`zPß3Ú@R+f€ŠFlRÐš(£põ\0Rî>¦“põPJŽ””Pqõ4”Q@n¢Š\0(¢Š\0)wZk6)wQ@X]ÇÖçéLó=©Ù>‚;ß3Ú3ÚŽ¥Ü}M3Ë÷£Ë÷ o÷£½P+¡wSILÜ}hÜ}hýÃÔQ¸zŠo™íFáé@¢“põ¤ó=¨Ôn¢›æ{RüÞÔbÑI»éùÒyžÔc¨¦ùžÔ»‡­\0.áê(¤%O^i7A@Çµ-&ñïI¸zP¨¦–ì(ó=¨Û‡¨¥Ï°¦ïô›‡«Pš)¿÷Õgµ\0:ŠfãêiÙoA@E&29›G¨ ÑE‡¨­Ã9éEP¸zŠ(¢€\n)>oj\\A@Qè(\0¢“æö4´\0QE\0Qè(¢€\n(¢€\n(¢€\nCE\0QE\0QE\0QE\0n¢ÃÔQE\0n¢Š(\0Ü=EQ@	–ô»‡¨¢Š\0(¢Š\0(Ü=ERl9éRTt£¨¦”ü£Ú–Š(\0¢Š8aê\0Qè( Š( Š( Š( ŠCE\0Q×ƒK´çè¸	EPG=A¢—ÐÑpŠ( —ÐÒQ@Ž)Þ_½6’`QE0\n(¢€\nRëFqÞ’€\n)p}%\0QKƒèh(£ôæ…õ4¹‡a½G#­RàúmˆJ)@ä‘IJàRò§ÐŠJ.ES¸ŸÁøRÐE‚“Ö•Çai¾_½_½;ÐQt\":’ŒAE@›¡¥¢—0Áô4²v§Rl¦… E;Ë÷£Ë÷§th©*:¸îRàúJžQQCL‘—u-mßþªCÔÓé¥=4Àm¬¥hÁô5WBQKƒèi(B\n)p}%\'\"”B—\'í@ºRQqX)wSIKƒèhL°s×Þ’Š(Rˆ§©¤¥ãÞ’šb°rx¢Š)XAET´E`z\n\0)²v§†ƒÐÐÓ#¢zOãüh*á÷›ëSØ_5”á‡NãÖ«ÑMJÌ\\§Qir·0‡^‚¦ïüUÍØ_=”™åî+~Òí.b§®¨ÎèÅ«7=óHNG4QÁ<v«‹+Çz¥p„£³Ó5uÉŠ­*îCMZ&&c®%ç8Qš`ù¤-Ÿ”gúU›„À\'¶qTæ`c§þTŠ°Á?çœÔ`søùSãß<~tŒÛvü¹Ò€#olº‡ÔT¤ÆsOä*Bã)RXä~uï3ŒðÃ\'õ ‘Atápxü3I\"Øör*P2Çœ?CMÁ“`(ïøæ€PããRÄ1½€éÒ£KŸ›Ç×\0ÿ\0J‚aŽ?\0z9dR:g?‘¤‘ˆÔóúP£ˆÔuàÒ¢¹bFìôéù@®[æ+ŽúÔp®Ä~\\óLK¼.öe9?§#š‘€ŠÙ#?Ï4œ€|y.{g?†1R¤¤ä7¯øÕe—nâ[Ò˜÷;T±m¸ã>¼ÿ\0õèºukÖ[6T\0»ýßÈÈ½¾_=û«ÏëLÕ5erV>J|¸÷èkûRr›†;ºÿ\0õ©¤ú‰²Ôº¸bÇJù7üU[›å<µàº…_ûçšÎûxÆì|ß3±ÅU½¼‘\'}¿t\'þÍV—a;Ø}åÁ—ÏEöÓùÖN§p»÷GþÕMqqó¢«òûSýÊÇšé^I7IþÂTIj\\Vƒ¾Ò©&X¶—ÉòöôÙÿ\0³VKÞ6>µcM¿ó®#fùÿ\0ûT“ÔG£xD¬ )ÈÛ^‡¤(KU=2+…ðJyÆÞŸ-w09ŠÔö«“Ô˜£Åº¢Ûœ³ÚAÛß9ÿ\0\nÁÓu8õE1Ÿ1V3½Ö¨ü@Ö¼½j4Ë\'çou«ÚˆÚ\\—IEŸ¼Ùÿ\0&›¢˜\'vaøÂøß]KvGlõe¯?–o´jÈÑÿ\0%mx—Wh–y ®VÊn7‘ågç¬¤õÐÖ+CV¿yÁÿ\0WH#û,—\nÒy#ïÿ\0®\'ÝZ¦“7ðÓ’fy<ÆûçïÔŒ¸“uÝËÓ]úT.ê¿Çþå9g–½“WISåþê¦ÙoÖ‡¹gó?é¥BÉægŠ€3ïùj1^B‹SÇ–¿ÁQºlùª¹iÜk¿ï>jk§NjGù=ê7ïHa¿hùsQ}ŸöéòH|Ÿ’›æyŸpŒÐ‰¶›>?yŸ¹Nù|Êkîüj&\0Ÿ¼ëÍÚn[µ7ý”¥óSÔTÆ7ïòü´Ø÷à9ÆiÎý(%SïÖ G¿ÊôíŠŸ<¿»N‡äëÅbÏõf™)\'/OM†MŽ<ÃMæIFÎc¡%a‚ä<¸Å4Iå’ý#©d‘<¬žsLYœ°ÂVA-„I8ù˜õÿ\0ÃS8ùñ¾¡—-6Î˜§k327Ý°Õ/Ì?!ùÿ\0å¥Y‘¯üõª×~ð;ùiD¤/ÙÆ~Llÿ\0–••¦Ø¨¹•ã=jóÃû¿öþ…MÐtÑÌ›8CR·5¦Ú¹×ø%-§Ý÷äz×•6\\8Ž³ü<A8Þÿ\0r´ö^H»>xët¬¬sÍÝ†yºFdýÓ§Éþð®ûB;¶û×žxvi#x“åÝ¾½CmÁSÞº!±”Ž–ÄŸ%Áé´ÿ\0*£Zp\\²k9‰ZŠ‚H]ÃÔQMÝ·Œg›½…dÙIX0}>™»ØR—\'§&\\uÝÃÒ3Ú˜¹GQMó=¨ó=¨C¨¤^(Ü}Š( \\ÁK¸úšJ(0»©¤¢Œ‘@Óæ{Rn>¦ÇÔÑ¸úšú)›©¥ó=¨\'”vsÒŠo™íG™í@4:”E3Ìö£ùÅÔ r)›ÿ\0Î)wzÓÙ<ö4n>¦™óS·QEÂÃ¼ÏjE=qLó=¨ó=¨£©Þgµ3qô4žgµh›põvãáê( ’J)›­\0‘Ò€°ýÃÔPzfãêi7üžÔ\"J*2ÃÔS·Ÿj«Î:dRï>Õ™íG™í@¢£§o>Ô=XŠ_3Ú£Þ}©7SBbh‘Ì}¨Ü}MG¸úÑ¸úš‘&ãêi|ÏjÌö ¿¥­Gäã©)»ÏµÈëÍÉÆ;Rï>Õ™íG™í@4HÏ&“qõ5ãŒR—ô‡î>¦ÇÔÓ7Ÿj‘×š\0~ãêhÜ}M0?¨ ¸\n\0“Ìö£Ìö¦oôo#±\0ÿ\03ÚQoôoô\0ôny4yžÕ™íG™í@X‘›°£Ìö¦oôžgµ\0?qõ4»ÏµGæ{Q¼ûP÷ç½©¦o>ÔyžÔ\"·cDª=ø\\n£ÌoS@f&’˜Xž´»µ\0Øê]ÇÔÒRqí@®‡n>¦’›òÑòÐ;Ž§+zš#ÐQ¿üâ\\š“x÷¨·ÿ\0œQƒýáùÐ¸úš7Zqõ4n>¦Ü“Ì÷nÞ¨÷SI@\\—z­G¸úš7S@nZ8õ5.ãêhMÇÔÒSwŸjMÇÔÐè¨éwZ\0—Ìö£Ìö¨÷Ÿj7ŸjÊ‰<Ïj7Ÿjyö¤Þ?Ù ,‰<ï¥.óíPÑ@ìM¼ûS7zMçÚçÚ€Hz¿¦))›© 1PüÏöJ<ÏöJnóíFóí@ÎyëE3qõ¥Þ}¨ÔQEV¦aE¼{Ñ¨	EQ¨Ð`z\n0=í‡Ú– 7ÐQè)Ûµ6…p\n(¢ªìŠURÔ`úZˆJ0=.¡£#ÐÑ¨	è(Àôì/©¤Áô4+ŒLAE;hõ£êh»ÆÑKƒèi|¿z6Šw—ïFÃíJâEU€QNòýèòýê[¸‚ŒANòýé0}4ÀLAF §l>Ôl>ÔYŒmQIDAHËº°zŒCT`z\n0=;Ë÷¥Ø=êS”S¼¿z{šJÀ!cÞ…RÔügÔ÷ª[\0R*í¥¢˜ï/Þ•Wm\02Š’ŒA@ÑR`z\n0=\0GEIE\0GEIE\0GEIE\0GRQE&®0}>†ŸE0ƒèhÁô4ú(˜>†Ÿè(¢€ƒèiø‚Š0=&€0=‚Š)4À0=ëEÐ £ÐQF §Êè(ÀôQG( ¢Š*@0=‚Š(¸ £ÐQE\0Àôß/ÞE	€QE\0QE\0ß/Þ/ÞE;€Ý‡Ú“ÐÓè§°ûR`ú}Ò˜>†”¡9§QRØÁô4`ú}60}%Iè)wPš¸>†’¤Àô­	 #¢¤\0/Jo—ïB°£§¤¦ýÿ\0lP6z6z–›åûÑv6zO/Þ¤(GNi0}5pËžE&ÃíN¢Ú=E!Céš}‚‹O—‘Å.¡§àz\n¨¢ãC\nårzRl#1RQŽØ¢à†GQM(N*Z0=$ÄGè(Àôï/Þ—hÆ(è(Àôï/Þ‡Ú…r=­ëIƒèiôR)2:w—ïNÇ9ïE\0ä7Ë÷£Ë÷§uëÍ#.êÆàúJw—ïGßöÅ	¢·w9ÆhòýèL†ÑKƒèi(Q²v¤Áô4ú0=/a˜>†’¤£ÐP\nDubÎí¬åVSÇqPù~ôêq“Nè:;ÕºŒ²ž{Š”8É®rÚåí¤Ü¥”ÖÍž¢·IÈÃÕÕN¢fR‹Gæ8íL¸o:Rùƒ*3Ò†aÈíÅj\"ÌLØ_J¡qµä`yÿ\0õVµÚí&³\'µ*Äöéùæ†À~êœþ¢›4¹BÑyüéL{FQQ¶Ÿ\\cèM\0;xtO@Í)@­žý1øš„aò\\~˜â¥VRÜt?\0ð½NW¨ü;q@3òƒŸçHçxÛßÔÒ;òõ#üEb€Æ.zòAü*@à*çŒš„¸Xö÷\'\0ýsRÁßäÐ1Ë–ÆN8æ™prÞ€ÔíÙr\0äÿ\0*†êO”áwÿ\0Z\0«rÃÊEN3ùRË8Ý¸·)ÿ\0Å…°ÊÜd*Ï¹¿È`¼‘Õ½‘ÿ\0Ö¤ÕÁ²yîn«t?ÝŠ©©_îá@]¾ägùÕ)oü»… ±®çüEbêšÚŽþa÷ÿ\0ïªj$¶M{©yQ¹ôfoÏšÉ½½iQþ~¿sýÚ«w~×ýÿ\0—å¬‹ÍKÎ?ì9>£I£AnƒFUŸbB÷l>fÆ>ýgµã?Íþ½PÍq²=Íÿ\0,é6ÇbÅåÿ\0ï$ÿ\0V\\×«æHÏÛsÓu>Mº™o÷ÿ\0öZ©<Å-£Yqõ”$ZV%3o\'ßÿ\0özÚðí¿Û§CåÖ-¬>}ÆÕçó7ÿ\0×O’»_i‹Éf_þÊšWdÍèzƒmÛ\'ß$üÜ×G¨Î-í1¤þ½døf¶À³e©¾-ÔÚÛJšE™#ùPõd­;×î–û^’YZÚà»¾öÿ\0à­ã©&›àØmØ—h­Ân_¦ÚåbUÕ¯‘#å£›gÎŸêöýêOkCÇ§å_÷zÿ\0èu¬Ò²&+S‘ñMûLòE&áöÀ*$}•SV™çÔ¢D“äûû*Ô+¿ïb¹/ïXÜ}¶äù—ïÔw¦ù2ÿ\0Ï?Üÿ\0Ì§BŒÿ\0ôÎž Hýéwüû¼ÁL‘ýi¯þ³æýåT@w»Ìf§;þî¡ÿ\0–têÎJÃJâLû>Vâ™³|žÔç}õ‡|›V¤±³ïŽ/“¬­Aï}ÏÉRÍ»?Ü¨¼ ’–^¦¡«\0ß-|¯“þÙÑ&Ébö§ýñòœS.-¼Â\nu¤“5±Ìú1‡DAòTÈ›	åÞ]g\'p#Ïî·ÔÛÏ•ÿ\0M)®¯å|Ÿ¼þå97ù²\'¥8  òA›åûŸû=8EåóÖJ|“†ûýèD\\Ñe€uŸ¼¦ýù)Þg–cDïI+€×üÐãùéNxþŸþZTrH²ý?Žš¥K`\'Wr\"¨¤“ýZ?oõ”¥ü³×÷rÓÿ\0Ý¬Ú±jb\\~ülSóšfóæïA‘ùT0g¦i’ïã*š¹æôª²>Ï2&ýâIV<£$Yç5ƒ÷Û8–¥³ndö y—î·Üþ\n—Ã¾oÚ®7Æ6C$ž|‘¯LTÚ-Ú‹ÛÄòåÙÿ\0üµ¥ÑIû§e¢îû:gïoù*ÔÉ½Ïü´ó>z¥¢n–$ç‡}•zmÑ^H£äòësît>Ýö´‘¸Wù?àUÞègiÍyÖóZHd\'/¾½CQ÷«h=äŽ’Åñ»#Œ¨Ãæ5jÃæt¢£½¶1H}šU\"®¡¤©)¾_½d[ch¥Áô4¾_½$€mâ¬zóG—ïL‚½hE?ÐR\0GBNã*J( cU{šUÇjP00)zuÈ ”Æ«f–Š(AE;nÞsœSi\'qÅQL ¢ŠURÔ\n×ÜJsõ§Q@Èè©)vÐ	M½;ÐR|ÞÔ\0´Ra½E-\0Qè(Àô\0QF £ÐPFáê(£ÐPu%PQÔ”ß/Þ€3Ú›RQ@ûžù£Ìö£nîsŒÓ¨aFáê(£ÐP\nAEP0¢Š(ÂŠ( Š)p}q(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(Ü=EPFáê(Ü=E\0nçæ“ø?\nZ(\0¢ŽzƒE\0&ï—4`úÒ+v4íÃÔP(Ç\\ÑF  Va¸zŠ7ûÒl”´\\QMòýèòýèC¨Ü=EQp°ÝÍéJ¤ž£´PEn¢€aEß/Þ‚RFáê)¾_½6ò¢LûL· ¥¢¤QI†õ\0´ÝÍéH¹íš}\0n¢›åûÓ¨*ÃÔQ¸zŠoÍN i;Ìö žQÔS|ÏjuÊ&ñïIæ{RäzÒm´•íÜc§SvZ>ç¾hcË÷£Ë÷§Qè*’d\\o—ïG—ïN 7ZMƒÞ˜„òýéÔlöý)p}K0=‚Š(³\n0=SQ\0Àô›½/^.¡¢Â\0½(¢Š9F˜SvZu.¡¦•±ž_½_½:ŠbåûÓ©Þgµ_½KóF §`z]ƒÞ„Ä3ÐQN*SFÃíChÑNÚ=EG¨¥d;Àô`z\n_,zŠJ­&`z\n(¡!	†õm>¦–—ÐÓ(Àôï3ÚŒÿ\0³JìØ}(Ø})wŸjm\nà‚Š*LALì>Ôl>Ô˜>†ŸPÕ€0=GRQN ‚Š(¦QLŠ( Š( Š( Š( Š( Š( Š( Š( Š( ”g<f’Š\0’£¥Ü}M%\0/ô¸_SM¢€œ\n(£põ›\0¢ÃÔQC`QE@QE.`\n( tõ¡HŠ7QEP\\7QE7Ìö§n¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢“`uàÑE	€QE7`\n(¤Ü=jZh¤Þ=é7ü¾ôXQMó=¨.ON)XQÂ@)»Ïµ&ãëE€}Íç­“Ö‹\0­ÿ\0ŽûRrÇÔšJMÃÖ©0ÎßjJ7QFáê*G`¥ù½é7QA uâ‹)ycêM7põ¥Ü=E0¢“x÷¥Ü=E6ÄQ¸zŠ7QHŠMãÞ“pô§`^â›Nf·4Üçž´1¦RŽ)A¥!¦)È9”›Ç½.áê(¸¬Ÿu~”§4žgµ\0ãÐÑMÝ»Œc4n‚€°ãÐÑMÞ}©	\'­\0,©´n¢ŠvQFáê)7Z$Z)7z7âì-:&JÌö¥^(L,Í‹DNpýqÖ®pWÚ¹Ñ!A‘Í_²Ô÷\0ÒºaZú2K×6GOJ§vàqV¤`Ã ­Qº?3éÍorJ77\"b:p>¼UsqäqåÏQøqO™	\'ÐtöíU<À»n:~œÐ\"Â1ï·\0ŸëN-²\"@àÇÛÅW…•ŽpŒn´³`;ú(Çéé@ËDá°?_Jvð¹=‡ù5[ÏrÙÀüéu	‚ÿ\0ýz\0”¸ÎGD8?\\ÿ\0õé\"˜ª lî#\'òª’ê`&<3·_J¯önçÚ\\ÔìMÄã\'?‡j­q|¹Èoº2k.ûSß¸«}Õ¬›ÝdÍ‘òZ¨ÆârF•Î¸ ŽiY¶§¸¬Í|DR!æ*¯÷k>þõ™7õSµk-î™ÛÓu6¹Aj[½×JÀñ³‰oýn+\"ûQfHÞnÍ•»<ŸõÏøÿ\0ñê«rí—ïÔ¶4‰&™š=Ë—üuUæXcù¾çûïSo“ïIþ³oÿ\0G’¦=¸ÿ\0YHc¡Ý÷[ýš.w\'Ý?=Xû3y{ºŸþ\'æ¨îáT³ÿ\0n¥sQtH¤oõŽ?ƒÿ\0¥{V’LùŸÝÿ\0âªÂùåÏþËòÑae¾I7~í$¤•‹4<-¥¶§tˆ\0>Êô½*ßËr¡>goüwj×=áU¡/·çÿ\0Ùk³ÓtÕ;1)ýÚ´¬Œ_cgM+d^øÿ\0¾kÅ×	b\n“«»é[K˜Ô`ýîÙ®SâTîm‚£í$’[ý‘J+PkCŽ·ÔWM:/ž_%wÿ\0Ó6ûÕ¬>ï»ûÏ¼ÿ\0øõZÓôØì¢’ç–Oß7Îòµÿ\0 Õ—û5¼›ï¿üvª¦ÅSZÜÂµƒÏÕ¯\'\\ì‘ÿ\0ß5¦‰ýê¡¤BÏüùžejÃîüÎdòÿ\0‚²HÕ«ù¿‹÷oÉÿ\0§¾ï/æ©f‡Î’F¦ìßÌ&¬\"»ÿ\0Ë6ÿ\0žtÙùžÕ3Â¯þÿ\0ðSQ7Ûÿ\0Ï:@5Ó|rm¨ßäòÿ\0å¦jmŸ&þ*\'‹Ë©“v\"îÔòÒ¤túÆû*4ÜžõØ¤î<Î}i¯¹þõI³Ûô¨ê7þYÓ~o7ç?ëiÒH\"“çã4Ï3¨óÖÔÊ7xS÷•ßçJ?å5Ç™òçË¥>€8í™€)G2J6s5?ºÕ\"|¿5\0}¸ê#¦‘ÇÏûÚ3ž)Û=¿J°èÏÏîé¿sîS“ä","image/jpeg","","","","1");
INSERT INTO profine_user VALUES("5","1","","1234567","Gaurav","Jain","gaurav.jain73@gmail.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("8","1","","123","Gaurav","Jain","gjain@ferotech.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("9","1","","12345","Gaurav","Jain","asharma@ferotech.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("10","1","","profine","rohit","dhyani","rohit.dhyanikotdwara@gmail.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("11","1","","rohit","ass","kgg","ass1@gmail.com","","","","","","","","","","","1");
INSERT INTO profine_user VALUES("12","1","","admin","asdfasda","asdfsdf","admin@gmail.com","","","","","","","","","","","1");



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
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;




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




