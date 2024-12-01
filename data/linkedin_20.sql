CREATE TABLE benefits (
  benefit_id INTEGER PRIMARY KEY NOT NULL,
  benefit_type varchar(255) NOT NULL,
  benefit_description text);


CREATE TABLE companies (
  company_id INTEGER PRIMARY KEY NOT NULL,
  company_name varchar(255) DEFAULT NULL,
  company_size INTEGER DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  country varchar(2) DEFAULT NULL,
  city varchar(255) DEFAULT NULL,
  zip_code varchar(50) DEFAULT NULL,
  address text,
  url text
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
  employee_count INTEGER DEFAULT NULL,
  follower_count INTEGER DEFAULT NULL,
  time_recorded datetime NOT NULL,
  PRIMARY KEY (company_id,time_recorded)
);


CREATE TABLE `job_benefits` (
  `job_id` bigINTEGER NOT NULL,
  `benefit_id` bigINTEGER NOT NULL,
  `inferred` tinyINT(1) DEFAULT '0',
  PRIMARY KEY (`job_id`,`benefit_id`)
  );


CREATE TABLE `job_industries` (
  `job_id` bigINT NOT NULL,
  `industry_id` bigINT NOT NULL,
  PRIMARY KEY (`job_id`,`industry_id`)
);


