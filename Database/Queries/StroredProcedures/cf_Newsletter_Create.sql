USE [shotski]
GO

IF(OBJECT_ID('cf_Newsletter_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Newsletter_Create
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Newsletter_Create
	@name VARCHAR(500), -- REQUIRED
	@email VARCHAR(300) -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@name IS NOT NULL AND @email IS NOT NULL)
	BEGIN TRY
		INSERT INTO Newsletter (name, email)
		VALUES (@name, @email)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO