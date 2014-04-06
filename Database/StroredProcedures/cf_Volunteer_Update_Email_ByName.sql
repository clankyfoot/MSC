USE [shotski]
GO

IF(OBJECT_ID('cf_Volunteer_Update_Email_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Volunteer_Update_Email_ByName
END
GO
/*
	RETURNS...
		0 if name or old name was null or empty
*/
CREATE PROCEDURE cf_Volunteer_Update_Email_ByName
	@name VARCHAR(550), -- REQUIRED
	@email VARCHAR(550)		-- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@email IS NOT NULL AND @name IS NOT NULL)
	BEGIN TRY
		UPDATE Volunteer
		SET email = @email
		WHERE name = @name
		SET @RETURN = 0
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO