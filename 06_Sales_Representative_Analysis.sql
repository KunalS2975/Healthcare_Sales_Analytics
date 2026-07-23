-- Sales Team Analysis
SELECT `Sales Team`,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Sales Team`;

SELECT Manager,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY Manager;

SELECT `Name of Sales Rep`,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Name of Sales Rep`
ORDER BY Revenue DESC LIMIT 10;
