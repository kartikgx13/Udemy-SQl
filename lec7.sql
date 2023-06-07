--grouping functions
--min max avg
--all the functions which we saw until now
--they were all single row functions
--but min max avg are grouping functions as they will take multiple
--rows as input and give one row as output

select max(salary)
from employees

select min(salary)
from employees

select round(avg(salary))
from employees

--count method
select count(employee_id)
from employees

select count(email)
from employees
--this will not count the null values

select count(*)
from employees

select sum(salary)
from employees

--calculating total salary per department
select sum(salary)
from employees
where department='Clothing'









