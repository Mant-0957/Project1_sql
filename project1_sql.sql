CREATE DATABASE data_digger;
USE data_digger;

 # table1
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name       VARCHAR(80)  NOT NULL,
    Email      VARCHAR(120) NOT NULL UNIQUE,
    Address    VARCHAR(255)
);

 #table2
CREATE TABLE Orders (
    OrderID     INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID  INT NOT NULL,
    OrderDate   DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

 #table3
CREATE TABLE Products (
    ProductID   INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Price       DECIMAL(10,2) NOT NULL,
    Stock       INT NOT NULL DEFAULT 0
);

 #table4
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID       INT NOT NULL,
    ProductID     INT NOT NULL,
    Quantity      INT NOT NULL,
    SubTotal      DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_details_order
        FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_details_product
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
select * from OrderDetails;
select * from Customers;
select * from Products;
select * from Orders;