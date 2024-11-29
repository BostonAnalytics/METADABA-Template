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
