CREATE DATABASE CorporateDataAnalysis;


USE CorporateDataAnalysis;

-----------------------------------------------------------------------------------

-- CREATE THE TABLES :-
-- 1st table

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE
);

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2022-03-15'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2021-11-02');

+------------+-----------+----------+----------------------+------------------+
| CustomerID | FirstName | LastName | Email                | RegistrationDate |
+------------+-----------+----------+----------------------+------------------+
|          1 | John      | Doe      | john.doe@email.com   | 2022-03-15       |
|          2 | Jane      | Smith    | jane.smith@email.com | 2021-11-02       |
+------------+-----------+----------+----------------------+------------------+

--2nd table

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75);

+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2023-07-01 |      150.50 |
|     102 |          2 | 2023-07-03 |      200.75 |
+---------+------------+------------+-------------+

--3rd table

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees
(EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00);

+------------+-----------+----------+------------+------------+----------+
| EmployeeID | FirstName | LastName | Department | HireDate   | Salary   |
+------------+-----------+----------+------------+------------+----------+
|          1 | Mark      | Johnson  | Sales      | 2020-01-15 | 50000.00 |
|          2 | Susan     | Lee      | HR         | 2021-03-20 | 55000.00 |
+------------+-----------+----------+------------+------------+----------+

QUERIESSSSS :-

1. INNER JOIN :-Retrieve all orders and customer details where orders exist.

SELECT
    Orders.OrderID,
    Orders.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Customers.Email,
    Orders.OrderDate,
    Orders.TotalAmount
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

+---------+------------+-----------+----------+----------------------+------------+-------------+
| OrderID | CustomerID | FirstName | LastName | Email                | OrderDate  | TotalAmount |
+---------+------------+-----------+----------+----------------------+------------+-------------+
|     101 |          1 | John      | Doe      | john.doe@email.com   | 2023-07-01 |      150.50 |
|     102 |          2 | Jane      | Smith    | jane.smith@email.com | 2023-07-03 |      200.75 |
+---------+------------+-----------+----------+----------------------+------------+-------------+

2. LEFT JOIN :-Retrieve all customers and their corresponding orders (if any).

SELECT
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

+------------+-----------+----------+---------+------------+-------------+
| CustomerID | FirstName | LastName | OrderID | OrderDate  | TotalAmount |
+------------+-----------+----------+---------+------------+-------------+
|          1 | John      | Doe      |     101 | 2023-07-01 |      150.50 |
|          2 | Jane      | Smith    |     102 | 2023-07-03 |      200.75 |
+------------+-----------+----------+---------+------------+-------------+

3. RIGHT JOIN :-Retrieve all orders and their corresponding customers (if any).

SELECT
    Orders.OrderID,
    Orders.CustomerID,
    Orders.OrderDate,
    Orders.TotalAmount,
    Customers.FirstName,
    Customers.LastName
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

+---------+------------+------------+-------------+-----------+----------+
| OrderID | CustomerID | OrderDate  | TotalAmount | FirstName | LastName |
+---------+------------+------------+-------------+-----------+----------+
|     101 |          1 | 2023-07-01 |      150.50 | John      | Doe      |
|     102 |          2 | 2023-07-03 |      200.75 | Jane      | Smith    |
+---------+------------+------------+-------------+-----------+----------+

4. FULL OUTER JOIN :-MySQL ma direct FULL OUTER JOIN support nathi. Etle LEFT JOIN + RIGHT JOIN + UNION use karvu.

SELECT
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

+------------+-----------+----------+---------+------------+-------------+
| CustomerID | FirstName | LastName | OrderID | OrderDate  | TotalAmount |
+------------+-----------+----------+---------+------------+-------------+
|          1 | John      | Doe      |     101 | 2023-07-01 |      150.50 |
|          2 | Jane      | Smith    |     102 | 2023-07-03 |      200.75 |
+------------+-----------+----------+---------+------------+-------------+

5. Subquery to find customers who have placed orders worth more than the average amount.

SELECT
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.TotalAmount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM Orders
);

+------------+-----------+----------+---------+-------------+
| CustomerID | FirstName | LastName | OrderID | TotalAmount |
+------------+-----------+----------+---------+-------------+
|          2 | Jane      | Smith    |     102 |      200.75 |
+------------+-----------+----------+---------+-------------+

6.Subquery to find employees with salaries above the average salary.

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Department,
    Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

+------------+-----------+----------+------------+----------+
| EmployeeID | FirstName | LastName | Department | Salary   |
+------------+-----------+----------+------------+----------+
|          2 | Susan     | Lee      | HR         | 55000.00 |
+------------+-----------+----------+------------+----------+

7.Extract the year and month from the OrderDate.

