<div align="center">

# -- ! DataDigger ! --
### *SQL-Based E-Commerce Database Demonstrating Table Design, Relationships & Queries*

[![SQL](https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![MySQL](https://img.shields.io/badge/MySQL-DataDigger%20DB-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-4%20Tables-4CAF50?style=for-the-badge&logo=databricks&logoColor=white)](https://www.mysql.com/)
[![Queries](https://img.shields.io/badge/Queries-CRUD%20%7C%20Joins%20%7C%20Aggregates-9C27B0?style=for-the-badge&logo=databricks&logoColor=white)](https://dev.mysql.com/doc/)

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

**DataDigger** is a relational SQL database project built entirely around a mini e-commerce system. It models **Customers**, **Orders**, **Products**, and **OrderDetails**, linked together through primary and foreign keys, and demonstrates practical, hands-on SQL — from table creation to CRUD operations, filtering, sorting, and aggregate statistics.

This project is designed to:
- Build hands-on familiarity with **relational table design and foreign key relationships**
- Demonstrate **CRUD operations** (Insert, Select, Update, Delete) across multiple tables
- Apply **filtering and conditional queries** using `WHERE`, `BETWEEN`, and date functions
- Perform **sorting, grouping, and ranking** using `ORDER BY`, `GROUP BY`, and `LIMIT`
- Compute **aggregate/statistical measures** such as `SUM`, `MAX`, `MIN`, `AVG`, and `COUNT`
- Present a clean, **query-per-task** structure that mirrors real-world e-commerce data operations

---

## 🎯 Problem Statement

> **Objective:** Design and develop a SQL database that demonstrates practical, hands-on usage of relational database concepts — covering table creation, relationships, CRUD operations, filtering/sorting, and statistical aggregation — through a single connected e-commerce schema.

The database must let users store customers, track their orders, catalog products, and record order-line details, while supporting queries to update, delete, filter, and analyze that data — all from one consistent, relational schema.

| 📂 Module | 📄 Type | 🔍 Description |
|-----------|---------|----------------|
| Customers | Structuring | Store customer profile details (name, email, address) |
| Orders | Relationship | Track each order placed by a customer, linked via `CustomerID` |
| Products | Catalog | Maintain product listings with price and stock levels |
| OrderDetails | Junction | Connect orders to products with quantity and subtotal per line item |
| Aggregate & Statistics | Computation | Revenue, top products, highest/lowest values, counts |

The goal is to demonstrate **practical use of SQL** through a connected, real-world-style e-commerce database.

---

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🧱 **Table Creation** | Four interlinked tables built with `PRIMARY KEY` and `FOREIGN KEY` constraints |
| ➕ **CRUD Operations** | Insert, retrieve, update, and delete records across all tables |
| 🔗 **Relational Integrity** | Orders reference Customers, and OrderDetails reference both Orders and Products |
| 🔍 **Conditional Filtering** | Retrieve records using `WHERE`, `BETWEEN`, and name/date-based conditions |
| 🔃 **Sorting** | Sort products by price using `ORDER BY ... DESC` |
| 📅 **Date-Based Queries** | Retrieve recent orders using `CURDATE() - INTERVAL 30 DAY` |
| 🧮 **Aggregates & Statistics** | Total revenue, highest/lowest/average order amount via `SUM()`, `MAX()`, `MIN()`, `AVG()` |
| 🏆 **Ranking Queries** | Top 3 most-ordered products using `GROUP BY`, `ORDER BY`, and `LIMIT` |
| 🖥️ **Query-Per-Task Structure** | Every requirement mapped to a dedicated, numbered SQL query |

---

## 🏗️ Project Structure

```
📦 datadigger-sql-project/
│
├── 📄 project1.sql           ← Main SQL script (schema + queries + sample output)
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
│   Create DataDigger DB      │  ← CREATE DATABASE + USE DataDigger
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Build Core Tables         │  ← Customers → Orders → Products → OrderDetails
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Insert Sample Data        │  ← 10 sample rows per table
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Run CRUD & Analysis Queries│ ← Select, Update, Delete, Filter, Aggregate
└────────────┬────────────────┘
             │
             ▼
      Review Query Output ✅
```

---

## 🧬 Schema Design

The database is organized as four relational tables, each responsible for one part of the e-commerce flow. `Orders` links to `Customers`, and `OrderDetails` links to both `Orders` and `Products`, forming a connected schema.

**Logic:**
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Products and OrderDetails follow the same relational pattern
```

| Table | Responsibility |
|-------|-----------------|
| `Customers` | Stores customer identity and contact details |
| `Orders` | Records each order placed, linked to a customer |
| `Products` | Maintains the product catalog with price and stock |
| `OrderDetails` | Bridges Orders and Products with quantity and subtotal |

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| Primary Keys | Uniquely identify each row in every table |
| Foreign Keys | Enforce relationships between Orders↔Customers and OrderDetails↔Orders/Products |
| Normalization | Splits data into focused tables instead of one large flat table |

---

## 📂 Table Details

> Each table stores a distinct part of the e-commerce data, connected through keys.

| Table | Columns | Purpose |
|-------|---------|---------|
| **Customers** | CustomerID, Name, Email, Address | Customer master data |
| **Orders** | OrderID, CustomerID, OrderDate, TotalAmount | Order-level records per customer |
| **Products** | ProductID, ProductName, Price, Stock | Product catalog and inventory |
| **OrderDetails** | OrderDetailID, OrderID, ProductID, Quantity, SubTotal | Line-item detail per order |

**Logic:**
```sql
INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES (1, 'Alice', 'alice@gmail.com', 'Mumbai');
```

`Customers` holds the people, `Products` holds what's for sale, `Orders` ties a customer to a purchase event, and `OrderDetails` breaks that purchase down into individual product lines with quantity and subtotal.

---

## 🧩 Query Modules

### 📋 Query Task Logic

> Each table section runs through the same pattern: insert sample data, then retrieve, update, delete, and analyze it with a dedicated numbered query.

**Logic:**
```sql
--QUERY:-1. Insert 10 sample customers
--QUERY:-2. Retrieve all customer details
--QUERY:-3. Update a customer's address
--QUERY:-4. Delete a customer using CustomerID
--QUERY:-5. Display all customers whose name is 'Alice'
```

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| `INSERT INTO ... VALUES` | Populates each table with 10 sample records |
| `WHERE` Clause | Filters rows for update, delete, and conditional select queries |
| `GROUP BY` + `ORDER BY` + `LIMIT` | Ranks products by total quantity sold |
| Aggregate Functions | `SUM()`, `MAX()`, `MIN()`, `AVG()`, `COUNT()` for statistics |

---

## 📊 Sample Output

The following is a real, condensed output captured from running the queries:

```
mysql> SELECT * FROM Customers;

+------------+---------+-------------------+------------+
| CustomerID | Name    | Email             | Address    |
+------------+---------+-------------------+------------+
|          1 | Alice   | alice@gmail.com   | Mumbai     |
|          2 | Aastha  | aastha@gmail.com  | Surat      |
|          3 | Vaidehi | vaidehi@gmail.com | Ahmedabad  |
|          4 | Priya   | priya@gmail.com   | Vadodara   |
|          5 | Aayushi | aayushi@gmail.com | Rajkot     |
+------------+---------+-------------------+------------+
10 rows in set (0.00 sec)

mysql> SELECT
    ->     MAX(TotalAmount) AS HighestAmount,
    ->     MIN(TotalAmount) AS LowestAmount,
    ->     AVG(TotalAmount) AS AverageAmount
    -> FROM Orders;

+---------------+--------------+---------------+
| HighestAmount | LowestAmount | AverageAmount |
+---------------+--------------+---------------+
|       5000.00 |      1500.00 |   3083.333333 |
+---------------+--------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT ProductID, SUM(Quantity) AS Total_Quantity
    -> FROM OrderDetails
    -> GROUP BY ProductID
    -> ORDER BY Total_Quantity DESC
    -> LIMIT 3;

+-----------+----------------+
| ProductID | Total_Quantity |
+-----------+----------------+
|         6 |              4 |
|         4 |              3 |
|        10 |              3 |
+-----------+----------------+
3 rows in set (0.00 sec)
```

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| 🗄️ **MySQL** | 8.0+ | Relational database engine |
| 📝 **SQL (DDL/DML)** | Standard | Table creation, data insertion, and querying |
| 🔗 **PRIMARY KEY / FOREIGN KEY** | Built-in | Enforcing entity relationships |
| 🔍 **WHERE / BETWEEN / ORDER BY** | Built-in | Filtering and sorting query results |
| 📊 **SUM / MAX / MIN / AVG / COUNT** | Built-in | Aggregate and statistical computations |
| 🧮 **GROUP BY / LIMIT** | Built-in | Ranking and grouped analysis |
| 💻 **MySQL CLI / Workbench** | Any | Running and viewing query output |

---

## 🏆 Advantages

| Advantage | Detail |
|-----------|--------|
| 🎓 **Beginner Friendly** | Covers table design, relationships, and querying in one readable script |
| 📚 **Educational** | Teaches practical SQL usage across CRUD, filtering, and aggregation |
| 🔄 **Reusable Template** | Easy to extend with more tables (e.g., Payments, Reviews, Categories) |
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

*Made with ❤️ and ☕ — Last updated: August 2026*

</div>
