use college;
-- 1. Display student name, subject and marks using INNER JOIN.
select student.name,marks.sub,marks.marks from student
inner join marks
on student.id = marks.student_id;

-- 2. Display students who scored more than 70 marks.
select student.name,marks.marks from student
join marks
on student.id = marks.student_id
where marks.marks > 70;

-- 3. Display students from branch = 'CSE' along with their marks.
select student.name,student.branch,marks.sub,marks.marks from student
join marks
on student.id = marks.student_id
where student.branch = 'CS';

-- 4. Display students who scored less than 50.
select student.name,marks.sub,marks.marks from student
join marks
on student.id = marks.student_id
where marks.marks < 70;

-- 5. Display students and marks only for subject = 'DSA'.
select student.name,marks.marks from student
join marks
on student.id = marks.student_id
where marks.sub = 'DSA';

-- 6. Display students who do NOT have marks (use LEFT JOIN).
select name from student
left join marks
on student.id = marks.student_id
where marks.marks is null;