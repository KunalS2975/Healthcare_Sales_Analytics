-- Customer Analysis
SELECT `Customer Name`,
ROUND(SUM(Sales),2) Revenue,
SUM(Quantity) QuantityPurchased
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Customer Name`
ORDER BY Revenue DESC;
