CREATE DATABASE DataDigger;
USE DataDigger;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);
INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@gmail.com', 'Delhi'),
('Bob', 'bob@gmail.com', 'Mumbai'),
('Charlie', 'charlie@gmail.com', 'Chennai'),
('Alice', 'alice2@gmail.com', 'Bangalore'),
('David', 'david@gmail.com', 'Hyderabad');
SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Pune'
WHERE CustomerID = 2;

DELETE FROM Customers
WHERE CustomerID = 5;

SELECT * FROM Customers
WHERE Name = 'Alice';

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, CURDATE() - INTERVAL 10 DAY, 2500),
(2, CURDATE() - INTERVAL 5 DAY, 1800),
(3, CURDATE() - INTERVAL 40 DAY, 3200),
(1, CURDATE() - INTERVAL 2 DAY, 900),
(4, CURDATE(), 4500);

SELECT * FROM Orders
WHERE CustomerID = 1;

UPDATE Orders
SET TotalAmount = 3000
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 3;

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT 
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 55000, 10),
('Headphones', 1500, 25),
('Keyboard', 700, 0),
('Mouse', 500, 30),
('Monitor', 12000, 8);

SELECT * FROM Products
ORDER BY Price DESC;
UPDATE Products
SET Price = 1600
WHERE ProductName = 'Headphones';
DELETE FROM Products
WHERE Stock = 0;
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;
SELECT 
    MAX(Price) AS MostExpensive,
    MIN(Price) AS Cheapest
FROM Products;
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 55000),
(1, 2, 2, 3000),
(2, 4, 3, 1500),
(4, 2, 1, 1600),
(5, 5, 1, 12000);

SELECT * FROM OrderDetails
WHERE OrderID = 1;

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

SELECT COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 2;
