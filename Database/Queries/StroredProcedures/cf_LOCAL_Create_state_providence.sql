USE [shotski]
GO

IF(OBJECT_ID('cf_LOCAL_Create_state_providence') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_LOCAL_Create_state_providence
END
GO
/*
	RETURNS...
		0. if sp was null or empty
*/
CREATE PROCEDURE cf_LOCAL_Create_state_providence
	@sp VARCHAR(200) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	IF(@sp IS NOT NULL)
	BEGIN TRY
		INSERT INTO [LOCAL] (state_providence)
		VALUES (@sp)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
GO