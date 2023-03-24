SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SalesLT].[ProductModelProductDescription](
	[ProductModelID] [int] NOT NULL,
	[ProductDescriptionID] [int] NOT NULL,
	[Culture] [nchar](6) NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] ADD  CONSTRAINT [PK_ProductModelProductDescription_ProductModelID_ProductDescriptionID_Culture] PRIMARY KEY CLUSTERED 
(
	[ProductModelID] ASC,
	[ProductDescriptionID] ASC,
	[Culture] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] ADD  CONSTRAINT [AK_ProductModelProductDescription_rowguid] UNIQUE NONCLUSTERED 
(
	[rowguid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] ADD  CONSTRAINT [DF_ProductModelProductDescription_rowguid]  DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] ADD  CONSTRAINT [DF_ProductModelProductDescription_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription]  WITH CHECK ADD  CONSTRAINT [FK_ProductModelProductDescription_ProductDescription_ProductDescriptionID] FOREIGN KEY([ProductDescriptionID])
REFERENCES [SalesLT].[ProductDescription] ([ProductDescriptionID])
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] CHECK CONSTRAINT [FK_ProductModelProductDescription_ProductDescription_ProductDescriptionID]
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription]  WITH CHECK ADD  CONSTRAINT [FK_ProductModelProductDescription_ProductModel_ProductModelID] FOREIGN KEY([ProductModelID])
REFERENCES [SalesLT].[ProductModel] ([ProductModelID])
GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] CHECK CONSTRAINT [FK_ProductModelProductDescription_ProductModel_ProductModelID]
GO
