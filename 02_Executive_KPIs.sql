-- Executive KPIs
SELECT
ROUND(SUM(Sales),2) AS TotalRevenue,
SUM(Quantity) AS TotalQuantity,
ROUND(AVG(Sales),2) AS AverageSale,
COUNT(DISTINCT `Customer Name`) AS Customers,
COUNT(DISTINCT `Product Name`) AS Products
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`;

SELECT Year,Month,ROUND(SUM(Sales),2) MonthlyRevenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY Year,Month
ORDER BY Year,Month;
