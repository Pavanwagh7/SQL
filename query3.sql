-- Day 3 (HW)
use college;

-- 1. Count total number of students.
select count(*) from student;

-- 2. Find average age of students.
select avg(age) from student;

-- 3. Find maximum age.
select max(age) from student;

-- 4. Find minimum age.
select min(age) from student;


-- 5. Count number of students in each branch.
select count(*),branch from student 
group by branch;

-- 6. Find average age branch-wise.
select avg(age),branch from student
group by branch; 

-- 7. Display branch names where total students are more than 1. (Use HAVING)
select count(branch),branch from student 
group by branch
having count(branch) > 1; 