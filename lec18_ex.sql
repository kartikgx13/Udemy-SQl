--assignment 5 subqueries

--the students table is not directly related to the courses table
--because firstly is is related to the enrollment table and enrollment
--table is then related to courses table so we can say that it is related to 
--it indirectly

--Using subqueries only, write a SQL statement that returns the names of
--those students that are taking the courses Physics and US History.
select student_name from students
where student_no in (
select student_no
from student_enrollment
where course_no in (
  select course_no from student_enrollment 
	where course_no in 
	(select course_no from courses
	 where course_title='Physics' or course_title='US History')
)
)

--Using subqueries only, write a query that returns the name of 
--the student that is taking the highest number of courses.
select student_name from students
where student_no in (
select student_no
from student_enrollment
group by student_no
order by count(*) desc
limit 1
)

--Write a query to find the student that is the oldest.
--You are not allowed to use LIMIT or the ORDER BY clause to solve this problem
select student_name
from students
where age in (
 select max(age) from students 
)




