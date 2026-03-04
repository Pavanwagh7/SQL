-- DAY 1 (HW) completed
use college;

-- task 1
create table student (
	id int primary key,
    name varchar(50) not null,
    age int,
    branch varchar(50),
    email varchar(50) unique,
    created_at datetime default CURRENT_TIMESTAMP
);

-- task 2
insert into student (id,name,age,branch,email)
values (1,'Pavan Wagh',22,'ETC','pavan@example.com'),
(2,'Saurav Jamadar',21,'CS','saurav@example.com'),
(3,'Kiran Wagh',25,'QC','kiran@example.com'),
(4,'Aniket Bhamare',23,'civil','aniket@example.com'),
(5,'Shantilal Wagh',53,'carpentry','shantilal@example.com');

select * from student;

-- task 3
-- change the Branch of id 3 from QC to quality control
update student 
set branch = 'quality control' 
where id = 3;
-- select * from student;

-- task 4
update student
set age = 55
where id = 5;
select * from student;

-- task 5 -> delete one student record
delete from student 
where id = 5; -- -->only specified record is deleted
-- DELETE FROM student; --> all the rows will be deleted if this executes
select * from student;

-- insert deleted row again 
insert into student (id,name,age,branch,email)
values (5,'Shantilal Wagh',55,'carpentry','shantilal@example.com');
select * from student;