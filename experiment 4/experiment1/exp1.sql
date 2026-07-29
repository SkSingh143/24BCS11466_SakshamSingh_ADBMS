-- Write a query to do the following:

-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.
select * from student as s1
FULL OUTER JOIN course as s2 
on s1.Course_id = s2.Course_id