-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE create_database_tables
AS
BEGIN
	/****** Script for creating Maintenance Table  ******/
	CREATE TABLE [dbo].[Maintenance] (
		[Work Item Type] nvarchar(255),
		[Maintenance ID] int,
		[Title] nvarchar(255),
		[Assigned To] int,
		[State] nvarchar(255),
		[Area Path] nvarchar(255),
		[Comment Count] int,
		[Created Date] datetime,
		[Accepted By] int,
		[Accepted Date] nvarchar(255),
		[Activity] nvarchar(255),
		[Priority] int,
		[Description] nvarchar(max),
		[System ID] int,
		[ChildOf] int,
	)

	/****** Script for creating Release Table  ******/
	CREATE TABLE [dbo].[Release] (
		[Release Num] float,
		[Release Name] nvarchar(255),
		[Release Date] datetime,
		[Associated Features] int,
	)

	/****** Script for creating System Table  ******/
	CREATE TABLE [dbo].[System] (
		[System ID] int,
		[Abbreviation] nvarchar(255),
		[System Name] nvarchar(255)

		PRIMARY KEY ([System ID])
	)

	/****** Script for creating Product Table  ******/
	CREATE TABLE [dbo].[Product] (
		[Product ID] int,
		[Product Name] nvarchar(255),
		[Product Description] nvarchar(max),
		[Product Type ID] nvarchar(255),
		[Product Schema ID] nvarchar(255),
		[Product Log] nvarchar(255),
		[Approved] nvarchar(10),

		PRIMARY KEY ([Product ID])
	)
	
	/****** Script for creating Version Table  ******/
	CREATE TABLE [dbo].[Version] (
		[Product ID] int,
		[Release Num] int,
	)
	
	/****** Script for creating Feature Table  ******/
	CREATE TABLE [dbo].[Feature] (
		[Feature ID] int,
		[Feature Name] nvarchar(255),
		[Feature Description] nvarchar(max),
		[Feature Type ID] int,
		[Feature Release Date] datetime,

		PRIMARY KEY ([Feature ID])
	)
	
	/****** Script for creating Work Item Type Table  ******/
	CREATE TABLE [dbo].[Work Item Type] (
		[Work Item Type ID] int,
		[Work Item Type Name] nvarchar(255),
		[Work Item Type Description] nvarchar(max),

		PRIMARY KEY ([Work Item Type ID])
	)
	
	/****** Script for creating Stakeholder Table  ******/
	CREATE TABLE [dbo].[Stakeholder] (
		[Stakeholder ID] int,
		[Stakeholder Name] nvarchar(255),
		[Stakeholder Email] nvarchar(255),

		PRIMARY KEY ([Stakeholder ID])
	)

	/****** Script for creating State Table  ******/
	CREATE TABLE [dbo].[State] (
		[State ID] int,
		[State Name] nvarchar(255),
		[State Description] nvarchar(max),

		PRIMARY KEY ([State ID])
	)
	
	/****** Script for creating Activity Table  ******/
	CREATE TABLE [dbo].[Activity] (
		[Activity ID] int,
		[Activity Name] nvarchar(255),
		[Activity Description] nvarchar(max),

		PRIMARY KEY ([Activity ID])
	)

	
	/****** Script for creating Product Type Table  ******/
	CREATE TABLE [dbo].[Product Type] (
		[Product Type ID] int,
		[Product Type Name] nvarchar(255),
		[Product Type Description] nvarchar(max),

		PRIMARY KEY ([Product Type ID])
	)
	
	/****** Script for creating Product Schema Table  ******/
	CREATE TABLE [dbo].[Product Schema] (
		[Product Schema ID] int,
		[Product Schema Name] nvarchar(255),
		[Product Schema Description] nvarchar(max),

		PRIMARY KEY ([Product Schema ID])
	)
			
	/****** Script for creating Feature Type Table  ******/
	CREATE TABLE [dbo].[Feature Type] (
		[Feature Type ID] int,
		[Feature Type Name] nvarchar(255),
		[Feature Type Description] nvarchar(max),

		PRIMARY KEY ([Feature Type ID])
	)
END
GO
