--Second Destination Table.
CREATE TABLE [PipelineSchema].[ShippedOrders] (
    SalesOrderID INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    DueDate DATETIME NOT NULL,
    ShipDate DATETIME NOT NULL,
    ShipMethod NVARCHAR(50) NOT NULL,
    City NVARCHAR(30) NOT NULL,
    StateProvince NVARCHAR(256) NOT NULL,
    CountryRegion NVARCHAR(256) NOT NULL,
CONSTRAINT [PK_Order_ID] PRIMARY KEY CLUSTERED([SalesOrderID])
);