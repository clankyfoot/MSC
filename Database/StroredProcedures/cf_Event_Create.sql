USE [shotski]
GO

IF(OBJECT_ID('cf_Event_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Event_Create
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Event_Create
	@name VARCHAR(300), -- REQUIRED
	@type VARCHAR(200), -- REQUIRED
	@date DATETIME -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@name IS NOT NULL AND @type IS NOT NULL AND @date IS NOT NULL)
	BEGIN TRY
		INSERT INTO [Event] (name, event_type, [date])
		VALUES(@name, @type, @date)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO