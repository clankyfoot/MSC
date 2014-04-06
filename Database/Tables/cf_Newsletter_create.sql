USE [shotski]

CREATE TABLE Newsletter
(
	news_id int identity(1,1),
	name varchar(500),
	email varchar(300),
	constraint Pk_Newsletter_email primary key ([email])
);