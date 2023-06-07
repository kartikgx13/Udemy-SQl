select * from cars

insert into cars values('Honda');
insert into cars values('Honda');
insert into cars values('Honda');
insert into cars values('TOYOTA');
insert into cars values('TOYOTA');
insert into cars values('NISSAN');

--concept of grouping
select count(*),maker
from cars
group by maker

insert into cars values (NULL);
insert into cars values (NULL);
insert into cars values (NULL);
insert into cars values (NULL);