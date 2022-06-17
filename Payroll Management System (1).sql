DROP database IF EXISTS PAYROLL;
create database Payroll;
use Payroll;

create Table If not exists DEPARTMENT(
	DEPT_ID VARCHAR(5) NOT NULL,
    DEPARTMENT_NAME TEXT(20) Not Null,
    CONTACT INT UNIQUE NOT NULL,
    EMAIL VARCHAR(25),
    SAL_RANGE VARCHAR(20),
    PRIMARY KEY (DEPT_ID),
	UNIQUE(EMAIL)
);

create Table If not exists DESIGNATION(
	DESIGNATION_ID VARCHAR(8) NOT NULL,
	DESIGNATION TEXT(20) NOT NULL,
    DEPARTMENT TEXT(20),
    DEPT_ID VARCHAR(5),
    PRIMARY KEY (DESIGNATION_ID),
    FOREIGN KEY (DEPT_ID) references DEPARTMENT(DEPT_ID)
);

-- drop table Employee;
create Table If not exists Employee(
	EMP_ID int Primary key,
    EMPLOYEE_NAME TEXT(20) Not Null,
    DEPT_ID VARCHAR(5) ,
    DESIGNATION_ID VARCHAR(8),
    CONTACT INT UNIQUE NOT NULL,
    ADDRESS VARCHAR(50),
    AGE INT,
    EMAIL VARCHAR(25) UNIQUE,
    GENDER CHAR(6),
	FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID),
    FOREIGN KEY(DESIGNATION_ID) REFERENCES DESIGNATION(DESIGNATION_ID)
);

Create Table If not exists Basic_Salary(
	Salary_ID int,
    Designation_ID VARCHAR(8) Not NULL,
    Dept_ID VARCHAR(5) Not NULL,
    Salary long Not NULL,
    Primary Key(Salary_ID),
    Foreign Key(Designation_ID) REFERENCES Designation(Designation_ID),
    Foreign Key(Dept_ID) REFERENCES Department(Dept_ID)
);

create table BONUS(
BONUS_ID varchar(10) not null,
EMP_ID int NOT NULL,
EXTRA_HOURS INT,
FESTIVE_BONUS INT,
AMOUNT INT,
Months char(10),
PRIMARY KEY (BONUS_ID),
CONSTRAINT FK_BONUS
FOREIGN KEY (EMP_ID) REFERENCES employee(EMP_ID)
);

create table IF NOT EXISTS ATTENDANCE
( 	ATTENDANCE_ID int ,
	EMP_ID int not null,
	WORKING_MONTH varchar(30),
	ABSENTS int,
    PRIMARY KEY(Attendance_id),
    FOREIGN KEY(EMP_ID) REFERENCES Employee(EMP_ID)
);

CREATE TABLE PAYROLL_REPORT(
	PAYROLL_ID INT AUTO_INCREMENT,
    EMP_ID int, 
    DEPT_ID VARCHAR(5) ,
    DESIGNATION_ID VARCHAR(8),
    SALARY_ID INT NOT NULL,
    BONUS_ID varchar(10) DEFAULT 0,
    WORKING_MONTH varchar(30)  DEFAULT (MONTHNAME(NOW())),
    REPORT_DATE timestamp  DEFAULT current_timestamp(),
    TOTAL_PAY LONG NOT NULL,
    PRIMARY KEY(PAYROLL_ID),
    FOREIGN KEY(EMP_ID) REFERENCES EMPLOYEE(EMP_ID),
    FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID),
    FOREIGN KEY(DESIGNATION_ID) REFERENCES DESIGNATION(DESIGNATION_ID),
    FOREIGN KEY(SALARY_ID) REFERENCES BASIC_SALARY(SALARY_ID),
    FOREIGN KEY(BONUS_ID) REFERENCES BONUS(BONUS_ID)
);

INSERT INTO DEPARTMENT
(DEPT_ID, DEPARTMENT_NAME, CONTACT, EMAIL, SAL_RANGE) VALUES
('M2013', "MARKETING", 0181-2245000, "marketingteam@name.in", "20000-50000"),
('A3302', "ACCOUNTS AND FINANCE", 0181-2246000, "accounts@name.in", "25000-85000"),
('H1834', "HUMAN RESOURCE", 0181-2247000, "humanresourceteam@name.in", "40000-100000"),
('D4500', "R & D", 0181-2248000, "researchteam@name.in", "45000-80000"),
('P2040', "PRODUCTION", 0181-2249000, "productionteam@name.in", "22000-40000"),
('O3223', "OPERATIONS", 0181-2250000, "operationsteam@name.in", "24000-49000"),
('M1440', "MANAGEMENT", 0181-2251000, "managementteam@name.in", "50000-140000"),
('L1201', "LEGAL", 0181-2252000, "legalteam@name.in", "70000-120000");


