--the union clause

select department
from employees
union
select department
from department
--the union clause will stack the data of the queries on top of each other
--and remove any duplicates if present

select department
from employees
union all
select department
from department
--if we use union all it keeps the duplicates

select distinct department
from employees
union all
select department
from department

--while using union the only thing we need to make sure is that
--no. of columns in both queries should match,also the data types
--of the stacking columns should also be same

--another thing we need to note is that the whole expression 
--with union is a single query and if we use group by or oder by 
--in between it wont work

--except operator
select distinct department
from employees
except 
select department
from department
--this will give us entries exclusive to employees table
--and we can do vice-versa
select department
from department
except
select distinct department
from employees

--problem1
select department,count(*)
from employees
group by department
union all
select 'total',count(*)
from employees















