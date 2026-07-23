-- Healthcare Sales Analytics
-- 01_Data_Quality.sql

SELECT COUNT(*) AS total_rows
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`;

SELECT
COUNTIF(`Distributor` IS NULL) AS missing_distributor,
COUNTIF(`Customer Name` IS NULL) AS missing_customer,
COUNTIF(City IS NULL) AS missing_city,
COUNTIF(Country IS NULL) AS missing_country,
COUNTIF(`Product Name` IS NULL) AS missing_product,
COUNTIF(`Product Class` IS NULL) AS missing_product_class,
COUNTIF(Quantity IS NULL) AS missing_quantity,
COUNTIF(Price IS NULL) AS missing_price,
COUNTIF(Sales IS NULL) AS missing_sales
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`;

SELECT *, COUNT(*) duplicate_count
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY ALL
HAVING COUNT(*)>1;

SELECT *
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
WHERE Quantity<0 OR Price<0 OR Sales<0;
