

CREATE DATABASE DataDigger;

USE DataDigger;

--Create Customers table

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

--QUERY:-1. Insert 10 sample customers

INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Alice', 'alice@gmail.com', 'Mumbai'),
(2, 'Aastha', 'aastha@gmail.com', 'Surat'),
(3, 'Vaidehi', 'vaidehi@gmail.com', 'Ahmedabad'),
(4, 'Priya', 'priya@gmail.com', 'Vadodara'),
(5, 'Aayushi', 'aayushi@gmail.com', 'Rajkot'),
(6, 'Dhruvi', 'dhruvi@gmail.com', 'Bhavnagar'),
(7, 'Gill', 'gill@gmail.com', 'Chandigarh'),
(8, 'Virat', 'virat@gmail.com', 'Delhi'),
(9, 'Rohit', 'rohit@gmail.com', 'Mumbai'),
(10, 'Jaddu', 'jaddu@gmail.com', 'Jamnagar');

--QUERY:-2. Retrieve all customer details

SELECT * FROM Customers;

+------------+---------+-------------------+------------+
| CustomerID | Name    | Email             | Address    |
+------------+---------+-------------------+------------+
|          1 | Alice   | alice@gmail.com   | Mumbai     |
|          2 | Aastha  | aastha@gmail.com  | Surat      |
|          3 | Vaidehi | vaidehi@gmail.com | Ahmedabad  |
|          4 | Priya   | priya@gmail.com   | Vadodara   |
|          5 | Aayushi | aayushi@gmail.com | Rajkot     |
|          6 | Dhruvi  | dhruvi@gmail.com  | Bhavnagar  |
|          7 | Gill    | gill@gmail.com    | Chandigarh |
|          8 | Virat   | virat@gmail.com   | Delhi      |
|          9 | Rohit   | rohit@gmail.com   | Mumbai     |
|         10 | Jaddu   | jaddu@gmail.com   | Jamnagar   |
+------------+---------+-------------------+------------+
10 rows in set (0.00 sec)

--QUERY:-3. Update a customer's address

UPDATE Customers
SET Address = 'Surat'
WHERE CustomerID = 1;

--QUERY:-4. Delete a customer using CustomerID

DELETE FROM Customers
WHERE CustomerID = 10;

--QUERY:-5. Display all customers whose name is 'Alice'

SELECT * FROM Customers
WHERE Name = 'Alice';

+------------+-------+-----------------+---------+
| CustomerID | Name  | Email           | Address |
+------------+-------+-----------------+---------+
|          1 | Alice | alice@gmail.com | Surat   |
+------------+-------+-----------------+---------+
1 row in set (0.00 sec)

==============================================================================================================
==============================================================================================================

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--QUERY:-1. Insert 10 sample orders

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2026-08-20', 2500.00),
(102, 2, '2026-08-18', 1800.00),
(103, 3, '2026-08-15', 3200.00),
(104, 4, '2026-08-10', 1500.00),
(105, 5, '2026-08-05', 4500.00),
(106, 6, '2026-08-01', 2200.00),
(107, 7, '2026-07-25', 3800.00),
(108, 8, '2026-07-20', 5000.00),
(109, 9, '2026-07-15', 2750.00),
(110, 10, '2026-07-10', 6000.00);

-- QUERY:-2. Retrieve all orders made by a specific customer

+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2026-08-20 |     2500.00 |
+---------+------------+------------+-------------+
1 row in set (0.00 sec)

--QUERY:-3. Update an order's total amount

UPDATE Orders
SET TotalAmount = 3000.00
WHERE OrderID = 101;

--QUERY:-4. Delete an order using OrderID

DELETE FROM Orders
WHERE OrderID = 110;

--QUERY:-5. Retrieve orders placed in the last 30 days

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2026-08-20 |     3000.00 |
|     102 |          2 | 2026-08-18 |     1800.00 |
|     103 |          3 | 2026-08-15 |     3200.00 |
|     104 |          4 | 2026-08-10 |     1500.00 |
|     105 |          5 | 2026-08-05 |     4500.00 |
|     106 |          6 | 2026-08-01 |     2200.00 |
+---------+------------+------------+-------------+
6 rows in set (0.00 sec)

--QUERY:-6. Find highest, lowest and average order amount

SELECT
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;

+---------------+--------------+---------------+
| HighestAmount | LowestAmount | AverageAmount |
+---------------+--------------+---------------+
|       5000.00 |      1500.00 |   3083.333333 |
+---------------+--------------+---------------+
1 row in set (0.00 sec)

=================================================================================================================================
==================================================================================================================================

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

--QUERY:-1. Insert 10 sample products

INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(1, 'Alice Bag', 1200.00, 15),
(2, 'Aastha Shoes', 2500.00, 10),
(3, 'Vaidehi Watch', 1800.00, 20),
(4, 'Priya Dress', 1500.00, 12),
(5, 'Aayushi Handbag', 2200.00, 8),
(6, 'Dhruvi T-Shirt', 700.00, 25),
(7, 'Gill Headphones', 3000.00, 5),
(8, 'Virat Shoes', 3500.00, 7),
(9, 'Rohit Jacket', 2000.00, 0),
(10, 'Jaddu Cap', 500.00, 18);

--QUERY:-2. Retrieve all products sorted by price in descending order

SELECT * FROM Products
ORDER BY Price DESC;

+-----------+-----------------+---------+-------+
| ProductID | ProductName     | Price   | Stock |
+-----------+-----------------+---------+-------+
|         8 | Virat Shoes     | 3500.00 |     7 |
|         7 | Gill Headphones | 3000.00 |     5 |
|         2 | Aastha Shoes    | 2500.00 |    10 |
|         5 | Aayushi Handbag | 2200.00 |     8 |
|         9 | Rohit Jacket    | 2000.00 |     0 |
|         3 | Vaidehi Watch   | 1800.00 |    20 |
|         4 | Priya Dress     | 1500.00 |    12 |
|         1 | Alice Bag       | 1200.00 |    15 |
|         6 | Dhruvi T-Shirt  |  700.00 |    25 |
|        10 | Jaddu Cap       |  500.00 |    18 |
+-----------+-----------------+---------+-------+
10 rows in set (0.00 sec)

--QUERY:-3. Update the price of a specific product

UPDATE Products
SET Price = 1300.00
WHERE ProductID = 1;

--QUERY:-4. Delete a product if it is out of stock

DELETE FROM Products
WHERE Stock = 0;

--QUERY:-5. Retrieve products whose price is between ₹500 and ₹2000

SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;

+-----------+----------------+---------+-------+
| ProductID | ProductName    | Price   | Stock |
+-----------+----------------+---------+-------+
|         1 | Alice Bag      | 1300.00 |    15 |
|         3 | Vaidehi Watch  | 1800.00 |    20 |
|         4 | Priya Dress    | 1500.00 |    12 |
|         6 | Dhruvi T-Shirt |  700.00 |    25 |
|        10 | Jaddu Cap      |  500.00 |    18 |
+-----------+----------------+---------+-------+
5 rows in set (0.00 sec)

--QUERY:-6. Retrieve the most expensive and cheapest product

SELECT
    MAX(Price) AS Most_Expensive,
    MIN(Price) AS Cheapest
FROM Products;

+----------------+----------+
| Most_Expensive | Cheapest |
+----------------+----------+
|        3500.00 |   500.00 |
+----------------+----------+
1 row in set (0.00 sec)

==================================================================================================================
==================================================================================================================

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

--QUERY:-1 . Insert 10 sample records

INSERT INTO OrderDetails
(OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 101, 1, 2, 2400.00),
(2, 102, 2, 1, 2500.00),
(3, 103, 3, 2, 3600.00),
(4, 104, 4, 3, 4500.00),
(5, 105, 5, 1, 2200.00),
(6, 106, 6, 4, 2800.00),
(7, 107, 7, 2, 6000.00),
(8, 108, 8, 1, 3500.00),
(9, 109, 9, 2, 4000.00),
(10, 110, 10, 3, 1500.00);

--QUERY:-2. Retrieve all order details for a specific order

+---------------+---------+-----------+----------+----------+
| OrderDetailID | OrderID | ProductID | Quantity | SubTotal |
+---------------+---------+-----------+----------+----------+
|             1 |     101 |         1 |        2 |  2400.00 |
+---------------+---------+-----------+----------+----------+
1 row in set (0.01 sec)

--QUERY:-3. Calculate total revenue from all orders

+---------------+
| Total_Revenue |
+---------------+
|      33000.00 |
+---------------+
1 row in set (0.00 sec)

--QUERY:-4. Retrieve the top 3 most ordered products

SELECT ProductID, SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY Total_Quantity DESC
LIMIT 3;

+-----------+----------------+
| ProductID | Total_Quantity |
+-----------+----------------+
|         6 |              4 |
|         4 |              3 |
|        10 |              3 |
+-----------+----------------+

--QUERY:-5. Count how many times a specific product has been sold

SELECT COUNT(*) AS Times_Sold
FROM OrderDetails
WHERE ProductID = 1;

+------------+
| Times_Sold |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)