/****** Script for SelectTopNRows command from SSMS  ******/
sp_rename 'System$.IBS', 'Abbreviation', 'COLUMN';
GO
sp_rename 'System$.Internal Bug System', 'System', 'COLUMN';
GO