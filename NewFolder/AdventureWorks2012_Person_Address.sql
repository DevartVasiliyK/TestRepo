﻿CREATE TABLE AdventureWorks2012.Person.Address (
  AddressID INT IDENTITY NOT FOR REPLICATION,
  AddressLine1 NVARCHAR(60) NOT NULL,
  AddressLine2 NVARCHAR(60) NULL,
  City NVARCHAR(30) NOT NULL,
  StateProvinceID INT NOT NULL,
  PostalCode NVARCHAR(15) NOT NULL,
  SpatialLocation GEOGRAPHY NULL,
  rowguid UNIQUEIDENTIFIER NOT NULL CONSTRAINT DF_Address_rowguid DEFAULT (NEWID()) ROWGUIDCOL,
  ModifiedDate DATETIME NOT NULL CONSTRAINT DF_Address_ModifiedDate DEFAULT (GETDATE()),
  CONSTRAINT PK_Address_AddressID PRIMARY KEY CLUSTERED (AddressID),
  CONSTRAINT FK_Address_StateProvince_StateProvinceID FOREIGN KEY (StateProvinceID) REFERENCES Person.StateProvince (StateProvinceID)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX AK_Address_rowguid
ON AdventureWorks2012.Person.Address (rowguid)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode
ON AdventureWorks2012.Person.Address (AddressLine1, AddressLine2, City, StateProvinceID, PostalCode)
ON [PRIMARY]
GO

CREATE INDEX IX_Address_StateProvinceID
ON AdventureWorks2012.Person.Address (StateProvinceID)
ON [PRIMARY]
GO

CREATE STATISTICS statistics1
ON AdventureWorks2012.Person.Address (City)
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Street address information for customers, employees, and vendors.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Primary key for Address records.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'AddressID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'First street address line.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'AddressLine1'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Second street address line.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'AddressLine2'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Name of the city.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'City'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Unique identification number for the state or province. Foreign key to StateProvince table.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'StateProvinceID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Postal code for the street address.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'PostalCode'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Latitude and longitude of this address.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'SpatialLocation'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'rowguid'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Date and time the record was last updated.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'COLUMN',
                                N'ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Unique nonclustered index. Used to support replication samples.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'INDEX',
                                N'AK_Address_rowguid'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Nonclustered index.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'INDEX',
                                N'IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Nonclustered index.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'INDEX',
                                N'IX_Address_StateProvinceID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Clustered index created by a primary key constraint.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'INDEX',
                                N'PK_Address_AddressID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Primary key (clustered) constraint',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'CONSTRAINT',
                                N'PK_Address_AddressID'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Default constraint value of GETDATE()',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'CONSTRAINT',
                                N'DF_Address_ModifiedDate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Default constraint value of NEWID()',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'CONSTRAINT',
                                N'DF_Address_rowguid'
GO

EXEC sys.sp_addextendedproperty N'MS_Description',
                                N'Foreign key constraint referencing StateProvince.StateProvinceID.',
                                'SCHEMA',
                                N'Person',
                                'TABLE',
                                N'Address',
                                'CONSTRAINT',
                                N'FK_Address_StateProvince_StateProvinceID'
GO