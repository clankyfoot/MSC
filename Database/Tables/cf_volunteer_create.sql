use [shotski]

CREATE TABLE Volunteer
(
	volunteer_id int identity(1,1),
	name varchar(550),
	email varchar(300),
	constraint Pk_Volunteer_Email primary key ([email])
)