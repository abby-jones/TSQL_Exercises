USE Northwind
SELECT c.CustomerID, c.CompanyName, c.ContactName, o.OrderID, o.OrderDate, od.ProductID, p.ProductName, od.Quantity 
FROM dbo.Customers AS c 
JOIN dbo.Orders AS o
ON c.CustomerID = o.CustomerID
JOIN dbo.[Order Details] as od
ON o.OrderID = od.OrderID
JOIN dbo.Products as p
ON od.ProductID = p.ProductID
WHERE c.Country = 'UK'
ORDER BY c.CompanyName, o.OrderDate