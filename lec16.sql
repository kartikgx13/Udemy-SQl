--subqueries with any and all operators

--some egs
select * from employees
where region_id in (select region_id from regions where country='United States')
--we used in because the subquery will return multiple values

--using any and all
--the any and all opeators can be used in where clause
--as well as the having clause with group by
select region_id,* from employees
where region_id > all(select region_id from regions where country='United States')
--here the all operator will check wether the condition is met for all the values returned by
--the subqueries
--it is preferred to use all instead of any


select region_id,* from employees
where region_id > any(select region_id from regions where country='United States')

--problem1
select * from department

--return employees who work in kids division and their hire_date
--is greater than employees in maintenance department
select *
from employees
where department in (select department from department where division='Kids')
and (hire_date > all(select hire_date from employees where department='Maintenance'))

--return salary which are repeating
select salary,count(*)
from employees
group by salary
order by count(*) desc,salary desc
limit 1

--using all operator
select salary
from employees
group by salary
having count(*)>= all(select count(*) from employees group by salary)
order by salary desc
limit 1





