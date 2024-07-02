SELECT * FROM DimCustomerCleaned

SELECT * FROM DimGeography

SELECT * FROM FactInternetSales

-- Count of Customers by City
SELECT 
	geo.City, 
	COUNT(cust.CustomerKey) AS [Count of Customers]
FROM 
	DimGeography AS geo
JOIN 
	DimCustomerCleaned AS cust ON geo.GeographyKey = cust.GeographyKey
GROUP BY 
	City
ORDER BY 
	[Count of Customers] DESC

-- Count of Sales by City
SELECT 
	geo.City, 
	COUNT(sales.ProductKey) AS [Count of Sales]
FROM 
	DimGeography AS geo
JOIN 
	DimCustomerCleaned AS cust ON geo.GeographyKey = cust.GeographyKey
JOIN 
	FactInternetSales AS sales ON cust.CustomerKey = sales.CustomerKey
GROUP BY 
	City
ORDER BY 
	[Count of Sales] DESC

-- Top 10 Sales by Customer
WITH CTE_Customer AS 
(SELECT 
	CustomerKey,  
	FirstName + ' ' + LastName AS [Full Name]
FROM 
	DimCustomerCleaned
)

SELECT TOP 10 
	[Full Name], 
	SUM(sales.SalesAmount) AS [Total Sales Amount]
FROM 
	CTE_Customer AS cust
JOIN 
	FactInternetSales AS sales ON cust.CustomerKey = sales.CustomerKey
GROUP BY 
	[Full Name]
ORDER BY 
	[Total Sales Amount] DESC

-- Top 10 Most Often Purchasing Customers
WITH CTE_Customer AS 
(SELECT 
	CustomerKey,  
	FirstName + ' ' + LastName AS [Full Name]
FROM 
	DimCustomerCleaned
)

SELECT TOP 10 
	[Full Name], 
	COUNT(sales.CustomerKey) AS [Total Orders]
FROM 
	CTE_Customer AS cust
JOIN 
	FactInternetSales AS sales ON cust.CustomerKey = sales.CustomerKey
GROUP BY 
	[Full Name]
ORDER BY 
	[Total Orders] DESC