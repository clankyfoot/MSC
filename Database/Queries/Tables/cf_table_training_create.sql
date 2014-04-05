USE [shotski]

CREATE TABLE Training
(
	training_id INT IDENTITY(1,1),
	skier_id INT,
	hill_type VARCHAR (200) NOT NULL, -- REQUIRED
	[date] DATETIME,
	distance TINYINT
	CONSTRAINT Fk_Training_Skier_id FOREIGN KEY ([skier_id]) REFERENCES Skier([skier_id]),
	CONSTRAINT Fk_Training_Hill_Type FOREIGN KEY ([hill_type]) REFERENCES Hills([hill_type])
)