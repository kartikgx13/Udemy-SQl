--window functions
--also referred to as analytical functions

select * from employees

--until now we dont have any method to combine grouping 
--and non-grouping columns
--what if we want to display the first_name,department and no. of employees
--in that department what we can do is that

select first_name,department,(select count(*) from employees e1 where e1.department=e2.department)
from employees e2
group by department,first_name

--the above correlated subquery is pretty expensive for time complexity

--we will then use the window functions
--the over() clause
select first_name,department,
count(*) over(partition by department)
from employees e1

--seeing the difference between the above two methods
(select first_name,department,(select count(*) from employees e1 where e1.department=e2.department)
from employees e2
group by department,first_name)
except
select first_name,department,
count(*) over(partition by department)
from employees e1
--0 entries means no difference

--calculating salary per department
select first_name,department,
sum(salary) over(partition by department)
from employees e1

select first_name,department,
sum(salary) over()
from employees e1

--we can also partition over multiple columns
select region,department,
count(*) over(partition by department) dept_count,
count(*) over(partition by e1.region_id) reg_count
from employees e1,regions r
where e1.region_id=r.region_id

--note
select first_name,department,count(*) over()
from employees
where region_id=3
--as we can se count is 145 instead of 1000 this means the over function
--runs towards the end of the query like the order by clause

--order of execution
-- from-->where-->select

select first_name,department,count(*) over(partition by department)
from employees
where region_id=3


