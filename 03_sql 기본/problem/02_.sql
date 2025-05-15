select
    *
from usertbl
where name= '김경호';

select *
from usertbl
where birthYear>= 1970 ANd height>=182;

select *
from usertbl
where height>= 180 ANd height<=183;

select
    *
from
    usertbl
where
    addr = '경남' or addr='경북' or addr='전북';

select
    *
from
    usertbl
where
    name like '김%';
select
    *
from
    usertbl
where
    height > (SELECT height FROM usertbl WHERE name = '김경호')

select
    *
from
    usertbl
order by
    mdate;

select
    *
from
    usertbl
order by
    mdate desc;

select
    *
from
    usertbl
order by
    height desc,
    name desc;

select
    distinct addr
from usertbl;