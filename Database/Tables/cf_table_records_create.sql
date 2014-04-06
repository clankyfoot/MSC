USE [shotski]

CREATE TABLE Records
(
	records_id INT IDENTITY(1,1),
	skier_id INT NOT NULL, -- REQUIRED
	hill_type VARCHAR(200) NOT NULL, -- REQUIRED
	longest_jump SMALLINT DEFAULT 0, -- NOT REQUIRED
	[date] DATETIME, -- NOT REQUIRED
	[event_type] VARCHAR(200) NOT NULL, -- REQUIRED
	CONSTRAINT Fk_Records_Skier_Id FOREIGN KEY ([skier_id]) REFERENCES Skier([skier_id]),
	CONSTRAINT Fk_Records_Hill_Type FOREIGN KEY ([hill_type]) REFERENCES Hills([hill_type]),
	CONSTRAINT Fk_Records_Event_Type FOREIGN KEY ([event_type]) REFERENCES [Event]([event_type])
)