CREATE TABLE `job_postings` (
  `job_id`  BIGINT PRIMARY KEY NOT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `description` text,
  `pay_period` VARCHAR(50) DEFAULT NULL,
  `location` VARCHAR(255) DEFAULT NULL,
  `company_id`  BIGINT DEFAULT NULL,
  `views` INT DEFAULT NULL,
  `formatted_work_type` VARCHAR(50) DEFAULT NULL,
  `applies` INT DEFAULT NULL,
  `original_listed_time` datetime DEFAULT NULL,
  `remote_allowed` INT DEFAULT NULL,
  `job_posting_url` text,
  `application_url` text,
  `application_type` VARCHAR(50) DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `closed_time` datetime DEFAULT NULL,
  `formatted_experience_level` VARCHAR(50) DEFAULT NULL,
  `skills_desc` text,
  `listed_time` datetime DEFAULT NULL,
  `posting_domain` VARCHAR(255) DEFAULT NULL,
  `sponsored` tinyint(1) DEFAULT NULL,
  `work_type` VARCHAR(50) DEFAULT NULL,
  `currency` VARCHAR(10) DEFAULT NULL,
  `compensation_type` VARCHAR(50) DEFAULT NULL,
  `normalized_salary` decimal(10,2) DEFAULT NULL,
  `zip_code` VARCHAR(10) DEFAULT NULL,
  `fips` INT DEFAULT NULL,
   FOREIGN KEY (`company_id`) REFERENCES companies(`company_id`)
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


INSERT INTO companies VALUES (1016, 'GE HealthCare', 7, NULL, 'US', 'Chicago', NULL, NULL, 'https://www.linkedin.com/company/gehealthcare');
INSERT INTO companies VALUES (1025, 'Hewlett Packard Enterprise', 7, 'Texas', 'US', 'Houston', '77389', '1701 E Mossy Oaks Rd Spring', 'https://www.linkedin.com/company/hewlett-packard-enterprise');

INSERT INTO companies VALUES (1028, 'Oracle', 7, 'Texas', 'US', 'Austin', '78741', '2300 Oracle Way', 'https://www.linkedin.com/company/oracle');
INSERT INTO companies VALUES (1033, 'Accenture', 7, NULL, 'IE', 'Dublin 2', NULL, 'Grand Canal Harbour', 'https://www.linkedin.com/company/accenture');

INSERT INTO companies VALUES (1035, 'Microsoft', 7, 'Washington', 'US', 'Redmond', '98052', '1 Microsoft Way', 'https://www.linkedin.com/company/microsoft');

INSERT INTO companies VALUES (1038, 'Deloitte', 7, NULL, 'OO', 'Worldwide', NULL, 'Worldwide', 'https://www.linkedin.com/company/deloitte');

INSERT INTO companies VALUES (1043, 'Siemens', 7, NULL, 'DE', 'Munich', '80333', 'Werner-von-Siemens-Straße 1', 'https://www.linkedin.com/company/siemens');
INSERT INTO companies VALUES(1044, 'PwC', 7, NULL, 'GB', NULL, NULL, '1 Embankment Place', 'https://www.linkedin.com/company/pwc');
INSERT INTO companies VALUES
(1052, 'AT&T', 7, 'TX', 'US', 'Dallas', '75202', '208 S. Akard Street', 'https://www.linkedin.com/company/att');


INSERT INTO job_postings VALUES
(
    921716, 'Corcoran Sawyer Smith', 'Marketing Coordinator', """Job descriptionA leading real estate firm in New Jersey is seeking an administrative Marketing Coordinator with some experience in graphic design. You will be working closely with our fun, kind, ambitious members of the sales team and our dynamic executive team on a daily basis. This is an opportunity to be part of a fast-growing, highly respected real estate brokerage with a reputation for exceptional marketing and extraordinary culture of cooperation and inclusion. ... """, 
    20, 'HOURLY', 'Princeton, NJ', 2774458, 20, 17, 
    NULL, 'Full-time', 2, 1.71E+12, NULL, 'https://www.linkedin.com/jobs/view/921716/?trk=jobs_biz_prem_srch',
    NULL, 'ComplexOnsiteApply', 1.72E+12, NULL, 
    'Requirements: ...', 1.71E+12, NULL, 0, 'FULL_TIME', 'USD', 'BASE_SALARY', 38480, 8540, 34021
),
(
    1829192, NULL, 'Mental Health Therapist/Counselor', """At Aspen Therapy and Wellness ... """,
    50, 'HOURLY', 'Fort Collins, CO', NULL, 1, 30, 
    NULL, 'Full-time', NULL, 1.71E+12, NULL, 'https://www.linkedin.com/jobs/view/1829192/?trk=jobs_biz_prem_srch',
    NULL, 'ComplexOnsiteApply', 1.72E+12, NULL, 
    NULL, 1.71E+12, NULL, 0, 'FULL_TIME', 'USD', 'BASE_SALARY', 83200, 80521, 8069
),
(
    10998357, 'The National Exemplar', 'Assistant Restaurant Manager', """The National Exemplar is accepting applications for an Assistant Restaurant Manager...""",
    65000, 'YEARLY', 'Cincinnati, OH', 64896719, 8, 45000, 
    NULL, 'Full-time', NULL, 1.71E+12, NULL, 'https://www.linkedin.com/jobs/view/10998357/?trk=jobs_biz_prem_srch',
    NULL, 'ComplexOnsiteApply', 1.72E+12, NULL, 
    NULL, 1.71E+12, NULL, 0, 'FULL_TIME', 'USD', 'BASE_SALARY', 55000, 45202, 39061
),
(
    23221523, 'Abrams Fensterman, LLP', 'Senior Elder Law / Trusts and Estates Associate Attorney', """Senior Associate Attorney - Elder Law ...""",
    175000, 'YEARLY', 'New Hyde Park, NY', 766262, 16, 140000, 
    NULL, 'Full-time', NULL, 1.71E+12, NULL, 'https://www.linkedin.com/jobs/view/23221523/?trk=jobs_biz_prem_srch',
    NULL, 'ComplexOnsiteApply', 1.72E+12, NULL, 
    NULL, 1.71E+12, NULL, 0, 'FULL_TIME', 'USD', 'BASE_SALARY', 157500, 11040, 36059
),
(
    91700727, 'Downtown Raleigh Alliance', 'Economic Development and Planning Intern', """Job summary:The Economic Development & Planning Intern will provide ...""",
    20, 'HOURLY', 'Raleigh, NC', 1481176, 9, 14, 
    NULL, 'Internship', 4, 1.71E+12, NULL, 'https://www.linkedin.com/jobs/view/91700727/?trk=jobs_biz_prem_srch',
    NULL, 'ComplexOnsiteApply', 1.72E+12, NULL, 
    NULL, 1.71E+12, NULL, 0, 'INTERNSHIP', 'USD', 'BASE_SALARY', 35360, 27601, 37183
);


INSERT INTO `job_postings` VALUES (3884842897,'Business Sales & Delivery Executive - SAP',"""697015BR\n\nIntroduction\n\nAs a Business Sales & Delivery Executive, you will support IBM’s consistent growth by bringing to the table your business development, sales, account management, and delivery skills. Picture yourself working with a highly motivated, highly successful team with a proven sales record in IBM’s top technologies. If you’re ready to bring insights and experience in areas such as IoT, Blockchain and digital transformation, we are ready to offer you a best in class career development.\n\nYour Role and Responsibilities\n\nEmployees in this role should have the experience and knowledge to support both the sales of new business opportunities and the delivery of services to the clients. They must understand large and complex service engagements in their area of expertise, including the appropriate methods and skills needed to solve business problems in the client's industry. They should have the capability to establish strong and trusted relationships with clients through their ability to articulate solutions, and other IBM offerings used in the delivery of complex services. They should identify new business opportunities, creatively participate in the development and sales of solutions, and assist IBM in winning the business. When not participating in sales activities such as new business development or bid and proposal activity, they should support and lead billable client activities within their area of practice and participate in related Sector, Solution, or Community activities. They are accountable for the financial success of engagements directly managed, as well as the generation of services revenue with the sales of new business.\n\nLeaders are expected to spend time with their teams and clients and therefore are generally expected to be in the workplace a minimum of three days a week, subject to business needs.\n\nRequired Technical and Professional Expertise\n\nA Graduate with 20+ years of very strong technology and business consulting experience in large IT & Consulting companies. Should have good exposure to handling of large deals involving multi-country delivery of IT Services. Should have a flair for sales of IT Services and various IBM offerings and should have good domain knowledge in electronics, industrial, distribution, communication, commercial and other related sectors. Should possess strong People Management skills with considerable latitude in responsibilities to define and determine processes, priorities and resources following general business unit, country or regional directives. Should be able to lead or participate in organization planning, providing leadership and support to ensure that business objectives are met. Should foster teamwork and inclusion across organizations, cultures and geographies -- and promote IBM's diversity and inclusive leadership and IBM Values and support activities and projects involving cross-functional teams which contribute to IBM success. Should provide feedback to employees to improve performance, establish clear performance expectations and hold people accountable for results, recognize contributions by employees and teams and lead by example in all activities. Should be able to lead a project team in delivering a solution to the client using the appropriate business measurements and terms and conditions for the project according to the project charter, project agreement or contract. Should be able to take overall performance responsibility for managing scope, cost, schedule, and contractual deliverables, which includes applying techniques for planning, tracking, change control, and risk management. Should be able to take full end to end responsibility for managing all project resources, including subcontractors, and for establishing an effective communication plan with the project team and the client. Should be able to provide day to day direction to the project team and regular project status to the client. Should be accountable for the financial success of engagements directly managed, as well as the generation of services revenue with the sales of new business.\n\nPreferred Technical And Professional Expertise\n\nShould be a thought leader and can drive improvements and solutions within IBM to ensure they have the tools, knowledge, and expertise to provide exceptional client experience with IBM products & services. Must have SAP implementation and production support experience and very strong project management skills. Should be able to assist clients in the selection, implementation, and production support of application packaged solutions by using in-depth consulting skills, business knowledge, and packaged solution expertise to effectively integrate packaged technology into the clients' business environment in order to achieve client expected business results. Nice to have SAP & PMI Certification and working knowledge on cloud and GenAI.\n\nAbout Business Unit\n\nIBM Consulting is IBM’s consulting and global professional services business, with market leading capabilities in business and technology transformation. With deep expertise in many industries, we offer strategy, experience, technology, and operations services to many of the most innovative and valuable companies in the world. Our people are focused on accelerating our clients’ businesses through the power of collaboration. We believe in the power of technology responsibly used to help people, partners and the planet.\n\nYour Life @ IBM\n\nIn a world where technology never stands still, we understand that, dedication to our clients success, innovation that matters, and trust and personal responsibility in all our relationships, lives in what we do as IBMers as we strive to be the catalyst that makes the world work better.\n\nBeing an IBMer means you’ll be able to learn and develop yourself and your career, you’ll be encouraged to be courageous and experiment everyday, all whilst having continuous trust and support in an environment where everyone can thrive whatever their personal or professional background.\n\nOur IBMers are growth minded, always staying curious, open to feedback and learning new information and skills to constantly transform themselves and our company. They are trusted to provide on-going feedback to help other IBMers grow, as well as collaborate with colleagues keeping in mind a team focused approach to include different perspectives to drive exceptional outcomes for our customers. The courage our IBMers have to make critical decisions everyday is essential to IBM becoming the catalyst for progress, always embracing challenges with resources they have to hand, a can-do attitude and always striving for an outcome focused approach within everything that they do.\n\nAre you ready to be an IBMer?\n\nAbout IBM\n\nIBM’s greatest invention is the IBMer. We believe that through the application of intelligence, reason and science, we can improve business, society and the human condition, bringing the power of an open hybrid cloud and AI strategy to life for our clients and partners around the world.Restlessly reinventing since 1911, we are not only one of the largest corporate organizations in the world, we’re also one of the biggest technology and consulting employers, with many of the Fortune 50 companies relying on the IBM Cloud to run their business. At IBM, we pride ourselves on being an early adopter of artificial intelligence, quantum computing and blockchain. Now it’s time for you to join us on our journey to being a responsible technology innovator and a force for good in the world.\n\nLocation Statement\n\nIBM offers a competitive and comprehensive benefits program. Eligible employees may have access to: - Healthcare benefits including medical & prescription drug coverage, dental, vision, and mental health & well being - Financial programs such as 401(k), the IBM Employee Stock Purchase Plan, financial counseling, life insurance, short & long- term disability coverage, and opportunities for performance based salary incentive programs - Generous paid time off including 12 holidays, minimum 56 hours sick time, 120 hours vacation, 12 weeks parental bonding leave in accordance with IBM Policy, and other Paid Care Leave programs. IBM also offers paid family leave benefits to eligible employees where required by applicable law - Training and educational resources on our personalized, AI-driven learning platform where IBMers can grow skills and obtain industry-recognized certifications to achieve their career goals - Diverse and inclusive employee resource groups, giving & volunteer opportunities, and discounts on retail products, services & experiences The compensation range and benefits for this position are based on a full-time schedule for a full calendar year. The salary will vary depending on your job-related skills, experience and location. Pay increment and frequency of pay will be in accordance with employment classification and applicable laws. For part time roles, your compensation and benefits will be adjusted to reflect your hours. Benefits may be pro-rated for those who start working during the calendar year. This position was posted on the date cited in the key job details section and is anticipated to remain posted for 21 days from this date or less if not needed to fill the role. We consider qualified applicants with criminal histories, consistent with applicable law.\n\nBeing You @ IBM\n\nIBM is committed to creating a diverse environment and is proud to be an equal-opportunity employer. All qualified applicants will receive consideration for employment without regard to race, color, religion, sex, gender, gender identity or expression, sexual orientation, national origin, caste, genetics, pregnancy, disability, neurodivergence, age, veteran status, or other characteristics. IBM is also committed to compliance with all fair employment practices regarding citizenship and immigration status.""",'YEARLY','Coppell, TX',1009,14,'Full-time',2,'2024-03-09 11:00:00',NULL,'https://www.linkedin.com/jobs/view/3884842897/?trk=jobs_biz_prem_srch','https://IBM.contacthr.com/136161321?Codes=SN_LinkedIn','OffsiteApply','2024-03-09 11:00:00',NULL,'','','2024-03-09 11:00:00','IBM.contacthr.com',0,'FULL_TIME','USD','BASE_SALARY',202000.00,'75019',NULL),(3884842905,'Product Manager',"""677963BR\n\nIntroduction\n\nAt IBM, work is more than a job - it's a calling: To build. To design. To code. To consult. To think along with clients and sell. To make markets. To invent. To collaborate. Not just to do something better, but to attempt things you've never thought possible. Are you ready to lead in this new era of technology and solve some of the world's most challenging problems? If so, lets talk.\n\nYour Role and Responsibilities\n\nIBM Data and AI seeks a Senior Product Manager to join our San Jose team and own initiatives across our Data and AI Portfolio.\n\nIn this role, you will be responsible for shaping the future of data and AI technology through the development and execution of our product roadmap. You will work closely with cross-functional teams to gather customer feedback, identify market opportunities, and develop innovative solutions. You'll support sales and marketing initiatives to drive revenue growth.\n\nYou are a Product Manager with a history of successful product ownership and growth or have experience in an adjacent role (development, technical sales). Your peers would say you are trusted to successfully weigh customer outcomes, business impacts, and functional tradeoffs. You communicate in a way that leaves them feeling respected, heard, and understood. At the same time, the product features, and experiences you deliver are crafted with the customer front of mind.\n\nResponsibilities\n\n\n Define and execute the product strategy for our data and AI products Work with engineering, business development, sales, and marketing to bring products to market Gather customer feedback and identify market opportunities Develop innovative solutions that solve customer problems Manage the product lifecycle from discovery to launch Track product performance and metrics Stay up to date on industry trends and best practices\n\n\nNASW_24\n\nRequired Technical and Professional Expertise\n\nBachelor’s or Master’s degree in Computer Science, Engineering, Artificial Intelligence, or a related field\n\n\n 10+ years of experience successfully managing and leading product or technical teams Track record of success in customer-driven product development Passion for data-driven insights and innovation Excellent communication and interpersonal skills Deep understanding of AI, foundation models, and related technologies is a plus\n\n\nPreferred Technical And Professional Expertise\n\nMaster's degree in Computer Science, Engineering, Artificial Intelligence, or a related field\n\n\n Background on data and AI strategy, concepts, key trends, and competitors Extensive product management experience driving considerable growth for data and AI solutions Knowledge about IBM Data and AI products, technology, and customers\n\n\nAbout Business Unit\n\nIBM Software infuses core business operations with intelligence—from machine learning to generative AI—to help make organizations more responsive, productive, and resilient. IBM Software helps clients put AI into action now to create real value with trust, speed, and confidence across digital labor, IT automation, application modernization, security, and sustainability. Critical to this is the ability to make use of all data, because AI is only as good as the data that fuels it. In most organizations data is spread across multiple clouds, on premises, in private datacenters, and at the edge. IBM’s AI and data platform scales and accelerates the impact of AI with trusted data, and provides leading capabilities to train, tune and deploy AI across business. IBM’s hybrid cloud platform is one of the most comprehensive and consistent approach to development, security, and operations across hybrid environments—a flexible foundation for leveraging data, wherever it resides, to extend AI deep into a business.\n\nYour Life @ IBM\n\nIn a world where technology never stands still, we understand that, dedication to our clients success, innovation that matters, and trust and personal responsibility in all our relationships, lives in what we do as IBMers as we strive to be the catalyst that makes the world work better.\n\nBeing an IBMer means you’ll be able to learn and develop yourself and your career, you’ll be encouraged to be courageous and experiment everyday, all whilst having continuous trust and support in an environment where everyone can thrive whatever their personal or professional background.\n\nOur IBMers are growth minded, always staying curious, open to feedback and learning new information and skills to constantly transform themselves and our company. They are trusted to provide on-going feedback to help other IBMers grow, as well as collaborate with colleagues keeping in mind a team focused approach to include different perspectives to drive exceptional outcomes for our customers. The courage our IBMers have to make critical decisions everyday is essential to IBM becoming the catalyst for progress, always embracing challenges with resources they have to hand, a can-do attitude and always striving for an outcome focused approach within everything that they do.\n\nAre you ready to be an IBMer?\n\nAbout IBM\n\nIBM’s greatest invention is the IBMer. We believe that through the application of intelligence, reason and science, we can improve business, society and the human condition, bringing the power of an open hybrid cloud and AI strategy to life for our clients and partners around the world.Restlessly reinventing since 1911, we are not only one of the largest corporate organizations in the world, we’re also one of the biggest technology and consulting employers, with many of the Fortune 50 companies relying on the IBM Cloud to run their business. At IBM, we pride ourselves on being an early adopter of artificial intelligence, quantum computing and blockchain. Now it’s time for you to join us on our journey to being a responsible technology innovator and a force for good in the world.\n\nLocation Statement\n\nIBM offers a competitive and comprehensive benefits program. Eligible employees may have access to:\n\n\n Healthcare benefits including medical & prescription drug coverage, dental, vision, and mental health & well being Financial programs such as 401(k), the IBM Employee Stock Purchase Plan, financial counseling, life insurance, short & long- term disability coverage, and opportunities for performance based salary incentive programs Generous paid time off including 12 holidays, minimum 56 hours sick time, 120 hours vacation, 12 weeks parental bonding leave in accordance with IBM Policy, and other Paid Care Leave programs. IBM also offers paid family leave benefits to eligible employees where required by applicable law Training and educational resources on our personalized, AI-driven learning platform where IBMers can grow skills and obtain industry-recognized certifications to achieve their career goals Diverse and inclusive employee resource groups, giving & volunteer opportunities, and discounts on retail products, services & experiences\n\n\nThe compensation range and benefits for this position are based on a full-time schedule for a full calendar year. The salary will vary depending on your job-related skills, experience and location. Pay increment and frequency of pay will be in accordance with employment classification and applicable laws. For part time roles, your compensation and benefits will be adjusted to reflect your hours. Benefits may be pro-rated for those who start working during the calendar year.\n\nWe consider qualified applicants with criminal histories, consistent with applicable law.\n\nIBM will not be providing visa sponsorship for this position now or in the future. Therefore, in order to be considered for this position, you must have the ability to work without a need for current or future visa sponsorship.\n\nBeing You @ IBM\n\nIBM is committed to creating a diverse environment and is proud to be an equal-opportunity employer. All qualified applicants will receive consideration for employment without regard to race, color, religion, sex, gender, gender identity or expression, sexual orientation, national origin, caste, genetics, pregnancy, disability, neurodivergence, age, veteran status, or other characteristics. IBM is also committed to compliance with all fair employment practices regarding citizenship and immigration status.""",'YEARLY','San Jose, CA',1009,40,'Full-time',2,'2024-03-09 11:00:00',NULL,'https://www.linkedin.com/jobs/view/3884842905/?trk=jobs_biz_prem_srch','https://IBM.contacthr.com/136161569?Codes=SN_LinkedIn','OffsiteApply','2024-03-09 11:00:00',NULL,'','','2024-03-09 11:00:00','IBM.contacthr.com',0,'FULL_TIME','USD','BASE_SALARY',191000.00,'95101',NULL)