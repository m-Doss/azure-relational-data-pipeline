--First Destination Table.
CREATE TABLE [PipelineSchema].[ProductDetails] (
    ProductID INT NOT NULL,
    Name NVARCHAR(256) NOT NULL,
    Model NVARCHAR(256) NOT NULL,
    Category NVARCHAR(256) NOT NULL,
    Culture NVARCHAR(6) NOT NULL,
    Description NVARCHAR(400) NOT NULL
CONSTRAINT [PK_Product_ID] PRIMARY KEY CLUSTERED ([ProductID], [Culture]) ON [PRIMARY] 
);