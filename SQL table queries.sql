--Dim_Calendar Table Query

SELECT DateKey, FullDateAlternateKey AS Date, EnglishDayNameOfWeek AS Day, EnglishMonthName AS Month, LEFT(EnglishMonthName, 3) AS Month_short,  WeekNumberOfYear AS Week_number, 
MonthNumberOfYear AS Month_number, CalendarQuarter AS Quater, CalendarYear AS year
FROM DimDate
WHERE CalendarYear >= 2019

--Dim_Customer Table Query

SELECT cust.customerkey AS CustomerKey, 
cust.firstname AS [First Name], 
cust.lastname AS [Last Name], 
cust.firstname + ' ' + cust.lastname AS [Full Name], 
cust.datefirstpurchase AS DateFirstPurchase, 
YearlyIncome,
CommuteDistance,
geo.city AS [Customer City]

FROM DimCustomerCleaned AS cust
LEFT JOIN DimGeography AS geo ON cust.geographyKey = geo.geographyKey

ORDER BY CustomerKey 

--Dim_Products Table Query

SELECT prod.ProductKey, prod.ProductAlternateKey AS [Product Code], 
prod.EnglishProductName AS [Product Name],
prod.Color AS [Product Color], 
prod.Size AS [Product Size], 
prod.ProductLine AS [Product Line],
prod.ModelName AS [Product Model Name], 
prod.EnglishDescription AS [Product Description],
sub.EnglishProductSubcategoryName AS [Sub Catergory],
cat.EnglishProductCategoryName AS  [Product Category],
ISNULL (prod.Status, 'Outdated') AS [Product Status]

FROM DimProduct AS prod
LEFT JOIN DimProductSubcategory AS sub ON prod.ProductSubcategoryKey = sub.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS cat ON sub.ProductCategoryKey = cat.ProductCategoryKey

ORDER BY prod.ProductKey

-- Fact_Internet_Sales Table Query

SELECT ProductKey, OrderDateKey, DueDateKey, ShipDateKey, CustomerKey, SalesOrderNumber, SalesAmount
FROM FactInternetSales
WHERE LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) - 2
ORDER BY OrderDateKey 

