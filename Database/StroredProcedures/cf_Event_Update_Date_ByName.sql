USE [shotski]
GO

IF(OBJECT_ID('cf_Event_Update_Date_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Event_Update_Date_ByName
END
GO
/*
	RETURNS...
*/
CREATE PROCEDURE cf_Event_Update_Date_ByName
	@Name INT, -- REQURIED
	@date DATETIME -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@Name IS NOT NULL AND @date IS NOT NULL)
	BEGIN TRY
		UPDATE [Event]
		SET [date] = @date
		WHERE name = @Name

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_MESSAGE()
	END CATCH

	RETURN @RETURN 
END
GO

