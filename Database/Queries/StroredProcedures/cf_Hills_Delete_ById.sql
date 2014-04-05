USE [shotski]
GO

IF(OBJECT_ID('cf_Hills_Delete_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Hills_Delete_ById
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Hills_Delete_ById
	@id VARCHAR(200) -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@id IS NOT NULL)
	BEGIN TRY
		DELETE FROM [Hills]
		WHERE hill_id = @id
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO