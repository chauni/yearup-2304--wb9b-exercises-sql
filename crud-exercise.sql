-- SQLite

-- Ex 1:

INSERT INTO Suppliers (
    CompanyName, 
    ContactName, 
    ContactTitle, 
    Address, 
    City, 
    Region, 
    PostalCode, 
    Country, 
    Phone,
    Fax,
    HomePage
)
VALUES (
    "Good Pizza",
    "Mr. Pizza",
    "Sales Representative",
    "3567 Main St.",
    "Atlanta",
    "GA",
    "30331",
    "USA",
    "(404)-555-9090",
    "(404)-555-9090",
    "www.goodpizza.com"
)
RETURNING *;

-- Ex 2:

INSERT INTO Products (
    ProductName,
    SupplierID,
    CategoryID,
    QuantityPerUnit,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder,
    ReorderLevel,
    Discontinued
)
VALUES (
    "Stuffed Crust Cheese Pizza",
    30,
    4,
    1,
    6,
    400,
    0,
    15,
    0
)
RETURNING *;

-- Ex 3:

SELECT ProductID, ProductName, Products.SupplierID, CompanyName
FROM Products
JOIN Suppliers
    ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductID DESC;

-- Ex 4:

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID = 78;

-- Ex 5:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE SupplierID = 30;

-- Ex 6:

DELETE FROM Products
WHERE ProductID = 78;

-- Ex 7:

DELETE FROM Suppliers
WHERE SupplierID = 30;

-- Ex 8:

SELECT *
FROM Products;

-- Ex 9:

SELECT *
FROM Suppliers;
