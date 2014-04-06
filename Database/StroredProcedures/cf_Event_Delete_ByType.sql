USE [shotski]
GO

IF(OBJECT_ID('cf_Event_Delete_ByType') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Event_Delete_ByType
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_Event_Delete_ByType
	@type INT -- REQUIRED
AS
BEGIN
	SET NOCOUNT ON -- don't count rows effected

	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@Type IS NOT NULL)
	BEGIN TRY
		DELETE FROM [Event] 
		WHERE event_type = @type
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO