--subquery
--it is query within a query

--simple example
select * from employees
where department not in (select department from department)

--using it in from clause
select *
from (select * from employees where salary > 150000) a
--here we give an alias named 'a' to refer to the source data
--because here the source is not an actual column it just looks like
--a column this is required mainly in the from clause

--another use of the above alias
--so here only the first_name and salary will be displayed
select a.first_name,a.salary
from (select * from employees where salary > 150000) a

--we can also rename the columns again
select a.e_name,a.salary_det
from (select first_name e_name,salary salary_det from employees where salary > 150000) a

--since we have renamed the columns the query will work even
--without the dot operator
select e_name,salary_det
from (select first_name e_name,salary salary_det from employees where salary > 150000) a

--but suppose if we mention another alias we will have to use the dot 
--operator again
select e_name,salary_det
from (select first_name e_name,salary salary_det from employees where salary > 150000) a,
     (select department e_name from department) b







