-- Table structure for table `benefits`

CREATE TABLE `benefits` (
  `benefit_id` INTEGER PRIMARY KEY NOT NULL,
  `benefit_type` VARCHAR(255) NOT NULL,
  `benefit_description` text
) ;


-- Dumping data for table `benefits`

INSERT INTO `benefits` VALUES (1,'Medical insurance','Medical insurance');
INSERT INTO `benefits` VALUES (2,'Vision insurance','Vision insurance');
INSERT INTO `benefits` VALUES (3,'Dental insurance','Dental insurance');
INSERT INTO `benefits` VALUES (4,'403(k)','403(k) retirement plan');
INSERT INTO `benefits` VALUES (5,'401(k)','401(k) retirement plan');
INSERT INTO `benefits` VALUES (6,'Student loan assistance','Student loan assistance');
INSERT INTO `benefits` VALUES (7,'Tuition assistance','Tuition assistance');
INSERT INTO `benefits` VALUES (8,'Disability insurance','Disability insurance');
INSERT INTO `benefits` VALUES (9,'Paid maternity leave','Paid maternity leave');
INSERT INTO `benefits` VALUES (10,'Paid paternity leave','Paid paternity leave');
INSERT INTO `benefits` VALUES (11,'Child care support','Child care support');
INSERT INTO `benefits` VALUES (12,'Commuter benefits','Commuter benefits');
INSERT INTO `benefits` VALUES (13,'Pension plan','Pension plan');
INSERT INTO `benefits` VALUES (14,'Life insurance','Life insurance');

-- Table structure for table `companies`

CREATE TABLE companies (
  company_id INTEGER PRIMARY KEY NOT NULL,
  company_name TEXT,
  company_size INT,
  state VARCHAR(50),
  country VARCHAR(2),
  city VARCHAR(255),
  zip_code VARCHAR(50),
  company_address TEXT,
  company_url TEXT
) ;

-- Table structure for table `company_industries`

CREATE TABLE `company_industries` (
  `company_id`  BIGINT NOT NULL,
  `industry` VARCHAR(255) NOT NULL,
  `industry_description` longtext,
  PRIMARY KEY (`company_id`,`industry`)
) ;


-- Dumping data for table `company_industries`

-- Table structure for table `employee_count`

CREATE TABLE `employee_count` (
  `company_id`  BIGINT NOT NULL,
  `employee_count` INT,
  `follower_count` INT,
  `time_recorded` datetime NOT NULL,
  PRIMARY KEY (`company_id`,`time_recorded`)
) ;


-- Dumping data for table `employee_count`

