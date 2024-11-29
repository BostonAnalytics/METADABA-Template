-- sample database created from linkedin scraped data for 20 companies

-- JOBS TABLE
CREATE TABLE jobs (
    job_id BIGINT PRIMARY KEY, -- Unique job ID
    company_id BIGINT, -- Foreign key referencing companies
    title VARCHAR(255),
    description TEXT,
    max_salary DECIMAL(15, 2),
    med_salary DECIMAL(15, 2),
    min_salary DECIMAL(15, 2),
    pay_period VARCHAR(50),
    formatted_work_type VARCHAR(50),
    location VARCHAR(255),
    applies INT,
    original_listed_time BIGINT,
    remote_allowed BOOLEAN,
    views INT,
    job_posting_url VARCHAR(255),
    application_url VARCHAR(255),
    application_type VARCHAR(50),
    expiry BIGINT,
    closed_time BIGINT,
    formatted_experience_level VARCHAR(100),
    skills_desc TEXT,
    listed_time BIGINT,
    posting_domain VARCHAR(255),
    sponsored BOOLEAN,
    work_type VARCHAR(50),
    currency VARCHAR(10),
    compensation_type VARCHAR(50),
    scraped BOOLEAN,
    inferred_benefits BOOLEAN,
    years_experience INT,
    job_region VARCHAR(255),
    degree VARCHAR(255)
);

-- SALARIES TABLE
CREATE TABLE salaries (
    salary_id BIGINT PRIMARY KEY, -- Unique salary ID
    job_id BIGINT, -- Foreign key referencing jobs
    max_salary DECIMAL(15, 2),
    med_salary DECIMAL(15, 2),
    min_salary DECIMAL(15, 2),
    pay_period VARCHAR(50),
    currency VARCHAR(10),
    compensation_type VARCHAR(50),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE
);

-- BENEFITS TABLE
CREATE TABLE benefits (
    benefit_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Unique benefit ID
    job_id BIGINT, -- Foreign key referencing jobs
    type VARCHAR(100),
    inferred BOOLEAN,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE
);

-- COMPANIES TABLE
CREATE TABLE companies (
    company_id BIGINT PRIMARY KEY, -- Unique company ID
    name VARCHAR(255),
    description TEXT,
    company_size TINYINT,
    country VARCHAR(100),
    state VARCHAR(100),
    city VARCHAR(100),
    zip_code VARCHAR(20),
    address VARCHAR(255),
    url VARCHAR(255)
);

-- EMPLOYEE_COUNTS TABLE
CREATE TABLE employee_counts (
    company_id BIGINT, -- Foreign key referencing companies
    employee_count INT,
    follower_count INT,
    time_recorded BIGINT,
    PRIMARY KEY (company_id, time_recorded),
    FOREIGN KEY (company_id) REFERENCES companies(company_id) ON DELETE CASCADE
);

-- SKILLS TABLE
CREATE TABLE skills (
    skill_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Unique skill ID
    skill_abr VARCHAR(50) UNIQUE,
    skill_name VARCHAR(255)
);

-- JOB_SKILLS TABLE
CREATE TABLE job_skills (
    job_id BIGINT, -- Foreign key referencing jobs
    skill_id BIGINT, -- Foreign key referencing skills
    PRIMARY KEY (job_id, skill_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE,
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id) ON DELETE CASCADE
);

-- INDUSTRIES TABLE
CREATE TABLE industries (
    industry_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Unique industry ID
    industry_name VARCHAR(255)
);

