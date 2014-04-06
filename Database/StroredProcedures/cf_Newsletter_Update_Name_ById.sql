USE [shotski]
GO

IF(OBJECT_ID('cf_Newsletter_Update_Name_ById') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Newsletter_Update_Name_ById
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Newsletter_Update_Name_ById
	@name VARCHAR(500), -- REQUIRED
	@id VARCHAR(300) -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@name IS NOT NULL AND @id IS NOT NULL)
	BEGIN TRY
		UPDATE Newsletter 
		SET name = @name
		WHERE news_id = @id
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO