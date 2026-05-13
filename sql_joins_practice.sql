CREATE DATABASE ShopDB;
use ShopDB;

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders(
	OrderID INT PRIMARY KEY,	
	Product VARCHAR(100),
    Amount Decimal(10,2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- CUSTOMER TABLE     
INSERT INTO Customers VALUES
(1, 'Ram'),
(2, 'Shyam'),
(3, 'Mohan');

-- ORDER TABLE
INSERT INTO Orders VALUES
(101, 'Laptop', 50000, 2),
(102, 'Mouse', 100000, 1),
(103, 'Keyboard', 5000, 1);

-- INNER JOIN: SHOWS THE MATCHING RECORD OF BOTH TABLES
SELECT c.CustomerName, o.Product, o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- FULL OUTER JOIN SIMULATION USING UNION OF LEFT AND RIGHT JOIN
SELECT C.CustomerName, o.Product, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerName, o.Product, o.Amount
FROM Orders o
LEFT JOIN Customers c ON c.CustomerID = o.CustomerID;


 