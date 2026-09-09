<div align="center">

# -- ! UniversityDB ! --
### *SQL-Based University Management Database Demonstrating Table Design, Relationships & Queries*

[![SQL](https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![MySQL](https://img.shields.io/badge/MySQL-UniversityDB-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-5%20Tables-4CAF50?style=for-the-badge&logo=databricks&logoColor=white)](https://www.mysql.com/)
[![Queries](https://img.shields.io/badge/Queries-CRUD%20%7C%20Joins%20%7C%20Window%20Functions-9C27B0?style=for-the-badge&logo=databricks&logoColor=white)](https://dev.mysql.com/doc/)

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

**UniversityDB** is a relational SQL database project built entirely around a university management system. It models **Departments**, **Students**, **Courses**, **Instructors**, and **Enrollments**, linked together through primary and foreign keys, and demonstrates practical, hands-on SQL — from table creation to CRUD operations, joins, subqueries, window functions, and conditional labeling.

This project is designed to:
- Build hands-on familiarity with **relational table design and foreign key relationships**
- Demonstrate **CRUD operations** (Insert, Select, Update, Delete) across multiple tables
- Apply **filtering and conditional queries** using `WHERE`, date comparisons, and `LIMIT`
- Perform **joins** — `INNER JOIN`, `LEFT JOIN`, and multi-table joins across Students, Courses, and Enrollments
- Use **subqueries** to filter students based on nested conditions
- Compute **aggregate/statistical measures** such as `COUNT`, `AVG`, and `MAX`
- Apply **window functions** to calculate a running total of enrolled students
- Use **date functions and CASE logic** to derive enrollment year and student seniority labels

---

## 🎯 Problem Statement

> **Objective:** Design and develop a SQL database that demonstrates practical, hands-on usage of relational database concepts — covering table creation, relationships, CRUD operations, joins, subqueries, aggregation, and window functions — through a single connected university schema.

The database must let the university store departments, students, courses, and instructors, track student course enrollments, and support queries to update, delete, filter, join, and analyze that data — all from one consistent, relational schema.

| 📂 Module | 📄 Type | 🔍 Description |
|-----------|---------|----------------|
| Departments | Structuring | Store department names and IDs |
| Students | Structuring | Store student profile details (name, email, birth date, enrollment date) |
| Courses | Relationship | Catalog courses offered under each department |
| Instructors | Relationship | Store instructors and the department they belong to |
| Enrollments | Junction | Connect students to the courses they are enrolled in |
| Aggregate & Window Functions | Computation | Enrollment counts, averages, maximums, and running totals |

The goal is to demonstrate **practical use of SQL** through a connected, real-world-style university database.

---

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🧱 **Table Creation** | Five interlinked tables built with `PRIMARY KEY` and `FOREIGN KEY` constraints |
| ➕ **CRUD Operations** | Insert, retrieve, update, and delete records across all tables |
| 🔗 **Relational Integrity** | Courses and Instructors reference Departments; Enrollments reference Students and Courses |
| 🔍 **Conditional Filtering** | Retrieve records using `WHERE`, date comparisons, and `LIMIT` |
| 🔀 **Joins** | `INNER JOIN` and `LEFT JOIN` across Students, Enrollments, and Courses |
| 🧮 **Aggregates** | `COUNT()`, `AVG()`, `MAX()` for enrollment and credit statistics |
| 🪜 **Subqueries** | Nested `SELECT` to find students enrolled in high-demand courses |
| 📅 **Date Functions** | `YEAR()`, `CURDATE()`, `DATE_SUB()` for enrollment-year extraction and seniority labeling |
| 🏃 **Window Functions** | Running total of enrolled students using `SUM() OVER (ORDER BY ...)` |
| 🔤 **String Functions** | `CONCAT()` to build instructor full names |
| 🖥️ **Query-Per-Task Structure** | Every requirement mapped to a dedicated, numbered SQL query |

---

## 🏗️ Project Structure

```
📦 universitydb-sql-project/
│
├── 📄 FINAL_PROJECT.sql       ← Main SQL script (schema + queries + sample output)
│
└── 📄 README.md               ← Project documentation
```

---

## 🔄 Project Workflow

```
Database Start
      │
      ▼
┌─────────────────────────────┐
│   Create UniversityDB       │  ← CREATE DATABASE + USE UniversityDB
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Build Core Tables         │  ← Departments → Students → Courses → Instructors → Enrollments
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Insert Sample Data        │  ← Sample rows per table
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Run CRUD, Join & Analysis │  ← Select, Update, Delete, Join, Subquery, Aggregate, Window
│   Queries                   │
└────────────┬────────────────┘
             │
             ▼
      Review Query Output ✅
```

---

## 🧬 Schema Design

The database is organized as five relational tables, each responsible for one part of the university flow. `Courses` and `Instructors` link to `Departments`, and `Enrollments` links to both `Students` and `Courses`, forming a connected schema.

**Logic:**
```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- Instructors and Enrollments follow the same relational pattern
```

| Table | Responsibility |
|-------|-----------------|
| `Departments` | Stores department identity |
| `Students` | Stores student identity and enrollment details |
| `Courses` | Maintains the course catalog per department |
| `Instructors` | Stores instructor identity per department |
| `Enrollments` | Bridges Students and Courses |

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| Primary Keys | Uniquely identify each row in every table |
| Foreign Keys | Enforce relationships between Courses/Instructors↔Departments and Enrollments↔Students/Courses |
| Normalization | Splits data into focused tables instead of one large flat table |

---

## 📂 Table Details

> Each table stores a distinct part of the university data, connected through keys.

| Table | Columns | Purpose |
|-------|---------|---------|
| **Departments** | DepartmentID, DepartmentName | Department master data |
| **Students** | StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate | Student master data |
| **Courses** | CourseID, CourseName, DepartmentID, Credits | Course catalog per department |
| **Instructors** | InstructorID, FirstName, LastName, Email, DepartmentID | Instructor records per department |
| **Enrollments** | EnrollmentID, StudentID, CourseID, EnrollmentDate | Links students to the courses they take |

**Logic:**
```sql
INSERT INTO Students VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01');
```

`Departments` anchors the schema, `Courses` and `Instructors` each belong to a department, `Students` holds the people, and `Enrollments` ties a student to the courses they've taken.

---

## 🧩 Query Modules

### 📋 Query Task Logic

> The script runs through 16 numbered tasks covering CRUD, filtering, joins, subqueries, aggregation, string/date functions, and window functions.

**Logic:**
```sql
1.  CRUD operations on all tables (Create, Read, Update, Delete)
2.  Retrieve students who enrolled after 2022
3.  Retrieve Mathematics department courses (LIMIT 5)
4.  Count students per course, filtered for > 5 students
5.  Students enrolled in BOTH 'Introduction to SQL' AND 'Data Structures'
6.  Students enrolled in EITHER course (DISTINCT)
7.  Average credits across all courses
8.  Maximum instructor salary in Computer Science
9.  Count of students enrolled per department
10. INNER JOIN — students with their courses
11. LEFT JOIN — all students, courses if any
12. Subquery — students in courses with more than 10 students
13. Extract enrollment YEAR() per student
14. CONCAT() instructor full name
15. Running total of enrolled students (window function)
16. Label students 'Senior'/'Junior' based on enrollment date
```

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| `INSERT / SELECT / UPDATE / DELETE` | Full CRUD coverage across all five tables |
| `WHERE` + `HAVING` | Filters rows for update, delete, and grouped/conditional queries |
| `INNER JOIN` / `LEFT JOIN` | Combines Students, Enrollments, and Courses |
| Subquery (`IN`) | Filters students based on a nested course-enrollment count |
| Aggregate Functions | `COUNT()`, `AVG()`, `MAX()` for statistics |
| `SUM() OVER (ORDER BY ...)` | Window function for running total of enrollments |
| `YEAR()`, `CURDATE()`, `DATE_SUB()` | Date extraction and interval-based comparisons |
| `CASE WHEN ... THEN ... ELSE ... END` | Conditional labeling of student seniority |

---

## 📊 Sample Output

The following is the real output captured from running the queries:

```
mysql> SELECT * FROM Students;
+-----------+-----------+----------+----------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+----------------------+------------+----------------+
|         1 | John      | Doe      | john.doe@email.com   | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | jane.smith@email.com | 1999-05-25 | 2021-08-01     |
+-----------+-----------+----------+----------------------+------------+----------------+

mysql> SELECT c.CourseID, c.CourseName, c.Credits
    -> FROM Courses c
    -> JOIN Departments d ON c.DepartmentID = d.DepartmentID
    -> WHERE d.DepartmentName = 'Mathematics'
    -> LIMIT 5;
+----------+-----------------+---------+
| CourseID | CourseName      | Credits |
+----------+-----------------+---------+
|      102 | Data Structures |       4 |
+----------+-----------------+---------+

mysql> SELECT AVG(Credits) AS AverageCredits FROM Courses;
+----------------+
| AverageCredits |
+----------------+
|         3.5000 |
+----------------+

mysql> SELECT d.DepartmentID, d.DepartmentName, COUNT(DISTINCT e.StudentID) AS StudentCount
    -> FROM Departments d
    -> LEFT JOIN Courses c ON d.DepartmentID = c.DepartmentID
    -> LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
    -> GROUP BY d.DepartmentID, d.DepartmentName;
+--------------+------------------+--------------+
| DepartmentID | DepartmentName   | StudentCount |
+--------------+------------------+--------------+
|            1 | Computer Science |            1 |
|            2 | Mathematics      |            1 |
+--------------+------------------+--------------+

mysql> SELECT c.CourseID, c.CourseName, COUNT(e.StudentID) AS StudentCount,
    ->        SUM(COUNT(e.StudentID)) OVER (ORDER BY c.CourseID) AS RunningTotal
    -> FROM Courses c
    -> LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
    -> GROUP BY c.CourseID, c.CourseName;
+----------+---------------------+--------------+--------------+
| CourseID | CourseName          | StudentCount | RunningTotal |
+----------+---------------------+--------------+--------------+
|      101 | Introduction to SQL |            1 |            1 |
|      102 | Data Structures     |            1 |            2 |
+----------+---------------------+--------------+--------------+

mysql> SELECT StudentID, FirstName, LastName, EnrollmentDate,
    ->        CASE WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
    ->             THEN 'Senior' ELSE 'Junior' END AS StudentLevel
    -> FROM Students;
+-----------+-----------+----------+----------------+--------------+
| StudentID | FirstName | LastName | EnrollmentDate | StudentLevel |
+-----------+-----------+----------+----------------+--------------+
|         1 | John      | Doe      | 2022-08-01     | Senior       |
|         2 | Jane      | Smith    | 2021-08-01     | Senior       |
+-----------+-----------+----------+----------------+--------------+
```

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| 🗄️ **MySQL** | 8.0+ | Relational database engine |
| 📝 **SQL (DDL/DML)** | Standard | Table creation, data insertion, and querying |
| 🔗 **PRIMARY KEY / FOREIGN KEY** | Built-in | Enforcing entity relationships |
| 🔀 **INNER JOIN / LEFT JOIN** | Built-in | Combining data across related tables |
| 🪜 **Subqueries** | Built-in | Nested filtering logic |
| 📊 **COUNT / AVG / MAX** | Built-in | Aggregate and statistical computations |
| 🏃 **Window Functions** | Built-in | `SUM() OVER (...)` for running totals |
| 📅 **YEAR / CURDATE / DATE_SUB** | Built-in | Date extraction and interval logic |
| 💻 **MySQL CLI / Workbench** | Any | Running and viewing query output |

---

## 🏆 Advantages

| Advantage | Detail |
|-----------|--------|
| 🎓 **Beginner Friendly** | Covers table design, relationships, and querying in one readable script |
| 📚 **Educational** | Teaches practical SQL usage across CRUD, joins, subqueries, and window functions |
| 🔄 **Reusable Template** | Easy to extend with more tables (e.g., Grades, Exams, Attendance) |
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
- 🔍 [Mode — SQL Tutorial](https://mode.com/sql-tutorial/) — Window function and analytical query patterns
- 💬 [Stack Overflow Community](https://stackoverflow.com/) — Problem-solving support
- 📖 [Kaggle Learn](https://www.kaggle.com/learn) — SQL and data analysis courses

---

<div align="center">

---

*Made with ❤️ and ☕ — Last updated: September 2026*

</div>
