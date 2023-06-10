--joins and subqueries contd

--problem1
--if we want to limit oldest employees we can use limit clause
select first_name,department,hire_date,country
from employees,regions 
where employees.region_id=regions.region_id
and hire_date = (select min(hire_date) from employees)
union 
select first_name,department,hire_date,country
from employees,regions
where employees.region_id=regions.region_id
and hire_date = (select max(hire_date) from employees)



