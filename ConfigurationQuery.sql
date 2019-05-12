/****** Import CSUN File for Load.xls before executing  ******/

/****** Script for SelectTopNRows command from SSMS  ******/
sp_rename 'System$.IBS', 'Abbreviation', 'COLUMN';
GO
sp_rename 'System$.Internal Bug System', 'System', 'COLUMN';
GO
INSERT INTO [csun112].[dbo].[System$]([Abbreviation], [System])
VALUES ('IBS', 'Internal Bug System');