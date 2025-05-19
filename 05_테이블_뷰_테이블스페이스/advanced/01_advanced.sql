
drop database if exists tabledb;

create database tabledb;

use tabledb;

drop table if exists usertbl;
create table usertbl (
    -- 컬럼 타입 제약조건 작성!
                         userID char(8) not null primary key,
                         name varchar(10) not null,
                         birthyear int not null
);
drop table if exists buytbl;
create table buytbl
(
    num       int auto_increment not null primary key,
    userID    char(8)            not null,
    prodName  char(8)            not null,
        foreign key (userID) references usertbl(userID)
);
alter table buytbl add constraint fk foreign key (userID) references usertbl(userID);


-- 2번

drop table if exists usertbl;
create table usertbl (
    -- 컬럼 타입 제약조건 작성!
                         userID char(8) not null primary key,
                         name varchar(10) not null,
                         birthyear int not null,
    email char(30) unique
);

drop table if exists usertbl;
create table usertbl (

                         userID char(8) not null primary key,
                         name varchar(10),
                         birthyear int  CHECK (birthyear BETWEEN 1999 AND 2020),
                         mobile char(3) not null
);
-- 기본값 추가 확인 데이터 문제
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

insert into usertbl (userID,name, birthyear,addr,mobile1, mobile2, height, mDate)
values('JYP','박상현',20250519,'경기',010,38486240,176,20250519);

-- mobile1 컬럼 삭제
alter table usertbl drop column mobile1;
-- name uname으로
alter table usertbl change  column  name uname varchar(10);
-- 기본키 제거
alter table usertbl drop primary key ;