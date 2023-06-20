-- SQLite

-- Ex 2:

SELECT ProductId, ProductName, UnitPrice
FROM Products;

-- Ex 3:

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice;

-- Ex 4:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;

-- Ex 5:

SELECT ProductID, ProductName, UnitsInStock, UnitPrice
FROM Products
WHERE UnitsInStock <= 100
ORDER BY UnitPrice DESC;

-- Ex 6:

SELECT ProductName, UnitsInStock, UnitPrice
FROM Products
WHERE UnitsInStock <= 100
ORDER BY UnitPrice DESC, ProductName;

-- Ex 7:

SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1
ORDER BY ProductName;

-- EX 8:

SELECT *
FROM Categories;

-- Seafood CategoryID = 8

-- Ex 9: 

SELECT ProductName, ProductID, CategoryID
FROM Products
WHERE CategoryID = 8;

-- Ex 11:

SELECT FirstName, LastName
FROM Employees;

-- Ex 12:

SELECT FirstName, LastName, Title
FROM Employees
WHERE Title LIKE "%Manager%";

-- Ex 13:

SELECT DISTINCT Title
FROM Employees;

-- Ex 15:

SELECT *
FROM Suppliers;

-- Ex 16:

SELECT ProductName, ProductID, SupplierID
FROM Products
WHERE SupplierID = 4;


    