INSERT INTO DESIGNATION
(DESIGNATION_ID, DESIGNATION, DEPARTMENT, DEPT_ID) VALUES
("MD_001", "MANAGING DIRECTOR","MANAGEMENT", "M1440"),
("CS_001", "COMPANY SECRETARY","MANAGEMENT", "M1440"),
("CO_001", "CHIEF EXECUTIVE OFFICER","MANAGEMENT", "M1440"),
("CO_002", "CHIEF OPERATING OFFICER","OPERATIONS", "O3223"),
("CO_003", "CHIEF FINANCIAL OFFICER","ACCOUNTS", "A3302"),
("CO_004", "CHIEF MARKETING OFFICER","MARKETING", "M2013"),
("CO_005", "CHIEF LEGAL OFFICER","LEGAL", "L1201"),
("CO_006", "CHIEF HUMAN RESOURCES OFFICER","HUMAN RESOURCE", "H1834"),
("SM_001", "SENIOR MANAGER", "MANAGEMENT", "M1440"),
("M_001", "OPERATING MANAGER","OPERATIONS", "O3223"),
("M_002", "FINANCE MANAGER","ACCOUNTS", "A3302"),
("M_003", "MARKETING MANAGER","MARKETING", "M2013"),
("M_004", "LEGAL MANAGER","LEGAL", "L1201"),
("M_005", "PRODUCTION MANAGER","PRODUCTION", "P2040"),
("M_006", "ACCOUNTS MANAGER","ACCOUNTS", "A3302"),
("M_007", "RESEARCH MANAGER","R & D", "D4500"),
("TL_001", "TEAM LEADER","ACCOUNTS", "A3302"),
("TL_002", "TEAM LEADER","OPERATIONS", "O3223"),
("TL_003", "TEAM LEADER","PRODUCTION", "P2040"),
("TL_004", "TEAM LEADER","LEGAL", "L1201"),
("TL_005", "TEAM LEADER","R & D", "D4500"),
("TL_006", "TEAM LEADER","MARKETING", "M2013"),
("EA_001", "ENGINEER/ANALYST","PRODUCTION", "P2040"),
("EA_002", "ENGINEER/ANALYST","OPERATIONS", "O3223"),
("EA_003", "ENGINEER/ANALYST","MARKETING", "M2013"),
("EA_004", "ACCOUNTANT","ACCOUNTS", "A3302"),
("EA_005", "JUNIOR MANAGER","MANAGEMENT", "M1440"),
("EA_006", "ANALYST/LAWYER","LEGAL", "L1201"),
("EA_007", "ANALYST","HUMAN RESOURCE", "H1834");

INSERT INTO Basic_Salary
(Salary_ID,Designation_ID,Dept_ID,Salary)
VALUES(1,'MD_001','M1440',100000),
(2,'CS_001','M1440',120000),

(3,'CO_001','M1440',80000),
(4,'CO_001','O3223',45000),
(5,'CO_001','A3302',45000),
(6,'CO_001','M2013',25000),
(7,'CO_001','L1201',100000),
(8,'CO_001','H1834',80000),

(9,'SM_001','M1440',100000),
(10,'M_001','O3223',34000),
(11,'M_002','A3302',50000),
(12,'M_003','M2013',25000),
(13,'M_004','L1201',85000),
(14,'M_005','P2040',28000),
(15,'M_006','A3302',65000),
(16,'M_007','D4500',75000),

(17,'TL_001','A3302',75000),
(18,'TL_002','O3223',30000),
(19,'TL_003','P2040',30000),
(20,'TL_004','L1201',90000),
(21,'TL_005','D4500',55000),
(22,'TL_006','M2013',45000),

(23,'EA_001',"P2040",40000),
(24,'EA_002','O3223',24000),
(25,'EA_003','M2013',30000),
(26,'EA_004','A3302',65000),
(27,'EA_005',"M1440",110000),
(28,'EA_006',"L1201",80000),
(29,'EA_007',"H1834",60000);

desc Employee;

INSERT INTO EMPLOYEE 
(EMP_ID,EMPLOYEE_NAME,DEPT_ID,DESIGNATION_ID,CONTACT,ADDRESS,AGE,EMAIL,GENDER)
VALUES(1,"RAMAN MATHUR",'O3223','EA_002',987654032,"161,kunj vihar",34,"ramanmathur23@gmail.com",'Male'),
(2,"NAMAN MATHUR",'H1834','EA_007',943654302,"161,kunj vihar",36,"naman15mathur@gmail.com",'Male'),
(3,"JITENDRA KUMAR SAHAIYA",'L1201','EA_006',943765802,"161, SP's residences, New Delhi",30,"jitu45kumar@gmail.com",'Male'),
(4,"Amriti ",'M1440','EA_005',943658029,"151,kunj vihar,Banglore",30,"amriti23@gmail.com",'Female'),