INSERT INTO `employee_count` VALUES (1009,314102,16253625,'2024-04-06 00:36:02'),(1009,313142,16309464,'2024-04-17 18:19:45'),(1009,313147,16309985,'2024-04-17 21:08:15'),(1009,311223,16314846,'2024-04-19 00:34:15'),(1016,56873,2185368,'2024-04-06 01:49:00'),(1016,56915,2187429,'2024-04-09 01:54:28'),(1016,56909,2187443,'2024-04-09 02:37:31'),(1016,56943,2189655,'2024-04-11 13:26:06'),(1016,56926,2189655,'2024-04-11 13:26:43'),(1016,56942,2190056,'2024-04-12 01:35:19'),(1016,56957,2194420,'2024-04-17 19:41:29'),(1016,56959,2194447,'2024-04-17 20:09:02'),(1016,56980,2195213,'2024-04-18 13:45:13'),(1016,57001,2196350,'2024-04-19 19:23:51'),(1025,79528,3586194,'2024-04-11 17:15:06'),(1025,79553,3587443,'2024-04-16 12:37:04'),(1025,79561,3587903,'2024-04-17 17:20:34'),(1025,79559,3588329,'2024-04-18 11:14:18'),(1028,192099,9465968,'2024-04-09 02:09:12'),(1028,192064,9474581,'2024-04-11 13:28:00'),(1028,192011,9492051,'2024-04-17 18:39:04'),(1028,191808,9494680,'2024-04-18 12:36:22'),(1028,191374,9497909,'2024-04-19 11:21:13'),(1033,574664,11864908,'2024-04-09 01:48:19'),(1033,574888,11874675,'2024-04-11 13:33:46'),(1033,575026,11875889,'2024-04-12 01:46:02'),(1033,572618,11891658,'2024-04-17 20:04:16'),(1033,572613,11891917,'2024-04-17 22:20:32'),(1033,569550,11893247,'2024-04-19 01:38:20'),(1033,565191,11890321,'2024-04-19 19:30:51'),(1035,226997,22148068,'2024-04-05 23:47:48'),(1035,227044,22169086,'2024-04-08 23:16:19'),(1035,227037,22171676,'2024-04-09 05:20:43'),(1035,227118,22194380,'2024-04-11 23:16:15'),(1035,227117,22194386,'2024-04-11 23:17:19'),(1035,227191,22221915,'2024-04-15 16:34:27'),(1035,227290,22245601,'2024-04-18 11:26:27'),(1035,227317,22253257,'2024-04-19 11:21:13'),(1038,442390,15084689,'2024-04-05 20:18:12'),(1038,442506,15117270,'2024-04-09 05:20:43'),(1038,442692,15194023,'2024-04-16 12:22:04'),(1038,440963,15207334,'2024-04-17 17:19:30'),(1038,439076,15214042,'2024-04-18 12:41:49'),(1038,435078,15221049,'2024-04-19 17:18:03'),(1043,218797,6813659,'2024-04-17 21:12:57'),(1043,218794,6813768,'2024-04-17 22:15:12'),(1043,217641,6814908,'2024-04-18 12:24:32'),(1044,291883,6085704,'2024-04-18 12:45:10'),(1052,174080,1480229,'2024-04-05 20:58:01'),(1052,174368,1482094,'2024-04-11 22:57:59'),(1052,174366,1482094,'2024-04-11 22:59:03'),(1052,174536,1483083,'2024-04-15 23:26:07'),(1052,174564,1483417,'2024-04-16 12:39:13'),(1052,174612,1484925,'2024-04-17 23:00:10'),(1052,174652,1485148,'2024-04-18 11:09:30'),(1052,174692,1485885,'2024-04-19 14:14:17'),(1053,123316,3548548,'2024-04-18 11:53:28'),(1053,122352,3549356,'2024-04-19 11:34:53'),(1060,111539,1986670,'2024-04-15 23:58:14'),(1060,110879,1986806,'2024-04-17 17:14:07'),(1060,110082,1986532,'2024-04-19 11:09:39'),(1063,99656,6324281,'2024-04-05 16:33:49'),(1063,99625,6330247,'2024-04-09 01:39:43'),(1063,99624,6330329,'2024-04-09 02:07:58'),(1063,99616,6336761,'2024-04-12 01:10:47'),(1063,99604,6342107,'2024-04-15 16:30:10'),(1063,99560,6347012,'2024-04-17 19:53:19'),(1063,99461,6348595,'2024-04-18 13:33:04'),(1063,99409,6350964,'2024-04-19 19:09:53'),(1066,23882,451724,'2024-04-18 12:17:03'),(1068,294509,4923211,'2024-04-06 00:26:09'),(1068,294770,4930539,'2024-04-09 06:32:47'),(1068,295060,4938289,'2024-04-12 00:23:43'),(1068,295068,4938463,'2024-04-12 01:53:30'),(1068,295260,4954712,'2024-04-17 18:25:07'),(1068,295264,4954929,'2024-04-17 20:37:30'),(1068,295191,4956942,'2024-04-18 13:26:24'),(1070,85836,1586666,'2024-04-18 18:31:12'),(1073,349752,8714256,'2024-04-05 17:13:28'),(1073,350041,8725888,'2024-04-09 05:10:45'),(1073,350497,8737197,'2024-04-11 23:13:01'),(1073,350763,8750134,'2024-04-15 23:17:06'),(1073,350810,8753745,'2024-04-16 11:22:25'),(1073,350858,8760519,'2024-04-17 17:13:01'),(1073,350975,8763997,'2024-04-18 11:22:52'),(1073,351055,8768122,'2024-04-19 11:11:02'),(1079,52331,1423266,'2024-04-17 17:57:14'),(1079,52340,1424470,'2024-04-19 06:17:58'),(1088,21692,682896,'2024-04-16 12:52:06'),(1090,71014,2385407,'2024-04-05 23:44:04'),(1090,71042,2386740,'2024-04-08 23:44:37'),(1090,71060,2388556,'2024-04-11 23:45:11'),(1090,70714,2390822,'2024-04-17 17:31:23'),(1090,70309,2391005,'2024-04-18 17:32:52'),(1090,69239,2390290,'2024-04-19 17:32:19');


