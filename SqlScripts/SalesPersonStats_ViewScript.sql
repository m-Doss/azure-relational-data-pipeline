--Third View: Sales personal and their sales stats to keep track of their performance.
CREATE VIEW [PipelineSchema].[vw_SalesPersonStats] 
WITH SCHEMABINDING 
AS

SELECT 
    C.[SalesPerson], 
    COUNT(C.[CustomerID]) AS TotalClients, 
    COUNT([SalesOrderID]) AS TotalSales, 
    FORMAT(SUM([SubTotal]),'C') AS TotalRevenue, 
    FORMAT(SUM([SubTotal])/COUNT([SalesOrderID]), 'C') AS AvgSale

FROM 
    [SalesLT].[SalesOrderHeader] SHO
    INNER JOIN [SalesLT].[Customer] C
    ON SHO.[CustomerID] = C.[CustomerID]

GROUP BY 
    C.[SalesPerson];