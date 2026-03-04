-- DAY 2 (HW) completed

use college;

-- task 1 (Fetch all records)
select * from student;

-- task 2 (Fetch only name and branch.)
select name,branch from student;

-- task 3 (Fetch students whose age > 20.)
select name,age from student 
where age > 20;

-- task 4 (Fetch students from branch = 'CS'.)
select name,branch from student 
where branch = 'cs';

-- task 5 (Fetch students whose age between 18 and 22.)
select name,age from student
where age between 18  and 20;-- output is blank as there are no records with specified condition

-- task 6 (Fetch students whose branch is either 'CS' or 'IT'.)
select name,branch from student 
where branch = 'cs' or branch = 'it';

-- task 7 (Fetch students whose name starts with 'A'.)
select name from student 
where name like 'A%';

-- task 8 (Fetch students whose email ends with 'gmail.com'.)
select name,email from student 
where email like '%@example.com'; 

-- task 9 (Display students ordered by age ascending.)
select name,age from student 
order by age asc;

-- task 10 (Display students ordered by age descending.)
select name,age from student 
order by age desc;