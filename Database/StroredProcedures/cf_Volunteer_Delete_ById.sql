USE [shotski]
GO

IF(OBJECT_ID('cf_Volunteer_Delete_byId') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Volunteer_Delete_ById
END
GO

/*
	RETURNS...
		0. if the id was null
*/
CREATE PROCEDURE cf_Volunteer_Delete_ById
	@id INT
AS
BEGIN
	SET NOCOUNT ON -- don't count the rows effected
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@id IS NOT NULL)
	BEGIN TRY
		DELETE FROM Volunteer
		WHERE volunteer_id = @id
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO