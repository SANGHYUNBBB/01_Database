select * from employees.employees;
create user '계정명'@'%' identified by '비밀번호';
create user '계정명'@'localhost' identified by '비밀번호';


-- user 조회
select user, host from user;

-- 데이터베이스(스키마) 생성
create database 데이터베이스이름;
create schema 데이터베이스이름;

create database testdb;

--  권한부여
-- grant 권한 privileges on 데이터베이스, 테이블 to '계정명'@'%';
-- bear@% 가 가지고있는 모든 권한 조회
show grants for 'SH'@'%';