(5,"Mohd. Shahrukh",'M2013','EA_003',945218029,"11, JP Road, New Delhi",30,"shahrukh09@gmail.com",'Male'),
(6,"Asmi SIngh",'O3223','EA_002',94365867,"73,Ashok COlony,Mumbai",30,"asmi4singh@gmail.com",'Female'),
(7,"Shanaya Kapoor",'P2040','EA_001',84365867,"43S, Lekhraj nagar, bareilly ",32,"shanaya4kapoor@gmail.com",'Female'),
(8,"Palak kumar",'M2013','TL_006',94765867,"76, Amar nagar,Guwahati",29,"palak5kumar@gmail.com",'Female'),

(9,"Raj Kumar",'D4500','TL_005',84345867,"43,Balabh nagar, New Delhi",28,"raj05kumar@gmail.com",'Male'),
(10,"Amrit Pal ",'L1201','TL_004',84385867,"12,rakesh nagar, TiruvananthPuram",32,"amrit69pal@gmail.com",'Male'),
(11,"Nandini Aggarwal",'P2040','TL_003',84375867,"11, SP's residences, Mumbai",27,"nandini62wal@gmail.com",'Female'),
(12,"Aanandi Singh",'O3223','TL_002',74365867,"107,Rohalal Nagar, Gwlior",30,"anandi7singh@gmail.com",'Female'),

(13,"Aman Singhla",'A3302','TL_001',74485867,"6, SP's residences, New Delhi",27,"amansinghla9@gmail.com",'Male'),
(14,"Akriti Kumar",'D4500','M_007',74366767,"13,Kunj Nagar, Gaziabad",26,"akriti3kumar@gmail.com",'Female'),
(15,"Geeta Singh",'A3302','M_006',74935867,"1107,Rohalal Nagar, Gwalior",30,"geeta67@gmail.com",'Female'),
(16,"Namriti",'P2040','M_005',74845867,"13,Kunj Nagar, Lucknow",27,"namriti8@gmail.com",'Female'),
(17,"Amit singh",'L1201','M_004',74825867,"12,rakesh nagar, Port Blair",29,"amit23singh@gmail.com",'Male'),

(18,"Arvind Kumar ",'M2013','M_003',76545867,"43S, Lekhraj nagar, bareilly",23,"arvind87kumar@gmail.com",'Male'),
(19,"Manan Seth",'A3302','M_002',74848567,"43,Balabh nagar, New Delhi",30,"manan87seth@gmail.com",'Male'),
(20,"Simran MATHUR",'O3223','M_001',74375867,"161,kunj vihar, Manipur",30,"simranmathur23@gmail.com",'Female'),
(21,"Akhil Panwar",'M1440','SM_001',74945867,"46, SMriti Vihar",42,"akhil32panwar@gmail.com",'Male'),
(22,"Amrendra KUMAR SAHAIYA",'H1834','CO_006',746785867,"161, SP's residences, Aola",30,"amrendra3kumar@gmail.com",'Male'),

(23,"Smriti ",'L1201','CO_005',74849467,"178,kunj vihar,Banglore",30,"smriti63@gmail.com",'Female'),
(24,"Mohd. Raquif",'M2013','CO_004',74385867,"41, JP Road, Lucknow",30,"raquif09@gmail.com",'Male'),
(25,"Asmita Singh",'A3302','CO_003',74820867,"34,Ashok COlony,Chandigarh",30,"asmita79singh@gmail.com",'Female'),
(26,"Simran Kapoor",'O3223','CO_002',64845867,"43S, Lekhraj nagar, Pilibhit ",32,"simran8kapoor@gmail.com",'Female'),
(27,"Manvika kumar",'M1440','CO_001',84945867,"67, Amar nagar,Guwahati",29,"manvika05kumar@gmail.com",'Female'),

(28,"Tanish Mahajan",'M1440','MD_001',79045867,"43,Balabh nagar, New Delhi",28,"tanish7@gmail.com",'Male'),
(29,"Vaiibhav Thatai ",'M1440','SM_001',74944867,"12,rakesh nagar, Kanpur",32,"vaiibhav23@gmail.com",'Male'),
(30,"Manila Aggarwal",'O3223','CO_002',74878867,"11, SP's residences, Mumbai",27,"manika43@gmail.com",'Female');

