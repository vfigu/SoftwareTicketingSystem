-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Get Release associated from Feature
-- =============================================
CREATE PROCEDURE get_release
	@featureName nvarchar(255), @releaseDate datetime 
AS
BEGIN
	SELECT [Release Num]
		  ,[Release Name]
		  ,[Release Date]
		  ,[Feature Name]
	  FROM [csun112].[dbo].[Feature]
	  INNER JOIN [csun112].[dbo].[Release]
	  ON [csun112].[dbo].[Feature].[Feature ID] = [Release].[Associated Features]
	  WHERE [Release Date] = @releaseDate AND [Feature Name] = @featureName
END
GO
