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


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1009,
        'IBM',
        "At IBM, we do more than work. We create. We create as technologists, developers, and engineers. We create with our partners. We create with our competitors. If you're searching for ways to make the world work better through technology and infrastructure, software and consulting, then we want to work with you.\n\nWe're here to help every creator turn their 'what if' into what is. Let's create something that will change everything.",
        7,
        "NY",
        "US",
        "Armonk, New York",
        "10504",
        "International Business Machines Corp.",
        "https://www.linkedin.com/company/ibm\r");


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1016,
        'GE HealthCare',
        "Every day millions of people feel the impact of our intelligent devices, advanced analytics and artificial intelligence. As a leading global medical technology and digital solutions innovator, GE HealthCare enables clinicians to make faster, more informed decisions through intelligent devices, data analytics, applications and services, supported by its Edison intelligence platform.\n\nWith over 100 years of healthcare industry experience and around 50,000 employees globally, the company operates at the center of an ecosystem working toward precision health, digitizing healthcare, helping drive productivity and improve outcomes for patients, providers, health systems and researchers around the world.\n\nWe embrace a culture of respect, transparency, integrity and diversity and we work to create a world where healthcare has no limits.",
        7,
        '0',
        'US',
        'Chicago',
        NULL,
        '-',
        'https://www.linkedin.com/company/gehealthcare\r');

INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1025,
        'Hewlett Packard Enterprise',
        "Official LinkedIn of Hewlett Packard Enterprise, the global edge-to-cloud company. Sharing our passion and purpose through technology and innovation.",
        7,
        'Texas',
        'US',
        'Houston',
        '77389',
        '1701 E Mossy Oaks Rd Spring',
        'https://www.linkedin.com/company/hewlett-packard-enterprise\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1028,
        'Oracle',
        "We’re a cloud technology company that provides organizations around the world with computing infrastructure and software to help them innovate, unlock efficiencies and become more effective. We also created the world’s first – and only – autonomous database to help organize and secure our customers’ data.\n \nOracle Cloud Infrastructure offers higher performance, security, and cost savings. It is designed so businesses can move workloads easily from on-premises systems to the cloud, and between cloud and on-premises and other clouds. Oracle Cloud applications provide business leaders with modern applications that help them innovate, attain sustainable growth, and become more resilient. \n \nThe work we do is not only transforming the world of business--it's helping defend governments, and advance scientific and medical research. From nonprofits to companies of all sizes, millions of people use our tools to streamline supply chains, make HR more human, quickly pivot to a new financial plan, and connect data and people around the world.  \n\nAt work, we embrace diversity, encourage personal and professional growth, and celebrate a global team of passionate people developing innovative technologies that help people and companies tackle real-world problems head-on.\n\nIf you’d like to join us, please visit our Careers page: https://www.oracle.com/corporate/careers/\n\nFor investor news, SEC filings, and financial information about Oracle (NYSE:ORCL), please visit https://investor.oracle.com/home/.\n \nFollow us on Twitter: https://twitter.com/oracle \nLike our page on Facebook: https://www.facebook.com/Oracle/ \nFollow us on Instagram: https://www.instagram.com/oracle/\n",
        7,
        'Texas',
        'US',
        'Austin',
        '78741',
        '2300 Oracle Way',
        'https://www.linkedin.com/company/oracle\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1033,
        'Accenture',
        "Accenture is a leading global professional services company that helps the world’s leading businesses, governments and other organizations build their digital core, optimize their operations, accelerate revenue growth and enhance citizen services—creating tangible value at speed and scale.\n\nWe are a talent and innovation-led company serving clients in more than 120 countries. Technology is at the core of change today, and we are one of the world’s leaders in helping drive that change, with strong ecosystem relationships. We combine our strength in technology and leadership in cloud, data and AI with unmatched industry experience, functional expertise and global delivery capability. We are uniquely able to deliver tangible outcomes because of our broad range of services, solutions and assets across Strategy & Consulting, Technology, Operations, Industry X and Song.\n\nThese capabilities, together with our culture of shared success and commitment to creating 360° value, enable us to help our clients reinvent and build trusted, lasting relationships. We measure our success by the 360° value we create for our clients, each other, our shareholders, partners and communities.",
        7,
        '0',
        'IE',
        'Dublin 2',
        NULL,
        'Grand Canal Harbour',
        'https://www.linkedin.com/company/accenture\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1035,
        'Microsoft',
        "Every company has a mission. What's ours? To empower every person and every organization to achieve more. We believe technology can and should be a force for good and that meaningful innovation contributes to a brighter world in the future and today. Our culture doesn’t just encourage curiosity; it embraces it. Each day we make progress together by showing up as our authentic selves. We show up with a learn-it-all mentality. We show up cheering on others, knowing their success doesn't diminish our own. We show up every day open to learning our own biases, changing our behavior, and inviting in differences. Because impact matters. \n\nMicrosoft operates in 190 countries and is made up of more than 220,000 passionate employees worldwide.",
        7,
        'Washington',
        'US',
        'Redmond',
        '98052',
        '1 Microsoft Way',
        'https://www.linkedin.com/company/microsoft\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1038,
        'Deloitte',
        "Deloitte drives progress. Our firms around the world help clients become leaders wherever they choose to compete. Deloitte invests in outstanding people of diverse talents and backgrounds and empowers them to achieve more than they could elsewhere. Our work combines advice with action and integrity. We believe that when our clients and society are stronger, so are we. \n\nDeloitte refers to one or more of Deloitte Touche Tohmatsu Limited (“DTTL”), its global network of member firms, and their related entities. DTTL (also referred to as “Deloitte Global”) and each of its member firms are legally separate and independent entities. DTTL does not provide services to clients. Please see www.deloitte.com/about to learn more.\n\nThe content on this page contains general information only, and none of Deloitte Touche Tohmatsu Limited, its member firms, or their related entities (collectively the “Deloitte Network”) is, by means of this publication, rendering professional advice or services. Before making any decision or taking any action that may affect your finances or your business, you should consult a qualified professional adviser. No entity in the Deloitte Network shall be responsible for any loss whatsoever sustained by any person who relies on content from this page.",
        7,
        '0',
        'OO',
        'Worldwide',
        NULL,
        'Worldwide',
        'https://www.linkedin.com/company/deloitte\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1043,
        'Siemens',
        "Siemens AG (Berlin and Munich) is a leading technology company focused on industry, infrastructure, transport, and healthcare. From more resource-efficient factories, resilient supply chains, and smarter buildings and grids, to cleaner and more comfortable transportation as well as advanced healthcare, the company creates technology with purpose adding real value for customers. By combining the real and the digital worlds, Siemens empowers its customers to transform their industries and markets, helping them to transform the everyday for billions of people. Siemens also owns a majority stake in the publicly listed company Siemens Healthineers, a globally leading medical technology provider shaping the future of healthcare. In fiscal 2023, which ended on September 30, 2023, the Siemens Group generated revenue of €77.8 billion and net income of €8.5 billion. As of September 30, 2023, the company employed around 320,000 people worldwide.",
        7,
        '0',
        'DE',
        'Munich',
        '80333',
        'Werner-von-Siemens-Straße 1',
        'https://www.linkedin.com/company/siemens\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1044,
        'PwC',
        "At PwC, our purpose is to build trust in society and solve important problems. We’re a network of firms in 152 countries with over 327,000 people who are committed to delivering quality in assurance, advisory and tax services. Find out more and tell us what matters to you by visiting us at www.pwc.com.  PwC refers to the PwC network and/or one or more of its member firms, each of which is a separate legal entity.\n\nContent on this page has been prepared for general information only and is not intended to be relied upon as accounting, tax or professional advice. Please reach out to your advisors for specific advice.",
        7,
        '0',
        'GB',
        '0',
        NULL,
        '1 Embankment Place',
        'https://www.linkedin.com/company/pwc\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1052,
        "AT&T','We understand that our customers want an easier, less complicated life.  \n \nWe’re using our network, labs, products, services, and people to create a world where everything works together seamlessly, and life is better as a result.  How will we continue to drive for this excellence in innovation?\n \nWith you.\n \nOur people, and their passion to succeed, are at the heart of what we do. Today, we’re poised to connect millions of people with their world, delivering the human benefits of technology in ways that defy the imaginable.\n \nWhat are you dreaming of doing with your career?\n  \nFind stories about our talent, career advice, opportunities, company news, and innovations here on LinkedIn.\n \nTo learn more about joining AT&T, visit: http://www.att.jobs\n\nWe provide in some of our posts links to articles or posts from third-party websites unaffiliated with AT&T.  In doing so, AT&T is not adopting, endorsing or otherwise approving the content of those articles or posts.  AT&T is providing this content for your information only.",
        7,
        'TX',
        'US',
        'Dallas',
        '75202',
        '208 S. Akard Street',
        'https://www.linkedin.com/company/att\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1053,
        'Intel Corporation',
        "Intel’s mission is to shape the future of technology to help create a better future for the entire world. By pushing forward in fields like AI, analytics and cloud-to-edge technology, Intel’s work is at the heart of countless innovations. From major breakthroughs like self-driving cars and rebuilding the coral reefs, to things that make everyday life better like blockbuster effects and improved shopping experiences — they’re all powered by Intel technology. With a career at Intel, you have the opportunity to help make the future more wonderful for everyone.\n\nJoin us.",
        7,
        'California',
        'US',
        'Santa Clara',
        '95052',
        'Robert Noyce Building',
        'https://www.linkedin.com/company/intel-corporation\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1060,
        'Ericsson',
        "Our purpose \nTo create connections that make the unimaginable possible.\n\nOur vision\nA world where limitless connectivity improves lives, redefines business and pioneers a sustainable future.\n\nOur values\nPerseverance, professionalism, respect and integrity.\n\nThe future is a place for purpose & vision – ours are clear, and we invite partners, customers and consumers to join us in our journey. \n\nFor a brighter future. For all. Let's #ImaginePossible",
        7,
        'Stockholm',
        'SE',
        'Kista',
        NULL,
        'Torshamnsgatan 21',
        'https://www.linkedin.com/company/ericsson\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1063,
        'Cisco',
        "Cisco (NASDAQ: CSCO) enables people to make powerful connections--whether in business, education, philanthropy, or creativity. Cisco hardware, software, and service offerings are used to create the Internet solutions that make networks possible--providing easy access to information anywhere, at any time. \r\n\r\nCisco was founded in 1984 by a small group of computer scientists from Stanford University. Since the company's inception, Cisco engineers have been leaders in the development of Internet Protocol (IP)-based networking technologies. Today, with more than 71,000 employees worldwide, this tradition of innovation continues with industry-leading products and solutions in the company's core development areas of routing and switching, as well as in advanced technologies such as home networking, IP telephony, optical networking, security, storage area networking, and wireless technology. In addition to its products, Cisco provides a broad range of service offerings, including technical support and advanced services. \r\n\r\nCisco sells its products and services, both directly through its own sales force as well as through its channel partners, to large enterprises, commercial businesses, service providers, and consumers.",
        7,
        'CA',
        'US',
        'San Jose',
        '95134',
        'Tasman Way',
        'https://www.linkedin.com/company/cisco\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1066,
        "Motorola Mobility (a Lenovo Company)",
        "As part of the Lenovo family, Motorola Mobility is creating innovative smartphones and accessories designed with the consumer in mind. That’s why we’re looking for the thinkers, innovators and problem solvers who believe in working together to challenge the status quo. If you share our commitment to creativity and a passion for bringing new possibilities to life in mobile technology, we want you to say hello to Moto.\n\nMotorola has a long history of inventing game-changing technology. As a member of the Motorola team, you’ll help us continue our legacy by collaborating with talented colleagues around the globe to create new products that are not only different, but better. We thrive in an open and supportive culture, working in teams where your contribution has impact. We believe in transparency across all levels of the business, valuing every person’s opinion and encouraging new ways of thinking. Here, we all take accountability for our work, we drive consumer-centric decision-making, and we enable our people to push the line of innovation.\n\nWant in? Let’s get started on something different, together.\n\nHello you. Hello Motorola.\n\nhttp://lenovocareers.com/areas-mobile.html",
        5,
        'Illinois',
        'US',
        'Chicago',
        '60654',
        '222 W. Merchandise Mart Plaza',
        'https://www.linkedin.com/company/motorola-mobility\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1068,
        'JPMorgan Chase & Co.',
        "With a history tracing its roots to 1799 in New York City, JPMorgan Chase is one of the world's oldest, largest, and best-known financial institutions—carrying forth the innovative spirit of our heritage firms in global operations across 100 markets.\n \nWe serve millions of customers and many of the world’s most prominent corporate, institutional, and government clients daily, managing assets and investments, offering business advice and strategies, and providing innovative banking solutions and services.\n\nSocial Media Terms and Conditions: https://bit.ly/JPMCSocialTerms\n\n© 2024 JPMorgan Chase & Co. All rights reserved. JPMorgan Chase is an Equal Opportunity Employer, including Disability/Veterans.\n ",
        7,
        'NY',
        'US',
        'New York',
        '10017-2014',
        '270 Park Avenue',
        'https://www.linkedin.com/company/jpmorganchase\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1070,
        'Nokia',
        "At Nokia, we create technology that helps the world act together. \n\nAs a B2B technology innovation leader, we are pioneering the future where networks meet cloud to realize the full potential of digital in every industry.\n\nThrough networks that sense, think and act, we work with our customers and partners to create the digital services and applications of the future. \n\n\nFor our latest updates, please visit us online www.nokia.com  \n\nTo view open positions and to apply, please visit: www.nokia.com/careers",
        7,
        'Southern Finland',
        'FI',
        'Espoo',
        '02610',
        'Karakaari 7',
        'https://www.linkedin.com/company/nokia\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1073,
        'EY',
        "EY exists to build a better working world, helping create long-term value for clients, people and society and build trust in the capital markets.\n\nEnabled by data and technology, diverse EY teams in over 150 countries provide trust through assurance and help clients grow, transform and operate.\n\nWorking across assurance, consulting, law, strategy, tax and transactions, EY teams ask better questions to find new answers for the complex issues facing our world today.\n\nFind out more about the EY global network http://ey.com/en_gl/legal-statement",
        7,
        '0',
        'GB',
        'London',
        'SE1 2DA',
        '6 More London Place',
        'https://www.linkedin.com/company/ernstandyoung\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1079,
        'KPMG US',
        "KPMG is one of the world’s leading professional services firms and the fastest growing Big Four accounting firm in the United States. With 75+ offices and more than 40,000 employees and partners throughout the US, we’re leading the industry in new and exciting ways. Our size and strength make us much more agile and responsive to changing trends.",
        7,
        'NY',
        'US',
        'New York',
        '10154',
        '345 Park Avenue',
        'https://www.linkedin.com/company/kpmg-us\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1088,
        'NXP Semiconductors',
        "NXP Semiconductors N.V. (NASDAQ: NXPI) enables a smarter, safer and more sustainable world through innovation. As a world leader in secure connectivity solutions for embedded applications, NXP is pushing boundaries in the automotive, industrial & IoT, mobile, and communication infrastructure markets. Built on more than 60 years of combined experience and expertise, the company has approximately 34,500 employees in more than 30 countries and posted revenue of $13.21 billion in 2022. Find out more at www.nxp.com.\n\nPrivacy Policy: https://www.nxp.com/company/about-nxp/privacy-policy-for-social-media-pages:PRIVACY-POLICY-SOCIAL-MEDIA",
        7,
        'Noord-Brabant',
        'NL',
        'Eindhoven',
        '5656 AG',
        'High Tech Campus 60',
        'https://www.linkedin.com/company/nxp-semiconductors\r');


INSERT INTO companies (company_id, company_name, company_description, company_size, `state`, country, city, zip_code, `address`, `url`)
VALUES (1090,
        'Philips',
        "Over the past decade we have transformed into a focused leader in health technology.\n\nAt Philips, our purpose is to improve people’s health and well-being through meaningful innovation. We aim to improve 2.5 billion lives per year by 2030, including 400 million in underserved communities. \n\nWe see healthcare as a connected whole. Helping people to live healthily and prevent disease. Giving clinicians the tools they need to make a precision diagnosis and deliver personalized treatment. Aiding the patient's recovery at home in the community. All supported by a seamless flow of data.\n\nAs a technology company, we – and our brand licensees – innovate for people with one consistent belief: there’s always a way to make life better.\n\n\nVisit our website: http://www.philips.com/\nFollow our social media house rules https://www.philips.com/a-w/about-philips/social-media.html",
        7,
        'Noord-Holland',
        'NL',
        'Amsterdam',
        '1096 BC',
        'Amstelplein 2',
        'https://www.linkedin.com/company/philips\r');

