--string functions
--substring functions
select substring('This is test data' from 9)

select substring('This is test data' from 9 for 5)
--from is the starting index and 1-based indexing is followed here
--and the for clause will denote the length of the substring

--replace function
select department,replace(department,'Clothing','Attire') as "Modified data"
from department

--adding one more column
select department,replace(department,department,department ||' '|| 'department') as "Modified data"
from department
--this will add the department word to next of each department name and ]
--create a new column

--position function
select position('@' in email)
from employees

--getting the domain name
select substring(email from position('@' in email))
from employees

--suppose we dont want the @ symbol
select substring(email from position('@' in email)+1)
from employees

select email,substring(email from position('@' in email)+1) as "Domain"
from employees

--handling null values
select coalesce(email,'NONE') as "final"
from employees
--so all the null values will replaced by the word "NONE"

