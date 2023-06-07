--getting salary per department
select department,sum(salary)
from employees
where 1=1
group by department

--getting the total no. of people per department
select department,count(employee_id) as "Total_count",
round(avg(salary)) as "Average_salary",
max(salary) as "Max_salary",
min(salary) as "Min_salary"
from employees
group by department
order by "Total_count" desc

--suppose if we include some non-aggregrate columns in the select
--clause then we have to mention that column name in the group by
--clause also
select department,gender,count(*)
from employees 
group by department,gender
order by count(*) desc

--to get departments with more than 35 employees
--here the having clause will be used to sepearte group data
--we will have to use the having clause because we cannot use the
--where clause here
select department,count(*) as "Total_count"
from employees 
group by department
having count(*)>35
order by department






