SET
	ANSI_NULLS ON
GO
SET
	QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SalesLT].[Address]
(
	[AddressID] [int] IDENTITY(1, 1) NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvince] [dbo].[Name] NOT NULL,
	[CountryRegion] [dbo].[Name] NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE
	[SalesLT].[Address]
ADD
	CONSTRAINT [PK_Address_AddressID] PRIMARY KEY CLUSTERED ([AddressID] ASC) WITH (
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
		ONLINE = OFF,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	) ON [PRIMARY]
GO
ALTER TABLE
	[SalesLT].[Address]
ADD
	CONSTRAINT [AK_Address_rowguid] UNIQUE NONCLUSTERED ([rowguid] ASC) WITH (
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
		ONLINE = OFF,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	) ON [PRIMARY]
GO
SET
	ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Address_AddressLine1_AddressLine2_City_StateProvince_PostalCode_CountryRegion] ON [SalesLT].[Address] (
		[AddressLine1] ASC,
		[AddressLine2] ASC,
		[City] ASC,
		[StateProvince] ASC,
		[PostalCode] ASC,
		[CountryRegion] ASC
	) WITH (
		STATISTICS_NORECOMPUTE = OFF,
		DROP_EXISTING = OFF,
		ONLINE = OFF,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	) ON [PRIMARY]
GO
SET
	ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Address_StateProvince] ON [SalesLT].[Address] ([StateProvince] ASC) WITH (
		STATISTICS_NORECOMPUTE = OFF,
		DROP_EXISTING = OFF,
		ONLINE = OFF,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
	) ON [PRIMARY]
GO
ALTER TABLE
	[SalesLT].[Address]
ADD
	CONSTRAINT [DF_Address_rowguid] DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE
	[SalesLT].[Address]
ADD
	CONSTRAINT [DF_Address_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate]
GO