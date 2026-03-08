-- DAY 5 (HW) completed
Use college;

-- Create two tables.
-- Table 1: students(already we have created students table with sufficient entries)
-- Columns:
-- - id (Primary Key)
-- - name
-- - branch
-- Insert at least 5 records.

-- Table 2: marks
-- Columns:
-- - student_id
-- - subject
-- - marks
-- Insert marks for some students.
create table marks (
	student_id int ,
    sub varchar(20),
    marks float 
);

alter table marks
add constraint marks 
check (marks <= 100);

insert into marks (student_id,sub,marks)
values (1,'Mathematics',99),
	(2,'Integrated Circuits',90),
	(3,'DBMS',89),
	(4,'Integrated Circuits',78),
	(5,'Mathematics',79),
	(6,'Integrated Circuits',90),
	(7,'DBMS',89),
	(8,'Image Processing',50),
	(9,'Image Processing',67),
	(10,'DBMS',90),
	(11,'Integrated Circuits',80),
	(12,'DSA',70),
	(13,'DSA',60),
    (14,'music',60),
    (15,'dance',60);
    

delete from marks
where student_id = 5;    
select * from marks;


-- Now write queries for:

-- 1. Display student name and marks using INNER JOIN.
select student.name,marks.marks
from student 
inner join marks
on student.id = marks.student_id;

-- 2. Display student name, subject and marks.
select student.name,marks.sub,marks.marks 
from student
inner join marks
on student.id = marks.student_id;

-- 3. Display students who have marks greater than 70.
select student.name,marks.marks from student
join marks 
on  student.id = marks.student_id
where marks.marks > 70;

-- 4. Display students from branch = 'CSE' along with their marks.
select name,branch from student
where branch = 'CS';

 