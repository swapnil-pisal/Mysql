-- Assignment 2: Student Record Management System 

-- Part A: Theory 
-- Answer the following questions: 

-- 1. What is the difference between DATE and DATETIME? 
-- ans -: 1) Date -: it can store only the year , month , day (yyyy-mm-dd) 
-- 				  it use when store the birth_date .
-- 					Eg. ("2026-02-05") 
-- 	   2) Datetime -: it can store the date as well as the time include hour , minute , second (yyyy-mm-dd hh-mm-ss) 
-- 				  it use when store the bank transaction .
-- 					Eg. ("2026-02-05-02-02-20")


-- 2. Why should email or phone number fields often be marked as UNIQUE? 
-- ans -: 1) it not the duplicate .
-- 	   2) The number and email as the unique the not repeated use not allow because they unique values. 
--        
--        
-- 3. Can a table have multiple UNIQUE constraints? Explain
-- ans -: yes , every table as unique key
-- 		Eg. 1) Id
--             2) Email

-- 4. What happens if you try to insert a NULL value into a NOT NULL column? 
-- ans -: It gives error.


-- 5. Why is proper data type selection important while designing tables? 
-- ans -: 1) storing the values efficiently.
-- 	   2) avoid the extra space .


-- Part B: SQL Coding 
-- Perform the following tasks: 


-- 1. Create a database named student_db. 

create database student_db;


-- 2. Show all databases  

show databases;


-- 3)switch to student_db

use student_db;



-- 4. Create a table named students with the following columns:

create table students(
student_id INT PRIMARY KEY, 
full_name VARCHAR(50) NOT NULL, 
email VARCHAR(100) UNIQUE, 
phone_number BIGINT, 
course VARCHAR(30), 
date_of_birth DATE, 
registration_date DATETIME 
);



-- 4. Insert at least 5 student records.

insert into students values
(1,"Swapnil Pisal","swapnilpisal2004@gmail.com",9370172934,"Data Science","2004-10-14","2026-01-01"),
(2,"Vija Jadhav","vijay321@gmail.com",9874563210,"Machine Learning","2003-11-12","2025-01-21"),
(3,"Avinash Veer","avinash2323@gmail.com",9635287410,"Full Stack","2004-02-15","2026-02-01"),
(4,"Suraj nevase","suraj56@gmail.com",9785462301,"Machine Learning","2005-10-04","2026-01-23"),
(5,"Tushar Jadhav","tushar4545@gmail.com",9635421808,"Data Science","2004-10-23","2026-12-21");



-- 5. Display all records from the students table.

select * from students;



-- 6. Verify the table structure using DESCRIBE.

describe table students;


-- 7. Drop the database student_db.

drop database student_db;



 
 
 
 