-- Table structure for table `job_benefits`

CREATE TABLE `job_benefits` (
  `job_id`  BIGINT NOT NULL,
  `benefit_id`  BIGINT NOT NULL,
  `inferred` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`job_id`,`benefit_id`)
) ;


-- Dumping data for table `job_benefits`

INSERT INTO `job_benefits` VALUES (3884842905,5,1),(3884844689,5,1),(3884845441,5,1),(3884848075,5,1),(3900957966,5,1),(3900958956,5,1),(3900959635,5,1),(3900959657,5,1);

-- Table structure for table `job_industries`


CREATE TABLE `job_industries` (
  `job_id`  BIGINT NOT NULL,
  `industry_id`  BIGINT NOT NULL,
  PRIMARY KEY (`job_id`,`industry_id`)) ;


-- Dumping data for table `job_industries`

INSERT INTO `job_industries` VALUES (3884842897,3),(3884842905,3),(3884844684,3),(3884844686,3),(3884844689,3),(3884845441,3),(3884845442,3),(3884848075,3),(3900957963,3),(3900957966,3),(3900958955,3),(3900958956,3),(3900959635,3),(3900959644,3),(3900959657,3),(3900959664,3),(3900960352,3),(3900960375,3),(3900960378,3),(3900960379,3);


-- Table structure for table `job_postings`

CREATE TABLE `job_postings` (
  `job_id` BIGINT PRIMARY KEY NOT NULL,
  `job_title` TEXT,
  `job_description` TEXT,
  `pay_period` VARCHAR(50),
  `location` VARCHAR(255),
  `company_id`  BIGINT,
  `views` INT,
  `formatted_work_type` VARCHAR(50),
  `applies` INT,
  `original_listed_time` datetime,
  `remote_allowed` INT,
  `job_posting_url` text,
  `application_url` text,
  `application_type` VARCHAR(50),
  `expiry` datetime,
  `closed_time` datetime,
  `formatted_experience_level` VARCHAR(50),
  `skills_desc` text,
  `listed_time` datetime,
  `posting_domain` VARCHAR(255),
  `sponsored` tinyint(1),
  `work_type` VARCHAR(50),
  `currency` VARCHAR(10),
  `compensation_type` VARCHAR(50),
  `normalized_salary` decimal(10,2),
  `zip_code` VARCHAR(10),
  `fips` INT
) ;

