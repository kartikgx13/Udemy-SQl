--cartesian product

select count(*) from(
select * from employees,department
) a
--what happened here is that
--since we did not mention the join the tables were joined in 
--such a way that every possible combination of employees and department
--entries was carried out leading to 24000 combinations

--another example
select count(*)
from (
select * from employees a,employees b
) sub
--for every entry in employees_a there were 1000 entries hence 1000000 entries
--this is what is called a cartesian product which depicts how data would look like
--without use of joins

--using the cross join keyword
select * from employees a cross join department b








