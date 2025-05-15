select *
from emptbl
where emp = (select manager
             from emptbl
             where emp = '우대리');