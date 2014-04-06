USE [shotski]
GO

CREATE VIEW cf_Event_View_EventView
AS
	SELECT
		name,
		event_type,
		[date]
	FROM 
		[Event]
go