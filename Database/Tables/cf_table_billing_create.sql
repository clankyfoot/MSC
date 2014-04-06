USE [shotski]

CREATE TABLE Billing
(
	billing_id INT IDENTITY(1,1), 
	customer_id INT,
	[date] DATETIME,
	payment MONEY,
	card_no VARCHAR(MAX), -- THIS WOULD ACTUALLY BE A HASH
	exp_date DATETIME
	CONSTRAINT Fk_Customer_id FOREIGN KEY([customer_id]) REFERENCES Customer([customer_id])
)