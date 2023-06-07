--conditional expressions using case clause
--suppose we want to print a new column which states whether an employee is overpaid
--or underpaid then we need to use conditional expressions

select * from employees

select first_name,salary,
case
    when salary<100000 then 'under paid'
	when salary>100000 and salary<160000 then 'well paid'
	else 'Executives'--if both the conditions are false then else clause will be executed
end as category
from employees
order by salary desc

--return the category and the total count in each category
select count(*),
case
    when salary<100000 then 'under paid'
	when salary>100000 and salary<160000 then 'well paid'
	else 'Executives'--if both the conditions are false then else clause will be executed
end as category
from employees
group by category
order by count(*) desc

--transposing the outputs
select sum(case when salary<100000 then 1 else 0 end) as under_paid,
       sum(case when salary>100000 and salary<160000 then 1 else 0 end) as well_paid,
	   sum(case when salary>160000 then 1 else 0 end) as executives
from employees