SELECT
    OrderID,
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM Orders;

+---------+------------+-----------+------------+
| OrderID | OrderDate  | OrderYear | OrderMonth |
+---------+------------+-----------+------------+
|     101 | 2023-07-01 |      2023 |          7 |
|     102 | 2023-07-03 |      2023 |          7 |
+---------+------------+-----------+------------+

8.Calculate the difference in days between two dates (order date and current date).

SELECT
    OrderID,
    OrderDate,
    CURDATE() AS CurrentDate,
    DATEDIFF(CURDATE(), OrderDate) AS DaysDifference
FROM Orders;

+---------+------------+-------------+----------------+
| OrderID | OrderDate  | CurrentDate | DaysDifference |
+---------+------------+-------------+----------------+
|     101 | 2023-07-01 | 2026-09-09  |           1166 |
|     102 | 2023-07-03 | 2026-09-09  |           1164 |
+---------+------------+-------------+----------------+

9.Format the OrderDate to a more readable format (e.g., 'DD-MMM-YYYY').

SELECT
    OrderID,
    OrderDate,
    DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedOrderDate
FROM Orders;

+---------+------------+--------------------+
| OrderID | OrderDate  | FormattedOrderDate |
+---------+------------+--------------------+
|     101 | 2023-07-01 | 01-Jul-2023        |
|     102 | 2023-07-03 | 03-Jul-2023        |
+---------+------------+--------------------+

10.Concatenate FirstName and LastName to form a full name:

SELECT
    CustomerID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Customers;

+------------+------------+
| CustomerID | FullName   |
+------------+------------+
|          1 | John Doe   |
|          2 | Jane Smith |
+------------+------------+

11.Replace part of a string (e.g., replace 'John' with 'Jonathan'):

SELECT
    CustomerID,
    REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedFirstName
FROM Customers;

+------------+------------------+
| CustomerID | UpdatedFirstName |
+------------+------------------+
|          1 | Jonathan         |
|          2 | Jane             |
+------------+------------------+

12.Convert FirstName to uppercase and LastName to lowercase:

SELECT
    CustomerID,
    UPPER(FirstName) AS FirstNameUpper,
    LOWER(LastName) AS LastNameLower
FROM Customers;

+------------+----------------+---------------+
| CustomerID | FirstNameUpper | LastNameLower |
+------------+----------------+---------------+
|          1 | JOHN           | doe           |
|          2 | JANE           | smith         |
+------------+----------------+---------------+

13.Trim extra spaces from the Email field:

SELECT
    CustomerID,
    TRIM(Email) AS TrimmedEmail
FROM Customers;

+------------+----------------------+
| CustomerID | TrimmedEmail         |
+------------+----------------------+
|          1 | john.doe@email.com   |
|          2 | jane.smith@email.com |
+------------+----------------------+

14.Calculate the running total of TotalAmount for each order.

SELECT
    OrderID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER (
        ORDER BY OrderDate
    ) AS RunningTotal
FROM Orders;

+---------+------------+-------------+--------------+
| OrderID | OrderDate  | TotalAmount | RunningTotal |
+---------+------------+-------------+--------------+
|     101 | 2023-07-01 |      150.50 |       150.50 |
|     102 | 2023-07-03 |      200.75 |       351.25 |
+---------+------------+-------------+--------------+

15.Rank orders based on TotalAmount using the RANK() function:

SELECT
    OrderID,
    TotalAmount,
    RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM Orders;

+---------+-------------+-----------+
| OrderID | TotalAmount | OrderRank |
+---------+-------------+-----------+
|     102 |      200.75 |         1 |
|     101 |      150.50 |         2 |
+---------+-------------+-----------+

16.Assign a discount based on TotalAmount in orders (e.g., > 1000: 10% off, > 500: 5% off).

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 1000 THEN '10% Discount'
        WHEN TotalAmount > 500 THEN '5% Discount'
        ELSE 'No Discount'
    END AS Discount
FROM Orders;

+---------+-------------+-------------+
| OrderID | TotalAmount | Discount    |
+---------+-------------+-------------+
|     101 |      150.50 | No Discount |
|     102 |      200.75 | No Discount |
+---------+-------------+-------------+

17.Categorize employees' salaries as high, medium, or low.

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    CASE
        WHEN Salary >= 55000 THEN 'High'
        WHEN Salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees;

+------------+-----------+----------+----------+----------------+
| EmployeeID | FirstName | LastName | Salary   | SalaryCategory |
+------------+-----------+----------+----------+----------------+
|          1 | Mark      | Johnson  | 50000.00 | Medium         |
|          2 | Susan     | Lee      | 55000.00 | High           |
+------------+-----------+----------+----------+----------------+