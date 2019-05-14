-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Update a work item (such as 
--				'Bug') with the State (such
--				as 'Closed') that been 
--				created within the system 
--				(such as 'IBS') with the
--				specified Maintence ID number.
--				Children will close as well.
-- =============================================
CREATE PROCEDURE [State Change Work Item]
	 @workType nvarchar(255), 
	 @systemType nvarchar(255),
	 @stateName nvarchar(255),
	 @maintenceID int
AS
BEGIN
	DECLARE @stateID int
	SELECT @stateID = [State ID]         
		FROM [dbo].[State]         
		WHERE [State Name] = @stateName;

	UPDATE [csun112].[dbo].[Maintenance]
	  SET [State ID] = @stateID
	  FROM [csun112].[dbo].[Maintenance]
	  INNER JOIN [Work Item Type]
	  ON [csun112].[dbo].[Maintenance].[Work Item Type ID] = [csun112].[dbo].[Work Item Type].[Work Item Type ID]
	  INNER JOIN [System]
	  ON [csun112].[dbo].[Maintenance].[System ID] = [System].[System ID]
	  WHERE [Work Item Type Name] = @workType AND [Abbreviation] = @systemType
			AND ([Maintenance ID] = @maintenceID OR [ChildOf] = @maintenceID)

	SELECT [Maintenance ID], [Title], [Work Item Type Name], [Abbreviation], [State Name]
	  FROM [csun112].[dbo].[Maintenance]
	  INNER JOIN [Work Item Type]
	  ON [csun112].[dbo].[Maintenance].[Work Item Type ID] = [csun112].[dbo].[Work Item Type].[Work Item Type ID]
	  INNER JOIN [System]
	  ON [csun112].[dbo].[Maintenance].[System ID] = [System].[System ID]
	  INNER JOIN [State]
	  ON [csun112].[dbo].[Maintenance].[State ID] = [State].[State ID]
END
GO
