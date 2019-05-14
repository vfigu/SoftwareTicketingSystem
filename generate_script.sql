USE [csun112]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[Activity ID] [int] NOT NULL,
	[Activity Name] [nvarchar](255) NULL,
	[Activity Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Activity ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[Feature ID] [int] NOT NULL,
	[Feature Name] [nvarchar](255) NULL,
	[Feature Description] [nvarchar](max) NULL,
	[Feature Type ID] [int] NULL,
	[Feature Release Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature Type]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature Type](
	[Feature Type ID] [int] NOT NULL,
	[Feature Type Name] [nvarchar](255) NULL,
	[Feature Type Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature Type ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance](
	[Work Item Type] [nvarchar](255) NULL,
	[Maintenance ID] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Assigned To] [int] NULL,
	[State] [nvarchar](255) NULL,
	[Area Path] [nvarchar](255) NULL,
	[Comment Count] [int] NULL,
	[Created Date] [datetime] NULL,
	[Accepted By] [int] NULL,
	[Accepted Date] [nvarchar](255) NULL,
	[Activity] [nvarchar](255) NULL,
	[Priority] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[System ID] [int] NULL,
	[ChildOf] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product ID] [int] NOT NULL,
	[Product Name] [nvarchar](255) NULL,
	[Product Description] [nvarchar](max) NULL,
	[Product Type ID] [nvarchar](255) NULL,
	[Product Schema ID] [nvarchar](255) NULL,
	[Product Log] [nvarchar](255) NULL,
	[Approved] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product Schema]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product Schema](
	[Product Schema ID] [int] NOT NULL,
	[Product Schema Name] [nvarchar](255) NULL,
	[Product Schema Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product Schema ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product Type]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product Type](
	[Product Type ID] [int] NOT NULL,
	[Product Type Name] [nvarchar](255) NULL,
	[Product Type Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Product Type ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release](
	[Release Num] [float] NULL,
	[Release Name] [nvarchar](255) NULL,
	[Release Date] [datetime] NULL,
	[Associated Features] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stakeholder]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stakeholder](
	[Stakeholder ID] [int] NOT NULL,
	[Stakeholder Name] [nvarchar](255) NULL,
	[Stakeholder Email] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Stakeholder ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State ID] [int] NOT NULL,
	[State Name] [nvarchar](255) NULL,
	[State Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[State ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[System]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System](
	[System ID] [int] NOT NULL,
	[Abbreviation] [nvarchar](255) NULL,
	[System Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[System ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version](
	[Product ID] [int] NULL,
	[Release Num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work Item Type]    Script Date: 5/13/2019 8:25:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work Item Type](
	[Work Item Type ID] [int] NOT NULL,
	[Work Item Type Name] [nvarchar](255) NULL,
	[Work Item Type Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Work Item Type ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Activity] ([Activity ID], [Activity Name], [Activity Description]) VALUES (1, N'Development', N'')
INSERT [dbo].[Activity] ([Activity ID], [Activity Name], [Activity Description]) VALUES (2, N'Staging', N'')
INSERT [dbo].[Activity] ([Activity ID], [Activity Name], [Activity Description]) VALUES (3, N'Deployment', N'')
INSERT [dbo].[Activity] ([Activity ID], [Activity Name], [Activity Description]) VALUES (4, N'Legacy', N'')
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (1653, N'Feeds importer', N'', 1, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2723, N'Search bar styling improved', N'', 5, CAST(N'2018-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2724, N'Search speed improved', N'', 3, CAST(N'2018-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2727, N'Feeds parser', N'', 2, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2769, N'Feeds speed improved', N'', 3, CAST(N'2018-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2900, N'Data packet JSON parser', N'', 2, CAST(N'2019-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (2955, N'Search sorting improved', N'', 3, CAST(N'2018-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (3002, N'Authentication performance improved', N'', 3, CAST(N'2019-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature] ([Feature ID], [Feature Name], [Feature Description], [Feature Type ID], [Feature Release Date]) VALUES (3131, N'User search using IP Address', N'', 1, CAST(N'2019-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Feature Type] ([Feature Type ID], [Feature Type Name], [Feature Type Description]) VALUES (1, N'importer', N'')
INSERT [dbo].[Feature Type] ([Feature Type ID], [Feature Type Name], [Feature Type Description]) VALUES (2, N'parser', N'')
INSERT [dbo].[Feature Type] ([Feature Type ID], [Feature Type Name], [Feature Type Description]) VALUES (3, N'performance', N'')
INSERT [dbo].[Feature Type] ([Feature Type ID], [Feature Type Name], [Feature Type Description]) VALUES (5, N'styling', N'')
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2966, N'Tool: Error "Could not load file or assembly" on analyze', 1, N'1', N'Pro1Optimization', 0, CAST(N'2018-08-22T08:09:24.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 2, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2955, N'Pro1 Tool: Tool does not find all items of Customer by CustomerID', 2, N'1', N'Pro1Optimization', 0, CAST(N'2018-08-16T10:40:15.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 2, 2723)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'2', 1653, N'submit feed', 2, N'2', N'Pro1Optimization\AprilRelease', 0, CAST(N'2017-03-23T12:18:48.000' AS DateTime), 4, N'Apr 10 2018  6:57AM', N'3', 2, N'two different submits:&nbsp;<div><br></div><div>fist, submit FBM (optimizing Pro1 S) - used to get statistics . THis one creates new SKUs and allows to get dashboard report (that has traffic and other KPIs)</div><div><br></div><div><br></div><div>the first one is under type&nbsp;<span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;font-weight:bold;">Product Feed</span></div><span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;"></span><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;">Enumeration value:&nbsp;<samp class="ph codeph" style="padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;">_POST_PRODUCT_DATA_</samp></p><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;"><font color="#000000" face="verdana, arial, helvetica, sans-serif">http://docs.developer.amazonservices.com/en_US/feeds/Feeds_FeedType.html</font></p><div>second, submit FBA - to put those items that have the best KPI for sale , here we need to remap them into Pro1 s that are fulfilled by Amazon.</div><div><br></div><div>Supposedly,&nbsp;<span style="font-size:12px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;">Enumeration value:&nbsp;</span><samp class="ph codeph" style="font-size:12px;padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;color:rgb(0, 0, 0);">_POST_PRODUCT_OVERRIDES_DATA_ (<span style="font-weight:bold;">needs more research by Valera)</span></samp></div><div>Trigger the email to Amazon to remap the listing.( related task)</div><div><br></div><div>optionally -&nbsp;<span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;font-weight:bold;">Inventory Feed</span></div><span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;"></span><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;">Enumeration value:&nbsp;<samp class="ph codeph" style="padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;">_POST_INVENTORY_AVAILABILITY_DATA_</samp></p><div><br></div><div><br></div><div>http://docs.developer.amazonservices.com/en_US/feeds/Feeds_SubmitFeed.html</div><div><br></div><div>It is done only upon internally we mapped the SKUs</div><div><div><br></div><div><br></div></div>', 3, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 1952, N'Pro1 Optimization Tool: Pro1 Remaping. Wrong sorting in columns in Pro1 Remaping', 3, N'1', N'Pro1Optimization', 0, CAST(N'2017-06-14T09:09:57.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 1, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'2', 2723, N'Pro1 Tool: separate search history for a certain search type', 3, N'1', N'Pro1Optimization', 0, CAST(N'2018-04-05T07:35:38.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 3, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2724, N'Pro1 Tool: Search label text cuts on search cancel', 3, N'2', N'Pro1Optimization', 0, CAST(N'2018-04-05T07:42:59.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 1, 2723)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2725, N'Pro1 Tool: label text is not complete or comprehensive', 3, N'1', N'Pro1Optimization', 0, CAST(N'2018-04-05T07:42:59.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 2, 2723)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2734, N'Pro1 Tool: Pro1 doesn`t delete from database after deleting a single item in feed', 3, N'1', N'Pro1Optimization', 0, CAST(N'2018-04-10T06:11:25.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 2, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 2727, N'Pro1 Tool: Id is 0 in generated csv file', 3, N'2', N'Pro1Optimization', 3, CAST(N'2018-04-06T06:57:57.000' AS DateTime), 4, N'Apr 10 2018  6:57AM', N'3', 2, NULL, 2, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'2', 2782, N'Roll back the last update with database fix', 3, N'1', N'Pro1Optimization', 1, CAST(N'2018-05-28T08:28:53.000' AS DateTime), NULL, NULL, N'1', 2, N'delete new code that touched old/new database compatibility <br>', 3, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'3', 2769, N'Deployment', 3, N'2', N'Pro1Optimization\AprilRelease', 0, CAST(N'2018-04-06T06:57:57.000' AS DateTime), 4, N'Apr 15 2018  6:57AM', N'1', 2, NULL, 3, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 1803, N'Pro1 Optimization Tool: Missing a App icon', 3, N'1', N'Pro1Optimization', 0, CAST(N'2017-04-26T07:28:37.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 1, NULL)
INSERT [dbo].[Maintenance] ([Work Item Type], [Maintenance ID], [Title], [Assigned To], [State], [Area Path], [Comment Count], [Created Date], [Accepted By], [Accepted Date], [Activity], [Priority], [Description], [System ID], [ChildOf]) VALUES (N'1', 1970, N'Color lookup should match entire color value', 3, N'3', N'Pro1Optimization', 0, CAST(N'2017-07-06T09:31:16.000' AS DateTime), NULL, NULL, N'1', 2, NULL, 1, NULL)
INSERT [dbo].[Product] ([Product ID], [Product Name], [Product Description], [Product Type ID], [Product Schema ID], [Product Log], [Approved]) VALUES (1, N'Pro1 Optimization Tool', N'Tool for optimizing performance on devices', N'1', N'1', N'', N'approved')
INSERT [dbo].[Product] ([Product ID], [Product Name], [Product Description], [Product Type ID], [Product Schema ID], [Product Log], [Approved]) VALUES (2, N'Pro1 Cleaning Tool', N'Tool for clearing hard to remove temporary files left behind on devices', N'1', N'1', N'', N'approved')
INSERT [dbo].[Product] ([Product ID], [Product Name], [Product Description], [Product Type ID], [Product Schema ID], [Product Log], [Approved]) VALUES (3, N'Stream Flow', N'Service for streaming new services on the fly through the browser', N'2', N'2', N'', N'pending')
INSERT [dbo].[Product] ([Product ID], [Product Name], [Product Description], [Product Type ID], [Product Schema ID], [Product Log], [Approved]) VALUES (4, N'Cinder', N'Dating application for computer scientists', N'3', N'1', N'', N'cancelled')
INSERT [dbo].[Product Schema] ([Product Schema ID], [Product Schema Name], [Product Schema Description]) VALUES (1, N'Cross Platform Application', N'PC/MAC/iOS/Android')
INSERT [dbo].[Product Schema] ([Product Schema ID], [Product Schema Name], [Product Schema Description]) VALUES (2, N'Web Application', N'All browsers supported')
INSERT [dbo].[Product Type] ([Product Type ID], [Product Type Name], [Product Type Description]) VALUES (1, N'Performance Enchancing Software', N'Background service that speeds up device performance')
INSERT [dbo].[Product Type] ([Product Type ID], [Product Type Name], [Product Type Description]) VALUES (2, N'Streaming Service', N'Subscription based software that readily available')
INSERT [dbo].[Product Type] ([Product Type ID], [Product Type Name], [Product Type Description]) VALUES (3, N'Other', N'')
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (123, N'Feeds Implementation', CAST(N'2018-04-30T00:00:00.000' AS DateTime), 1653)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (123, N'Feeds Implementation', CAST(N'2018-04-30T00:00:00.000' AS DateTime), 2727)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (123, N'Feeds Implementation', CAST(N'2018-04-30T00:00:00.000' AS DateTime), 2769)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (456, N'Search fixes', CAST(N'2018-08-31T00:00:00.000' AS DateTime), 2955)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (456, N'Search fixes', CAST(N'2018-08-31T00:00:00.000' AS DateTime), 2723)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (456, N'Search fixes', CAST(N'2018-08-31T00:00:00.000' AS DateTime), 2724)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (144, N'Feeds Implementation', CAST(N'2018-04-30T00:00:00.000' AS DateTime), 1653)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (180, N'Search fixes', CAST(N'2019-04-02T00:00:00.000' AS DateTime), 2724)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (293, N'Stream Implementation', CAST(N'2019-05-12T00:00:00.000' AS DateTime), 2900)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (305, N'Authentication fixes', CAST(N'2019-05-12T00:00:00.000' AS DateTime), 3002)
INSERT [dbo].[Release] ([Release Num], [Release Name], [Release Date], [Associated Features]) VALUES (106, N'User search', CAST(N'2019-05-12T00:00:00.000' AS DateTime), 3131)
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (1, N'Ginny', N'ginny.f76@outlook.com')
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (2, N'Alex', N'alexht635@outlook.com')
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (3, N'Hh', N'Developer@yahoo.com')
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (4, N'Release Manager', N'manager@outlook.com')
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (5, N'Product Owner', N'ceo@outlook.com')
INSERT [dbo].[Stakeholder] ([Stakeholder ID], [Stakeholder Name], [Stakeholder Email]) VALUES (6, N'Invester #1', N'geocrop@gmail.com')
INSERT [dbo].[State] ([State ID], [State Name], [State Description]) VALUES (1, N'New', N'')
INSERT [dbo].[State] ([State ID], [State Name], [State Description]) VALUES (2, N'Closed', N'')
INSERT [dbo].[State] ([State ID], [State Name], [State Description]) VALUES (3, N'Resolved', N'')
INSERT [dbo].[System] ([System ID], [Abbreviation], [System Name]) VALUES (1, N'IBS', N'Internal Bug System')
INSERT [dbo].[System] ([System ID], [Abbreviation], [System Name]) VALUES (2, N'CBD', N'Customer Bug System')
INSERT [dbo].[System] ([System ID], [Abbreviation], [System Name]) VALUES (3, N'TFS', N'Team Foundation System')
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (1, 123)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (1, 456)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (2, 144)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (2, 180)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (3, 293)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (3, 305)
INSERT [dbo].[Version] ([Product ID], [Release Num]) VALUES (4, 106)
INSERT [dbo].[Work Item Type] ([Work Item Type ID], [Work Item Type Name], [Work Item Type Description]) VALUES (1, N'Bug', N'')
INSERT [dbo].[Work Item Type] ([Work Item Type ID], [Work Item Type Name], [Work Item Type Description]) VALUES (2, N'Task', N'')
INSERT [dbo].[Work Item Type] ([Work Item Type ID], [Work Item Type Name], [Work Item Type Description]) VALUES (3, N'User Story', N'')
INSERT [dbo].[Work Item Type] ([Work Item Type ID], [Work Item Type Name], [Work Item Type Description]) VALUES (4, N'Other', N'')
/****** Object:  StoredProcedure [dbo].[close_work_item]    Script Date: 5/13/2019 8:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
CREATE PROCEDURE [dbo].[close_work_item]
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
/****** Object:  StoredProcedure [dbo].[create_database_tables]    Script Date: 5/13/2019 8:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE [dbo].[create_database_tables]
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
/****** Object:  StoredProcedure [dbo].[drop_database_tables]    Script Date: 5/13/2019 8:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Create Database Tables from Scratch
-- =============================================
CREATE PROCEDURE [dbo].[drop_database_tables]
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
/****** Object:  StoredProcedure [dbo].[get_release]    Script Date: 5/13/2019 8:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Get Release associated from Feature
-- =============================================
CREATE PROCEDURE [dbo].[get_release]
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
/****** Object:  StoredProcedure [dbo].[seed_database_tables]    Script Date: 5/13/2019 8:26:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Seed Database Tables with Data
-- =============================================
CREATE PROCEDURE [dbo].[seed_database_tables]
AS
BEGIN
	/****** Script for seeding Maintenance Table  ******/
	INSERT INTO [dbo].[Maintenance] (
		[Work Item Type],
		[Maintenance ID],
		[Title],
		[Assigned To],
		[State],
		[Area Path],
		[Comment Count],
		[Created Date],
		[Accepted By],
		[Accepted Date],
		[Activity],
		[Priority],
		[Description],
		[System ID],
		[ChildOf]
	)
	VALUES
		(1,2966,'Tool: Error "Could not load file or assembly" on analyze',1,1,'Pro1Optimization',0,CONVERT(datetime, 'Aug 22 2018 08:09:24'),NULL,NULL,1,2,NULL,2,NULL),
		(1,2955,'Pro1 Tool: Tool does not find all items of Customer by CustomerID',2,1,'Pro1Optimization',0,CONVERT(datetime, 'Aug 16 2018 10:40:15'),NULL,NULL,1,2,NULL,2,2723),
		(2,1653,'submit feed',2,2,'Pro1Optimization\AprilRelease',0,CONVERT(datetime, 'Mar 23 2017 12:18:48'),4,CONVERT(datetime, 'Apr 10 2018 06:57:57'),3,2,'two different submits:&nbsp;<div><br></div><div>fist, submit FBM (optimizing Pro1 S) - used to get statistics . THis one creates new SKUs and allows to get dashboard report (that has traffic and other KPIs)</div><div><br></div><div><br></div><div>the first one is under type&nbsp;<span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;font-weight:bold;">Product Feed</span></div><span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;"></span><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;">Enumeration value:&nbsp;<samp class="ph codeph" style="padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;">_POST_PRODUCT_DATA_</samp></p><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;"><font color="#000000" face="verdana, arial, helvetica, sans-serif">http://docs.developer.amazonservices.com/en_US/feeds/Feeds_FeedType.html</font></p><div>second, submit FBA - to put those items that have the best KPI for sale , here we need to remap them into Pro1 s that are fulfilled by Amazon.</div><div><br></div><div>Supposedly,&nbsp;<span style="font-size:12px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;">Enumeration value:&nbsp;</span><samp class="ph codeph" style="font-size:12px;padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;color:rgb(0, 0, 0);">_POST_PRODUCT_OVERRIDES_DATA_ (<span style="font-weight:bold;">needs more research by Valera)</span></samp></div><div>Trigger the email to Amazon to remap the listing.( related task)</div><div><br></div><div>optionally -&nbsp;<span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;font-weight:bold;">Inventory Feed</span></div><span style="color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;"></span><p class=p style="padding:0px;margin-top:8px;margin-bottom:8px;color:rgb(0, 0, 0);font-family:verdana, arial, helvetica, sans-serif;font-size:12px;">Enumeration value:&nbsp;<samp class="ph codeph" style="padding:0px;margin:0px;font-family:&quot;Courier New&quot;, Courier, monospace;">_POST_INVENTORY_AVAILABILITY_DATA_</samp></p><div><br></div><div><br></div><div>http://docs.developer.amazonservices.com/en_US/feeds/Feeds_SubmitFeed.html</div><div><br></div><div>It is done only upon internally we mapped the SKUs</div><div><div><br></div><div><br></div></div>',3,NULL),
		(1,1952,'Pro1 Optimization Tool: Pro1 Remaping. Wrong sorting in columns in Pro1 Remaping',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Jun 14 2017 09:09:57'),NULL,NULL,1,2,NULL,1,NULL),
		(2,2723,'Pro1 Tool: separate search history for a certain search type',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Apr 05 2018 07:35:38'),NULL,NULL,1,2,NULL,3,NULL),
		(1,2724,'Pro1 Tool: Search label text cuts on search cancel',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Apr 05 2018 07:42:59'),NULL,NULL,1,2,NULL,1,2723),
		(1,2725,'Pro1 Tool: label text is not complete or comprehensive',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Apr 05 2018 07:42:59'),NULL,NULL,1,2,NULL,2,2723),
		(1,2734,'Pro1 Tool: Pro1 doesn`t delete from database after deleting a single item in feed',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Apr 10 2018 06:11:25'),NULL,NULL,1,2,NULL,2,NULL),
		(1,2727,'Pro1 Tool: Id is 0 in generated csv file',3,2,'Pro1Optimization',3,CONVERT(datetime, 'Apr 06 2018 06:57:57'),4,CONVERT(datetime, 'Apr 10 2018 06:57:57'),3,2,NULL,2,NULL),
		(2,2782,'Roll back the last update with database fix',3,1,'Pro1Optimization',1,CONVERT(datetime, 'May 28 2018 08:28:53'),NULL,NULL,1,2,'delete new code that touched old/new database compatibility <br>',3,NULL),
		(3,2769,'Deployment',3,2,'Pro1Optimization\AprilRelease',0,CONVERT(datetime, 'Apr 06 2018 06:57:57'),4,CONVERT(datetime, 'Apr 15 2018 06:57:57'),1,2,NULL,3,NULL),
		(1,1803,'Pro1 Optimization Tool: Missing a App icon',3,1,'Pro1Optimization',0,CONVERT(datetime, 'Apr 26 2017 07:28:37'),NULL,NULL,1,2,NULL,1,NULL),
		(1,1970,'Color lookup should match entire color value',3,3,'Pro1Optimization',0,CONVERT(datetime, 'Jul 06 2017 09:31:16'),NULL,NULL,1,2,NULL,1,NULL)

	/****** Script for creating Release Table  ******/
	INSERT INTO [dbo].[Release] (
		[Release Num],
		[Release Name],
		[Release Date],
		[Associated Features]
	)
	VALUES
		(123,'Feeds Implementation',CONVERT(datetime, '4/30/2018'),1653),
		(123,'Feeds Implementation',CONVERT(datetime, '4/30/2018'),2727),
		(123,'Feeds Implementation',CONVERT(datetime, '4/30/2018'),2769),
		(456,'Search fixes',CONVERT(datetime, '8/31/2018'),2955),
		(456,'Search fixes',CONVERT(datetime, '8/31/2018'),2723),
		(456,'Search fixes',CONVERT(datetime, '8/31/2018'),2724),
		(144,'Feeds Implementation',CONVERT(datetime, '4/30/2018'),1653),
		(180,'Search fixes',CONVERT(datetime, '4/02/2019'),2724),
		(293,'Stream Implementation',CONVERT(datetime, '5/12/2019'),2900),
		(305,'Authentication fixes',CONVERT(datetime, '5/12/2019'),3002),
		(106,'User search',CONVERT(datetime, '5/12/2019'),3131)

	/****** Script for creating System Table  ******/
	INSERT INTO [dbo].[System] (
		[System ID],
		[Abbreviation],
		[System Name]
	)
	VALUES
		(1, 'IBS', 'Internal Bug System'),
		(2, 'CBD', 'Customer Bug System'),
		(3, 'TFS', 'Team Foundation System')

	/****** Script for creating Product Table  ******/
	INSERT INTO [dbo].[Product] (
		[Product ID],
		[Product Name],
		[Product Description],
		[Product Type ID],
		[Product Schema ID],
		[Product Log],
		[Approved]
	)
	VALUES
		(1,'Pro1 Optimization Tool','Tool for optimizing performance on devices',1,1,'','approved'),
		(2,'Pro1 Cleaning Tool','Tool for clearing hard to remove temporary files left behind on devices',1,1,'','approved'),
		(3,'Stream Flow','Service for streaming new services on the fly through the browser',2,2,'','pending'),
		(4,'Cinder','Dating application for computer scientists',3,1,'','cancelled')
	
	/****** Script for creating Version Table  ******/
	INSERT INTO [dbo].[Version] (
		[Product ID],
		[Release Num]
	)
	VALUES
		(1,123),
		(1,456),
		(2,144),
		(2,180),
		(3,293),
		(3,305),
		(4,106)
	
	/****** Script for creating Feature Table  ******/
	INSERT INTO [dbo].[Feature] (
		[Feature ID],
		[Feature Name],
		[Feature Description],
		[Feature Type ID],
		[Feature Release Date]
	)
	VALUES
		(1653,'Feeds importer','',1,convert(datetime, '4/30/2018')),
		(2727,'Feeds parser','',2,convert(datetime, '4/30/2018')),
		(2769,'Feeds speed improved','',3,convert(datetime, '4/30/2018')),
		(2955,'Search sorting improved','',3,convert(datetime, '8/31/2018')),
		(2723,'Search bar styling improved','',5,convert(datetime, '8/31/2018')),
		(2724,'Search speed improved','',3,convert(datetime, '8/31/2018')),
		(2900,'Data packet JSON parser','',2,convert(datetime, '5/12/2019')),
		(3002,'Authentication performance improved','',3,convert(datetime, '5/12/2019')),
		(3131,'User search using IP Address','',1,convert(datetime, '5/12/2019'))
	
	/****** Script for creating Work Item Type Table  ******/
	INSERT INTO [dbo].[Work Item Type] (
		[Work Item Type ID],
		[Work Item Type Name],
		[Work Item Type Description]
	)
	VALUES
		(1,'Bug',''),
		(2,'Task',''),
		(3,'User Story',''),
		(4,'Other','')
	
	/****** Script for creating Stakeholder Table  ******/
	INSERT INTO [dbo].[Stakeholder] (
		[Stakeholder ID],
		[Stakeholder Name],
		[Stakeholder Email]
	)
	VALUES
		(1, 'Ginny', 'ginny.f76@outlook.com'),
		(2, 'Alex', 'alexht635@outlook.com'),
		(3, 'Hh', 'Developer@yahoo.com'),
		(4, 'Release Manager', 'manager@outlook.com'),
		(5, 'Product Owner', 'ceo@outlook.com'),
		(6, 'Invester #1', 'geocrop@gmail.com')

	/****** Script for creating State Table  ******/
	INSERT INTO [dbo].[State] (
		[State ID],
		[State Name],
		[State Description]
	)
	VALUES
		(1, 'New',''),
		(2, 'Closed',''),
		(3, 'Resolved','')
	
	/****** Script for creating Activity Table  ******/
	INSERT INTO [dbo].[Activity] (
		[Activity ID],
		[Activity Name],
		[Activity Description]
	)
	VALUES
		(1, 'Development',''),
		(2, 'Staging',''),
		(3, 'Deployment',''),
		(4, 'Legacy','')
	
	/****** Script for creating Product Type Table  ******/
	INSERT INTO [dbo].[Product Type] (
		[Product Type ID],
		[Product Type Name],
		[Product Type Description]
	)
	VALUES
		(1,'Performance Enchancing Software','Background service that speeds up device performance'),
		(2,'Streaming Service','Subscription based software that readily available'),
		(3,'Other','')
	
	/****** Script for creating Product Schema Table  ******/
	INSERT INTO [dbo].[Product Schema] (
		[Product Schema ID],
		[Product Schema Name],
		[Product Schema Description]
	)
	VALUES
		(1,'Cross Platform Application','PC/MAC/iOS/Android'),
		(2,'Web Application','All browsers supported')
	
	/****** Script for creating Feature Type Table  ******/
	INSERT INTO [dbo].[Feature Type] (
		[Feature Type ID],
		[Feature Type Name],
		[Feature Type Description]
	)
	VALUES
		(1,'importer',''),
		(2,'parser',''),
		(3,'performance',''),
		(5,'styling','')
END
GO
