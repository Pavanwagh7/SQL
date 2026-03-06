-- DAY 4 (HW) completed

-- Use the same database (college).
-- 1. Create a new table named: courses
-- Columns:
-- - course_id (Primary Key)
-- - course_name (NOT NULL)
-- - duration_months
-- - fee (DEFAULT 10000)

use college;
create table courses(
	course_id int primary key,
    course_name varchar(50) not null,
    durations_months int,
    fee double default 10000
);
-- Insert at least 4 course records.
insert into courses (course_id,course_name,durations_months)
values(1,'DSA',8),
	(2,'Mathematics',8),
	(3,'Image Processing',8),
	(4,'DBMS',8),
	(5,'Integarted Circuits',8);



-- Now perform the following operations:

-- 1. Add a new column: instructor_name
alter table courses 
add instructor_name varchar(50);

-- 2. Add UNIQUE constraint on course_name
alter table courses
add constraint course_name unique (course_name);

-- 3. Update instructor_name for some records
update courses
set instructor_name = 'Prof. Gojo Saturo'
where course_id = 1;

update courses
set instructor_name = 'Prof. Jamir Shaikh'
where course_id = 2;

update courses
set instructor_name = 'Prof. Prashant Goad'
where course_id = 3;

update courses
set instructor_name = 'Prof. Pravin Bhole'
where course_id = 4;

update courses
set instructor_name = 'Prof. Smital Patil'
where course_id = 5;

-- 4. Drop the column duration_months
alter table courses
drop column durations_months;

-- 5. Display all records
select * from courses;