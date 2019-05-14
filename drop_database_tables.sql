-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE drop_database_tables
AS
BEGIN

	/****** Script for setting FK on Maintenance Table  ******/
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__WorkItemType
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__AssignedTo
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__State
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__AcceptedBy
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__Activity
	ALTER TABLE [dbo].[Maintenance]
		DROP CONSTRAINT IF EXISTS FK__SystemID
	
	/****** Script for setting FK on Release Table  ******/
	ALTER TABLE [dbo].[Release]
		DROP CONSTRAINT IF EXISTS FK__AssociatedFeatures
	
	/****** Script for setting FK on Product Table  ******/
	ALTER TABLE [dbo].[Product]
		DROP CONSTRAINT IF EXISTS FK__ProductTypeID
	ALTER TABLE [dbo].[Product]
		DROP CONSTRAINT IF EXISTS FK__ProductSchemaID
	
	/****** Script for setting FK on Version Table  ******/
	ALTER TABLE [dbo].[Version]
		DROP CONSTRAINT IF EXISTS FK__ProductID
	ALTER TABLE [dbo].[Version]
		DROP CONSTRAINT IF EXISTS FK__ReleaseNum
	
	/****** Script for setting FK on Feature Table  ******/
	ALTER TABLE [dbo].[Feature]
		DROP CONSTRAINT IF EXISTS FK__FeatureType

	/****** Script for dropping Maintenance Table  ******/
	DROP TABLE IF EXISTS [dbo].[Maintenance];

	/****** Script for dropping Release Table  ******/
	DROP TABLE IF EXISTS [dbo].[Release] ;

	/****** Script for dropping System Table  ******/
	DROP TABLE IF EXISTS [dbo].[System];

	/****** Script for dropping Product Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product];
	
	/****** Script for dropping Version Table  ******/
	DROP TABLE IF EXISTS [dbo].[Version];
	
	/****** Script for dropping Feature Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature];
	
	/****** Script for dropping Work Item Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Work Item Type];
	
	/****** Script for dropping Stakeholder Table  ******/
	DROP TABLE IF EXISTS [dbo].[Stakeholder];

	/****** Script for dropping State Table  ******/
	DROP TABLE IF EXISTS [dbo].[State];
	
	/****** Script for dropping Activity Table  ******/
	DROP TABLE IF EXISTS [dbo].[Activity];

	/****** Script for dropping Product Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Type];
	
	/****** Script for dropping Product Schema Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Schema];

	/****** Script for dropping Feature Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature Type];
END
GO
