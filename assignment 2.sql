-- Write a SQL query to select products with an average sale price greater than $100, using the HAVING clause to filter the results.

SELECT
    ProductID,
    ProductName,
    AVG(SalePrice) AS AvgSalePrice
FROM Sales
GROUP BY ProductID, ProductName
HAVING AVG(SalePrice) > 100;

-- Develop a SQL query that groups sales data by region and uses the HAVING clause to identify regions with total sales exceeding $10,000

SELECT
    Region,
    SUM(Quantity * SalePrice) AS TotalSales
FROM Sales
GROUP BY Region
HAVING SUM(Quantity * SalePrice) > 10000;

-- Create a SQL query to find products with a sales count greater than 50, applying the HAVING clause to filter the grouped data.

SELECT
    ProductID,
    ProductName,
    SUM(Quantity) AS SalesCount
FROM Sales
GROUP BY ProductID, ProductName
HAVING SUM(Quantity) > 50;

-- Write a SQL query that calculates the total sales for each product and uses the HAVING clause to select products with total sales between 5,000 and 5,000and20,000.

SELECT
    ProductID,
    ProductName,
    SUM(Quantity * SalePrice) AS TotalSales
FROM Sales
GROUP BY ProductID, ProductName
HAVING SUM(Quantity * SalePrice) BETWEEN 5000 AND 20000;

-- Optimize each query for performance, considering indexing, subqueries, and other relevant SQL techniques.

CREATE INDEX idx_sales_product
ON Sales(ProductID);

CREATE INDEX idx_sales_region
ON Sales(Region);

CREATE INDEX idx_sales_product_price
ON Sales(ProductID, SalePrice);

CREATE INDEX idx_sales_region_amount
ON Sales(Region, Quantity, SalePrice);