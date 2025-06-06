use sqldb;

drop table tbl2;
create table tbl2 (
                      a int primary key , -- 기본키 -> 자동으로 클러스터형(pk) 인덱스 생성(중복불가, null 불가)
                      b int unique, -- b 유니크 키 -> unique 인덱스 생성 (중복불가, null 허용)
                      c int unique, -- c 유니크 키 -> unique 인덱스 생성( 중복불가 null 허용)

                  d int
);

-- tbl2가 가지고있는 인덱스 조회

show index from tbl2;