--First View: To display products and product description, model, category, and culture.
CREATE VIEW [PipelineSchema].[vw_ProductDetails] 
WITH SCHEMABINDING 
AS 

SELECT 
    p.[ProductID],
    p.[Name],
    pm.[Name] AS [Model],
    pc.[Name] AS [Category],
    pmx.[Culture],
    pd.[Description] 

FROM 
    [SalesLT].[Product] p 
    INNER JOIN [SalesLT].[ProductModel] pm 
    ON p.[ProductModelID] = pm.[ProductModelID]

    INNER JOIN [SalesLT].[ProductCategory] pc 
    ON p.[ProductCategoryID] = pc.[ProductCategoryID]

    INNER JOIN [SalesLT].[ProductModelProductDescription] pmx 
    ON pm.[ProductModelID] = pmx.[ProductModelID]

    INNER JOIN [SalesLT].[ProductDescription] pd 
    ON pmx.[ProductDescriptionID] = pd.[ProductDescriptionID];