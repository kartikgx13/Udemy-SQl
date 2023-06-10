--lead and lag functions
--they allow us to work with other records relative to the current record

--simple example
select first_name,last_name,salary,
lead(salary) over() next_salary
from employees
--the last entry of this column will be null because next does not exist

--lag example
select first_name,last_name,salary,
lag(salary) over() next_salary
from employees
--first entry for this column would be null

--use case for the above functions
select department,last_name,salary,
lag(salary) over(order by salary desc) next_higher_salary
from employees

--next_lower
select department,last_name,salary,
lead(salary) over(order by salary desc) next_lower_salary
from employees

select department,last_name,salary,
lead(salary) over(partition by department order by salary desc) next_lower_salary
from employees