INSERT INTO job_postings VALUES (
     1,
    'Software Engineer',
    'Develop and maintain software applications.',
    'monthly',
    'New York, NY',
    101,
    350,
    'Full-Time',
    25,
    '2024-12-01 08:00:00',
    1,
    'https://example.com/job/1',
    'https://example.com/apply/1',
    'Online',
    '2025-01-31 23:59:59',
    NULL,
    'Entry Level',
    'Python, Java',
    '2024-11-30 10:00:00',
    'Technology',
    1,
    'On-site',
    'USD',
    'Salary',
    75000.00,
    '10001',
    36061
), ( 2,
    'Data Analyst',
    'Analyze data to generate actionable insights.',
    'hourly',
    'San Francisco, CA',
    102,
    150,
    'Part-Time',
    10,
    '2024-11-15 09:00:00',
    0,
    'https://example.com/job/2',
    'https://example.com/apply/2',
    'In-Person',
    '2024-12-31 18:00:00',
    NULL,
    'Mid Level',
    'SQL, Tableau',
    '2024-11-14 15:00:00',
    'Finance',
    0,
    'Remote',
    'EUR',
    'Hourly',
    40.00,
    '94105',
    6075), (   3,
    'Project Manager',
    'Lead teams to deliver project outcomes on time and within budget.',
    'monthly',
    'Chicago, IL',
    103,
    200,
    'Full-Time',
    18,
    '2024-12-01 10:00:00',
    0,
    'https://example.com/job/3',
    'https://example.com/apply/3',
    'Online',
    '2025-02-28 23:59:59',
    NULL,
    'Senior Level',
    'Agile, Scrum, Leadership',
    '2024-11-30 11:00:00',
    'Management',
    1,
    'Hybrid',
    'USD',
    'Salary',
    95000.00,
    '60601',
    17031), ( 4,
    'Marketing Specialist',
    'Develop and execute marketing campaigns to drive customer engagement.',
    'weekly',
    'Austin, TX',
    104,
    120,
    'Part-Time',
    8,
    '2024-11-20 09:00:00',
    1,
    'https://example.com/job/4',
    'https://example.com/apply/4',
    'In-Person',
    '2025-01-15 23:59:59',
    NULL,
    'Mid Level',
    'SEO, Google Ads, Social Media',
    '2024-11-19 14:00:00',
    'Marketing',
    0,
    'On-site',
    'USD',
    'Hourly',
    28.00,
    '73301',
    48453),
    (5,
    'UX Designer',
    'Design user-friendly interfaces for web and mobile applications.',
    'monthly',
    'Seattle, WA',
    105,
    80,
    'Full-Time',
    5,
    '2024-11-10 08:00:00',
    0,
    'https://example.com/job/5',
    'https://example.com/apply/5',
    'Online',
    '2025-01-20 23:59:59',
    NULL,
    'Entry Level',
    'Wireframing, Figma, User Testing',
    '2024-11-09 10:00:00',
    'Design',
    1,
    'Remote',
    'USD',
    'Salary',
    68000.00,
    '98101',
    53033);



-- Table structure for table `job_skills`
CREATE TABLE `job_skills` (
  `job_id`  BIGINT NOT NULL,
  `skill_id`  BIGINT NOT NULL,
  PRIMARY KEY (`job_id`,`skill_id`)
  ) ;


-- Dumping data for table `job_skills`
INSERT INTO `job_skills` VALUES (3900960352,2),(3884842905,4),(3884848075,19),(3884844686,20),(3900957963,20),(3900958956,20);


CREATE TABLE `skills` (
  `skill_id`  INTEGER PRIMARY KEY NOT NULL,
  `skill_abr` VARCHAR(10) NOT NULL,
  `skill_name` VARCHAR(255) NOT NULL,
  `skill_description` text
  );


-- Dumping data for table `skills`

INSERT INTO `skills` VALUES (1,'ART','Art/Creative','Art/Creative'),(2,'DSGN','Design','Design'),(3,'ADVR','Advertising','Advertising'),(4,'PRDM','Product Management','Product Management'),(5,'DIST','Distribution','Distribution'),(6,'EDU','Education','Education'),(7,'TRNG','Training','Training'),(8,'PRJM','Project Management','Project Management'),(9,'CNSL','Consulting','Consulting'),(10,'PRCH','Purchasing','Purchasing'),(11,'SUPL','Supply Chain','Supply Chain'),(12,'ANLS','Analyst','Analyst'),(13,'HCPR','Health Care Provider','Health Care Provider'),(14,'RSCH','Research','Research'),(15,'SCI','Science','Science'),(16,'GENB','General Business','General Business'),(17,'CUST','Customer Service','Customer Service'),(18,'STRA','Strategy/Planning','Strategy/Planning'),(19,'FIN','Finance','Finance'),(20,'OTHR','Other','Other');
