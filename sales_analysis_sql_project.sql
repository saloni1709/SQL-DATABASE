CREATE DATABASE SimpleStore;
USE SimpleStore;

CREATE TABLE Sales(
	SalesID INT AUTO_INCREMENT PRIMARY KEY,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Amount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales(Product, Category, Amount, SaleDate) VALUES
('Pen', 'Stationary', 25.00, '2026-04-01'),
('Notebook', 'Stationary', 60.00, '2026-04-10'),
('Mouse', 'Electronics', 500.00, '2026-04-23'),
('Keyboard', 'Electronics', 80.00, '2026-05-03'),
('Charger', 'Electronics', 350.00, '2026-05-04');

-- TRUNCATE TABLE Sales;

SELECT * FROM Sales;

SELECT COUNT(*) FROM Sales;
SELECT AVG(Amount) FROM Sales;
SELECT SUM(Amount) FROM Sales;

SELECT MIN(Amount) FROM Sales;
SELECT MAX(Amount) FROM Sales;

SELECT Category, SUM(Amount)
FROM Sales
GROUP BY Category
HAVING SUM(Amount) > 400;    -- SHOW ONLY THOSE CATEGORIES WHOSE TOTAL SALES IS GREATER THAN 500

SELECT Product, Amount
FROM Sales
WHERE Amount > (SELECT AVG(Amount) FROM Sales);

WITH CategoryTotals AS(
	SELECT Category, SUM(Amount) AS TotalSales
    FROM Sales
    GROUP BY Category
)
SELECT Category, TotalSales
FROM CategoryTotals
WHERE TotalSales > 900;

CREATE VIEW CategorySales AS
SELECT Category, SUM(AMOUNT) AS TotalSales
FROM Sales
GROUP BY Category;

SELECT * FROM CategorySales WHERE TotalSales > 500;