<div align="center">

# -- ! HospitalManagementSystem ! --
### *SQL-Based Hospital Database Demonstrating CRUD, Joins, Subqueries, Window Functions & CASE Logic*

[![SQL](https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![MySQL](https://img.shields.io/badge/MySQL-HospitalManagement%20DB-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-7%20Tables-4CAF50?style=for-the-badge&logo=databricks&logoColor=white)](https://www.mysql.com/)
[![Queries](https://img.shields.io/badge/Queries-CRUD%20%7C%20Joins%20%7C%20Window%20Functions-9C27B0?style=for-the-badge&logo=databricks&logoColor=white)](https://dev.mysql.com/doc/)

<br/>

> *"A hospital database is more than patient records — it's the connective tissue between people, care, and data."*

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
- [🧩 Task Modules](#-task-modules)
- [📊 Sample Output](#-sample-output)
- [🛠️ Tech Stack](#️-tech-stack)
- [🏆 Advantages](#-advantages)
- [📄 License](#-license)
- [👤 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

**HospitalManagementSystem** is a relational SQL database project built around a realistic hospital dataset. It models **Patients**, **Doctors**, **Appointments**, **Medical Records**, **Billing**, **Departments**, and a **Doctor–Department** mapping table, all linked together through primary and foreign keys, and demonstrates a full spectrum of SQL — from CRUD operations and basic clauses to correlated subqueries, joins, date/string manipulation, window functions, and conditional categorization.

This project is designed to:
- Perform **CRUD operations** — inserting, updating, and deleting hospital records
- Apply **SQL clauses** — `WHERE`, `HAVING`, `LIMIT` — to filter and cap result sets
- Use **logical operators** — `AND`, `OR`, `NOT` — to combine multiple conditions
- Practice **sorting & grouping** with `ORDER BY` and `GROUP BY`
- Compute **aggregate functions** — `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()` — for revenue and visit analysis
- Establish **primary & foreign key relationships** across seven interlinked tables
- Demonstrate **all four JOIN types** — `INNER`, `LEFT`, `RIGHT`, and a MySQL-style `FULL OUTER JOIN` workaround
- Write **subqueries** to isolate doctors, patients, and specializations against dynamic conditions
- Apply **date/time functions** — `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` — for visit trends and stay duration
- Perform **string operations** — `UPPER()`, `TRIM()`, `REPLACE()` — for cleaning and standardizing text
- Use **window functions** — `RANK() OVER()`, cumulative `SUM() OVER()` — for rankings and running totals
- Apply **`CASE` expressions** to categorize doctors by experience level

---

## 🎯 Problem Statement

> **Objective:** Design and develop a SQL database for a hospital that demonstrates practical, end-to-end usage of relational database concepts — covering CRUD operations, filtering clauses, operators, grouping, aggregation, key relationships, joins, subqueries, date/string functions, window functions, and conditional logic — through one connected hospital schema.

The database must let the hospital store patients, manage doctors and their departments, schedule appointments, maintain medical records, and process billing, while supporting queries that filter and rank data, join related tables, compute revenue and visit statistics, and categorize doctors by experience — all from one consistent, relational schema.

| 📂 Module | 📄 Type | 🔍 Description |
|-----------|---------|----------------|
| Patients | Structuring | Store patient identity, contact, and registration details |
| Doctors | Structuring | Maintain doctor specialization, fees, and experience |
| Appointments | Relationship | Track each visit, linking a patient to a doctor |
| Medical Records | Relationship | Record diagnosis, prescription, and admission/discharge dates |
| Billing | Relationship | Track invoices raised against each appointment |
| Departments & Doctor_Department | Relationship | Map doctors to the departments they belong to |
| CRUD, Joins & Subqueries | Analysis | Insert/update/delete records and combine tables for insight |
| Date, String, Window & CASE | Computation | Reformat data, rank doctors, and categorize by experience |

The goal is to demonstrate **practical, task-driven use of SQL** through a connected, real-world-style hospital database.

---

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🧱 **Table Creation** | Seven interlinked tables built with `PRIMARY KEY` and `FOREIGN KEY` constraints |
| 🔗 **Relational Integrity** | Appointments, Medical Records, Billing, and Doctor_Department all reference their parent tables |
| ✏️ **CRUD Operations** | `INSERT`, `UPDATE`, and `DELETE` on patients, doctors, and appointments |
| 🔎 **Filtering Clauses** | `WHERE`, `HAVING`, and `LIMIT` to narrow and cap result sets |
| 🧠 **Logical Operators** | `AND`, `OR`, `NOT` to combine multiple filter conditions |
| 📊 **Sorting & Grouping** | `ORDER BY` and `GROUP BY` for specialization- and doctor-wise breakdowns |
| ➕ **Aggregate Functions** | `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()` for revenue and visit stats |
| 🔀 **Join Operations** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `UNION`-based `FULL OUTER JOIN` |
| 🧮 **Subqueries** | Isolate doctors with high patient loads, top spenders, and specialization matches |
| 📅 **Date Functions** | `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` for visit trends and stay duration |
| 🔤 **String Functions** | `UPPER()`, `TRIM()`, `REPLACE()` for cleaning patient/doctor text fields |
| 📈 **Window Functions** | `RANK() OVER()` and cumulative `SUM() OVER()` for doctor rankings and running totals |
| 🏷️ **CASE Expressions** | Categorize doctors into Junior / Mid-Level / Senior by experience |
| 🖥️ **Task-Per-Module Structure** | Every requirement mapped to a dedicated, numbered task (TASK-1 to TASK-12) |

---

## 🏗️ Project Structure

```
📦 hospitalmanagementsystem-sql-project/
│
├── 📄 EXAM_PROJECT.sql       ← Main SQL script (schema + data + tasks + verified output)
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
│  Create hospital_management  │  ← CREATE DATABASE + USE hospital_management
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Build Core Tables         │  ← Patients → Doctors → Appointments →
│                              │    Medical_Records → Billing → Departments →
│                              │    Doctor_Department
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Insert Sample Data        │  ← 40 rows per core table, mapped relationships
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run CRUD, Clause & Operator│  ← INSERT/UPDATE/DELETE, WHERE/HAVING/LIMIT,
│  Tasks (TASK 1–3)           │    AND/OR/NOT
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run Grouping, Aggregate &  │  ← ORDER BY/GROUP BY, SUM/AVG/MAX/MIN/COUNT,
│  Key-Relationship Tasks     │    PRIMARY/FOREIGN KEY design
│  (TASK 4–6)                 │
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run Join & Subquery Tasks  │  ← INNER/LEFT/RIGHT/FULL OUTER JOIN, subqueries
│  (TASK 7–8)                 │
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│  Run Date, String, Window & │  ← Date/string functions, RANK(), running totals,
│  CASE Tasks (TASK 9–12)     │    CASE-based experience categorization
└────────────┬────────────────┘
             │
             ▼
      Verify Row Counts & Review Output ✅
```

---

## 🧬 Schema Design

The database is organized as seven relational tables. `Appointments`, `Medical_Records`, and `Billing` link back to `Patients` and `Doctors`, while `Doctor_Department` connects `Doctors` to `Departments` in a many-to-many style mapping.

**Logic:**
```sql
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(200),
    registration_date DATE
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    available_days VARCHAR(100),
    consultation_fee DECIMAL(10,2),
    experience_years INT
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis VARCHAR(200),
    prescription VARCHAR(300),
    treatment_date DATE,
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,
    PRIMARY KEY (doctor_id, department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
```

| Table | Responsibility |
|-------|-----------------|
| `Patients` | Stores patient identity, contact, and registration details |
| `Doctors` | Maintains doctor specialization, fees, and experience |
| `Appointments` | Records each visit, linking a patient to a doctor |
| `Medical_Records` | Stores diagnosis, prescription, and admission/discharge dates |
| `Billing` | Tracks invoices raised per appointment |
| `Departments` | Master list of hospital departments |
| `Doctor_Department` | Many-to-many mapping between doctors and departments |

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| Primary Keys | Uniquely identify each row in every table |
| Foreign Keys | Enforce Patient ↔ Doctor ↔ Appointment ↔ Billing relationships |
| Composite Keys | `Doctor_Department` uses a composite `(doctor_id, department_id)` key |
| Normalization | Splits patient, doctor, visit, record, and billing data into focused tables |

---

## 📂 Table Details

> Each table stores a distinct part of the hospital dataset, connected through patient and doctor identifiers.

| Table | Columns | Purpose |
|-------|---------|---------|
| **Patients** | patient_id, name, dob, gender, phone_number, email, address, registration_date | Patient master data |
| **Doctors** | doctor_id, name, specialization, phone_number, email, available_days, consultation_fee, experience_years | Doctor master data |
| **Appointments** | appointment_id, patient_id, doctor_id, appointment_date, status | Visit-level records per patient/doctor |
| **Medical_Records** | record_id, patient_id, doctor_id, diagnosis, prescription, treatment_date, admission_date, discharge_date | Clinical history per patient |
| **Billing** | invoice_id, patient_id, appointment_id, amount, payment_status, payment_date | Payment records per appointment |
| **Departments** | department_id, department_name | Master list of hospital departments |
| **Doctor_Department** | doctor_id, department_id | Maps doctors to their department(s) |

**Logic:**
```sql
INSERT INTO Patients
(patient_id, name, dob, gender, phone_number, email, address, registration_date)
VALUES
(1,'Aarav Patel','1995-01-15','Male','9876500001','aarav@gmail.com','Surat','2026-01-05');
```

`Patients` holds the people, `Doctors` holds the caregivers, `Appointments` ties the two together, `Medical_Records` and `Billing` extend each visit with clinical and financial detail, and `Departments`/`Doctor_Department` organize doctors administratively.

---

## 🧩 Task Modules

### 📋 Task Logic

> Each task is numbered and mapped to a specific SQL concept, moving from CRUD basics to clauses, operators, aggregation, key relationships, joins, subqueries, date/string handling, and finally window functions and conditional logic.

**Logic:**
```sql
--TASK-1.  CRUD Operations — INSERT new patient, UPDATE address, DELETE old cancelled appointments
--TASK-2.  SQL Clauses — WHERE, HAVING, LIMIT for filtered/top-N results
--TASK-3.  SQL Operators — AND, OR, NOT to combine appointment/doctor conditions
--TASK-4.  Sorting & Grouping — ORDER BY specialization, GROUP BY doctor/department
--TASK-5.  Aggregate Functions — SUM(), AVG(), MAX(), MIN(), COUNT() for revenue & visits
--TASK-6.  Primary & Foreign Keys — relating invoices to appointments
--TASK-7.  Joins — INNER, LEFT, RIGHT, and UNION-based FULL OUTER JOIN
--TASK-8.  Subqueries — doctors with 50+ patients, top spender, specialization match
--TASK-9.  Date & Time Functions — MONTH(), DATEDIFF(), DATE_FORMAT()
--TASK-10. String Functions — UPPER(), TRIM(), REPLACE()
--TASK-11. Window Functions — RANK() OVER(), cumulative revenue, running total of appointments
--TASK-12. CASE Expressions — categorize doctors as Junior / Mid-Level / Senior
```

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| `INSERT / UPDATE / DELETE` | Full CRUD lifecycle on patients, doctors, and appointments |
| `WHERE / HAVING / LIMIT` | Filters rows and caps result sets (e.g., top 5 highest-paying patients) |
| `AND / OR / NOT` | Combines multiple conditions across appointments and doctors |
| `GROUP BY / ORDER BY` | Aggregates and sorts patients-per-doctor and revenue-per-department |
| `SUM / AVG / MAX / MIN / COUNT` | Computes total revenue, average fee, and most-visited doctor |
| `INNER / LEFT / RIGHT JOIN` | Combines Doctors, Departments, Patients, and Appointments in different match modes |
| `UNION` | Simulates `FULL OUTER JOIN`, which MySQL doesn't support natively |
| Subqueries | Filters doctors/patients against dynamic thresholds (patient count, total spend) |
| Date Functions | `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` for visit trends and stay duration |
| String Functions | `UPPER()`, `TRIM()`, `REPLACE()` for text cleanup and standardization |
| Window Functions | `RANK() OVER(ORDER BY ...)` and cumulative `SUM() OVER(ORDER BY ...)` |
| `CASE` Expressions | Buckets doctors into experience-based categories |

---

## 📊 Sample Output

The following is a real, condensed output captured from running the queries:

```
mysql> SELECT COUNT(*) AS total_patients FROM Patients;

+----------------+
| total_patients |
+----------------+
|             40 |
+----------------+

mysql> -- JOIN: doctors with their department names
mysql> SELECT
    ->     d.doctor_id, d.name AS doctor_name, dept.department_name
    -> FROM Doctors d
    -> INNER JOIN Doctor_Department dd ON d.doctor_id = dd.doctor_id
    -> INNER JOIN Departments dept ON dd.department_id = dept.department_id
    -> LIMIT 3;

+-----------+----------------+-----------------+
| doctor_id | doctor_name    | department_name |
+-----------+----------------+-----------------+
|         1 | Dr. Raj Patel  | Cardiology      |
|         2 | Dr. Priya Shah | Neurology       |
|         3 | Dr. Amit Mehta | Dermatology     |
+-----------+----------------+-----------------+

mysql> -- Window Function: rank doctors by patients treated
mysql> SELECT
    ->     d.doctor_id, d.name, COUNT(a.patient_id) AS total_patients,
    ->     RANK() OVER (ORDER BY COUNT(a.patient_id) DESC) AS doctor_rank
    -> FROM Doctors d
    -> LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
    -> GROUP BY d.doctor_id, d.name
    -> LIMIT 3;

+-----------+----------------+-----------------+-------------+
| doctor_id | name           | total_patients  | doctor_rank |
+-----------+----------------+-----------------+-------------+
|         1 | Dr. Raj Patel  |               1 |           1 |
|         2 | Dr. Priya Shah |               1 |           1 |
|         3 | Dr. Amit Mehta |               1 |           1 |
+-----------+----------------+-----------------+-------------+

mysql> -- CASE Expression: categorize doctors by experience
mysql> SELECT
    ->     doctor_id, name, experience_years,
    ->     CASE
    ->         WHEN experience_years >= 15 THEN 'Senior'
    ->         WHEN experience_years >= 8 THEN 'Mid-Level'
    ->         ELSE 'Junior'
    ->     END AS experience_category
    -> FROM Doctors
    -> LIMIT 5;

+-----------+------------------+------------------+----------------------+
| doctor_id | name             | experience_years | experience_category  |
+-----------+------------------+------------------+----------------------+
|         1 | Dr. Raj Patel    |               18 | Senior               |
|         2 | Dr. Priya Shah   |               12 | Mid-Level            |
|         3 | Dr. Amit Mehta   |                8 | Mid-Level            |
|         4 | Dr. Neha Desai   |               16 | Senior               |
|         5 | Dr. Kunal Patel  |               20 | Senior               |
+-----------+------------------+------------------+----------------------+

mysql> -- Verification: row counts across all tables after cleanup
SELECT COUNT(*) AS Patients FROM Patients;          -- 40
SELECT COUNT(*) AS Doctors FROM Doctors;            -- 40
SELECT COUNT(*) AS Appointments FROM Appointments;  -- 40
SELECT COUNT(*) AS Medical_Records FROM Medical_Records; -- 40
SELECT COUNT(*) AS Billing FROM Billing;            -- 40
SELECT COUNT(*) AS Departments FROM Departments;    -- 40
SELECT COUNT(*) AS Doctor_Department FROM Doctor_Department; -- 40
```

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| 🗄️ **MySQL** | 8.0+ | Relational database engine |
| 📝 **SQL (DDL/DML)** | Standard | Table creation, data insertion, and querying |
| 🔗 **PRIMARY KEY / FOREIGN KEY** | Built-in | Enforcing entity relationships across 7 tables |
| 🔀 **JOIN / UNION** | Built-in | Combining and merging result sets across tables |
| 🧮 **Subqueries** | Built-in | Filtering rows against dynamic thresholds |
| 📅 **MONTH / DATEDIFF / DATE_FORMAT** | Built-in | Date extraction, stay duration, and formatting |
| 🔤 **UPPER / TRIM / REPLACE** | Built-in | String manipulation and cleanup |
| 📈 **RANK() OVER() / SUM() OVER()** | Built-in | Window functions for rankings and running totals |
| 🏷️ **CASE** | Built-in | Conditional bucketing and categorization |
| 💻 **MySQL CLI / Workbench** | Any | Running and viewing query output |

---

## 🏆 Advantages

| Advantage | Detail |
|-----------|--------|
| 🎓 **Beginner-to-Advanced Friendly** | Moves from basic CRUD to window functions in one readable script |
| 📚 **Educational** | Teaches practical SQL usage across joins, subqueries, and conditional logic |
| 🏥 **Real-World Domain** | Modeled on an actual hospital workflow — patients, doctors, billing, and records |
| 🔄 **Reusable Template** | Easy to extend with more tables (e.g., Pharmacy, Insurance, Staff) |
| 🖥️ **Minimal Dependencies** | Runs on any standard MySQL/MariaDB instance |
| ⚡ **Lightweight** | Single-file script, instantly runnable in any SQL client |
| 🧪 **Extensible** | Can be upgraded with views, stored procedures, or triggers |
| 📖 **Readable Code** | Clear task-per-module structure makes the logic easy to follow and learn |

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
