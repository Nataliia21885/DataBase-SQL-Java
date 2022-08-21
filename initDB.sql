create TABLE DEVELOPERS	
(id int PRIMARY KEY, 
name VARCHAR (50), 
age int, 
sex VARCHAR (10));

create TABLE SKILLS	
(id int PRIMARY KEY, 
language VARCHAR (50), 
level VARCHAR (20));

create TABLE PROJECTS 
(id int PRIMARY KEY, 
project_name VARCHAR (255), 
country VARCHAR (50), 
company_id int, 
customer_id int, 
FOREIGN KEY (company_id) REFERENCES COMPANIES(id), 
FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id));

create TABLE COMPANIES 
(id int PRIMARY KEY, 
name VARCHAR (100), 
HRM VARCHAR (100));

create TABLE CUSTOMERS 
(id int PRIMARY KEY, 
name VARCHAR (100), 
contact VARCHAR (50));

create TABLE DEVELOPERS_SKILLS 
(developer_id int, 
skill_id int, 
PRIMARY KEY(developer_id, skill_id),
FOREIGN KEY (developer_id) REFERENCES DEVELOPERS(id),
FOREIGN KEY (skill_id) REFERENCES SKILLS(id));

create TABLE DEVELOPERS_PROJECTS 
(developer_id int, 
project_id int, 
PRIMARY KEY(developer_id, project_id),
FOREIGN KEY (developer_id) REFERENCES DEVELOPERS(id),
FOREIGN KEY (project_id) REFERENCES PROJECTS(id));
