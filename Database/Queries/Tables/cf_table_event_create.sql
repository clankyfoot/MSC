USE [shotski]

CREATE TABLE [Event]
(
	event_id INT IDENTITY(1,1),
	name VARCHAR(300), -- REQUIRED
	[event_type] VARCHAR(200) NOT NULL, -- REQUIRED
	[date] DATETIME NOT NULL, -- REQUIRED
	CONSTRAINT Pk_Event_Type PRIMARY KEY ([event_type]),
	CONSTRAINT Uq_Event_name UNIQUE ([name])
)