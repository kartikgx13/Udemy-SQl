--sorting the rows in descending order
select * 
from employees
order by employee_id desc

select *
from employees
order by department desc

select *
from employees
order by salary desc

--suppose we want a distinct departments list
select distinct department
from employees
order by 1
limit 10

--alternate to limit
--fetch first number rows only
--we cannot try last rows using this query
--for that we will have to use subqueries which we will learn later on
select distinct department
from employees
order by 1
fetch first 10 rows only

--we can also rename the columns such as 
--this is useful in reporting things
select distinct department as sorted_dept
from employees
order by 1

--another example of renaming
select department,salary as "Yearly Salary"
from employees




