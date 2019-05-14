-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE [Drop Database Tables]
AS
BEGIN

	/****** Query for setting FK on Release Table  ******/
	ALTER TABLE [dbo].[Release]
		DROP CONSTRAINT IF EXISTS FK__AssociatedFeatures

	/****** Query for setting FK on Version Table  ******/
	ALTER TABLE [dbo].[Version]
		DROP CONSTRAINT IF EXISTS FK__ProductID
	ALTER TABLE [dbo].[Version]
		DROP CONSTRAINT IF EXISTS FK__ReleaseID

	/****** Query for setting FK on Maintenance Table  ******/
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
	
	/****** Query for setting FK on Product Table  ******/
	ALTER TABLE [dbo].[Product]
		DROP CONSTRAINT IF EXISTS FK__ProductTypeID
	ALTER TABLE [dbo].[Product]
		DROP CONSTRAINT IF EXISTS FK__ProductSchemaID
	
	/****** Query for setting FK on Feature Table  ******/
	ALTER TABLE [dbo].[Feature]
		DROP CONSTRAINT IF EXISTS FK__FeatureType

	/****** Query for dropping Maintenance Table  ******/
	DROP TABLE IF EXISTS [dbo].[Maintenance];

	/****** Query for dropping Release Table  ******/
	DROP TABLE IF EXISTS [dbo].[Release] ;

	/****** Query for dropping System Table  ******/
	DROP TABLE IF EXISTS [dbo].[System];

	/****** Query for dropping Product Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product];
	
	/****** Query for dropping Version Table  ******/
	DROP TABLE IF EXISTS [dbo].[Version];
	
	/****** Query for dropping Feature Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature];
	
	/****** Query for dropping Work Item Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Work Item Type];
	
	/****** Query for dropping Stakeholder Table  ******/
	DROP TABLE IF EXISTS [dbo].[Stakeholder];

	/****** Query for dropping State Table  ******/
	DROP TABLE IF EXISTS [dbo].[State];
	
	/****** Query for dropping Activity Table  ******/
	DROP TABLE IF EXISTS [dbo].[Activity];

	/****** Query for dropping Product Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Type];
	
	/****** Query for dropping Product Schema Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Schema];

	/****** Query for dropping Feature Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature Type];
END
GO
