-- =============================================
-- Author:		Vicente Figueroa
-- Create date:	5/14/2019
-- Description:	Seed Database Tables with Data
-- =============================================
CREATE PROCEDURE seed_database_tables
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
