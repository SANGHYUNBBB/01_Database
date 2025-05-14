/*
 DML (Data Manipulation Language)
 -- 데이터 조작언어, 테이블에 값을 삽입, 수정, 삭제하는 SQL
 */
 /*
  Insert
-새로운 행을 추가하는 구문.
null 허용 가능한 컬럼이나 auto increment가 있는 컬럼 제외하고
insert 하고 싶은 데이터 칼럼을 지정해서 INSERT 가능

  -PRIMARY KEY: 기본키, 유일성과 최소성을 만족, 해당 행을 식별할 때 사용되는 값.
*/

insert into
    employees
values (1,20250514, '태근', '박','M',20250514);


-- 칼럼을 명시하면 INSERT 시 데이터의 순서 변경이 가능.
insert into
    employees(emp_no, birth_date, last_name, first_name, gender, hire_date)
values (2,20250514, '옥', '가연','M',20250514);

-- 여러 컬럼을 한번에 insert
insert into
    employees(emp_no, birth_date, last_name, first_name, gender, hire_date)
values (3,20250514, '규연', '김','M',20250514),
       (4,20250514, '석현', '구','M',20250514);

-- update
-- 테이블에 기록된 칼럼의 값을 수정하는 구문

select
    *
from
    employees
where last_name = '규연';

update employees
set last_name= '김',
    first_name = '규연'
where
    last_name = '규연';

update employees
set last_name= '구',
    first_name = '석현'
where
    last_name = '석현';

-- delete
-- 테이블에 행을 삭제하는 구문
delete
    from employees
where last_name = '김';

-- replace
-- insert 일 때 PRIMARY KEY 혹은 UNIQue KEY 가 충돌될 경우 해당 행에 덮어씌우기
insert into
    employees
values (1,20250514, '태근', '박','M',20250514);

replace into
    employees
values (4,20250514, '구', '석','M',20250514);
