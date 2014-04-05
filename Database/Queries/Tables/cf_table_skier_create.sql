USE [shotski]

CREATE TABLE Skier
(
	skier_id INT IDENTITY(1,1),
	customer_id INT,
	first_name VARCHAR(200) NOT NULL, -- REQUIRED
	last_name VARCHAR(200) NOT NULL, -- REQUIRED
	age TINYINT DEFAULT 0, -- DEFAULT 0, BUT REQUIRED
	[weight] TINYINT NOT NULL, -- REQUIRED
	height TINYINT NOT NULL, -- REQUIRED
	boot_size TINYINT NOT NULL, -- REQUIRED
	suit_size TINYINT NOT NULL, -- REQUIRED
	skier_type VARCHAR(100) NOT NULL, -- REQUIRED
	state_providence VARCHAR(200) NOT NULL, -- REQUIRED
	country VARCHAR(200) NOT NULL, -- REQUIRED,
	emergencey VARCHAR(550) DEFAULT '', -- NOT REQUIRED,
	ZIP SMALLINT, -- NOT REQUIRED
	CONSTRAINT FK_SkierCountry_Country FOREIGN KEY([country]) REFERENCES Country([country]),
	CONSTRAINT Fk_Skier_State_Providence FOREIGN KEY ([state_providence]) REFERENCES [LOCAL]([state_providence]),
	CONSTRAINT Fk_Skier_type FOREIGN KEY ([skier_type]) REFERENCES SkierType([skier_type]),
	CONSTRAINT Pk_Skier_id PRIMARY KEY ([skier_id]),
	CONSTRAINT Fk_Skier_Customer_Customer_id FOREIGN KEY ([customer_id]) REFERENCES Customer ([customer_id])
)