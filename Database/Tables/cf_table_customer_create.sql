USE [shotski]

CREATE TABLE Customer
(
	customer_id INT IDENTITY(1,1),
	first_name VARCHAR(200) NOT NULL, -- REQUIRED
	last_name VARCHAR(200) NOT NULL, -- REQUIRED
	[address] VARCHAR(550) DEFAULT '', -- NOT REQUIRED
	[phone] VARCHAR(50) NOT NULL, -- NOT REQUIRED
	[email] VARCHAR(150) DEFAULT '', -- NOT REQUIRED
	[country] VARCHAR(200) DEFAULT '', -- NOT REQUIRED
	[state_providence] VARCHAR(200) DEFAULT '', -- NOT REQUIRED
	ZIP INT NOT NULL, -- REQUIRED
	CONSTRAINT Pk_Customer_id PRIMARY KEY ([customer_id]),
	CONSTRAINT Fk_Country FOREIGN KEY ([country]) REFERENCES Country([country]),
	CONSTRAINT Fk_State_Providence FOREIGN KEY ([state_providence]) REFERENCES [Local]([state_providence])


)