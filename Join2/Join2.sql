-- firstly create the database 

create database join2;

-- use the  join2 database

use join2;

-- create the table students

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
course_id INT
);


-- create the table courses

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(50)
);


-- create the table pyments

CREATE TABLE pyments(
pyment_id INT PRIMARY KEY,
student_id INT,
ammount INT
);


-- show all the tables in the databases join2

SHOW TABLES;


-- insert values into students table

INSERT INTO students VALUES
(1,"Swapnil",101),
(2,"Vijay",102),
(3,"Ram",101),
(4,"Seeta",NULL),
(5,"Angel",NULL),
(6,"Geeta",NULL); 


-- insert values into courses table

INSERT INTO courses VALUES
(101,"Data Science"),
(102,"Machine Learning"),
(103,"Data Analytics"); 


-- insert values into pyments table

INSERT INTO pyments VALUES
(1,1,5000),
(2,2,6000),
(3,1,2000); 

-- select all valuse from table students

select  * from students;


-- select all valuse from table courses

select  * from courses;


-- select all valuse from table pyments

SELECT  * FROM courses;


-- now joins
-- join is also called inner join
-- it gives only matching condition
-- join  
SELECT s.name , c.course_name
from students as s
join  courses as c on s.course_id = c.course_id;


-- Right join - All from right table and left table value not then use null
 
SELECT s.name , c.course_name
FROM students AS s
RIGHT JOIN  courses AS c ON s.course_id = c.course_id; 


-- Right join - All from right table and left table value not then use null
 
SELECT c.course_name , s.name
FROM students AS s
RIGHT JOIN  courses AS c ON s.course_id = c.course_id;



-- Left join - All selected column from left table and right side table value not then use null
 
SELECT s.name , c.course_name
FROM students AS s
LEFT JOIN  courses AS c ON s.course_id = c.course_id;


-- full Outer join = combine the left + right join

SELECT s.name , c.course_name
FROM students AS s
LEFT JOIN  courses AS c ON s.course_id = c.course_id

UNION

SELECT c.course_name , s.name
FROM students AS s
RIGHT JOIN  courses AS c ON s.course_id = c.course_id;


-- i want those student we not paid ammount
-- use left join

SELECT s.name , p.ammount
FROM students AS s
LEFT JOIN  pyments AS p ON s.student_id = p.student_id
WHERE p.ammount is null; 



 
