--more transpose examples

select department,count(*)
from employees
where department in ('Sports','Tools','Clothing','Computers')
group by department

--problem1
select sum(case when department='Sports' then 1 else 0 end) as sports_dept,
       sum(case when department='Tools' then 1 else 0 end) as tools_dept,
	   sum(case when department='Clothing' then 1 else 0 end) as clothing_dept,
	   sum(case when department='Computers' then 1 else 0 end) as comps_dept
from employees

--problem2
select first_name,
case when region_id=1 then (select country from regions where region_id=1) end as region_1,
case when region_id=2 then (select country from regions where region_id=2) end as region_2,
case when region_id=3 then (select country from regions where region_id=3) end as region_3,
case when region_id=4 then (select country from regions where region_id=4) end as region_4,
case when region_id=5 then (select country from regions where region_id=5) end as region_5,
case when region_id=6 then (select country from regions where region_id=6) end as region_6,
case when region_id=7 then (select country from regions where region_id=7) end as region_7
from employees

--problem3
select sum(case when (region_id=1 or region_id=2 or region_id=3) then 1 else 0 end ) as united_states,
       sum(case when (region_id=4 or region_id=5) then 1 else 0 end ) as asia,
	   sum(case when (region_id=6 or region_id=7) then 1 else 0 end ) as canada
from employees

