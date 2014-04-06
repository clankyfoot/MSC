USE [shotski]
GO

IF(OBJECT_ID('cf_Country_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Country_Create
END
GO
/*
	RETURNS...
		0. if country is null or empty
*/
CREATE PROCEDURE cf_Country_Create
	@country VARCHAR(200)
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@country IS NOT NULL)
	BEGIN TRY
		INSERT INTO Country (country) VALUES (@country)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH
END
GO