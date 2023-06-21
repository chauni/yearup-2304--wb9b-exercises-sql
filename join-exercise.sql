-- SQLite

-- Ex 1:

SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
    ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- Ex 2:

SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers
    ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice >= 75
ORDER BY ProductName;

-- Ex 3:



-- Ex 4:

-- vv most expensive item and its category name

SELECT ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
    ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products
);

-- vv most expensive item for each category

SELECT ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
    ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice IN (
    SELECT MAX(UnitPrice)
    FROM Products
    GROUP BY CategoryID
);

-- Ex 5:

SELECT OrderID, ShipName, ShipAddress, ShipCountry, CompanyName
FROM Orders
JOIN Shippers
    ON Orders.ShipVia = Shippers.ShipperID
WHERE ShipCountry = "Germany";

-- Ex 6:

SELECT Orders.OrderID, OrderDate, ShipName, ShipAddress, ProductName
FROM Orders
JOIN `Order Details`
    ON Orders.OrderID = `Order Details`.OrderID
JOIN Products
    ON `Order Details`.ProductID = Products.ProductID
WHERE Products.ProductName = "Sasquatch Ale";


