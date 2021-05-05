CREATE DATABASE employee;
SHOW databases;
use employee;
CREATE table employee(emp_no INT NOT NULL,
emp_name VARCHAR(20) NOT NULL,
DOB date NOT NULL, 
address varchar(50) NOT NULL,
doj date NOT NULL,
 mobile_no varchar(100),
 dept_no varchar(20),
 salary INT NOT NULL,
 PRIMARY KEY(emp_no),
FOREIGN KEY (dept_no) REFERENCES department(dept_no)
 );

 CREATE table department(dept_no VARCHAR(20),
 dept_name VARCHAR(50),
 location VARCHAR(100),
PRIMARY KEY(dept_no)
 );

SHOW tables;
describe employee;
 
select * from employee;
insert into department(dept_no, dept_name, location) values (12,'cs','3-floor');
insert into department(dept_no, dept_name, location) values (13,'BBA','2-floor');
insert into department(dept_no, dept_name, location) values (11,'Mec','1-floor');
insert into department(dept_no, dept_name, location) values (21,'mca','4-floor');
insert into department(dept_no, dept_name, location) values (10,'chem','3-floor');

ALTER TABLE employee  ADD Designation VARCHAR(100);
ALTER TABLE department  DROP COLUMN location;

DROP TABLE employee;
DROP TABLE department;
DROP DATABASE employee;