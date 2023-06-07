--subqueries contd

--another eg
select first_name,last_name,salary,
(select first_name from employees)
from employees
--the above code wont work because the subquery which we have written
--will return the 1000 records in the employees table in each row of the 
--select statement which is not allowed

select first_name,last_name,salary,
(select first_name from employees limit 1)
from employees
-- we can do this instead,this doesnt make sense but its a legal query

--problem1
select * from department
--return those departments in the employees table which have division 
--electronics in the department table

select *
from employees
where department in
      (select department from department where division='Electronics')

--problem2
--return those employees which we work in asia or canada and earn more than
--130000
--the regions table contains the country name and the region id is common to
--employees and regions table
select * from regions

select * 
from employees
where region_id in (select region_id from regions where country='Asia' or country='Canada')
and salary>130000

select * 
from employees
where region_id in (select region_id from regions where country in ('Asia','Canada'))
and salary>130000

--write query to show the first name and the department of an 
--employee and how much less they earn from highest paid salary
--of an employee working in canada or USA
select first_name,department,(select max(salary) from employees) - salary
from employees
where region_id in (select region_id from regions where country in ('Asia','Canada'))















