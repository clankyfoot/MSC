USE [shotski]
GO

IF(OBJECT_ID('cf_Hills_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Hills_Create
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Hills_Create
	@type VARCHAR(200) -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@type IS NOT NULL)
	BEGIN TRY
		INSERT INTO [Hills] (hill_type)
		VALUES(@type)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO