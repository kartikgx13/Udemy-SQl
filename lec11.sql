select * from employees

--we need to get people with same first_name and their total count
select first_name,count(*) as "Total_name_count"
from employees
group by first_name
having count(*)>=2
order by "Total_name_count" desc

--we need to display the distincts department 
--without using distinct keyword
select department
from employees
group by department

--getting domain name and count of people with same domains
select substring(email from position('@' in email)+1) as "email_domain",count(*)
from employees
where email is not NULL
group by "email_domain"
order by count(*) desc

--develop a report
select gender,region_id,
min(salary) as "min_salary",
max(salary) as "max_salary",
round(avg(salary)) as "avg_salary"
from employees
group by gender,region_id
order by gender,region_id
