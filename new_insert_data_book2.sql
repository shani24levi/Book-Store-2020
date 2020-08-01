use book_store_2;

-- customers
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(1,'Idan','Ryrman',5555565,'2000-02-01');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(2,'Roi','Yukelson',4352535,'2000-01-01');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(3,'yeal','Stirman',2342425,'2001-04-06');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(4,'Eitan','Frank',2442425,'2004-10-07');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(5,'Shir','Koba',536352,'2007-04-01');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(6,'Grizelda','Devil',74563352,'2015-12-17');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(7,'Doroty','Gale',6492750,'2015-02-07');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(8,'Alice','Wonderland',05223464,'2016-08-27');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(9,'Bell','Maurice',2464345,'2019-10-10');
INSERT INTO `book_store_2`.`customers`(`customer_id`,`first_name`,`last_name`,`mobile`,`join_date`)VALUES(10,'Liat','Cashbish',349055343,'2020-01-10');

-- authors
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(1,'Guenevere','Lee');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(2,'Scott','Fitzgerald');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(3,'Ryan','Janz');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(4,'Stephen','King');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(5,'Julie','Burns');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(6,'Arthur', 'Doyle');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(7,'Nahum','Langental');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(8,'Nissim','Amon');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(9,'Peter','Straub');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(10,'Christina','Hobbs');
INSERT INTO `book_store_2`.`authors`(`author_id`,`first_name`,`last_name`)VALUES(11,'Lauren','Billings');

-- translators
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(1,'Liat','Cashbish');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(2,'Deepak','Chupra');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(3,'Steven','Avrey');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(4,'Elon','Musk');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(5,'Al','Bundy');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(6,'Marcy','Darcy');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(7,'Ori','Fink');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(8,'Anita','Radcliffe');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(9,'Archimedes','Porter');
INSERT INTO `book_store_2`.`translators`(`translator_id`,`first_name`,`last_name`)VALUES(10,'Benjamin','Clawhauser');

-- books
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(1,'Orope',300,4,'Good',45,4,3,1, '2018-05-21');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(2,'Orope_new',300,4,'Good',90,4,3,1, '2020-07-01');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(3,'Boulevard Dreams',521,4.5,'Bad',700,4,3,1, '2020-03-24');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(4,'It',1200,6.3,'Available',45,6,3,3, '2018-02-14');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(5,'The Purse',572,5.1,'Not-Available',60,0,0,0, null);
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(6,'The Hound of the Baskervilles',256,3,'Not-Available',1000,0,0,0, null);
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(7,'When Moses Met Budhaa',867,5.3,'Available',30,3,3,0, '2019-12-30');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(8,'The Talisman ',604,4.8,'Available',90,1,0,1, '2019-06-09');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(9,'Roomies',710,4.9,'Available',45,4,3,1, '2018-08-04');
INSERT INTO `book_store_2`.`books`(`book_id`,`title`,`pages` ,`weight`,`book_status`,`price`,`amount`,`amount_in_store`,`amount_in_storage`,`available_date`) VALUES(10,'Interior Darkness',604,4.8,'Available',450,4,3,1, '2020-06-18');


