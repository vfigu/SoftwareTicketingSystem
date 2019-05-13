-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE drop_database_tables
AS
BEGIN
	/****** Script for dropping Maintenance Table  ******/
	DROP TABLE [dbo].[Maintenance];

	/****** Script for dropping Release Table  ******/
	DROP TABLE [dbo].[Release] ;

	/****** Script for dropping System Table  ******/
	DROP TABLE [dbo].[System];

	/****** Script for dropping Product Table  ******/
	DROP TABLE [dbo].[Product];
	
	/****** Script for dropping Version Table  ******/
	DROP TABLE [dbo].[Version];
	
	/****** Script for dropping Feature Table  ******/
	DROP TABLE [dbo].[Feature];
	
	/****** Script for dropping Work Item Type Table  ******/
	DROP TABLE [dbo].[Work Item Type];
	
	/****** Script for dropping Stakeholder Table  ******/
	DROP TABLE [dbo].[Stakeholder];

	/****** Script for dropping State Table  ******/
	DROP TABLE [dbo].[State];
	
	/****** Script for dropping Activity Table  ******/
	DROP TABLE [dbo].[Activity];

	/****** Script for dropping Product Type Table  ******/
	DROP TABLE [dbo].[Product Type];
	
	/****** Script for dropping Product Schema Table  ******/
	DROP TABLE [dbo].[Product Schema];

	/****** Script for dropping Feature Type Table  ******/
	DROP TABLE [dbo].[Feature Type];
END
GO
