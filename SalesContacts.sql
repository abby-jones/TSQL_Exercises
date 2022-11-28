USE Northwind
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone FROM dbo.Customers
WHERE ContactTitle LIKE '%Sales%' OR
ContactTitle LIKE 'Sales' OR
ContactTitle LIKE 'sales' OR
ContactTitle LIKE 'SaLeS'