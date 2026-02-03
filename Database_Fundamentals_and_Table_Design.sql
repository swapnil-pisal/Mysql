
-- Assignment 1: Database Fundamentals and Table Design

-- Part A: Theory

-- Answer the following questions briefly and clearly:

-- 1. What is a database in MySQL? Why is it important to organize data into databases?
-- ans -: 1) database it is collection , storing , managing , accesing , retiving the data .
-- 	   2) It is easy to acesses and view the data .
--        
--        

-- 2. Explain the difference between INT and BIGINT. When would you prefer one over the
-- other?
-- ans -: 1) int -: it can be used to store the integer number in the database or table .
-- 			eg. id , roll no , etc.
-- 	   2) bigint it can also stored the numberin the database or table but it can store the big number.
-- 			eg. phone number , adhar number



-- 3. What is a PRIMARY KEY? Mention two rules that a primary key must follow.
-- ans -: 1) Primar key it is unique key .
-- 	   2) It is not repeated use
--        3) Null value not access value must be fiiled
--           eg. Id , Roll number 
--           
--           

-- 4. Differentiate between CHAR and VARCHAR with one practical example.
-- ans -: 1) char it use the when charcter size known
-- 			eg. division char(1)
-- 	   2) varchar it use when chacter sige are not known
-- 			name varchar(30)
--             

-- 5. What is the purpose of NOT NULL and UNIQUE constraints?
-- ans -: 1) NOT NULL -: value should fill null values not insert into database or table
-- 	   2) unique -: it not repeated values insert into table , null value not in table
-- 						eg. primary key



-- Part B: SQL Coding


-- Perform the following tasks using MySQL:

-- 1. Create a database named company_db.

create database company_db;



-- 2. Display all available databases.
show databases;


-- 3. Switch to the company_db database.
use company_db;


-- 4. Create a table named employees with the following structure:
-- ○ emp_id – INT, PRIMARY KEY
-- ○ emp_name – VARCHAR(50), NOT NULL
-- ○ email – VARCHAR(100), UNIQUE
-- ○ department – CHAR(10)
-- ○ salary – INT
-- ○ joining_date – DATE
-- ○ created_at – DATETIME

create table employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
department CHAR(10),
salary INT,
joining_date DATE,
created_at DATETIME
)



-- 5. Insert at least 5 employee records into the table.


insert into employees values
(1,"Swapnil pisal","swapnilpisal2004@gmail.com","COMP",10000,"2026-01-01","2025-02-02"),
(2,"Vijay Jadhav","vijya12@gmail.com","AI",20000,"2025-01-11","2026-02-12"),
(3,"Avinash Veer","avya123@gmail.com","COMP",30000,"2026-12-01","2024-02-02"),
(4,"Suraj Nevase","suraj143@gmail.com","AIML",40000,"2026-09-01","2025-02-23"),
(5,"Tushar Jadhav","tushar67@gmail.com","ENTC",50000,"2023-01-01","2025-11-12");



-- 6. Display all records from the employees table.

select * from employees;



-- 7. Use the DESCRIBE command to verify the table structure.

describe employees;


-- 8. Drop the table employees.

drop  table employees;



-- 9. Drop the database company_db

drop database company_db;

