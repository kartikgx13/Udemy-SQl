 --aliasing the sources of data
 select first_name,last_name,* 
 from employees
 
 --suppose we want to select a column which is common
 --to both the tables then
 select department.department
 from employees,department
 
 --now we will make use of aliases
 select e.department
 from employees e,department d
 order by 1
 
 