INSERT INTO ATTENDANCE (ATTENDANCE_ID,EMP_ID, WORKING_MONTH, ABSENTS)
VALUES(1, 2, 'March', 5),
(2, 3, 'May', 4),
(3, 1, 'January', 10),
(4, 5, 'June', 2),
(5, 4, 'september', 5),
(6, 6, 'october', 15),
(7, 7, 'december', 8),
(8, 9, 'January', 10),
(9, 8, 'July', 2),
(10, 10, 'april', 9),
(11, 11, 'september', 6),
(12, 12, 'febraury', 8),
(13, 13, 'January', 11),
(14, 14, 'november', 12),
(15, 15, 'april', 7),
(16, 2, 'March', 5),
(17, 2, 'March', 5),
(18, 3, 'May', 4),
(19, 1, 'January', 10),
(20, 5, 'June', 2),
(21, 4, 'september', 5),
(22, 6, 'october', 15),
(23, 7, 'december', 8),
(24, 8, 'January', 10),
(25, 9, 'July', 2),
(26, 10, 'april', 9),
(27, 11, 'september', 6),
(28, 12, 'febraury', 8),
(29, 13, 'January', 11),
(30, 14, 'november', 12),
(31, 15, 'april', 1),
(32, 16, 'March', 12),
(33, 17, 'May', 6),
(34, 18, 'January', 22),
(35, 19, 'June', 13),
(36, 20, 'september', 7),
(37, 21, 'october', 5),
(38, 22, 'september', 7),
(39, 23, 'January', 16),
(40, 24, 'July', 15),
(41, 25, 'april', 11),
(42, 26, 'september', 10),
(43, 27, 'febraury', 11),
(44, 28, 'January', 12),
(45, 29, 'november', 17),
(46, 30, 'april', 20);

DESC BONUS;
INSERT INTO BONUS (`BONUS_ID`, `EMP_ID`, `EXTRA_HOURS`, `FESTIVE_BONUS`, `AMOUNT`, `months`) 
VALUES ('b1', '1', '40', '2000', '6000', 'december'),
('b2', '2', '50', '2000', '7000', 'december'),
('b3', '3', '30', '2000', '5000', 'december'),
('b4', '4', '45', '2000', '6500', 'december'),
('b5', '5', '20', '2000', '4000', 'december'),
('b6', '6', '25', '2000', '4500', 'december'),
('b7', '7', '60', '2000', '8000', 'december'),
('b8', '8', '45', '2000', '6500', 'december'),
('b9', '9', '20', '2000', '4000', 'december'),
('b10', '10', '35', '2000', '5500', 'december'),
('b11', '11', '30', '2000', '5000', 'december'),
('b12', '12', '16', '2000', '3600', 'december'),
('b13', '13', '25', '2000', '4500', 'december'),
('b14', '14', '40', '2000', '6000', 'december'),
('b15', '15', '45', '2000', '6500', 'december'),
('b16', '16', '25', '2000', '4500', 'december'),
('b17', '17', '20', '2000', '4000', 'december'),
('b18', '18', '30', '2000', '5000', 'december'),
('b19', '19', '45', '2000', '6500', 'december'),
('b20', '20', '25', '2000', '4500', 'december'),
('b21', '21', '15', '2000', '3500', 'december'),
('b22', '22', '10', '2000', '3000', 'november'),
('b23', '23', '20', '2000', '4000', 'december'),
('b24', '24', '30', '2000', '5000', 'december'),
('b25', '25', '45', '2000', '6500', 'december'),
('b26', '26', '40', '2000', '6000', 'december'),
('b27', '27', '35', '2000', '5500', 'december'),
('b28', '28', '15', '2000', '3500', 'december'),
('b29', '29', '45', '2000', '6500', 'december'),
('b30', '30', '40', '2000', '6000', 'december');

SHOW TABLES;

-- truncate PAYROLL_REPORT;
INSERT INTO PAYROLL_REPORT(EMP_ID,DEPT_ID,DESIGNATION_ID,SALARY_ID,BONUS_ID,TOTAL_PAY)
SELECT E.EMP_ID,D.DEPT_ID,DE.DESIGNATION_ID,BS.SALARY_ID,B.BONUS_ID,BS.SALARY+B.AMOUNT
FROM  EMPLOYEE E
INNER JOIN DEPARTMENT D ON E.DEPT_ID=D.DEPT_ID
INNER JOIN DESIGNATION DE ON DE.DEPT_ID=D.DEPT_ID && DE.DESIGNATION_ID=E.DESIGNATION_ID
INNER JOIN BASIC_SALARY BS ON BS.DEPT_ID=D.DEPT_ID && BS.DESIGNATION_ID=DE.DESIGNATION_ID
INNER JOIN BONUS B ON B.EMP_ID=E.EMP_ID;

