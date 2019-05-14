-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE create_database_tables
AS
BEGIN
	/****** Script for creating Maintenance Table  ******/
	DROP TABLE IF EXISTS [dbo].[Maintenance]
	CREATE TABLE [dbo].[Maintenance] (
		[Work Item Type ID] int,
		[Maintenance ID] int,
		[Title] nvarchar(255),
		[Assigned To] int,
		[State ID] int,
		[Area Path] nvarchar(255),
		[Comment Count] int,
		[Created Date] datetime,
		[Accepted By] int,
		[Accepted Date] datetime,
		[Activity ID] int,
		[Priority] int,
		[Description] nvarchar(max),
		[System ID] int,
		[ChildOf] int,

		PRIMARY KEY ([Maintenance ID]),
	)

	/****** Script for creating Release Table  ******/
	DROP TABLE IF EXISTS [dbo].[Release]
	CREATE TABLE [dbo].[Release] (
		[Release ID] int,
		[Release Num] int,
		[Release Name] nvarchar(255),
		[Release Date] datetime,
		[Associated Features] int,

		PRIMARY KEY ([Release ID]),
	)

	/****** Script for creating System Table  ******/
	DROP TABLE IF EXISTS [dbo].[System]
	CREATE TABLE [dbo].[System] (
		[System ID] int,
		[Abbreviation] nvarchar(255),
		[System Name] nvarchar(255)

		PRIMARY KEY ([System ID])
	)

	/****** Script for creating Product Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product]
	CREATE TABLE [dbo].[Product] (
		[Product ID] int,
		[Product Name] nvarchar(255),
		[Product Description] nvarchar(max),
		[Product Type ID] int,
		[Product Schema ID] int,
		[Product Log] nvarchar(255),
		[Approved] nvarchar(10),

		PRIMARY KEY ([Product ID]),
	)
	
	/****** Script for creating Version Table  ******/
	DROP TABLE IF EXISTS [dbo].[Version]
	CREATE TABLE [dbo].[Version] (
		[Product ID] int,
		[Release ID] int,
	)
	
	/****** Script for creating Feature Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature]
	CREATE TABLE [dbo].[Feature] (
		[Feature ID] int,
		[Feature Name] nvarchar(255),
		[Feature Description] nvarchar(max),
		[Feature Type ID] int,
		[Feature Release Date] datetime,

		PRIMARY KEY ([Feature ID])
	)
	
	/****** Script for creating Work Item Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Work Item Type]
	CREATE TABLE [dbo].[Work Item Type] (
		[Work Item Type ID] int,
		[Work Item Type Name] nvarchar(255),
		[Work Item Type Description] nvarchar(max),

		PRIMARY KEY ([Work Item Type ID])
	)
	
	/****** Script for creating Stakeholder Table  ******/
	DROP TABLE IF EXISTS [dbo].[Stakeholder]
	CREATE TABLE [dbo].[Stakeholder] (
		[Stakeholder ID] int,
		[Stakeholder Name] nvarchar(255),
		[Stakeholder Email] nvarchar(255),

		PRIMARY KEY ([Stakeholder ID])
	)

	/****** Script for creating State Table  ******/
	DROP TABLE IF EXISTS [dbo].[State]
	CREATE TABLE [dbo].[State] (
		[State ID] int,
		[State Name] nvarchar(255),
		[State Description] nvarchar(max),

		PRIMARY KEY ([State ID])
	)
	
	/****** Script for creating Activity Table  ******/
	DROP TABLE IF EXISTS [dbo].[Activity]
	CREATE TABLE [dbo].[Activity] (
		[Activity ID] int,
		[Activity Name] nvarchar(255),
		[Activity Description] nvarchar(max),

		PRIMARY KEY ([Activity ID])
	)
	
	/****** Script for creating Product Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Type]
	CREATE TABLE [dbo].[Product Type] (
		[Product Type ID] int,
		[Product Type Name] nvarchar(255),
		[Product Type Description] nvarchar(max),

		PRIMARY KEY ([Product Type ID])
	)
		
	/****** Script for creating Product Schema Table  ******/
	DROP TABLE IF EXISTS [dbo].[Product Schema]
	CREATE TABLE [dbo].[Product Schema] (
		[Product Schema ID] int,
		[Product Schema Name] nvarchar(255),
		[Product Schema Description] nvarchar(max),

		PRIMARY KEY ([Product Schema ID])
	)
			
	/****** Script for creating Feature Type Table  ******/
	DROP TABLE IF EXISTS [dbo].[Feature Type]
	CREATE TABLE [dbo].[Feature Type] (
		[Feature Type ID] int,
		[Feature Type Name] nvarchar(255),
		[Feature Type Description] nvarchar(max),

		PRIMARY KEY ([Feature Type ID])
	)
	
	/****** Script for setting FK on Maintenance Table  ******/
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__WorkItemTypeID
		FOREIGN KEY ([Work Item Type ID]) REFERENCES [Work Item Type]([Work Item Type ID])
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__AssignedTo
		FOREIGN KEY ([Assigned To]) REFERENCES [Stakeholder]([Stakeholder ID])
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__State
		FOREIGN KEY ([State ID]) REFERENCES [State]([State ID])
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__AcceptedBy
		FOREIGN KEY ([Accepted By]) REFERENCES [Stakeholder]([Stakeholder ID])
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__Activity
		FOREIGN KEY ([Activity ID]) REFERENCES [Activity]([Activity ID])
	ALTER TABLE [dbo].[Maintenance]
		ADD CONSTRAINT FK__SystemID
		FOREIGN KEY ([System ID]) REFERENCES [System]([System ID])
	
	/****** Script for setting FK on Release Table  ******/
	ALTER TABLE [dbo].[Release]
		ADD CONSTRAINT FK__AssociatedFeatures
		FOREIGN KEY ([Associated Features]) REFERENCES [dbo].[Feature]([Feature ID])
	
	/****** Script for setting FK on Product Table  ******/
	ALTER TABLE [dbo].[Product]
		ADD CONSTRAINT FK__ProductTypeID
		FOREIGN KEY ([Product Type ID]) REFERENCES [dbo].[Product Type]([Product Type ID])
	ALTER TABLE [dbo].[Product]
		ADD CONSTRAINT FK__ProductSchemaID
		FOREIGN KEY ([Product Schema ID]) REFERENCES [dbo].[Product Schema]([Product Schema ID])
	
	/****** Script for setting FK on Version Table  ******/
	ALTER TABLE [dbo].[Version]
		ADD CONSTRAINT FK__ProductID
		FOREIGN KEY ([Product ID]) REFERENCES [dbo].[Product]([Product ID])
	ALTER TABLE [dbo].[Version]
		ADD CONSTRAINT FK__ReleaseID
		FOREIGN KEY ([Release ID]) REFERENCES [dbo].[Release]([Release ID])
	
	/****** Script for setting FK on Feature Table  ******/
	ALTER TABLE [dbo].[Feature]
		ADD CONSTRAINT FK__FeatureType
		FOREIGN KEY ([Feature Type ID]) REFERENCES [dbo].[Feature Type]([Feature Type ID])
END
GO
