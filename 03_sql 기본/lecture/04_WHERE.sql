-- WHERE
-- 특정 조건에 맞는 레코드(데이터)만을 선택하는데 사용됨.

-- [=] 같음 연산자를 사용한 where 절
select
    *
from
    employees
where
    gender = 'M' -- 설별이 'M' 인 애들만!
limit 5 ; -- 중에서 5명만

select
    first_name,
    last_name
from
    employees
where
    gender != 'M' -- 성별이 M 아닌 애들만
limit 5;

-- AND 연산자 : 둘자 true 여야 true / 아니라도 false 면 false
-- OR 연산자: 둘 중 하나라도 true 면 true
-- AND 가 OR 보다 우선순위가 높다.
-- 1: true/ 0: false
select 1 or 0 and 0;
select (1 or 0) and 0;

select
    emp_no,
    first_name,
    last_name,
    gender
from
    employees
where
    gender <> 'M'  AND
    emp_no < '10050'; -- emp_no 이 10050보다 작고 gender가 M이 아닌 조건

-- BETWEEN
select
    *
from
    employees
where
    emp_no >= 10050 AND
    emp_no <= 10060;
/*
 BETWEEN 연산자
 경계값을 포함한, 사이값을 포함
 */
select *
from employees
where
#     emp_no between 10050 AND 10060;
emp_no not between 10050 and 499995; -- 부정표현 (경계값 및 사이값 포함만 하고 나머지

/*
 LIKE
 특정 패턴과 일치하는 행을 검색

 패턴
 - % : 0개 이상은 문자를 나타냄
 ex) '%apple%; -> apple 이 포함된 모든 문자열
 - _ : 1개의 문자를 나타냄
 ex) 'a_k' 는 a로 시작하고 k로 끝나는 세글자 문자열을 의미
 */
select first_name
from employees
where first_name like 'Aa%';
select first_name
from employees
where first_name like 'Aa__d'; -- Aa로시작하고 d로 끝나면서 5글자만 모든 데이터

/*
 IN 연산자
 - 특정 열의 값이 지정된 목록 중 하나와 일치하는지 확인하는데에 사용함.
 */

select
    *
from
    employees
where
    emp_no in (1,2,3,4,5,67,8,8,9,09,8,7,7,5,456,45654,6);

