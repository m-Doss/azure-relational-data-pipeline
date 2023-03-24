--Second View: Sales orders and thier ship address to analyze locations that take longer shipping times.
CREATE VIEW [PipelineSchema].[vw_ShippedOrders]
WITH SCHEMABINDING 
AS

SELECT 
    SOH.[SalesOrderID],
    SOH.[OrderDate],
    SOH.[DueDate],
    SOH.[ShipDate],
    SOH.[ShipMethod],
    A.[City],
    A.[StateProvince],
    A.[CountryRegion]

FROM 
    [SalesLT].[Address] A
    INNER JOIN [SalesLT].[SalesOrderHeader] SOH
    ON A.[AddressID] = SOH.[ShipToAddressID]

WHERE 
    SOH.[Status] = 5;