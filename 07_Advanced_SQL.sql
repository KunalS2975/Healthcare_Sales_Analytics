-- Advanced SQL
WITH product_sales AS(
SELECT `Product Name`,SUM(Sales) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Product Name`)
SELECT *,
SUM(Revenue) OVER(ORDER BY Revenue DESC) CumulativeRevenue
FROM product_sales;

SELECT `Customer Name`,
SUM(Sales) Revenue,
NTILE(4) OVER(ORDER BY SUM(Sales) DESC) Quartile
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Customer Name`;
