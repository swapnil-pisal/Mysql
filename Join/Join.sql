-- create the database

create database da_ds;


-- use to the database

use da_ds;


-- Cheak the previous Tables

show tables;


-- create the table students

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);


-- Insert the values in the student table

insert into students(student_id,student_name,email,join_date) values 
(1,"angel","angel@gmail.com","2025-08-15"),
(2,"raghav","raghav@gmail.com","2025-08-17"),
(3,"prashant","prashant@gmail.com","2025-08-19"),
(4,"sidhaanth","sidhaanth@gmail.com","2025-08-29");


-- show the filled value in the table

select * from students;


-- create the table courses

CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    duration_months INT,
    fees DECIMAL(8,2)
);


-- insert the values in the courses table 

insert into courses(course_id,course_name,duration_months,fees) values 
(11,"da",3,10000),
(12,"ds",4,15000),
(13,"full stack",6,20000),
(14,"reactjs",5,12000),
(15,"digital marketing",3,15000);


-- check the table courses

select * from courses;


-- create the table entrollment


CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


-- insert the value into the entrollment table

insert into enrollments(enrollment_id, student_id, course_id, enrollment_date) values
(101,1,12,"2016-01-15"),
(102,2,15,"2016-01-20"),
(103,3,14,"2016-01-15"),
(104,4,15,"2016-01-15"),
(105,1,13,"2016-01-15"),
(106,2,15,"2016-01-15"),
(107,3,12,"2016-01-15"),
(108,4,13,"2016-01-15"),
(109,1,14,"2016-01-15"),
(110,2,13,"2016-01-20"),
(111,1,15,"2016-01-15"),
(112,2,11,"2016-01-15");


-- to show the all column of the entrollment table

select * from enrollments;


-- show all the table

show tables;


-- join the two tables students and enrollments

select * from students as s
join enrollments as e on s.student_id = e.student_id;


-- join the table only the where student id is 1

select * from students as s
join enrollments as e on s.student_id = e.student_id
where s.student_id = 1;


-- count the student where the student id is 1

select count(*) from students as s
join enrollments as e on s.student_id = e.student_id
where s.student_id = 1;


-- total courses get by student id 1 

select count(*) as total_courses from students as s
join enrollments as e on s.student_id = e.student_id
where s.student_id = 1; 


-- check the which column are in the courses table

select * from courses;


-- total fees of the couse id 12

select sum(fees) as total_fees from courses as c
join enrollments as e on c.course_id = e.course_id
where e.course_id=12;


-- select 3 column couse id , course name , sum(fees) of  top 3 hihest fees 

select e.course_id, c.course_name, sum(fees) from courses as c 
join enrollments as e on c.course_id = e.course_id
group by e.course_id
order by sum(fees) desc
Limit 3;


-- insert two more courses into the courses table

insert into courses(course_id,course_name,duration_months,fees) values 
(16,"robotics",6,50000),
(17,"Quantum Physics",12,150000);


-- select 3 column couse id , course name , sum(fees) of hihest fees to lowest fees

select e.course_id, c.course_name, sum(fees) from courses as c 
join enrollments as e on c.course_id = e.course_id
group by e.course_id, c.course_name
order by sum(fees) desc;


-- Left Join select 3 column couse id , course name , sum(fees) of hihest fees to lowest fees

select e.course_id, c.course_name, sum(fees) from courses as c 
left join enrollments as e on c.course_id = e.course_id
group by e.course_id, c.course_name
order by sum(fees) desc;
















