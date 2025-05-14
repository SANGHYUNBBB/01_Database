select
    Distinct CountryCode,
    sum(Population)
from
    city
where
    CountryCode = 'kor'
group by CountryCode;

select
    name,
    Population  as'최솟값'
from
    city
where CountryCode = 'kor' and Population = (select min(Population) from city where CountryCode = 'kor')

select
    Distinct CountryCode,
             avg(Population)
from
    city
where
    CountryCode = 'kor'
group by CountryCode;

select
    name,
    Population  as'최대값'
from
    city
where CountryCode = 'kor' and Population = (select max(Population) from city where CountryCode = 'kor')

SELECT
    name, char_length(name) as '글자수'
from
    country;

select upper(left(name, 3)) as name
from country;

select name, round(lifeexpectancy, 1) as roundedlifeexpectancy
from country;