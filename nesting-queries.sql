-- SQLite

-- Ex 1:

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (
    SELECT MAX(UnitPrice)
    FROM Products
);

-- Ex 2:

SELECT OrderID, ShipName, ShipAddress, ShipVia
FROM Orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM Shippers
    WHERE CompanyName = "Federal Shipping"
);

-- Ex 3:

SELECT OrderID, ProductID
FROM `Order Details`
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = "Sasquatch Ale"
);

-- Ex 4:

SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID = (
    SELECT EmployeeID
    FROM Orders
    WHERE OrderID = 10266
);

-- Ex 5:

SELECT CustomerID, ContactName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Orders
    WHERE OrderID = 10266
);



