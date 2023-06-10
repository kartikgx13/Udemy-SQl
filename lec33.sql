--working with roll-ups and cubes
select * from sales
order by continent,country,city

select continent,sum(units_sold)
from sales
group by continent
order by sum(units_sold)

select country,sum(units_sold)
from sales
group by country
order by sum(units_sold)

--now we will write a query to include all the above group bys into one
select continent,country,city,sum(units_sold)
from sales
group by grouping sets(continent,country,city)

select continent,country,city,sum(units_sold)
from sales
group by grouping sets(continent,country,city,())
--the first record will show the total units sold

--instead of grouping sets we can use roll-up
select continent,country,city,sum(units_sold)
from sales
group by rollup(continent,country,city)

--the cube will provide all possible combinations on the group by
select continent,country,city,sum(units_sold)
from sales
group by cube(continent,country,city)













