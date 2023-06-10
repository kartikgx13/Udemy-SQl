--ordering data in window frames

--running salary over a period of time
select first_name,hire_date,salary from employees
order by hire_date

--calculating running total by hire_date
select first_name,hire_date,salary,
sum(salary) over(order by hire_date range between unbounded preceding and current row) 
as running_total
from employees

select first_name,hire_date,salary,
sum(salary) over(order by hire_date) 
as running_total
from employees
--both sytnax will work because by default it is unbounded

select first_name,hire_date,salary,department,
sum(salary) over(partition by department order by hire_date) 
as running_total
from employees

select first_name,hire_date,salary,department,
sum(salary) over(partition by department order by hire_date rows between 1 preceding and current row) 
as running_total
from employees

select first_name,employee_id,salary,department,
sum(salary) over(partition by department order by employee_id) 
as running_total
from employees









