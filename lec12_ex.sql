select * from fruit_imports

--Write a query that displays only the state with the largest amount 
--of fruit supply.
select state as "state_name",sum(cost_per_unit)
from fruit_imports
group by "state_name"
order by sum(cost_per_unit) desc
limit 1


--Write a query that returns the most expensive cost_per_unit
--of every season. The query should display 2 columns,
--the season and the cost_per_unit
select season,sum(cost_per_unit) as "total_per_season"
from fruit_imports
group by season
order by "total_per_season" desc
limit 1

--Write a query that returns the state that has more than
--1 import of the same fruit.
select state,count(name)
from fruit_imports
group by state,name
having count(name)>1
order by count(name)

--Write a query that returns the seasons that produce either
--3 fruits or 4 fruits
select season,count(name)
from fruit_imports
group by season
having count(name)=3 or count(name)=4

--Write a query that takes into consideration the supply 
--and cost_per_unit columns for determining the total cost 
--and returns the most expensive state with the total cost.
select state,sum(supply*cost_per_unit) as "Total sum"
from fruit_imports
group by state
order by "Total sum" desc
limit 1

--very imp note
--we cannot use aggregrate functions such as count sum min max in where clause
--because where condition is use to filter out records and not aggregrated data
--to use aggregrates conditionally we can use having clause after the group by clause


select first_name,count(*)
from employees
group by first_name
having count(*)>=2

select department
from employees
group by department

select substring(email,from position('@')) as domain,count(*)
from employees
group by domain

select gender,region_id,min(salary),max(salary),avg(salary)
from employees
group by gender,region_id
order by gender,region_id