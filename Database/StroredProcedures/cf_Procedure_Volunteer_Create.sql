USE [shotski]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF(OBJECT_ID('cf_Volunteer_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Volunteer_Create
END
GO
/*
	RETURNS..
		0. if either the e-mail or the name were null or empty
		2627. if there was a duplicate e-mail. Validation error of duplicated Primary Keys. 
*/
CREATE PROCEDURE [dbo].[cf_Volunteer_Create]
	@name VARCHAR(550),	 -- required
	@email VARCHAR(300) -- required
AS
BEGIN
	SET NOCOUNT ON -- don't count the rows modified
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @email IS NOT NULL)
	BEGIN TRY
		INSERT INTO Volunteer (name, email)
		VALUES (@name, @email)
		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
	END CATCH

	RETURN @RETURN
END
