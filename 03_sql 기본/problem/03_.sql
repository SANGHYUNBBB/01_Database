select
    *
from
    city
where
    countrycode = 'kor';

select
    CountryCode,
    Population
from city;

select
    count(*)
from
    city
where CountryCode = 'kor';

select
    *
from
    city
where CountryCode = 'kor' or CountryCode = 'chn' or CountryCode = 'jpn';

select
    *
from
    city
where CountryCode = 'kor' and
      Population <= 1000000;

select
    *
from
    city
where CountryCode = 'kor'
order by Population desc
limit 10;

select
    *
from
    city
where CountryCode = 'kor' and Population <= 5000000 and Population >= 1000000;