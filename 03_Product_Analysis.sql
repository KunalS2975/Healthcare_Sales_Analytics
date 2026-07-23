-- Product Analysis
SELECT `Product Name`,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Product Name`
ORDER BY Revenue DESC LIMIT 10;

SELECT `Product Class`,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Product Class`
ORDER BY Revenue DESC;
