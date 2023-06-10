--rank,first and ntile functions

select first_name,email,department,salary,
rank() over(partition by department order by salary desc)
from employees
--the rank function ranks the employees according to their salary
--it will rank on basis of the column specified in the order by inside over clause

--suppose we want to return all the employees with rank 8 in each dept
select * from(
select first_name,email,department,salary,
rank() over(partition by department order by salary desc)
from employees
) a
where rank=8
--the above query wont work without the subquery because the rank column
--is processed after the where clause hence rank wont be identified without a 
--subquery

--suppose we want to group certain salary amts as ranks 
--then we need to use ntile method
select first_name,email,department,salary,
ntile(5) over(partition by department order by salary desc) as salary_bracket
from employees

--returns first value of the column passed
select first_name,email,department,salary,
first_value(salary) over(partition by department order by salary desc) as salary_bracket
from employees

select first_name,email,department,salary,
nth_value(salary,8) over(partition by department order by salary desc) as salary_bracket
from employees


