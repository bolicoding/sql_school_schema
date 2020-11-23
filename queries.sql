use school_schema;

SELECT *
FROM student;

SELECT *
FROM course;

SELECT *
FROM professor;

-- query to get avg grade-- 
SELECT professor_name, AVG(grade)
FROM professor p JOIN grade g 
ON g.professor_professor_id = p.professor_id
WHERE professor_professor_id = 1;

SELECT professor_name, AVG(grade)
FROM professor p JOIN grade g 
ON g.professor_professor_id = p.professor_id
WHERE professor_professor_id = 2;

SELECT professor_name, AVG(grade)
FROM professor p JOIN grade g 
ON g.professor_professor_id = p.professor_id
WHERE professor_professor_id = 3;

-- query top grade for students-- 
SELECT student_student_id, max(grade)
FROM grade
GROUP BY student_student_id;

-- query for grouping by class

SELECT student_name, course_name
FROM student s
JOIN grade g
ON g.student_student_id = s.student_id
JOIN course c
ON c.course_id = g.course_course_id
ORDER BY course_id;

-- summary report-- 
SELECT course_name, AVG(grade)
FROM grade g
JOIN course c
ON g.course_course_id = c.course_id
GROUP BY course_course_id
ORDER BY AVG(grade) DESC;