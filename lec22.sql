--correlated subqueries

select first_name,salary
from employees
where salary > (select avg(salary) from employees)
--a correlated subquery is a nested query which uses values from outer query
--the above example is not a correlated subqeury

select first_name,salary
from employees e1
where salary > (select round(avg(salary))
			   from employees e2 where e1.department=e2.department)
--the time complexity is very high as inner query is executed for each row of the
--outer query

--using it in the select clause
select first_name,department,salary,(select round(avg(salary))
			   from employees e2 where e1.department=e2.department)
from employees e1

--problem1
--return those departments who have more than 30 employees
select distinct department
from employees e1
where 38 < (select count(*) from employees e2 where e1.department=e2.department)
--its better to use the departments table because it is smaller hence it will
--be quicker

--problem2
--in the same problem above return the highest salary for that department
select distinct department,(select max(salary) from employees e2 where e1.department=e2.department)
from employees e1
where 38 < (select count(*) from employees e2 where e1.department=e2.department)

--problem3
select department,first_name,salary,
case when salary=max_by_dept then 'Highest'
     when salary=min_by_dept then 'Lowest'
end as salary_in_dept
from(
select department,first_name,salary,
	(select max(salary) from employees e2 where e1.department=e2.department) as max_by_dept,
    (select max(salary) from employees e2 where e1.department=e2.department) as max_by_dept
from employees e1
order by department) a
where salary=max_by_dept or salary=min_by_dept
  