-- publisher
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(1,'Gafni Books','2000-02-07',1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(2,'Gafni Books','2010-02-07',2);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(3,'Rohama Rohy','2000-05-20',1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(4,'A.R.T Publishing House','1998-02-28', 1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(5,'Olive Publishing LTD','2015-10-13',1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(6,'Gafni Books','2000-08-29',1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(7,'Yanshuf Books','2007-03-20',1);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(8,'Yanshuf Books','2009-12-01',2);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(9,'Yanshuf Books','2013-04-16',3);
INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(10,'Yanshuf Books','2017-12-01',1);



INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(1,1,1);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(2,1,2);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(3,1,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(4,1,7);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(5,1,8);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(6,2,1);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(7,2,2);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(8,2,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(9,3,3);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(10,3,4);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(11,3,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(12,4,3);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(13,4,4);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(14,4,5);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(15,4,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(16,5,1);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(17,5,4);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(18,6,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(19,7,6);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(20,8,4);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(21,9,5);
INSERT INTO `book_store_2`.`publisher`(`publisher_book_id`,`book_id`,`publisher_id`) VALUES(22,10,6);




-- publisher
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(1,'Gafni Books','2000-02-07',1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(2,'Gafni Books','2010-02-07',2);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(3,'Rohama Rohy','2000-05-20',1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(4,'A.R.T Publishing House','1998-02-28', 1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(5,'Olive Publishing LTD','2015-10-13',1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(6,'Gafni Books','2000-08-29',1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(7,'Yanshuf Books','2007-03-20',1);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(8,'Yanshuf Books','2009-12-01',2);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(9,'Yanshuf Books','2013-04-16',3);
-- INSERT INTO `book_store_2`.`publishers`(`publisher_id`,`publisher_name`,`publisher_date`,`edition`) VALUES(10,'Yanshuf Books','2017-12-01',1);

-- book_translators
INSERT INTO `book_store_2`.`book_translators` (`book_id`,`translator_id`) VALUES(6,1);
INSERT INTO `book_store_2`.`book_translators` (`book_id`,`translator_id`) VALUES(4,1);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(1,1);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(2,1);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(2,3);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(2,4);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(2,5);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(2,6);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(7,3);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(5,3);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(5,6);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(10,3);
INSERT INTO `book_store_2`.`book_translators`(`book_id`,`translator_id`)VALUES(3,7);

-- book_authors
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(1,1);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(2,1);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(2,3);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(2,4);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(2,6);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(6,6);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(9,3);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(5,3);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(5,6);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(10,3);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(4,7);
INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(4,3);
-- INSERT INTO `book_store_2`.`book_authors`(`book_id`,`author_id`)VALUES(4,3);

-- book_provider
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (1,'Bibi Natniaho', 'Bibi@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (2,'Brad Pit', 'Brad@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (3,'Kravitz Store', 'kravitz@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (4,'Amit Bookstore Ltd','Amit@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (5,'Anglina Goly','angelina@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (6,'Yoda Levi','Yoda@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (7,'Hadar Levi','Hadar@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (8,'Gay Pinas','GayP@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (9,'Gal Gadot','Gal@gmail.com');
INSERT INTO `book_store_2`.`book_provider` (`provider_id`,`provider_name`,`provider_email`) VALUES (10,'Gay Zoharz','GayZ@gmail.com');

-- employees
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(1,'Gay','Asher','weizman 125',1234567,'working',null,'2020-07-09');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(2,'Ed','Gein','Bialik 15',425132,'Working',null,'2019-07-20');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(3,'Isaac','Newton','Herzel 8',523463,'not working','2020-03-20','2009-03-20');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(4,'Hilary','Gervis','Rotchild 12',346345,'not working','2019-07-29','2018-12-14');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(5,'Lisa','Lombardi','kaplan 139',635232,'working',null,'2010-03-02');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(6,'Tim','Reynolds','masada 17',4324255,'working',null,'2018-01-29');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(7,'Burt','Allen','Ben Gurion 200',3462345,'working',null,'2016-02-01');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(8,'Steve','Carell','newe yarak 375',23423526,'not working','2017-02-12','2010-03-20');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(9,'Michael','Keaton','Hermon 30',532445,'working',null,'2020-03-03');
INSERT INTO `book_store_2`.`employees`(`employee_id`,`first_name`,`last_name`,`address`,`phone`,`employee_status`, `end_working_date`,`start_working_date`) VALUES(10,'Ted','Kaczinky','Negev 42',5435345,'working',null,'2020-05-20');

-- orders
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(1,1,5,'pending to delivery','cash',45,1,'Yes','2019-09-07','2019-09-07');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(2,1,5,'Not paied yet',null,90,1,'No','2019-10-11',null);
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(3,2,5,'waiting pickup','cash',880,3,'Yes','2018-06-01','2018-06-01');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(4,3,5,'waiting pickup','Transfer by Bit',135,3,'Yes','2018-02-17','2018-02-20');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(5,3,2,'Not paied yet',null,45,1,'No','2018-03-30',null);
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(6,4,3,'on the way','Transfer by Bit',255,3,'Yes','2018-04-26','2018-03-10');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(7,5,3,'on the way','credit',255,5,'Yes','2018-10-12','2018-10-14');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(8,3,6,'waiting pickup','Transfer by Bit',45,1,'Yes','2020-02-17', '2020-02-20');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(9,6,10,'delivered','credit',1030,3,'Yes','2019-06-08','2019-08-18');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(10,7,1,'delivered','credit',90,1,'Yes','2018-01-10', '2018-06-01');

INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(11,2,1,'on the way','Transfer by Bit',45,1,'Yes','2018-10-10','2018-10-10');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(12,4,1,'on the way','credit',4700,5,'Yes','2019-11-11','2019-11-18');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(13,10,9,'on the way','credit',6000,6,'Yes','2019-01-03','2019-01-13');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(14,10,9,'on the way','Transfer by Bit',450,1,'Yes','2019-09-09','2019-09-10');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(15,6,4,'on the way','credit',450,1,'Yes','2019-12-21','2020-01-01');

INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(16,6,4,'on the way','Transfer',900,2,'Yes','2020-01-21','2020-01-01');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(17,6,4,'on the way','Transfer',45,1,'Yes','2020-02-09','2020-02-22');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(18,6,5,'on the way','credit',45,1,'Yes','2020-03-05','2020-03-05');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(19,2,5,'on the way','credit',60,1,'Yes','2020-03-15','2020-04-01');
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(20,1,1,'on the way','credit',45,1,'Yes','2020-04-11','2020-05-01');
-- INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,``,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(21,1,2,'Not paied yet',null,'Regular',45,1,'No','2020-05-21',null);

INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(21,1,2,'delivered','credit',45,1,'Yes','2018-06-29','2018-06-29');
-- INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(22,3,'Not paied yet',null,'Regular',45,1,'No','2019-09-19',null);
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(22,3,2,'Not paied yet',null,45,1,'No','2019-03-30',null);

INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(23,3,2,'Not paied yet',null,60,1,'No','2020-04-06',null);
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(24,4,1,'Not paied yet',null,2000,1,'No','2020-04-11',null);
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(25,3,1,'Not paied yet',null,60,1,'No','2020-06-18',null);

-- need to instard to book_list (need it for qury 22)
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(26,1,2,'delivered','credit',700,1,'Yes','2019-06-21','2019-06-21');  -- book 3 
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(27,1,2,'delivered','credit',90,2,'Yes','2019-06-22','2019-06-22'); -- book 7*2
INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(28,1,2,'delivered','credit',1000,1,'Yes','2019-06-28','2019-06-27');	-- book 6*

INSERT INTO `book_store_2`.`orders`(`order_id`,`customer_id`, `employee_id`,`order_status` ,`payment_method`,`price_for_order`,`amount`,`order_complited`,`order_date`, `pyment_date`)VALUES(29,5,5,'on the way','credit',150,1,'Yes','2020-07-28','2020-07-27');	-- book 6*


-- delivery
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(1,'Yehuda-Halevi',80,'Tel-Aviv','2007-09-29');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(2,'Allenby',89,'Tel-Aviv','2017-03-25');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(3,'Bograshov',90,'Tel-Aviv','2017-12-21');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(4,'Sheikin',188,'Tel-Aviv','2019-06-01');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(5,'Rothschild',131,'Tel-Aviv','2019-09-07');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(6,'Banay',8,'Holon','2020-02-27');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(7,'Ha-Roha',70,'Ramat-Gan','2020-02-03');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(8,'Yamit',1,'Ramat-Gan','2020-03-13');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(9,'Sokolov',277,'Bat-Yam','2019-12-20');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(10,'YamNoff',26,'Haezlia','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(11,'Tov',11,'Bat-Yam','2019-11-11');

INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(12,'Tov',229,'Bat-Yam','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(13,'Pinats',26,'Haezlia','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(14,'Bouth',1222,'Haezlia','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(15,'Zhadok',87,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(16,'Way-Way',41,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(17,'Way-Fun',56,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(18,'Abolala',308,'Haezlia','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(19,'Freedom',66,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(20,'Freedom',67,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(21,'Freedom',90,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(22,'Boga',9,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(23,'Fishy',888,'Ramat-Gan','2019-11-11');
INSERT INTO `book_store_2`.`delivery`(`delivery_id`,`address`,`num_address`,`city`,`delivery_date`)VALUES(24,'Wow',1,'Ramat-Gan','2019-11-11');



-- delivery_for_orders
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(7,1, '2018-10-21','Arrived to the destination', 'Regular' ,0); -- book_id_to_deliver :1
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(7,2, '2018-10-21','Arrived to the destination', 'Regular' ,0); -- book_id_to_deliver :2
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(7,4, '2018-10-13','Arrived to the destination', 'Xpress' ,50); -- book_id_to_deliver :4,7,8

INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(1,6, '2019-10-11', 'Not arrived to the destination','Xpress' ,150); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(3,5, '2018-06-20', 'Not arrived to the destination', 'Xpress' ,50);
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(4,8, '2018-02-20', 'Not arrived to the destination', 'Xpress' ,50);  
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(6,7, '2018-04-20', 'Arrived to the destination', 'Regular' ,0); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(8,9,  '2020-02-20','Arrived to the destination', 'Regular' ,0); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(9,10, '2019-08-18', 'Arrived to the destination', 'Regular' ,0); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(10,11, '2018-06-01', 'Arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(11,12, '2018-10-10', 'Not arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(12,13, '2019-11-12', 'Arrived to the destination', 'Xpress' ,100); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(13,14,  '2019-01-08','Arrived to the destination', 'Xpress' ,30); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(14,15,  '2019-01-12','Arrived to the destination', 'Regular' ,0); 

INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(15,17, '2019-12-29', 'Arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(16,18,  '2020-03-01','Not arrived to the destination','Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(17,19,  '2020-02-11','Arrived to the destination', 'Regular' ,0); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(18,1,  '2020-03-11','Arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(19,3,  '2020-03-13','Arrived to the destination', 'Xpress' ,50); 

INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(20,21, '2020-03-31', 'Arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(26,22, '2019-06-11', 'Arrived to the destination', 'Regular' ,0); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(27,23, '2019-06-18', 'Arrived to the destination', 'Xpress' ,50); 
INSERT INTO `book_store_2`.`delivery_for_orders`(`order_id`,`delivery_id`,`delivery_date`,`delivery_status`,`shipment`,`ExtraXpress`)VALUES(28,24,  '2019-06-21','Arrived to the destination', 'Regular' ,0); 




-- book_list_for_orders
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,7,1,1);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,7,2,2);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(2,3,5,6);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(2,3,5,7);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(4,7,4,12);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(7,7,4,19);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(8,7,4,20);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(3,3,5,10);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(9,1,6,21);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,4,8,4);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,4,8,5);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(4,4,8,12);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(2,6,7,7);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(2,6,7,7);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(5,6,7,17);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(4,8,9,14);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,9,10,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(7,9,10,19);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(7,9,10,19);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(2,10,11,8);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,11,12,3);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,12,13,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,12,13,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,12,13,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,12,13,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(3,12,13,11);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,13,14,18);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(10,14,15,22);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(10,15,16,22);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(10,16,17,22);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(10,16,17,22);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(4,17,18,15);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(4,18,19,15);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(5,19,20,16);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,20,21,2);
-- INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_id`)VALUES(1,21,4,3);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(3,26,22,9);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,27,23,4);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(1,27,23,4);
INSERT INTO `book_store_2`.`book_list_for_orders`(`book_id`,`order_id`,`delivery_id`,`publisher_book_id`)VALUES(6,28,24,18);


-- contacts (max cuunt of days is 30 )
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(1,'2019-11-01',30,'Not Purchased' , 2);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(2,'2018-05-01',30,'Not Purchased' , 5);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(3,'2019-05-01',30,'Not Purchased' , 22);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(4,'2018-05-15',15,'Purchased After 15 days' , 10);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(5,'2019-12-25',5,'Purchased After 5 days' , 15);

INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(6,'2020-07-10',13,'Not Purchased' , 23);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(7,'2020-07-10',11,'Not Purchased' , 24);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(8,'2020-07-10',13,'Not Purchased' , 8);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(9,'2020-07-10',12,'Not Purchased' ,13);
INSERT INTO `book_store_2`.`contacts`(`contact_id`,`contact_date`,`days_pass`,`purchased`,`order_id`)VALUES(10,'2020-07-10',8,'Not Purchased' , 20);


-- orders_from_provider
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(22,1,10,2,200,'2019-01-01',2,2,0);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(23,1,10,2,150,'2019-01-11',3,2,1);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(1,1,10,2,20,'2019-02-01',1,0,1);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(2,1,9,2,20,'2019-03-01',1,1,0);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(3,2,8,3,730,'2019-04-01',8,5,3);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(4,3,7,3,190,'2019-05-01',9,1,8);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(5,3,6,3,150,'2019-06-01',10,2,8);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(6,4,5,4,140,'2019-07-01',5,3,2);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(7,5,4,4,1500,'2019-08-01',30,10,20);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(8,5,3,5,3000,'2019-09-01',15,5,10);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(9,5,2,6,500,'2019-10-01',1,0,1);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(10,1,1,7,300,'2019-11-01',4,0,4);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(11,1,1,7,30,'2019-12-01',4,1,3);

INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(12,4,10,7,1000,'2020-01-01',8,4,4);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(13,5,10,7,1100,'2020-01-01',6,3,3);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(14,6,9,7,300,'2020-02-01',2,0,2);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(15,4,9,7,400,'2020-03-01',3,1,2);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(16,4,8,7,500,'2020-04-01',9,9,0);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(17,5,7,7,400,'2020-05-01',2,1,1);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(18,5,7,7,100,'2020-06-01',3,0,3);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(19,6,6,7,30,'2020-07-01',1,1,0);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(20,6,6,7,600,'2020-07-01',4,1,3);
INSERT INTO `book_store_2`.`orders_from_provider` (`order_provider_id`,`provider_id`, `book_id`,`employee_id`,`purchas_price`,`purchas_date`,`amount`,`set_amount_in_store`,`set_amount_in_storage`) VALUES(21,1,3,7,100,'2020-07-01',1,1,0);



-- managment
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(1,1,2019,3000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(2,2,2019,3000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(3,3,2019,5000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(4,4,2019,1000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(5,5,2019,700,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(6,6,2019,1000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(7,7,2019,0,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(8,8,2019,4000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(9,9,2019,1500,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(10,10,2019,4000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(11,11,2019,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(12,12,2019,1000,1800,700, 2500, 150, 400, 400, 20,30, 0);

INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(13,1,2020,4000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(14,2,2020,4500,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(15,3,2020,4500,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(16,4,2020,5000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(17,5,2020,5500,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(18,6,2020,5000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(19,7,2020,5500,1800,700, 2500, 150, 400, 400, 20,30, 0);

INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(20,1,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(21,2,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(22,3,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(23,4,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(24,5,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(25,6,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(26,7,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(27,8,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(28,9,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(29,10,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(30,11,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);
INSERT INTO `book_store_2`.`managment` (`managment_id`,`month_`, `year_`,`pure_profit`,`profit_after_payments`,`paycheck_employees`,`rent`,`weather`,`electricity`,`deliveries_bill`,`phone_bill`,`mobile_bill`,`misc`) VALUES(31,12,2018,6000,1800,700, 2500, 150, 400, 400, 20,30, 0);


INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(22,null ,4);  -- 2018-2
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(23, null,6); -- 2018-3
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(25, null,3); -- 2018-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(25,null,10); -- 2018-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(25,null ,21);  -- 2018-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(29, null ,11); -- 2018-10
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(29,null,7); -- 2018-10

INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(1,22,13);   -- 2019-1
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(1,23, null); -- 2019-1
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(2,1,null); -- 2019-2
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(3,2,null); -- 2019-3
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(4,3,null); -- 2019-4
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(5,4,null); -- 2019-5
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(6,5,26); -- 2019-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(6,null,27); -- 2019-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(6,null ,28); -- 2019-6
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(7,6,null); -- 2019-7
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(8,7,9); -- 2019-8
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(9,8,1); -- 2019-9
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(9,null,14); -- 2019-9
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(10,9,null);  -- 2019-10
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(11,10	,12); -- 2019-11
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(12,11 ,null); -- 2019-12


INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(13,12	,15); -- 2020-1 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(13,13,  16); -- 2020-1 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(14,14,  8); -- 2020-2
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(14,null, 17); -- 2020-2 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(15,15	,18); -- 2020-3 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(16,16	,19); -- 2020-4 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(17,17	,20); -- 2020-5 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(18,18	,null); -- 2020-6 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(19,19	,null); -- 2020-7 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(19,20	,null); -- 2020-7 
INSERT INTO `book_store_2`.`manager_control` (`managment_id`,`order_provider_id`,`order_id`) VALUES(19,21	,null); -- 2020-7 



-- employees_paycheck  (filled only to 4 and to 5)
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(1,5,'2018-01-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(2,5,'2018-02-01',60, 3800, 3200);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(3,5,'2018-03-01',67, 4000, 3700);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(4,5,'2018-04-01',102, 5100, 4600);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(5,5,'2018-05-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(6,5,'2018-06-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(7,5,'2018-07-01',30, 2050, 1800);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(8,5,'2018-08-01',55, 3000, 2600);

INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(9,5,'2019-01-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(10,5,'2019-02-01',100, 4800, 4200);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(11,5,'2019-03-01',67, 4000, 3700);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(12,5,'2019-04-01',102, 5100, 4600);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(13,5,'2019-05-01',100, 4800, 4700);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(14,5,'2019-06-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(15,5,'2019-07-01',30, 2050, 1800);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(16,5,'2019-08-01',11, 600, 500);

INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(17,5,'2020-01-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(18,5,'2020-02-01',100, 4800, 4200);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(19,5,'2020-03-01',67, 4000, 3700);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(20,5,'2020-04-01',102, 5100, 4600);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(21,5,'2020-05-01',100, 4800, 4700);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(22,5,'2020-06-01',80, 3800, 3500);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(23,5,'2020-07-01',130, 7050, 6800);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(24,5,'2020-08-01',110, 6000, 5600);

INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(25,1,'2020-07-01',98, 4500, 4000);

INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(26,4,'2019-01-01',160, 14500, 13000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(27,4,'2019-02-01',108, 8500, 8000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(28,4,'2019-03-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(29,4,'2019-04-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(30,4,'2019-05-01',128, 10500, 9500);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(31,4,'2019-06-01',98, 4500, 4000);
INSERT INTO `book_store_2`.`employees_paycheck` (`paycheck_id`,`employee_id`,`paycheck_date`,`work_hours`,`gross_salary`,`net_salary`) VALUES(32,4,'2019-07-01',128, 10500, 9500);






