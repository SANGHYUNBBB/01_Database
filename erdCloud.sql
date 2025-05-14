CREATE TABLE `게시판` (
	`boardid`	int	NOT NULL,
	`memberID2`	varchar(10)	NOT NULL,
	`title`	varchar(100)	NULL,
	`content`	text	NULL
);

CREATE TABLE `회원테이블` (
	`memberID`	varchar(10)	NOT NULL,
	`name`	varchar(10)	NULL,
	`tel`	varchar(10)	NULL
);

ALTER TABLE `게시판` ADD CONSTRAINT `PK_게시판` PRIMARY KEY (
	`boardid`,
	`memberID2`
);

ALTER TABLE `회원테이블` ADD CONSTRAINT `PK_회원테이블` PRIMARY KEY (
	`memberID`
);

ALTER TABLE `게시판` ADD CONSTRAINT `FK_회원테이블_TO_게시판_1` FOREIGN KEY (
	`memberID2`
)
REFERENCES `회원테이블` (
	`memberID`
);

