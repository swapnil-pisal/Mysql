
-- Create a database named student_course_db

create database student_course_db;

-- show all databases which can be created

show databases;

-- Use the database student_course_db for all subsequent operations

use student_course_db;

-- Create a table named students with appropriate data types and constraints. 

create table students(
student_id INT PRIMARY KEY,
full_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone_number BIGINT UNIQUE,
course_name VARCHAR(30), 
date_of_birth DATE,
registration_date DATETIME );

-- to check the table create or not and how many table in database

show tables;

-- Insert the provided sample data (20 rows) into the table.

insert into students values
(1,"Swapnil Pisal","swapnilpisal2004@gmail.com",9370172934,"DS","2004-10-14","2026-01-01"),
(2,"Avinash Veer","avinashveer34@gmail.com",8370175937,"ML","2005-11-05","2025-02-01"),
(3,"Vijay Jadhav","vijayjadhav24@gmail.com",9270142934,"DS","2006-11-05","2025-02-01"),
(4,"Vinayak Phadhare","vinapadhare122@gmail.com",9689659895,"AL","2005-01-05","2025-03-01"),
(5,"Nikhil Thombare","nikhilt33@gmail.com",9856473829,"ML","2005-11-05","2025-02-01"),
(6,"Atharv methre","atarv12@gmail.com",9370122934,"DS","2005-11-05","2025-02-02"),
(7,"Vivek Jadhav","vivya12@gmail.com",8370172934,"DS","2005-11-05","2025-02-01"),
(8,"Suraj Nevase","suraj67@gmail.com",8370172974,"DS","2005-11-05","2025-12-01"),
(9,"Tushar Jadhav","tusharj33@gmail.com",8870172939,"ML","2005-11-05","2025-02-01"),
(10,"Pruthviraj Shinde","pruthvi112@gmail.com",7370172924,"DS","2005-11-05","2025-02-01"),
(11,"Aniket Mulik","anya12@gmail.com",9965172934,"ML","2005-11-05","2025-02-01"),
(12,"Sanchit Jagtap","sanchit34@gmail.com",9370172569,"ML","2005-11-05","2025-02-01"),
(13,"Shushat Kale","sushya@gmail.com",7870172939,"DS","2005-11-05","2025-02-01"),
(14,"Indrajit Kambale","indra45@gmail.com",7870172934,"DS","2005-11-05","2025-02-01"),
(15,"Vinayak Thakar","vinya34@gmail.com",7370172934,"DS","2005-11-05","2025-02-01"),
(16,"Atarv Londe","atharvlonde@gmail.com",9970172934,"ML","2005-11-05","2025-02-01"),
(17,"Sreyash Pisal","shreya52@gmail.com",8870172938,"DS","2005-11-05","2025-02-01"),
(18,"Vikas Patil","vikya23@gmail.com",9570172934,"DS","2005-11-05","2025-02-01"),
(19,"Sujan Kumbar","sujay19@gmail.com",8870172934,"ML","2005-11-05","2025-02-01"),
(20,"Sahil Chaougule","sahilc3535@gmail.com",9857463829,"DS","2005-11-05","2025-02-01")

-- Verify the data using SELECT queries. 

select * from students;