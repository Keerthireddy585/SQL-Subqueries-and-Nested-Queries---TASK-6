USE Joins;

-- SCALAR SUBQUERY
-- Find the customer who placed the earliest order.
SELECT Customer_ID
FROM Customers
WHERE Customer_ID = (
	SELECT Customer_ID
    FROM Orders
    ORDER BY Order_date ASC
    LIMIT 1
);

-- SUBQUERY WITH IN
-- Find customers who have placed orders.
SELECT Customer_ID, Customer_Name
FROM Customers
WHERE Customer_ID IN (
	SELECT DISTINCT Customer_ID
    FROM Orders
);

-- SUBQUERY WITH EXISTS
-- Find customers who have at least one order.
SELECT Customer_Name
FROM Customers c
WHERE EXISTS (
	SELECT 1
    FROM Orders o
    WHERE o.Customer_ID = c.Customer_ID
);

-- Correlated Subquery
-- Find customers who ordered more than one product.
SELECT Customer_Name
FROM Customers c
WHERE (
    SELECT COUNT(*)
    FROM Orders o
    WHERE o.Customer_ID = c.Customer_ID
) > 1;

-- Subquery in SELECT (Scalar)
-- Show each customer and their total number of orders.
SELECT Customer_Name,
       (SELECT COUNT(*)
        FROM Orders o
        WHERE o.Customer_ID = c.Customer_ID) AS TotalOrders
FROM Customers c;



