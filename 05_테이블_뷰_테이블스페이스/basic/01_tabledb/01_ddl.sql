
# 존재하면 삭제
drop database if exists tabledb;
# 생성
create database tabledb;

use tabledb;

drop table if exists usertbl;
create table usertbl (
    -- 컬럼 타입 제약조건 작성!
    userID char(8) not null primary key,
    name varchar(10) not null,
    birthyear int not null,
    addr char(2) not null,
    mobile1 varchar(3),
    mobile2 varchar(8) ,
    height smallint ,
    mDate date
);
drop table if exists buytbl;
create table buytbl(
                       userID char(8) not null primary key,
                       name varchar(10) not null,
                       birthyear int not null,
                       addr char(2) not null,
                       mobile1 varchar(3),
                       mobile2 varchar(8) ,
                       height smallint ,
                       mDate date
)