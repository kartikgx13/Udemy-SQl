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




