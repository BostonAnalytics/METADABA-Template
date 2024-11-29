-- sample database taken from https://www.sqltutorial.org/sql-sample-database/

CREATE TABLE benefits (
  benefit_id INTEGER PRIMARY KEY NOT NULL,
  benefit_type varchar(255) NOT NULL,
  benefit_description text);


CREATE TABLE companies (
  company_id INTEGER PRIMARY KEY NOT NULL,
  company_name varchar(255) DEFAULT NULL,
  company_description text,
  company_size int DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  country varchar(2) DEFAULT NULL,
  city varchar(255) DEFAULT NULL,
  zip_code varchar(50) DEFAULT NULL,
  `address` text,
  `url` text
);

CREATE TABLE company_industries (
  company_id INTEGER NOT NULL,
  industry varchar(255) NOT NULL,
  industry_description longtext,
  PRIMARY KEY (company_id,industry)
);


CREATE TABLE company_specialities (
  company_id INTEGER NOT NULL,
  speciality_id INTEGER  NOT NULL,
  PRIMARY KEY (company_id,speciality_id)
);

CREATE TABLE employee_count (
  company_id INTEGER NOT NULL,
  employee_count int DEFAULT NULL,
  follower_count int DEFAULT NULL,
  time_recorded datetime NOT NULL,
  PRIMARY KEY (company_id,time_recorded)
);


CREATE TABLE `job_benefits` (
  `job_id` bigint NOT NULL,
  `benefit_id` bigint NOT NULL,
  `inferred` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`job_id`,`benefit_id`)
  );


CREATE TABLE `job_industries` (
  `job_id` bigint NOT NULL,
  `industry_id` bigint NOT NULL,
  PRIMARY KEY (`job_id`,`industry_id`)
  );

INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (1,'Medical insurance','Medical insurance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (2,'Vision insurance','Vision insurance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (3,'Dental insurance','Dental insurance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (4,'403(k)','403(k) retirement plan');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (5,'401(k)','401(k) retirement plan');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (6,'Student loan assistance','Student loan assistance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (7,'Tuition assistance','Tuition assistance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (8,'Disability insurance','Disability insurance');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (9,'Paid maternity leave','Paid maternity leave');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (10,'Paid paternity leave','Paid paternity leave');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (11,'Child care support','Child care support');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (12,'Commuter benefits','Commuter benefits');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (13,'Pension plan','Pension plan');
INSERT INTO benefits(benefit_id, benefit_type, benefit_description) VALUES (14,'Life insurance','Life insurance');


INSERT INTO `employee_count` VALUES (1009,314102,16253625,'2024-04-06 00:36:02');
INSERT INTO `employee_count` VALUES (1009,313142,16309464,'2024-04-17 18:19:45');
INSERT INTO `employee_count` VALUES (1009,313147,16309985,'2024-04-17 21:08:15');
INSERT INTO `employee_count` VALUES (1009,311223,16314846,'2024-04-19 00:34:15');
INSERT INTO `employee_count` VALUES (1016,56873,2185368,'2024-04-06 01:49:00');
INSERT INTO `employee_count` VALUES (1016,56915,2187429,'2024-04-09 01:54:28');
INSERT INTO `employee_count` VALUES (1016,56909,2187443,'2024-04-09 02:37:31');
INSERT INTO `employee_count` VALUES (1016,56943,2189655,'2024-04-11 13:26:06');
INSERT INTO `employee_count` VALUES (1016,56926,2189655,'2024-04-11 13:26:43');
INSERT INTO `employee_count` VALUES (1016,56942,2190056,'2024-04-12 01:35:19');
INSERT INTO `employee_count` VALUES (1016,56957,2194420,'2024-04-17 19:41:29');
INSERT INTO `employee_count` VALUES (1016,56959,2194447,'2024-04-17 20:09:02');
INSERT INTO `employee_count` VALUES (1016,56980,2195213,'2024-04-18 13:45:13');
INSERT INTO `employee_count` VALUES (1016,57001,2196350,'2024-04-19 19:23:51');
INSERT INTO `employee_count` VALUES (1025,79528,3586194,'2024-04-11 17:15:06');
INSERT INTO `employee_count` VALUES (1025,79553,3587443,'2024-04-16 12:37:04');
INSERT INTO `employee_count` VALUES (1025,79561,3587903,'2024-04-17 17:20:34');
INSERT INTO `employee_count` VALUES (1025,79559,3588329,'2024-04-18 11:14:18');
INSERT INTO `employee_count` VALUES (1028,192099,9465968,'2024-04-09 02:09:12');
INSERT INTO `employee_count` VALUES (1028,192064,9474581,'2024-04-11 13:28:00');
INSERT INTO `employee_count` VALUES (1028,192011,9492051,'2024-04-17 18:39:04');
INSERT INTO `employee_count` VALUES (1028,191808,9494680,'2024-04-18 12:36:22');
INSERT INTO `employee_count` VALUES (1028,191374,9497909,'2024-04-19 11:21:13');
INSERT INTO `employee_count` VALUES (1033,574664,11864908,'2024-04-09 01:48:19');
INSERT INTO `employee_count` VALUES (1033,574888,11874675,'2024-04-11 13:33:46');
INSERT INTO `employee_count` VALUES (1033,575026,11875889,'2024-04-12 01:46:02');
INSERT INTO `employee_count` VALUES (1033,572618,11891658,'2024-04-17 20:04:16');
INSERT INTO `employee_count` VALUES (1033,572613,11891917,'2024-04-17 22:20:32');
INSERT INTO `employee_count` VALUES (1033,569550,11893247,'2024-04-19 01:38:20');
INSERT INTO `employee_count` VALUES (1033,565191,11890321,'2024-04-19 19:30:51');
INSERT INTO `employee_count` VALUES (1035,226997,22148068,'2024-04-05 23:47:48');
INSERT INTO `employee_count` VALUES (1035,227044,22169086,'2024-04-08 23:16:19');
INSERT INTO `employee_count` VALUES (1035,227037,22171676,'2024-04-09 05:20:43');
INSERT INTO `employee_count` VALUES (1035,227118,22194380,'2024-04-11 23:16:15');
INSERT INTO `employee_count` VALUES (1035,227117,22194386,'2024-04-11 23:17:19');
INSERT INTO `employee_count` VALUES (1035,227191,22221915,'2024-04-15 16:34:27');
INSERT INTO `employee_count` VALUES (1035,227290,22245601,'2024-04-18 11:26:27');
INSERT INTO `employee_count` VALUES (1035,227317,22253257,'2024-04-19 11:21:13');
INSERT INTO `employee_count` VALUES (1038,442390,15084689,'2024-04-05 20:18:12');
INSERT INTO `employee_count` VALUES (1038,442506,15117270,'2024-04-09 05:20:43');
INSERT INTO `employee_count` VALUES (1038,442692,15194023,'2024-04-16 12:22:04');
INSERT INTO `employee_count` VALUES (1038,440963,15207334,'2024-04-17 17:19:30');
INSERT INTO `employee_count` VALUES (1038,439076,15214042,'2024-04-18 12:41:49');
INSERT INTO `employee_count` VALUES (1038,435078,15221049,'2024-04-19 17:18:03');
INSERT INTO `employee_count` VALUES (1043,218797,6813659,'2024-04-17 21:12:57');
INSERT INTO `employee_count` VALUES (1043,218794,6813768,'2024-04-17 22:15:12');
INSERT INTO `employee_count` VALUES (1043,217641,6814908,'2024-04-18 12:24:32');
INSERT INTO `employee_count` VALUES (1044,291883,6085704,'2024-04-18 12:45:10');
INSERT INTO `employee_count` VALUES (1052,174080,1480229,'2024-04-05 20:58:01');
INSERT INTO `employee_count` VALUES (1052,174368,1482094,'2024-04-11 22:57:59');
INSERT INTO `employee_count` VALUES (1052,174366,1482094,'2024-04-11 22:59:03');
INSERT INTO `employee_count` VALUES (1052,174536,1483083,'2024-04-15 23:26:07');
INSERT INTO `employee_count` VALUES (1052,174564,1483417,'2024-04-16 12:39:13');
INSERT INTO `employee_count` VALUES (1052,174612,1484925,'2024-04-17 23:00:10');
INSERT INTO `employee_count` VALUES (1052,174652,1485148,'2024-04-18 11:09:30');
INSERT INTO `employee_count` VALUES (1052,174692,1485885,'2024-04-19 14:14:17');
INSERT INTO `employee_count` VALUES (1053,123316,3548548,'2024-04-18 11:53:28');
INSERT INTO `employee_count` VALUES (1053,122352,3549356,'2024-04-19 11:34:53');
INSERT INTO `employee_count` VALUES (1060,111539,1986670,'2024-04-15 23:58:14');
INSERT INTO `employee_count` VALUES (1060,110879,1986806,'2024-04-17 17:14:07');
INSERT INTO `employee_count` VALUES (1060,110082,1986532,'2024-04-19 11:09:39');
INSERT INTO `employee_count` VALUES (1063,99656,6324281,'2024-04-05 16:33:49');
INSERT INTO `employee_count` VALUES (1063,99625,6330247,'2024-04-09 01:39:43');
INSERT INTO `employee_count` VALUES (1063,99624,6330329,'2024-04-09 02:07:58');
INSERT INTO `employee_count` VALUES (1063,99616,6336761,'2024-04-12 01:10:47');
INSERT INTO `employee_count` VALUES (1063,99604,6342107,'2024-04-15 16:30:10');
INSERT INTO `employee_count` VALUES (1063,99560,6347012,'2024-04-17 19:53:19');
INSERT INTO `employee_count` VALUES (1063,99461,6348595,'2024-04-18 13:33:04');
INSERT INTO `employee_count` VALUES (1063,99409,6350964,'2024-04-19 19:09:53');
INSERT INTO `employee_count` VALUES (1066,23882,451724,'2024-04-18 12:17:03');
INSERT INTO `employee_count` VALUES (1068,294509,4923211,'2024-04-06 00:26:09');
INSERT INTO `employee_count` VALUES (1068,294770,4930539,'2024-04-09 06:32:47');
INSERT INTO `employee_count` VALUES (1068,295060,4938289,'2024-04-12 00:23:43');
INSERT INTO `employee_count` VALUES (1068,295068,4938463,'2024-04-12 01:53:30');
INSERT INTO `employee_count` VALUES (1068,295260,4954712,'2024-04-17 18:25:07');
INSERT INTO `employee_count` VALUES (1068,295264,4954929,'2024-04-17 20:37:30');
INSERT INTO `employee_count` VALUES (1068,295191,4956942,'2024-04-18 13:26:24');
INSERT INTO `employee_count` VALUES (1070,85836,1586666,'2024-04-18 18:31:12');
INSERT INTO `employee_count` VALUES (1073,349752,8714256,'2024-04-05 17:13:28');
INSERT INTO `employee_count` VALUES (1073,350041,8725888,'2024-04-09 05:10:45');
INSERT INTO `employee_count` VALUES (1073,350497,8737197,'2024-04-11 23:13:01');
INSERT INTO `employee_count` VALUES (1073,350763,8750134,'2024-04-15 23:17:06');
INSERT INTO `employee_count` VALUES (1073,350810,8753745,'2024-04-16 11:22:25');
INSERT INTO `employee_count` VALUES (1073,350858,8760519,'2024-04-17 17:13:01');
INSERT INTO `employee_count` VALUES (1073,350975,8763997,'2024-04-18 11:22:52');
INSERT INTO `employee_count` VALUES (1073,351055,8768122,'2024-04-19 11:11:02');
INSERT INTO `employee_count` VALUES (1079,52331,1423266,'2024-04-17 17:57:14');
INSERT INTO `employee_count` VALUES (1079,52340,1424470,'2024-04-19 06:17:58');
INSERT INTO `employee_count` VALUES (1088,21692,682896,'2024-04-16 12:52:06');
INSERT INTO `employee_count` VALUES (1090,71014,2385407,'2024-04-05 23:44:04');
INSERT INTO `employee_count` VALUES (1090,71042,2386740,'2024-04-08 23:44:37');
INSERT INTO `employee_count` VALUES (1090,71060,2388556,'2024-04-11 23:45:11');
INSERT INTO `employee_count` VALUES (1090,70714,2390822,'2024-04-17 17:31:23');
INSERT INTO `employee_count` VALUES (1090,70309,2391005,'2024-04-18 17:32:52');
INSERT INTO `employee_count` VALUES (1090,69239,2390290,'2024-04-19 17:32:19');



INSERT INTO `job_benefits` VALUES (3884842905,5,1);
INSERT INTO `job_benefits` VALUES (3884844689,5,1);
INSERT INTO `job_benefits` VALUES (3884845441,5,1);
INSERT INTO `job_benefits` VALUES (3884848075,5,1);
INSERT INTO `job_benefits` VALUES (3900957966,5,1);
INSERT INTO `job_benefits` VALUES (3900958956,5,1);
INSERT INTO `job_benefits` VALUES (3900959635,5,1);
INSERT INTO `job_benefits` VALUES (3900959657,5,1);


INSERT INTO `job_industries` VALUES (3884842897,3);
INSERT INTO `job_industries` VALUES (3884842905,3);
INSERT INTO `job_industries` VALUES (3884844684,3);
INSERT INTO `job_industries` VALUES (3884844686,3);
INSERT INTO `job_industries` VALUES (3884844689,3);
INSERT INTO `job_industries` VALUES (3884845441,3);
INSERT INTO `job_industries` VALUES (3884845442,3);
INSERT INTO `job_industries` VALUES (3884848075,3);
INSERT INTO `job_industries` VALUES (3900957963,3);
INSERT INTO `job_industries` VALUES (3900957966,3);
INSERT INTO `job_industries` VALUES (3900958955,3);
INSERT INTO `job_industries` VALUES (3900958956,3);
INSERT INTO `job_industries` VALUES (3900959635,3);
INSERT INTO `job_industries` VALUES (3900959644,3);
INSERT INTO `job_industries` VALUES (3900959657,3);
INSERT INTO `job_industries` VALUES (3900959664,3);
INSERT INTO `job_industries` VALUES (3900960352,3);
INSERT INTO `job_industries` VALUES (3900960375,3);
INSERT INTO `job_industries` VALUES (3900960378,3);
INSERT INTO `job_industries` VALUES (3900960379,3);
