create table board(
	idx int not null auto_increment, 
	title varchar(100) not null,
	writer varchar(10) not null,
	indate datetime default now(),
	contents varchar(2000) not null,
	primary key(idx)
);

insert into board(title, writer, contents) values('제목1', '김운비', '게시판글1');
insert into board(title, writer, contents) values('제목2', '선영표', '게시판글2');
insert into board(title, writer, contents) values('제목3', '임경남', '게시판글3');

select * from board;

drop table member

create table member(
	id varchar(20) not null,
	pw varchar(50) not null,
	name varchar(10) not null,
	primary key(id)
);

insert into member values('smhrd1', 'smhrd1', '김운비');
insert into member values('smhrd2', 'smhrd2', '김운비');
insert into member values('smhrd3', 'smhrd3', '김운비');
insert into member values('smhrd1@asd.com', 'smhrd1', '김운비');

create table board2(
	idx int not null auto_increment, 
	title varchar(100) not null,
	writer varchar(10) not null,
	indate datetime default now(),
	contents varchar(2000) not null,
	id varchar(20) not null,
	cnt int,
	primary key(idx)
);

create table tbl_book(
	num int not null auto_increment,
	title varchar(50) not null,
	author varchar(30) not null,
	company varchar(50) not null,
	isbn varchar(30) not null,
	count int not null,
	primary key(num)
);

insert into tbl_book (title,author,company,isbn,count)
values('해리포터와 아즈카반의 죄수', 'J.K 롤링', '문학수첩','8983920726',12);
insert into tbl_book (title,author,company,isbn,count)
values('난중일기', '이순신', '서해문집','8974832232',8);
insert into tbl_book (title,author,company,isbn,count)
values('수학 귀신', '한스 마그누스', '비룡소','8949187310',9);
insert into tbl_book (title,author,company,isbn,count)
values('월리를 찾아라!', '마틴 핸드포드', '예꿈','8992882734',20);
insert into tbl_book (title,author,company,isbn,count)
values('오세암', '정채봉', '창비','8936440195',4);




