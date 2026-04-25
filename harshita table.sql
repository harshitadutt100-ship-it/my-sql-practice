create database Harshita_practice;
use Harshita_practice;
show databases;
show tables;

create table students(
id int primary key auto_increment,
name varchar(100),
age int,
gender ENUM('MALE','FEMALE','OTHER'),
email varchar(100),
course varchar(100),
marks decimal(5,2),
admission_date date
);

insert into students (name,age,gender,email,course,marks,admission_date)
values
('Rahul',23,'Male','rahul23@gmail.com','BBA',67.50,'2026-09-21'),
('Sneha',25,'Female','sneha234@gmail.com','BCA',85.78,'2026-09-12'),
('Priyanka',21,'Female','priyanka342@gmail.com','BA',79.89,'2026-06-30'),
('Vansh',20,'Male','vansh908@gmail.com','MBA',67.45,'2026-03-23'),
('Ram',18,'Male','ram675@gmail.com','BBA',50.56,'2026-05-25'),
('Manisha',26,'Female','manisha123@gmail.com','BBA',89.90,'2026-08-25'),
('Rakesh',29,'Male','rakesh256@gmail.com','BBA',67.89,'2026-04-29');

SHOW TABLES;

select * from students;

alter table students
add  status varchar(50);

alter table students
ADD temp_col1 INT FIRST;

ALTER TABLE students
ADD COLUMN temp_col2 VARCHAR(50) after temp_col1;

ALTER TABLE students
MODIFY COLUMN temp_col2 BIGINT;

alter table students
rename column temp_col2 to f_name;

ALTER TABLE students
DROP primary key;


alter table students
drop column f_name;

alter table students
drop column temp_col1;

alter table students
drop column status;

select * from students;
insert into students (name,age,gender,email,course,marks,admission_date)
values
('Johan',21,'MALE','johan231@gmail.com','BBA',98.78,'2026-02-20');

update students
set
gender = 'female',
course = 'BBA'
where id = 8;

update students
set
name = 'Ramesh',
age = 20,
gender = 'male',
email = 'ramesh20@gmail.com',
course = 'BCA',
marks = 45.89
where id = 5;

select * from students;

alter table students
add column salary bigint;

insert into students(name,age,gender,email,course,marks,admission_date,salary)
values
('Rahul',23,'Male','rahul23@gmail.com','BBA',67.50,'2026-09-21',25000),
('Sneha',25,'Female','sneha234@gmail.com','BCA',85.78,'2026-09-12',35000),
('Priyanka',21,'Female','priyanka342@gmail.com','BA',79.89,'2026-06-30',25000),
('Vansh',20,'Male','vansh908@gmail.com','MBA',67.45,'2026-03-23',45000),
('Ram',18,'Male','ram675@gmail.com','BBA',50.56,'2026-05-25',20000),
('Manisha',26,'Female','manisha123@gmail.com','BBA',89.90,'2026-08-25',30000),
('Rakesh',29,'Male','rakesh256@gmail.com','BBA',67.89,'2026-04-29',25000);

UPDATE students
SET salary = 50000
WHERE id = 1;

update students
set salary = 25000
where id = 2;

update students
set salary = 32000
where id = 3;

update students
set salary = 22000
where id = 4;

update students
set salary = 30000
where id =5;

update students
set salary = 21000
where id =6;

update students
set salary = 23000
where id = 7;

update students
set salary = 56000
where id = 8;

select * from students;

alter table students
add column department varchar(50);

update students
set
department = 'MARKETING'
where id = 8;

update students
set
salary = case
when department = 'IT' then salary + 400
when department = 'hr' then salary + 500
else salary 
end;

set sql_safe_updates=0;

select * from students;

alter table students
add column Surname varchar(50) after name;

update students
set 
surname = 'gupta'
where id = 8;

select * from students
where department = 'hr';

select * from students;

select * FROM students WHERE department != 'IT';
SELECT * FROM students WHERE department <> 'marketing';