-- JOB_INDUSTRIES TABLE
CREATE TABLE job_industries (
    job_id BIGINT, -- Foreign key referencing jobs
    industry_id BIGINT, -- Foreign key referencing industries
    PRIMARY KEY (job_id, industry_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE,
    FOREIGN KEY (industry_id) REFERENCES industries(industry_id) ON DELETE CASCADE
);

-- COMPANY_SPECIALITIES TABLE
CREATE TABLE company_specialities (
    speciality_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- Unique speciality ID
    company_id BIGINT, -- Foreign key referencing companies
    speciality VARCHAR(255),
    FOREIGN KEY (company_id) REFERENCES companies(company_id) ON DELETE CASCADE
);

-- COMPANY_INDUSTRIES TABLE
CREATE TABLE company_industries (
    company_id BIGINT, -- Foreign key referencing companies
    industry_id BIGINT, -- Foreign key referencing industries
    PRIMARY KEY (company_id, industry_id),
    FOREIGN KEY (company_id) REFERENCES companies(company_id) ON DELETE CASCADE,
    FOREIGN KEY (industry_id) REFERENCES industries(industry_id) ON DELETE CASCADE
);


INSERT INTO jobs VALUES 
(101, 1, 'Software Engineer', 'Develop and maintain software systems.', 150000, 120000, 90000, 'Yearly', 'Fulltime', 'New York, NY', 20, 1672531200, 1, 150, 'https://www.linkedin.com/jobs/view/101', 'https://apply.company.com/101', 'Offsite', 1675132800, 1675728000, 'Entry', 'Programming, debugging', 1672531200, 'linkedin.com', 1, 'Fulltime', 'USD', 'Base Salary', 1, NULL, NULL, 'USA', "Bachelor's Degree");

INSERT INTO jobs VALUES 
(102, 2, 'Marketing Manager', 'Lead marketing campaigns and strategies.', 120000, 100000, 80000, 'Yearly', 'Fulltime', 'San Francisco, CA', 35, 1672531300, 1, 250, 'https://www.linkedin.com/jobs/view/102', 'https://apply.company.com/102', 'Onsite', 1675132900, 1675728100, 'Mid', 'SEO, analytics', 1672531300, 'linkedin.com', 1, 'Fulltime', 'USD', 'Base Salary', 1, NULL, NULL, 'USA', "Bachelor's Degree");

INSERT INTO jobs VALUES 
(103, 3, 'Data Scientist', 'Analyze large datasets for insights.', 140000, 110000, 90000, 'Yearly', 'Fulltime', 'Chicago, IL', 15, 1672531400, 1, 180, 'https://www.linkedin.com/jobs/view/103', 'https://apply.company.com/103', 'Offsite', 1675133000, 1675728200, 'Senior', 'Python, ML', 1672531400, 'linkedin.com', 0, 'Fulltime', 'USD', 'Base Salary', 1, NULL, NULL, 'USA', "Master's Degree");

INSERT INTO jobs VALUES 
(104, 4, 'Sales Executive', 'Drive revenue through client sales.', 110000, 90000, 70000, 'Yearly', 'Fulltime', 'Austin, TX', 50, 1672531500, 0, 120, 'https://www.linkedin.com/jobs/view/104', 'https://apply.company.com/104', 'ComplexOnsiteApply', 1675133100, 1675728300, 'Entry', 'Negotiation, CRM', 1672531500, 'linkedin.com', 0, 'Fulltime', 'USD', 'Variable Salary', 1, NULL, NULL, 'USA', "Bachelor's Degree");

INSERT INTO jobs VALUES 
(105, 5, 'HR Specialist', 'Manage recruitment and employee relations.', 85000, 70000, 50000, 'Yearly', 'Fulltime', 'Seattle, WA', 10, 1672531600, 1, 100, 'https://www.linkedin.com/jobs/view/105', 'https://apply.company.com/105', 'Onsite', 1675133200, 1675728400, 'Associate', 'Recruitment, compliance', 1672531600, 'linkedin.com', 1, 'Fulltime', 'USD', 'Base Salary', 1, NULL, NULL, 'USA', "Bachelor's Degree");


INSERT INTO salaries VALUES 
(1, 101, 150000, 120000, 90000, 'Yearly', 'USD', 'Base Salary');
INSERT INTO salaries VALUES 
(2, 102, 120000, 100000, 80000, 'Yearly', 'USD', 'Base Salary');
INSERT INTO salaries VALUES 
(3, 103, 140000, 110000, 90000, 'Yearly', 'USD', 'Base Salary');
INSERT INTO salaries VALUES 
(4, 104, 110000, 90000, 70000, 'Yearly', 'USD', 'Variable Salary');
INSERT INTO salaries VALUES 
(5, 105, 85000, 70000, 50000, 'Yearly', 'USD', 'Base Salary');

INSERT INTO benefits VALUES 
(1, 101, 'Medical Insurance', 1);
INSERT INTO benefits VALUES 
(2, 102, '401(k)', 1);
INSERT INTO benefits VALUES 
(3, 103, 'Dental Insurance', 1);
INSERT INTO benefits VALUES 
(4, 104, 'Paid Time Off', 1);
INSERT INTO benefits VALUES 
(5, 105, 'Tuition Assistance', 1);

INSERT INTO companies VALUES 
(1, 'IBM', 'A technology and consulting company.', 7, 'USA', 'NY', 'Armonk', '10504', '1 IBM Rd', 'https://www.ibm.com');
INSERT INTO companies VALUES 
(2, 'Google', 'A search engine and technology company.', 7, 'USA', 'CA', 'Mountain View', '94043', '1600 Amphitheatre Parkway', 'https://www.google.com');
INSERT INTO companies VALUES 
(3, 'Amazon', 'An e-commerce and cloud services company.', 7, 'USA', 'WA', 'Seattle', '98109', '410 Terry Ave N', 'https://www.amazon.com');
INSERT INTO companies VALUES 
(4, 'Microsoft', 'A software and cloud services company.', 7, 'USA', 'WA', 'Redmond', '98052', '1 Microsoft Way', 'https://www.microsoft.com');
INSERT INTO companies VALUES 
(5, 'Apple', 'A consumer electronics company.', 7, 'USA', 'CA', 'Cupertino', '95014', '1 Apple Park Way', 'https://www.apple.com');


INSERT INTO employee_counts VALUES 
(1, 314000, 16250000, 1672531200);
INSERT INTO employee_counts VALUES 
(2, 135000, 26000000, 1672531200);
INSERT INTO employee_counts VALUES 
(3, 1600000, 47000000, 1672531200);
INSERT INTO employee_counts VALUES 
(4, 221000, 18000000, 1672531200);
INSERT INTO employee_counts VALUES 
(5, 147000, 12000000, 1672531200);


INSERT INTO skills VALUES 
(1, 'PYTH', 'Python');
INSERT INTO skills VALUES 
(2, 'ML', 'Machine Learning');
INSERT INTO skills VALUES 
(3, 'SEO', 'Search Engine Optimization');
INSERT INTO skills VALUES 
(4, 'CRM', 'Customer Relationship Management');
INSERT INTO skills VALUES 
(5, 'DATA', 'Data Analysis');


INSERT INTO job_skills VALUES 
(101, 1);
INSERT INTO job_skills VALUES 
(102, 3);
INSERT INTO job_skills VALUES 
(103, 2);
INSERT INTO job_skills VALUES 
(104, 4);
INSERT INTO job_skills VALUES 
(105, 5);


INSERT INTO industries VALUES 
(1, 'Technology');
INSERT INTO industries VALUES 
(2, 'Healthcare');
INSERT INTO industries VALUES 
(3, 'Finance');
INSERT INTO industries VALUES 
(4, 'Retail');
INSERT INTO industries VALUES 
(5, 'Education');


INSERT INTO job_industries VALUES 
(101, 1);
INSERT INTO job_industries VALUES 
(102, 2);
INSERT INTO job_industries VALUES 
(103, 1);
INSERT INTO job_industries VALUES 
(104, 4);
INSERT INTO job_industries VALUES 
(105, 5);


INSERT INTO company_specialities VALUES 
(1, 'Cloud Computing');
INSERT INTO company_specialities VALUES 
(2, 'Search Engine');
INSERT INTO company_specialities VALUES 
(3, 'E-commerce');
INSERT INTO company_specialities VALUES 
(4, 'Productivity Software');
INSERT INTO company_specialities VALUES 
(5, 'Consumer Electronics');


INSERT INTO company_industries VALUES 
(1, 1);
INSERT INTO company_industries VALUES 
(2, 1);
INSERT INTO company_industries VALUES 
(3, 1);
INSERT INTO company_industries VALUES 
(4, 1);
INSERT INTO company_industries VALUES 
(5, 1);
