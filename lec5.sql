--formatting the data for reporting purposes

--converting to uppercase
select upper(first_name),lower(department)
from employees
--so in this method we will pass the column name as a parameter
--to the function upper and lower

--to get length of strings
select length(first_name),lower(department)
from employees

--removing trailing and leading white spaces
select trim('    hi there    ')

select length('hello there     ')

--conactenating values of 2 columns
select first_name || last_name
from employees

--formatting it a bit more
select first_name ||' '|| last_name as full_name,department
from employees
--while remaining keep in mind that if we use underscore in name then
--no need to use double quotes and if we want to then we will have to
--use the double quotes as we have did in this next example


--boolean values and expression
select first_name ||' '|| last_name as full_name,(salary>140000) as "high salary"
from employees
order by salary desc

--some more examples
select department,('Clothing' in (department))
from employees
--the second condition which we have passed is the boolean expression
--the above query will display the department column and besides that
--it will display true or false accordingly if the department is clothing

--we can also use the like keyword for a rough match
select department, (department like '%oth%')
from employees













