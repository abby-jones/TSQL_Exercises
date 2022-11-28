USE Northwind
SELECT COUNT(CustomerID) FROM dbo.Customers as c

-- 91 customers

SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders, MIN(o.OrderDate) AS MinDate
FROM dbo.Orders AS o
RIGHT OUTER JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName
ORDER BY NumOrders


