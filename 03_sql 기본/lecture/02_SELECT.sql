select
    *
from
    buytbl;
select -- 조회해줘
userID,
groupName
from buytbl;

select (5+5);

select now();

select concat('bear','안녕','kb') as '인 사';

-- usertbl 의 name, mobile1, mobile2 를 조회
-- mobile1, mobile2 은 붙여서 전화번호라는 컬럼으로 조회되어야함.
select name, concat (usertbl.mobile1, usertbl.mobile2) as mobile
from usertbl;