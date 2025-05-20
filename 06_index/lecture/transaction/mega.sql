-- mega로 로그인한 경우
-- 실습1 --
-- -----------------------
-- autocommit 환경 변수값 확인
select @@autocommit;
-- autocommit 변경 가능
-- set @@autocommit = false; -- off는 false(0), on은 true(1)
create database testdb;
use testdb;
create table test(
                     testid INT AUTO_INCREMENT primary key,
                     name VARCHAR(10)
);
insert into test values (null, 'name1');
select * from test;
-- 실습2 --
-- -----------------------
-- autocommit 변경 가능(off하고 실습, 바로 반영X)
set @@autocommit = false; -- off는 false(0), on은 true(1)
select @@autocommit;
insert into test values (null, 'name2');
select * from test;
commit; -- 마지막 commit이후의 작업 모두 반영
-- name1, name2 insert작업 모두 반영