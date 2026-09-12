<div align="center">

# -- ! HospitalDB ! --
### *SQL-Based Hospital Management Database Demonstrating Table Design, Relationships & Queries*

[![SQL](https://img.shields.io/badge/SQL-Relational%20Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![MySQL](https://img.shields.io/badge/MySQL-HospitalDB-00758F?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Database](https://img.shields.io/badge/Database-7%20Tables-4CAF50?style=for-the-badge&logo=databricks&logoColor=white)](https://www.mysql.com/)
[![Queries](https://img.shields.io/badge/Queries-CRUD%20%7C%20Joins%20%7C%20Window%20Functions-9C27B0?style=for-the-badge&logo=databricks&logoColor=white)](https://dev.mysql.com/doc/)

<br/>

> *"A hospital database doesn't just store records — it connects patients, doctors, and treatments into one living system."*

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
- [🧩 Task-Wise Query Modules](#-task-wise-query-modules)
- [📊 Sample Output](#-sample-output)
- [🛠️ Tech Stack](#️-tech-stack)
- [🏆 Advantages](#-advantages)
- [📄 License](#-license)
- [👤 Author](#-author)
- [🙏 Acknowledgements](#-acknowledgements)

---

## 📌 Overview

**HospitalDB** is a relational SQL database project built entirely around a hospital management system. It models **Patients**, **Doctors**, **Appointments**, **Medical Records**, **Billing**, **Departments**, and a **Doctor–Department** mapping table, all linked together through primary and foreign keys, and demonstrates practical, hands-on SQL — from table creation to CRUD operations, clauses, operators, joins, subqueries, aggregation, date/time and string functions, window functions, and CASE-based classification.

This project is designed to:
- Build hands-on familiarity with **relational table design and foreign key relationships**
- Demonstrate **CRUD operations** (Insert, Update, Delete) across Patients and Appointments
- Apply **SQL clauses** (`WHERE`, `HAVING`, `LIMIT`) for targeted data retrieval
- Use **logical operators** (`AND`, `OR`, `NOT`) to combine filter conditions
- Perform **sorting and grouping** (`ORDER BY`, `GROUP BY`) across doctors, patients, and departments
- Compute **aggregate/statistical measures** such as `SUM`, `AVG`, `MAX`, and `COUNT`
- Establish and verify **primary/foreign key relationships** across all six linked tables
- Perform **joins** — `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and simulated `FULL OUTER JOIN`
- Use **subqueries** to filter doctors and patients based on nested conditions
- Apply **date & time functions** to analyze visit frequency and hospital stay duration
- Apply **string manipulation functions** to clean and standardize text data
- Use **window functions** to rank doctors and compute running/cumulative totals
- Use **CASE expressions** to classify patients by risk level and doctors by experience

---

## 🎯 Problem Statement

> **Objective:** Design and develop a SQL database that demonstrates practical, hands-on usage of relational database concepts — covering table creation, relationships, CRUD operations, clauses, operators, joins, subqueries, date/time and string functions, aggregation, window functions, and CASE logic — through a single connected hospital management schema.

The database must let a hospital store patients, doctors, departments, and appointments, track medical records and billing, and support queries to insert, update, delete, filter, sort, join, and analyze that data — all from one consistent, relational schema.

| 📂 Module | 📄 Type | 🔍 Description |
|-----------|---------|----------------|
| Patients | Structuring | Store patient profile details (name, DOB, gender, contact, registration date) |
| Doctors | Structuring | Store doctor profile, specialization, fees, and experience |
| Departments | Structuring | Catalog hospital departments |
| Doctor_Department | Junction | Map doctors to the departments they belong to |
| Appointments | Relationship | Track patient–doctor appointment bookings and status |
| Medical_Records | Relationship | Store diagnosis, prescription, and admission/discharge details |
| Billing | Relationship | Track invoices, payment status, and revenue per appointment |
| Aggregate & Window Functions | Computation | Revenue totals, visit counts, rankings, and running totals |

The goal is to demonstrate **practical use of SQL** through a connected, real-world-style hospital management database.

---

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| 🧱 **Table Creation** | Seven interlinked tables built with `PRIMARY KEY` and `FOREIGN KEY` constraints |
| ➕ **CRUD Operations** | Insert new patients, update patient details, delete stale cancelled appointments |
| 🔍 **Clauses** | `WHERE`, `HAVING`, and `LIMIT` for targeted filtering and top-N retrieval |
| ⚙️ **Logical Operators** | `AND`, `OR`, `NOT` to combine and exclude filter conditions |
| 🔀 **Sorting & Grouping** | `ORDER BY` and `GROUP BY` across doctors, patients, and departments |
| 🧮 **Aggregates** | `SUM()`, `AVG()`, `MAX()`, `COUNT()` for revenue and consultation statistics |
| 🔗 **Relational Integrity** | Appointments, Medical_Records, and Billing all reference Patients/Doctors via foreign keys |
| 🔀 **Joins** | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and simulated `FULL OUTER JOIN` (via `UNION`) |
| 🪜 **Subqueries** | Nested `SELECT` to find high-volume doctors and top-spending patients |
| 📅 **Date Functions** | `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` for visit trends and stay duration |
| 🔤 **String Functions** | `UPPER()`, `TRIM()`, `IFNULL()`/`COALESCE()` for cleaning patient and doctor data |
| 🏃 **Window Functions** | `RANK() OVER (...)` and `SUM() OVER (...)` for doctor rankings and running totals |
| 🧩 **CASE Expressions** | Conditional labeling of patient risk level and doctor seniority |
| 🖥️ **Task-Per-Requirement Structure** | Every requirement mapped to a numbered, weighted task |

---

## 🏗️ Project Structure

```
📦 hospitaldb-sql-project/
│
├── 📄 EXAM_PROJECT.sql        ← Main SQL script (schema + queries + captured output)
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
│   Create hospital_management │  ← CREATE DATABASE + USE hospital_management
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Build Core Tables         │  ← Patients → Doctors → Appointments → Medical_Records
│                              │     → Billing → Departments → Doctor_Department
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Insert Sample Data        │  ← 40 rows per table, fully cross-referenced
└────────────┬────────────────┘
             │
             ▼
┌─────────────────────────────┐
│   Run Task-Wise Queries     │  ← CRUD, Clauses, Operators, Sorting, Aggregates,
│                              │     Joins, Subqueries, Date/String Functions,
│                              │     Window Functions, CASE Expressions
└────────────┬────────────────┘
             │
             ▼
      Review Query Output ✅
```

---

## 🧬 Schema Design

The database is organized as seven relational tables, each responsible for one part of the hospital flow. `Doctor_Department` bridges `Doctors` and `Departments`, while `Appointments`, `Medical_Records`, and `Billing` all connect back to `Patients` and `Doctors`, forming a fully connected schema.

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
-- Medical_Records, Billing, Departments, and Doctor_Department follow the same relational pattern
```

| Table | Responsibility |
|-------|-----------------|
| `Patients` | Stores patient identity and registration details |
| `Doctors` | Stores doctor identity, specialization, and fees |
| `Appointments` | Bridges Patients and Doctors with a visit date and status |
| `Medical_Records` | Holds diagnosis, prescription, and admission/discharge dates |
| `Billing` | Tracks invoice amount and payment status per appointment |
| `Departments` | Stores department identity |
| `Doctor_Department` | Bridges Doctors and Departments |

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| Primary Keys | Uniquely identify each row in every table |
| Foreign Keys | Enforce relationships between Appointments/Medical_Records/Billing↔Patients/Doctors and Doctor_Department↔Doctors/Departments |
| Normalization | Splits data into focused tables instead of one large flat table |

---

## 📂 Table Details

> Each table stores a distinct part of the hospital's data, connected through keys.

| Table | Columns | Purpose |
|-------|---------|---------|
| **Patients** | patient_id, name, dob, gender, phone_number, email, address, registration_date | Patient master data |
| **Doctors** | doctor_id, name, specialization, phone_number, email, available_days, consultation_fee, experience_years | Doctor master data |
| **Appointments** | appointment_id, patient_id, doctor_id, appointment_date, status | Links patients to the doctors they visit |
| **Medical_Records** | record_id, patient_id, doctor_id, diagnosis, prescription, treatment_date, admission_date, discharge_date | Clinical history per patient visit |
| **Billing** | invoice_id, patient_id, appointment_id, amount, payment_status, payment_date | Invoice and payment tracking per appointment |
| **Departments** | department_id, department_name | Department master data |
| **Doctor_Department** | doctor_id, department_id | Maps each doctor to their department |

**Logic:**
```sql
INSERT INTO Patients VALUES
(1,'Aarav Patel','1995-01-15','Male','9876500001','aarav@gmail.com','Surat','2026-01-05');
```

`Patients` and `Doctors` anchor the schema, `Departments` groups doctors via `Doctor_Department`, `Appointments` connects a patient to a doctor visit, and `Medical_Records` / `Billing` each hang off that appointment.

---

## 🧩 Task-Wise Query Modules

### 📋 Task Logic

> The script runs through 12 weighted tasks covering CRUD, clauses, operators, sorting/grouping, aggregation, relationships, joins, subqueries, date/string functions, window functions, and CASE logic.

**Logic:**
```sql
TASK-1.  CRUD Operations — insert a patient, update an address, delete stale cancelled appointments
TASK-2.  SQL Clauses (WHERE, HAVING, LIMIT) — recent patients, top 5 paying patients, high-fee doctors
TASK-3.  SQL Operators (AND, OR, NOT) — scheduled appointments, Cardiology/Neurology doctors, inactive patients
TASK-4.  Sorting & Grouping (ORDER BY, GROUP BY) — doctors by specialization, patients per doctor, revenue per department
TASK-5.  Aggregate Functions (SUM, AVG, MAX, MIN, COUNT) — total revenue, most-visited doctor, average consultation fee
TASK-6.  Primary & Foreign Key Relationships — verifying Medical_Records and Billing links via SHOW CREATE TABLE and JOINs
TASK-7.  Joins — INNER JOIN, LEFT JOIN, RIGHT JOIN, and simulated FULL OUTER JOIN
TASK-8.  Subqueries — high-volume doctors, top-spending patient, Dermatology appointments
TASK-9.  Date & Time Functions — MONTH() visit trends, DATEDIFF() stay duration, DATE_FORMAT() output
TASK-10. String Functions — UPPER() names, TRIM() whitespace, IFNULL() missing phone numbers
TASK-11. Window Functions — RANK() doctors by patients treated, cumulative monthly revenue, running appointment total
TASK-12. CASE Expressions — Patient_Risk_Level classification, doctor seniority categorization
```

**Key Concepts Used:**

| Concept | Detail |
|---------|--------|
| `INSERT / UPDATE / DELETE` | CRUD coverage on Patients and Appointments |
| `WHERE` + `HAVING` + `LIMIT` | Filters rows for targeted and top-N queries |
| `AND` / `OR` / `NOT` | Compound and exclusionary filter logic |
| `ORDER BY` / `GROUP BY` | Sorting doctors and grouping revenue/visit counts |
| Aggregate Functions | `SUM()`, `AVG()`, `MAX()`, `COUNT()` for statistics |
| `INNER JOIN` / `LEFT JOIN` / `RIGHT JOIN` / `UNION` (FULL OUTER) | Combines Patients, Doctors, Appointments, Billing, Departments |
| Subquery (`IN`, correlated) | Filters doctors/patients based on nested conditions |
| `MONTH()`, `DATEDIFF()`, `DATE_FORMAT()` | Date extraction, duration, and formatting |
| `UPPER()`, `TRIM()`, `IFNULL()` | String cleaning and null handling |
| `RANK() OVER (...)`, `SUM() OVER (...)` | Window functions for ranking and running totals |
| `CASE WHEN ... THEN ... ELSE ... END` | Conditional labeling of risk level and seniority |

---

## 📊 Sample Output

The following is the real output captured from running the queries:

```
mysql> SELECT * FROM Patients LIMIT 2;
+------------+-------------+------------+--------+--------------+-----------------+---------+--------------------+
| patient_id | name        | dob        | gender | phone_number | email           | address | registration_date |
+------------+-------------+------------+--------+--------------+-----------------+---------+--------------------+
|          1 | Aarav Patel | 1995-01-15 | Male   | 9876500001   | aarav@gmail.com | Surat   | 2026-01-05         |
|          2 | Aditi Shah  | 1998-02-20 | Female | 9876500002   | aditi@gmail.com | Ahmedabad| 2026-01-10        |
+------------+-------------+------------+--------+--------------+-----------------+---------+--------------------+

mysql> SELECT p.patient_id, p.name, SUM(b.amount) AS total_spent
    -> FROM Patients p
    -> JOIN Billing b ON p.patient_id = b.patient_id
    -> GROUP BY p.patient_id, p.name
    -> ORDER BY total_spent DESC
    -> LIMIT 5;
+------------+-------------+-------------+
| patient_id | name        | total_spent |
+------------+-------------+-------------+
|          8 | Kavya Desai |     3700.00 |
|          2 | Aditi Shah  |     3400.00 |
|          1 | Aarav Patel |     3250.00 |
|          7 | Karan Joshi |     3250.00 |
|          6 | Neha Shah   |     2800.00 |
+------------+-------------+-------------+

mysql> SELECT SUM(amount) AS total_revenue
    -> FROM Billing
    -> WHERE payment_status = 'Paid';
+---------------+
| total_revenue |
+---------------+
|      38850.00 |
+---------------+

mysql> SELECT dept.department_name, SUM(b.amount) AS total_revenue
    -> FROM Departments dept
    -> JOIN Doctor_Department dd ON dept.department_id = dd.department_id
    -> JOIN Doctors d ON dd.doctor_id = d.doctor_id
    -> JOIN Appointments a ON d.doctor_id = a.doctor_id
    -> JOIN Billing b ON a.appointment_id = b.appointment_id
    -> GROUP BY dept.department_id, dept.department_name;
+-----------------+---------------+
| department_name | total_revenue |
+-----------------+---------------+
| Cardiology      |      11950.00 |
| Neurology       |      12450.00 |
| Dermatology     |       8550.00 |
| Pediatrics      |       7150.00 |
| Gynecology      |       8150.00 |
| Orthopedics     |       7650.00 |
+-----------------+---------------+

mysql> SELECT doctor_id, name, experience_years,
    ->        CASE WHEN experience_years >= 15 THEN 'Senior'
    ->             WHEN experience_years >= 8 THEN 'Mid-Level'
    ->             ELSE 'Junior' END AS Experience_Level
    -> FROM Doctors LIMIT 5;
+-----------+----------------+------------------+------------------+
| doctor_id | name           | experience_years | Experience_Level |
+-----------+----------------+------------------+------------------+
|         1 | Dr. Raj Patel  |               18 | Senior           |
|         2 | Dr. Priya Shah |               12 | Mid-Level        |
|         3 | Dr. Amit Mehta |                8 | Mid-Level        |
|         4 | Dr. Neha Desai |               16 | Senior           |
|         5 | Dr. Kunal Patel|               20 | Senior           |
+-----------+----------------+------------------+------------------+

mysql> SELECT COUNT(*) AS Patients FROM Patients;
+----------+
| Patients |
+----------+
|       40 |
+----------+
```

---

## 🛠️ Tech Stack

| Tool | Version | Purpose |
|------|---------|---------|
| 🗄️ **MySQL** | 8.0+ | Relational database engine |
| 📝 **SQL (DDL/DML)** | Standard | Table creation, data insertion, and querying |
| 🔗 **PRIMARY KEY / FOREIGN KEY** | Built-in | Enforcing entity relationships |
| 🔀 **INNER / LEFT / RIGHT / FULL OUTER JOIN** | Built-in | Combining data across related tables |
| 🪜 **Subqueries** | Built-in | Nested filtering logic |
| 📊 **SUM / AVG / MAX / COUNT** | Built-in | Aggregate and statistical computations |
| 🏃 **Window Functions** | Built-in | `RANK() OVER (...)`, `SUM() OVER (...)` for rankings and running totals |
| 📅 **MONTH / DATEDIFF / DATE_FORMAT** | Built-in | Date extraction, duration, and formatting |
| 🔤 **UPPER / TRIM / IFNULL** | Built-in | String cleaning and null handling |
| 💻 **MySQL CLI / Workbench** | Any | Running and viewing query output |

---

## 🏆 Advantages

| Advantage | Detail |
|-----------|--------|
| 🎓 **Beginner Friendly** | Covers table design, relationships, and querying in one readable script |
| 📚 **Educational** | Teaches practical SQL usage across CRUD, joins, subqueries, and window functions |
| 🔄 **Reusable Template** | Easy to extend with more tables (e.g., Insurance, Staff, Wards) |
| 🖥️ **Minimal Dependencies** | Runs on any standard MySQL/MariaDB instance |
| ⚡ **Lightweight** | Single-file script, instantly runnable in any SQL client |
| 🧪 **Extensible** | Can be upgraded with views, stored procedures, or triggers |
| 📖 **Readable Code** | Clear task-per-requirement structure makes the logic easy to follow and learn |

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
