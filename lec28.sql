--views

--a view is a virtual table
--simple example
select first_name,email,division,country
from employees e,department d,regions r
where e.department=d.department 
and e.region_id=r.region_id
and email is not NULL
--now we will create a view for the above columns
create view v_employee_info as 
select first_name,email,division,country
from employees e,department d,regions r
where e.department=d.department 
and e.region_id=r.region_id
and email is not NULL

--quering the view/hard view
select * from v_employee_info
--note
--we cannot insert/delete data in this view as its not an actual table

--inline view
--when we have a subquery inside a from clause then its called an inline view





