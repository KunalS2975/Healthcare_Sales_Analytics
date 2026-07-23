-- Geographic Analysis
SELECT Country,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY Country
ORDER BY Revenue DESC;

SELECT City,ROUND(SUM(Sales),2) Revenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY City
ORDER BY Revenue DESC;
