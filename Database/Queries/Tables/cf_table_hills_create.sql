USE [shotski]

CREATE TABLE Hills
(
	hill_id INT IDENTITY(1,1),
	[hill_type] VARCHAR(200) NOT NULL, -- REQUIRED
	CONSTRAINT Pk_Hill_Type PRIMARY KEY ([hill_type])
)