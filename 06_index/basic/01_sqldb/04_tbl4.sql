use sqldb;

drop table tbl4;
create table tbl4
( -- 클러스터형 인덱스
    -- mysql의 innoDB의 경우 테이블에 pk가 없을 경우
    -- not null + uniqure 제약조건이 있는 첫번째 칼럼을 클러스터형 인덱스로 삼는다.
    -- not null + unique 제약조건의 칼럼이 업승ㄹ 경우 내부적으로 숨겨진시스템 행 id 를 사용한다.
    a int unique not null, -- a  유니크 키 -> unique 인덱스 생성
    b int unique,      -- b 유니크 키 -> unique 인덱스 생성 (중복불가, null 허용)
    c int unique,      -- c 유니크 키 -> unique 인덱스 생성( 중복불가 null 허용)
    d int
);

-- tbl3가 가지고있는 인덱스 조회

show index from tbl4;