CREATE TABLE online_sales (
    Product_ID INTEGER,
    Sale_Date DATE,
    Sales_Rep TEXT,
    Region TEXT,
    Sales_Amount NUMERIC,
    Quantity_Sold INTEGER,
    Product_Category TEXT,
    Unit_Cost NUMERIC,
    Unit_Price NUMERIC,
    Customer_Type TEXT,
    Discount NUMERIC,
    Payment_Method TEXT,
    Sales_Channel TEXT,
    Region_and_Sales_Rep TEXT
);

select count(*) from online_sales;


SELECT
    EXTRACT(YEAR FROM DATE(Sale_Date)) AS year,
    EXTRACT(MONTH FROM DATE(Sale_Date)) AS month,
    SUM(Sales_Amount) AS monthly_revenue,
    COUNT(*) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;



SELECT
    EXTRACT(YEAR FROM DATE(Sale_Date)) AS year,
    EXTRACT(MONTH FROM DATE(Sale_Date)) AS month,
    SUM(Sales_Amount) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;




