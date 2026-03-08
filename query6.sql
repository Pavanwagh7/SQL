use college;

-- 1. Display all students and their marks using LEFT JOIN.
select student.id,student.name,marks.marks from student
left join marks
on student.id = marks.student_id; 

-- 2. Display student name, subject and marks using LEFT JOIN.
select student.name,marks.sub,marks.marks from student
left join marks
on student.id = marks.student_id;

-- 3. Display all marks along with student names using RIGHT JOIN.
select marks.marks,student.name from student
right join marks
on marks.student_id = student.id; 

-- 4. Find students who do NOT have any marks.
select student.id,student.name,marks.marks from student
left join marks
on student.id = marks.student_id where  marks.marks is null;

-- 5. Display students from branch = 'CSE' along with their marks using LEFT JOIN.
select student.name,marks.marks from student
left join marks
on student.id = marks.student_id
where student.branch = 'CS';