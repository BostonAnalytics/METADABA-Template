-- sample database created from linkedin scraped data for 20 companies

CREATE TABLE benefits (
  benefit_id INTEGER PRIMARY KEY NOT NULL,
  benefit_type varchar(255) NOT NULL,
  benefit_description text);



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
