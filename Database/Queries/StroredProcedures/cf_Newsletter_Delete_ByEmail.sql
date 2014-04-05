USE [shotski]
GO

IF(OBJECT_ID('cf_Newsletter_Delete_ByEmail') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Newsletter_Delete_ByEmail
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Newsletter_Delete_ByEmail
	@email INT -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@email IS NOT NULL)
	BEGIN TRY
		DELETE FROM Newsletter
		WHERE email = @email
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO