--exercies
select * from dupes

--return distinct names only
select min(id),name
from dupes
group by name

select * from dupes
where id in (
select min(id)
	from dupes
	group by name
)

--return the average salary of the company and exclude the min and max salary
--before computing
select round(avg(salary))
from employees
where salary > (select min(salary) from employees)
and salary < (select max(salary) from employees)

select round(avg(salary))
from employees










