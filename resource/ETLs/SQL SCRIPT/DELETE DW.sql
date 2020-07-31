
insert into AdventureWorksDW2012.dbo.DimSalesTerritory
--datawarehouse
select * INTO DimSalesTerritory_BK from  AdventureWorksDW2012.dbo.DimSalesTerritory

select * Into DimEmployee_bk from  AdventureWorksDW2012.dbo.DimEmployee
select * Into FactResellerSales_bk from  AdventureWorksDW2012.dbo.FactResellerSales
select * Into FactSalesQuota_bk from  AdventureWorksDW2012.dbo.FactSalesQuota
select * Into DimGeography_bk from  AdventureWorksDW2012.dbo.DimGeography
select * Into DimReseller_bk from  AdventureWorksDW2012.dbo.DimReseller
select * Into DimCustomer_bk from  AdventureWorksDW2012.dbo.DimCustomer
select * Into FactInternetSales_bk from  AdventureWorksDW2012.dbo.FactInternetSales
select * Into FactInternetSalesReason_bk from  AdventureWorksDW2012.dbo.FactInternetSalesReason


select *  from  AdventureWorksDW2012.dbo.DimSalesTerritory

DELETE FROM AdventureWorksDW2012.dbo.FactSalesQuota
DELETE FROM AdventureWorksDW2012.dbo.FactResellerSales
DELETE FROM AdventureWorksDW2012.dbo.DimEmployee
DELETE FROM AdventureWorksDW2012.dbo.DimGeography


DELETE FROM AdventureWorksDW2012.dbo.DimReseller
DELETE FROM AdventureWorksDW2012.dbo.DimCustomer
DELETE FROM AdventureWorksDW2012.dbo.FactInternetSales
DELETE FROM AdventureWorksDW2012.dbo.FactInternetSalesReason
DELETE FROM AdventureWorksDW2012.dbo.DimSalesTerritory
DELETE FROM AdventureWorksDW2012.dbo.FactSurveyResponse





UPDATE DimSalesTerritory
SET 
SalesTerritoryRegion=?
,SalesTerritoryCountry=?
,SalesTerritoryGroup=?
WHERE  SalesTerritoryAlternateKey=?


--OLTP - ADVENTUREWORK
select SalesTerritoryAlternateKey from DimSalesTerritory

insert into AdventureWorksDW2012.dbo.DimSalesTerritory

SELECT
a.TerritoryID AS SalesTerritoryAlternateKey,
a.Name As SalesTerritoryRegion,
b.Name As SalesTerritoryCountry,
a.[Group] As SalesTerritoryGroup,
null as SalesTerritoryImage
FROM [Sales].[SalesTerritory] a
JOIN [Person].[CountryRegion] b on a.CountryRegionCode=b.CountryRegionCode
UNION ALL
SELECT
0 AS SalesTerritoryAlternateKey,
'NA' As SalesTerritoryRegion,
'NA' As SalesTerritoryCountry,
'NA' As SalesTerritoryGroup,
null as SalesTerritoryImage