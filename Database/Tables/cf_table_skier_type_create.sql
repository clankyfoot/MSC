USE [shotski]

CREATE TABLE SkierType
(
	skier_type_id INT IDENTITY(1,1),
	skier_type VARCHAR(100) NOT NULL, -- REQUIRED
	CONSTRAINT Pk_Skier_Type PRIMARY KEY ([skier_type])
)