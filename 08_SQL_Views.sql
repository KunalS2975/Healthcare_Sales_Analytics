-- SQL Views
CREATE OR REPLACE VIEW `healthcare-sales-analytics.healthcare_sales.vw_monthly_sales` AS
SELECT Year,Month,ROUND(SUM(Sales),2) MonthlyRevenue
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY Year,Month;

CREATE OR REPLACE VIEW `healthcare-sales-analytics.healthcare_sales.vw_product_performance` AS
SELECT `Product Name`,`Product Class`,
ROUND(SUM(Sales),2) TotalRevenue,
SUM(Quantity) TotalQuantity
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Product Name`,`Product Class`;

CREATE OR REPLACE VIEW `healthcare-sales-analytics.healthcare_sales.vw_customer_performance` AS
SELECT `Customer Name`,Country,City,
ROUND(SUM(Sales),2) Revenue,
SUM(Quantity) Quantity,
COUNT(DISTINCT `Product Name`) ProductsPurchased
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Customer Name`,Country,City;

CREATE OR REPLACE VIEW `healthcare-sales-analytics.healthcare_sales.vw_sales_rep_performance` AS
SELECT `Sales Team`,Manager,`Name of Sales Rep`,
ROUND(SUM(Sales),2) Revenue,
SUM(Quantity) QuantitySold
FROM `healthcare-sales-analytics.healthcare_sales.pharma_sales`
GROUP BY `Sales Team`,Manager,`Name of Sales Rep`;
