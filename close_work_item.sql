-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Update a work item (such as 
--				'Bug') with the status 'Closed'
--				that was filed in the system 
--				(such as 'IBS') and had 
--				specific Maintence ID number.
--				Children will close as well.
-- =============================================
CREATE PROCEDURE close_work_item
	 @workType nvarchar(255),  @systemType nvarchar(255), @maintenceID int
AS
BEGIN
	UPDATE [csun112].[dbo].[Maintenance]
	  SET [State] = 2
	  FROM [csun112].[dbo].[Maintenance]
	  INNER JOIN [Work Item Type]
	  ON [csun112].[dbo].[Maintenance].[Work Item Type] = [csun112].[dbo].[Work Item Type].[Work Item Type ID]
	  INNER JOIN [System]
	  ON [csun112].[dbo].[Maintenance].[System ID] = [System].[System ID]
	  WHERE [Work Item Type Name] = @workType AND [Abbreviation] = @systemType
			AND ([Maintenance ID] = @maintenceID OR [ChildOf] = @maintenceID)
END
GO
