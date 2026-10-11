-- WEEK 3: 25 SINGLE-TABLE SQL QUERIES
-- Database: SQLite
-- Table: sales_data_recovered

-- SECTION A: SELECT, DISTINCT, LIMIT, ALIASES

-- Query 1: Select relevant business columns
SELECT Order_ID, Order_Date, Customer, Region, Sales, Profit
FROM sales_data_recovered;

-- Query 2: View a small sample
SELECT Order_ID, Product, Sales
FROM sales_data_recovered
LIMIT 3;

-- Query 3: Find unique regions
SELECT DISTINCT Region
FROM sales_data_recovered;

-- Query 4: Use aliases for readable output
SELECT
    Customer AS Customer_Name,
    Sales AS Sales_Amount
FROM sales_data_recovered;

-- SECTION B: SORTING AND EXPRESSIONS

-- Query 5: Sort sales from highest to lowest
SELECT Order_ID, Product, Sales
FROM sales_data_recovered
ORDER BY Sales DESC;

-- Query 6: Sort profit from lowest to highest
SELECT Order_ID, Product, Profit
FROM sales_data_recovered
ORDER BY Profit ASC;

-- Query 7: Sort by region, then sales
SELECT Order_ID, Region, Sales
FROM sales_data_recovered
ORDER BY Region ASC, Sales DESC;

-- Query 8: Calculate sales minus profit
SELECT Order_ID, Sales, Profit,
       Sales - Profit AS Amount_After_Profit
FROM sales_data_recovered;

-- Query 9: Compare calculation order
SELECT Order_ID, Sales, Profit, Quantity,
       Sales - Profit / Quantity AS Expression_One,
       (Sales - Profit) / Quantity AS Expression_Two
FROM sales_data_recovered
WHERE Quantity <> 0;

-- SECTION C: WHERE FILTERING

-- Query 10: One comparison condition
SELECT Order_ID, Customer, Sales
FROM sales_data_recovered
WHERE Sales > 30000;

-- Query 11: AND condition
SELECT Order_ID, Region, Sales
FROM sales_data_recovered
WHERE Region = 'South' AND Sales > 30000;

-- Query 12: OR condition
SELECT Order_ID, Region
FROM sales_data_recovered
WHERE Region = 'North' OR Region = 'South';

-- Query 13: NOT condition
SELECT Order_ID, Region
FROM sales_data_recovered
WHERE NOT Region = 'South';

-- Query 14: IN condition
SELECT Order_ID, Region, Sales
FROM sales_data_recovered
WHERE Region IN ('North', 'South', 'East');

-- Query 15: BETWEEN numeric range
SELECT Order_ID, Product, Sales
FROM sales_data_recovered
WHERE Sales BETWEEN 10000 AND 30000;

-- SECTION D: LIKE AND NULL

-- Query 16: Text pattern search
SELECT Order_ID, Customer
FROM sales_data_recovered
WHERE Customer LIKE 'P%';

-- Query 17: Wildcard search within product names
SELECT Order_ID, Product
FROM sales_data_recovered
WHERE Product LIKE '%top%';

-- Query 18: Find missing customer names
SELECT Order_ID, Customer
FROM sales_data_recovered
WHERE Customer IS NULL;

-- Query 19: Find populated customer names
SELECT Order_ID, Customer
FROM sales_data_recovered
WHERE Customer IS NOT NULL;

-- Query 20: Demonstrate incorrect NULL comparison
-- Compare this result with Query 18.
SELECT Order_ID, Customer
FROM sales_data_recovered
WHERE Customer = NULL;

-- SECTION E: RANGE, TYPES AND CAST

-- Query 21: Filter a different numeric range
SELECT Order_ID, Product, Quantity
FROM sales_data_recovered
WHERE Quantity >= 3 AND Quantity <= 5;

-- Query 22: Filter a date range (ISO date format)
SELECT Order_ID, Order_Date, Sales
FROM sales_data_recovered
WHERE Order_Date BETWEEN '2026-01-01' AND '2026-01-31';

-- Query 23: Inspect actual storage types
SELECT Order_ID,
       typeof(Order_ID) AS ID_Type,
       typeof(Sales) AS Sales_Type,
       typeof(Profit) AS Profit_Type,
       typeof(Quantity) AS Quantity_Type
FROM sales_data_recovered;

-- Query 24: Cast numeric expressions
SELECT Order_ID,
       CAST(Sales AS REAL) AS Sales_Number,
       CAST(Profit AS REAL) AS Profit_Number,
       CAST(Quantity AS INTEGER) AS Quantity_Number
FROM sales_data_recovered;

-- SECTION F: BUSINESS-ORIENTED QUERY

-- Query 25: Find South-region orders above 30000,
-- show a calculated value, and sort by sales.
SELECT Order_ID, Customer, Product, Region,
       Sales, Profit,
       Sales - Profit AS Sales_Minus_Profit
FROM sales_data_recovered
WHERE Region = 'South'
  AND Sales > 30000
ORDER BY Sales DESC;
