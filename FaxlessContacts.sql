USE Northwind
SELECT CustomerID, CompanyName, ContactTitle, Phone, Fax FROM dbo.Customers
WHERE Fax IS NULL