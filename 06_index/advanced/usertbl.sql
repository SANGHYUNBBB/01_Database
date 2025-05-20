use sqldb;


select * from usertbl;

show index from usertbl;

SHOW TABLE STATUS like 'usertbl';

CREATE INDEX idx_usertbl_addr ON usertbl(addr);
show index from usertbl;
ANALYZE TABLE usertbl;
EXPLAIN SELECT * FROM usertbl WHERE addr = '서울';
select * from usertbl where addr = '서울';
SHOW TABLE STATUS like 'usertbl';

CREATE INDEX idx_usertbl_birthYear ON usertbl( birthYear);

CREATE INDEX idx_usertbl_nam ON usertbl(name);

show index from usertbl;

DROP INDEX  idx_usertbl_nam on usertbl;

CREATE INDEX idx_usertbl_name_birthYear ON usertbl(name, birthYear);

show index from usertbl;

DROP INDEX  idx_usertbl_name_birthYear on usertbl;
DROP INDEX  idx_usertbl_addr on usertbl;

DROP INDEX  idx_usertbl_birthYear on usertbl;

