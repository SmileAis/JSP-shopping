create table member(
	id varchar(15) not null,
	password varchar(15) not null,
	name varchar(20) not null,
	gender varchar(6),
	birth varchar(10),
	mail varchar(30),
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
) default CHARSET=utf8;