-- SQLite
-- Ex 1:

SELECT COUNT(*)
FROM Suppliers;

-- 29 Suppliers

-- Ex 2:

-- No salary

-- Ex 3:

SELECT MIN(UnitPrice)
FROM Products;

-- Ex 4:

SELECT AVG(UnitPrice)
FROM Products;

-- Ex 5:

SELECT MAX(UnitPrice)
FROM Products;

-- Ex 6:

SELECT SupplierID AS num_of_suppliers,
    AVG(UnitsInStock) AS avg_num_items
FROM Products
GROUP BY SupplierID;

-- Ex 7:

SELECT CategoryID AS each_categoryID,
    AVG(UnitPrice) AS avg_price
FROM Products
GROUP BY CategoryID;

-- Ex 8:

SELECT SupplierID, COUNT(UnitsInStock)
FROM Products
GROUP BY SupplierID
HAVING COUNT(UnitsInStock) <= 5;

-- Ex 9:

SELECT ProductID, ProductName, SUM(UnitPrice * UnitsInStock) AS inventory_value
FROM Products
ORDER BY inventory_value DESC, ProductName;