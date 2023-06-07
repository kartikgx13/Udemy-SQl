select *
from professors

--Write a query against the professors table that can output the following
--in the result: "Chong works in the Science department"
select last_name||' '||'works in the '||department||' department'
from professors

--Write a SQL query against the professors table that would
--return the following result:
--"It is false that professor Chong is highly paid"
select 'It is '||(salary>95000)||' that professor '||last_name||' is highly paid'
from professors

--Write a query that returns all of the records and columns from
--the professors table but shortens the department names to only 
--the first three characters in upper case.
select *,upper(substring(department from 1 for 3)) as "shortened"
from professors

--Write a query that returns the highest and lowest salary from 
--the professors table excluding the professor named 'Wilson'.
select min(salary),max(salary)
from professors
where not last_name='Wilson'

--Write a query that will display the hire date of the professor 
--that has been teaching the longest.
select min(hire_date)
from professors





