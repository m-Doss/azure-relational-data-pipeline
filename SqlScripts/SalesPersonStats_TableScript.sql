--Third Destination Table.
CREATE TABLE [PipelineSchema].[SalesPersonStats] (
    SalesPerson NVARCHAR(256) NOT NULL,
    TotalClients INT NOT NULL,
    TotalSales INT NOT NULL,
    TotalRevenue VARCHAR(256) NOT NULL,
    AvgSale VARCHAR(256) NOT NULL,
CONSTRAINT [PK_SalesPerson] PRIMARY KEY CLUSTERED([SalesPerson])
);