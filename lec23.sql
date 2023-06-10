--table joins
--joins is a technique use to join two tables together with the help of
--a common column

--simple example
select first_name,country
from employees,regions
where employees.region_id=regions.region_id
--in the where clause we have to mention the common column

--return first_name,division and email of all employees
--we can also join 3 tables
select first_name,email,division,country
from employees,department,regions
where employees.department=department.department
and employees.region_id=regions.region_id
and email is not NULL

--since department column is common to two tables so we have to specify
--using the dot operator
select first_name,email,division,country,employees.department
from employees,department,regions
where employees.department=department.department
and employees.region_id=regions.region_id
and email is not NULL

--return the country name and no. of employees in that country
select country,count(*)
from employees,regions
where employees.region_id=regions.region_id
group by country
order by count(*) desc

--we can write this also
--replacing the regions table using a subquery
select country,count(*)
from employees,(select * from regions) r
where employees.region_id=r.region_id
group by country
order by count(*) desc








