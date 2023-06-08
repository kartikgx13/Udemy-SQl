--syntax for joins

select first_name,country
from employees inner join regions
on employees.region_id=regions.region_id

select first_name,division,email
from employees inner join department
on employees.department=department.department
where email is not NULL

--adding one more join
select first_name,division,email,country
from employees inner join department
on employees.department=department.department
inner join regions on employees.region_id=regions.region_id
where email is not NULL
--imp note
--we are joining regions table with result of both the tables
--not just a single table
--we can use inner join only when data is common to both columns

--concept of outer join
select distinct department from employees
--27 departments

select distinct department from department
--24 departments

select distinct employees.department,department.department
from employees inner join department
on employees.department=department.department
--23 entries

--to return all departments from employees we will need to use left outer join
select distinct employees.department,department.department
from employees left join department
on employees.department=department.department
--the left keyword means give more preference to table on the left

select distinct employees.department,department.department
from employees right join department
on employees.department=department.department

--return only those departments existing in the employees table
select distinct employees.department
from employees left join department
on employees.department=department.department
where department.department is NULL

--return only those departments existing in the departments table
select distinct department.department
from employees right join department
on employees.department=department.department
where employees.department is NULL

