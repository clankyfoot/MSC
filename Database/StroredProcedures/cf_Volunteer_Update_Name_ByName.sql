USE [shotski]
GO

IF(OBJECT_ID('cf_Volunteer_Update_Name_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Volunteer_Update_Name_ByName
END
GO
/*
	RETURNS...
		0 if name or old name was null or empty
*/
CREATE PROCEDURE cf_Volunteer_Update_Name_ByName
	@oldname VARCHAR(550), -- REQUIRED
	@name VARCHAR(550)		-- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @oldname IS NOT NULL)
	BEGIN TRY
		UPDATE Volunteer
		SET name = @name
		WHERE name = @oldname
		SET @RETURN = 0
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO