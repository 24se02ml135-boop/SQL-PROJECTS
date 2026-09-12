<div align="center">

# -- ! CorporateDataAnalysis ! --
### *SQL-Based Corporate Database Demonstrating Joins, Subqueries, Window Functions & String/Date Operations*

[![SQL](https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![MySQL](https://img.shields.io/badge/MySQL-CorporateDataAnalysis%20DB-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-3%20Tables-4CAF50?style=for-the-badge&logo=databricks&logoColor=white)](https://www.mysql.com/)
[![Queries](https://img.shields.io/badge/Queries-Joins%20%7C%20Subqueries%20%7C%20Window%20Functions-9C27B0?style=for-the-badge&logo=databricks&logoColor=white)](https://dev.mysql.com/doc/)

<br/>

> *"A database is more than tables and rows — it's a story of how data connects and speaks to itself."*

</div>

---

## 📋 Table of Contents

- [📌 Overview](#-overview)
- [🎯 Problem Statement](#-problem-statement)
- [✨ Key Features](#-key-features)
- [🏗️ Project Structure](#️-project-structure)
- [🔄 Project Workflow](#-project-workflow)
- [🧬 Schema Design](#-schema-design)
- [📂 Table Details](#-table-details)
- [🧩 Query Modules](#-query-modules)
- [📊 Sample Output](#-sample-output)
- [🛠️ Tech Stack](#️-tech-stack)
- [🏆 Advantages](#-advantages)
- [📄 License](#-license)
- [👤 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

**CorporateDataAnalysis** is a relational SQL database project built around a mini corporate/e-commerce dataset. It models **Customers**, **Orders**, and **Employees**, linked together through primary and foreign keys, and demonstrates intermediate-to-advanced SQL — from joins and correlated subqueries to date/string manipulation, window functions, and conditional categorization.

This project is designed to:
- Build hands-on familiarity with **JOIN types** — `INNER`, `LEFT`, `RIGHT`, and a MySQL-style `FULL OUTER JOIN` workaround
- Demonstrate **subqueries** to filter records against aggregate benchmarks (e.g., above-average order value, above-average salary)
- Apply **date functions** — `YEAR()`, `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` — for extracting and formatting temporal data
- Perform **string operations** — `CONCAT()`, `REPLACE()`, `UPPER()`, `LOWER()`, `TRIM()` — for cleaning and transforming text fields
- Use **window functions** — `SUM() OVER()`, `RANK() OVER()` — for running totals and ranking
- Apply **`CASE` expressions** to bucket orders into discount tiers and employees into salary categories

---

## 🎯 Problem Statement

> **Objective:** Design and develop a SQL database that demonstrates practical, hands-on usage of relational database concepts — covering table relationships, joins, subqueries, date/string functions, window functions, and conditional logic — through a single connected corporate schema.

The database must let users store customers, track the orders they place, and maintain employee records, while supporting queries that join related tables, filter against statistical benchmarks, reformat dates and strings, rank/aggregate data over windows, and categorize records using conditional logic — all from one consistent, relational schema.

| 📂 Module | 📄 Type | 🔍 Description |
|-----------|---------|----------------|
| Customers | Structuring | Store customer identity and contact details |
| Orders | Relationship | Track each order placed by a customer, linked via `CustomerID` |
| Employees | Structuring | Maintain employee records with department, hire date, and salary |
| Joins & Subqueries | Analysis | Combine tables and filter against aggregate benchmarks |
| Date, String & Window Functions | Computation | Reformat data, compute running totals, and rank/categorize records |

The goal is to demonstrate **practical use of SQL** through a connected, real-world-style corporate database.

---

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🧱 **Table Creation** | Three interlinked tables built with `PRIMARY KEY` and `FOREIGN KEY` constraints |
| 🔗 **Relational Integrity** | Orders reference Customers via `CustomerID` |
| 🔀 **Join Operations** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `UNION`-based `FULL OUTER JOIN` |
| 🧮 **Correlated Subqueries** | Find customers/employees above the average order amount or salary |
| 📅 **Date Functions** | Extract year/month, compute date differences, and reformat dates with `DATE_FORMAT()` |
| 🔤 **String Functions** | `CONCAT()`, `REPLACE()`, `UPPER()`, `LOWER()`, and `TRIM()` for text cleanup |
| 📈 **Window Functions** | Running totals with `SUM() OVER()` and ranking with `RANK() OVER()` |
| 🏷️ **Conditional Categorization** | `CASE` expressions to assign order discounts and employee salary bands |
| 🖥️ **Query-Per-Task Structure** | Every requirement mapped to a dedicated, numbered SQL query |

---

## 🏗️ Project Structure

```
📦 corporatedataanalysis-sql-project/
│
├── 📄 PROJECT_2.sql          ← Main SQL script (schema + queries + sample output)
│
└── 📄 README.md              ← Project documentation
```

---

## 🔄 Project Workflow

```
Database Start
      │
      ▼
┌─────────────────────────────┐
│  Create CorporateDataAnalysis│  ← CREATE DATABASE + USE CorporateDataAnalysis
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Build Core Tables         │  ← Customers → Orders → Employees
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Insert Sample Data        │  ← 2 sample rows per table
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run Join & Subquery Queries│  ← INNER/LEFT/RIGHT/FULL OUTER JOIN, subqueries
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run Date, String & Window  │  ← Date/string functions, RANK(), running totals,
│  Function & CASE Queries    │    CASE-based categorization
└────────────┬────────────────┘
             │
             ▼
      Review Query Output ✅
```

---

## 🧬 Schema Design

The database is organized as three relational tables. `Orders` links to `Customers` via a foreign key, while `Employees` stands as an independent table used for salary analysis.

**Logic:**
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);
```

| Table | Responsibility |
|-------|-----------------|
| `Customers` | Stores customer identity and contact details |
| `Orders` | Records each order placed, linked to a customer |
| `Employees` | Maintains staff records with department and salary |

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| Primary Keys | Uniquely identify each row in every table |
| Foreign Keys | Enforce the Orders ↔ Customers relationship |
| Normalization | Splits customer, order, and employee data into focused tables |

---

## 📂 Table Details

> Each table stores a distinct part of the corporate dataset, with `Orders` connected to `Customers` through a key.

| Table | Columns | Purpose |
|-------|---------|---------|
| **Customers** | CustomerID, FirstName, LastName, Email, RegistrationDate | Customer master data |
| **Orders** | OrderID, CustomerID, OrderDate, TotalAmount | Order-level records per customer |
| **Employees** | EmployeeID, FirstName, LastName, Department, HireDate, Salary | Staff records for salary analysis |

**Logic:**
```sql
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES (1, 'John', 'Doe', 'john.doe@email.com', '2022-03-15');
```

`Customers` holds the people, `Orders` ties a customer to a purchase event, and `Employees` tracks internal staff data independently of the customer/order relationship.

---

## 🧩 Query Modules

### 📋 Query Task Logic

> Each query is numbered and mapped to a specific SQL concept, moving from joins to subqueries to date/string handling and finally window functions and conditional logic.

**Logic:**
```sql
--QUERY:-1.  INNER JOIN — Orders with matching Customer details
--QUERY:-2.  LEFT JOIN — All Customers with their Orders (if any)
--QUERY:-3.  RIGHT JOIN — All Orders with their Customers (if any)
--QUERY:-4.  FULL OUTER JOIN — LEFT JOIN + RIGHT JOIN via UNION
--QUERY:-5.  Subquery — Customers with orders above the average TotalAmount
--QUERY:-6.  Subquery — Employees with salary above the average Salary
--QUERY:-7.  Date Function — Extract YEAR() and MONTH() from OrderDate
--QUERY:-8.  Date Function — DATEDIFF() between OrderDate and CURDATE()
--QUERY:-9.  Date Function — DATE_FORMAT() to 'DD-MMM-YYYY'
--QUERY:-10. String Function — CONCAT() FirstName and LastName
--QUERY:-11. String Function — REPLACE() part of a name
--QUERY:-12. String Function — UPPER() and LOWER() on names
--QUERY:-13. String Function — TRIM() extra spaces from Email
--QUERY:-14. Window Function — Running total with SUM() OVER()
--QUERY:-15. Window Function — Ranking with RANK() OVER()
--QUERY:-16. CASE Expression — Discount tiers based on TotalAmount
--QUERY:-17. CASE Expression — Salary category (High/Medium/Low)
```

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| `INNER / LEFT / RIGHT JOIN` | Combines Customers and Orders in different match modes |
| `UNION` | Simulates `FULL OUTER JOIN`, which MySQL doesn't support natively |
| Correlated Subqueries | Compares individual rows against an aggregate (`AVG()`) benchmark |
| Date Functions | `YEAR()`, `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` for temporal analysis |
| String Functions | `CONCAT()`, `REPLACE()`, `UPPER()`, `LOWER()`, `TRIM()` for text cleanup |
| Window Functions | `SUM() OVER(ORDER BY ...)` and `RANK() OVER(ORDER BY ...)` |
| `CASE` Expressions | Buckets rows into discount tiers or salary categories |

---

## 📊 Sample Output

The following is a real, condensed output captured from running the queries:

```
mysql> SELECT * FROM Customers;

+------------+-----------+----------+----------------------+------------------+
| CustomerID | FirstName | LastName | Email                | RegistrationDate |
+------------+-----------+----------+----------------------+------------------+
|          1 | John      | Doe      | john.doe@email.com   | 2022-03-15       |
|          2 | Jane      | Smith    | jane.smith@email.com | 2021-11-02       |
+------------+-----------+----------+----------------------+------------------+
2 rows in set (0.00 sec)

mysql> -- Subquery: customers with orders above average TotalAmount
mysql> SELECT
    ->     Customers.CustomerID, Customers.FirstName, Customers.LastName,
    ->     Orders.OrderID, Orders.TotalAmount
    -> FROM Customers
    -> INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    -> WHERE Orders.TotalAmount > (SELECT AVG(TotalAmount) FROM Orders);

+------------+-----------+----------+---------+-------------+
| CustomerID | FirstName | LastName | OrderID | TotalAmount |
+------------+-----------+----------+---------+-------------+
|          2 | Jane      | Smith    |     102 |      200.75 |
+------------+-----------+----------+---------+-------------+
1 row in set (0.00 sec)

mysql> -- Window Functions: running total and rank
mysql> SELECT
    ->     OrderID, OrderDate, TotalAmount,
    ->     SUM(TotalAmount) OVER (ORDER BY OrderDate) AS RunningTotal,
    ->     RANK() OVER (ORDER BY TotalAmount DESC) AS OrderRank
    -> FROM Orders;

+---------+------------+-------------+--------------+-----------+
| OrderID | OrderDate  | TotalAmount | RunningTotal | OrderRank |
+---------+------------+-------------+--------------+-----------+
|     101 | 2023-07-01 |      150.50 |       150.50 |         2 |
|     102 | 2023-07-03 |      200.75 |       351.25 |         1 |
+---------+------------+-------------+--------------+-----------+
2 rows in set (0.00 sec)

mysql> -- CASE Expression: employee salary category
mysql> SELECT
    ->     EmployeeID, FirstName, LastName, Salary,
    ->     CASE
    ->         WHEN Salary >= 55000 THEN 'High'
    ->         WHEN Salary >= 50000 THEN 'Medium'
    ->         ELSE 'Low'
    ->     END AS SalaryCategory
    -> FROM Employees;

+------------+-----------+----------+----------+----------------+
| EmployeeID | FirstName | LastName | Salary   | SalaryCategory |
+------------+-----------+----------+----------+----------------+
|          1 | Mark      | Johnson  | 50000.00 | Medium         |
|          2 | Susan     | Lee      | 55000.00 | High           |
+------------+-----------+----------+----------+----------------+
2 rows in set (0.00 sec)
```

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| 🗄️ **MySQL** | 8.0+ | Relational database engine |
| 📝 **SQL (DDL/DML)** | Standard | Table creation, data insertion, and querying |
| 🔗 **PRIMARY KEY / FOREIGN KEY** | Built-in | Enforcing entity relationships |
| 🔀 **JOIN / UNION** | Built-in | Combining and merging result sets across tables |
| 🧮 **Subqueries** | Built-in | Filtering rows against aggregate benchmarks |
| 📅 **YEAR / MONTH / DATEDIFF / DATE_FORMAT** | Built-in | Date extraction and formatting |
| 🔤 **CONCAT / REPLACE / UPPER / LOWER / TRIM** | Built-in | String manipulation and cleanup |
| 📈 **SUM() OVER() / RANK() OVER()** | Built-in | Window functions for running totals and ranking |
| 🏷️ **CASE** | Built-in | Conditional bucketing and categorization |
| 💻 **MySQL CLI / Workbench** | Any | Running and viewing query output |

---

## 🏆 Advantages

| Advantage | Detail |
|-----------|--------|
| 🎓 **Beginner-to-Intermediate Friendly** | Moves from basic joins to window functions in one readable script |
| 📚 **Educational** | Teaches practical SQL usage across joins, subqueries, and conditional logic |
| 🔄 **Reusable Template** | Easy to extend with more tables (e.g., Departments, Products, Payments) |
| 🖥️ **Minimal Dependencies** | Runs on any standard MySQL/MariaDB instance |
| ⚡ **Lightweight** | Single-file script, instantly runnable in any SQL client |
| 🧪 **Extensible** | Can be upgraded with views, stored procedures, or triggers |
| 📖 **Readable Code** | Clear query-per-task structure makes the logic easy to follow and learn |

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for full details.

```
MIT License — Free to use, modify, and distribute with attribution.
```

---

## 👤 Author

<div align="center">

### Aastha Chodvadiya

[![GitHub](https://img.shields.io/badge/GitHub-yourhandle-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/24se02ml135-boop/python-project)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/chodvadiya-aastha-8b79a4418/)

> *"Every database starts with a single table — design it well, and the relationships follow."*

**🎓 Role:** Junior Python Developer | Programming Enthusiast \
**📍 Location:** India \
**🛠️ Skills:** SQL · Database Design · Query Optimization · Data Analysis · Relational Modeling

</div>

---

## 🙏 Acknowledgements

Special thanks to the following resources and communities that made this project possible:

- 📚 [MySQL Official Documentation](https://dev.mysql.com/doc/) — Official reference for SQL syntax and functions
- 🧠 [GeeksForGeeks — SQL Tutorial](https://www.geeksforgeeks.org/sql-tutorial/) — Query and schema design reference
- 🖥️ [W3Schools SQL Tutorial](https://www.w3schools.com/sql/) — Beginner SQL reference
- 🔍 [Mode — SQL Tutorial](https://mode.com/sql-tutorial/) — Aggregate and analytical query patterns
- 💬 [Stack Overflow Community](https://stackoverflow.com/) — Problem-solving support
- 📖 [Kaggle Learn](https://www.kaggle.com/learn) — SQL and data analysis courses

---

<div align="center">

---

*Made with ❤️ and ☕ — Last updated: September 2026*

</div>
