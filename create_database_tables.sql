-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE create_database_tables
AS
BEGIN
	/****** Script for creating Work Table  ******/
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
		[Description] nvarchar(255),
		[System ID] int,
		[ChildOf] int,
	)

	/****** Script for creating Release Table  ******/
	CREATE TABLE [dbo].[Release] (
		[Release Num] float,
		[Release Name] nvarchar(255),
		[Release Date] datetime,
		[Associated Features] int,

		PRIMARY KEY ([Release Num])
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
		[Product Description] nvarchar(255),
		[Product Type ID] nvarchar(255),
		[Product Schema ID] nvarchar(255),
		[Product Log] nvarchar(255),
		[Approved] nvarchar(10),

		PRIMARY KEY ([Product ID])
	)
	
	/****** Script for creating Version Table  ******/
	CREATE TABLE [dbo].[Version] (
		[Version ID] int,
		[Product ID] int,
		[Release Num] int,

		PRIMARY KEY ([Version ID])
	)
	
	/****** Script for creating Feature Table  ******/
	CREATE TABLE [dbo].[Feature] (
		[Feature ID] int,
		[Feature Name] nvarchar(255),
		[Feature Description] nvarchar(255),
		[Feature Type ID] int,
		[Feature Release Date] datetime,

		PRIMARY KEY ([Feature ID])
	)
	
	/****** Script for creating Work Item Type Table  ******/
	CREATE TABLE [dbo].[Work Item Type] (
		[Work Item Type ID] int,
		[Work Item Type Name] nvarchar(255),
		[Work Item Type Description] nvarchar(255),

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
		[State Description] nvarchar(255),

		PRIMARY KEY ([State ID])
	)
	
	/****** Script for creating Activity Table  ******/
	CREATE TABLE [dbo].[Activity] (
		[Activity ID] int,
		[Activity Name] nvarchar(255),
		[Activity Description] nvarchar(255),

		PRIMARY KEY ([Activity ID])
	)

	
	/****** Script for creating Product Type Table  ******/
	CREATE TABLE [dbo].[Product Type] (
		[Product Type ID] int,
		[Product Type Name] nvarchar(255),
		[Product Type Description] nvarchar(255),

		PRIMARY KEY ([Product Type ID])
	)
	
	/****** Script for creating Product Schema Table  ******/
	CREATE TABLE [dbo].[Product Schema] (
		[Product Schema ID] int,
		[Product Schema Name] nvarchar(255),
		[Product Schema Description] nvarchar(255),

		PRIMARY KEY ([Product Schema ID])
	)

	/****** Script for creating Features In Version Table  ******/
	CREATE TABLE [dbo].[Features In Version] (
		[Version ID] int,
		[Feature ID] int,
	)
		
	/****** Script for creating Feature Type Table  ******/
	CREATE TABLE [dbo].[Feature Type] (
		[Feature Type ID] int,
		[Feature Type Name] nvarchar(255),
		[Feature Type Description] nvarchar(255),

		PRIMARY KEY ([Feature Type ID])
	)
	
	/****** Script for creating Feature Table  ******/
	CREATE TABLE [dbo].[Bug] (
		[Bug ID] int,
		[Bug Name] nvarchar(255),
		[Bug Description] nvarchar(255),
		[Bug Create Date] datetime,

		PRIMARY KEY ([Bug ID])
	)
	
	/****** Script for creating Feature Table  ******/
	CREATE TABLE [dbo].[Ticket] (
		[Ticket ID] int,
		[Ticket Name] nvarchar(255),
		[Ticket Description] nvarchar(255),
		[Ticket Release Date] datetime,

		PRIMARY KEY ([Ticket ID])
	)
END
GO
