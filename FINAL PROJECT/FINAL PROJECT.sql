CREATE DATABASE UniversityDB;

USE UniversityDB;

--CREATE THE TABLES

--CREATE THE DEPARTMENTS TABLE
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Mathematics');

+--------------+------------------+
| DepartmentID | DepartmentName   |
+--------------+------------------+
|            1 | Computer Science |
|            2 | Mathematics      |
+--------------+------------------+

--CREATE THE STUDENTS TABLE 
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    BirthDate DATE,
    EnrollmentDate DATE
);

INSERT INTO Students VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01');

+-----------+-----------+----------+----------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+----------------------+------------+----------------+
|         1 | John      | Doe      | john.doe@email.com   | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | jane.smith@email.com | 1999-05-25 | 2021-08-01     |
+-----------+-----------+----------+----------------------+------------+----------------+

--CREATE THE COURSE TABLE:-
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Courses VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4);

+----------+---------------------+--------------+---------+
| CourseID | CourseName          | DepartmentID | Credits |
+----------+---------------------+--------------+---------+
|      101 | Introduction to SQL |            1 |       3 |
|      102 | Data Structures     |            2 |       4 |
+----------+---------------------+--------------+---------+

--CREATE THE INSTRUCTORS TABLE 
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Instructors VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2);

+--------------+-----------+----------+------------------------+--------------+
| InstructorID | FirstName | LastName | Email                  | DepartmentID |
+--------------+-----------+----------+------------------------+--------------+
|            1 | Alice     | Johnson  | alice.johnson@univ.com |            1 |
|            2 | Bob       | Lee      | bob.lee@univ.com       |            2 |
+--------------+-----------+----------+------------------------+--------------+

--CREATE THE ENROLLMENTS TABLE:-
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Enrollments VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01');

+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2022-08-01     |
|            2 |         2 |      102 | 2021-08-01     |
+--------------+-----------+----------+----------------+

--Queries to Perform:

1. Perform CRUD Operations on all tables.

--READ

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;
SELECT * FROM Departments;

+-----------+-----------+----------+----------------------+------------+----------------+
| StudentID | FirstName | LastName | Email                | BirthDate  | EnrollmentDate |
+-----------+-----------+----------+----------------------+------------+----------------+
|         1 | John      | Doe      | john.doe@email.com   | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith    | jane.smith@email.com | 1999-05-25 | 2021-08-01     |
+-----------+-----------+----------+----------------------+------------+----------------+

mysql> SELECT * FROM Courses;
+----------+---------------------+--------------+---------+
| CourseID | CourseName          | DepartmentID | Credits |
+----------+---------------------+--------------+---------+
|      101 | Introduction to SQL |            1 |       3 |
|      102 | Data Structures     |            2 |       4 |
+----------+---------------------+--------------+---------+

mysql> SELECT * FROM Instructors;
+--------------+-----------+----------+------------------------+--------------+
| InstructorID | FirstName | LastName | Email                  | DepartmentID |
+--------------+-----------+----------+------------------------+--------------+
|            1 | Alice     | Johnson  | alice.johnson@univ.com |            1 |
|            2 | Bob       | Lee      | bob.lee@univ.com       |            2 |
+--------------+-----------+----------+------------------------+--------------+

mysql> SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2022-08-01     |
|            2 |         2 |      102 | 2021-08-01     |
+--------------+-----------+----------+----------------+

--UPDATE

UPDATE Students
SET LastName = 'Doe'
WHERE StudentID = 1;

mysql> UPDATE Students
    -> SET LastName = 'Doe'
    -> WHERE StudentID = 1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

--DELETE

DELETE FROM Students
WHERE StudentID = 2;

2. Retrieve students who enrolled after 2022.

SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';

mysql> SELECT *
    -> FROM Students
    -> WHERE EnrollmentDate > '2022-12-31';
Empty set (0.01 sec)

3. Retrieve courses offered by the Mathematics department with a limit of 5 courses.

SELECT c.CourseID, c.CourseName, c.Credits
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

+----------+-----------------+---------+
| CourseID | CourseName      | Credits |
+----------+-----------------+---------+
|      102 | Data Structures |       4 |
+----------+-----------------+---------+

4. Get the number of students enrolled in each course, filtering for courses with more than 5 students.

SELECT c.CourseID,
       c.CourseName,
       COUNT(e.StudentID) AS StudentCount
FROM Courses c
JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
HAVING COUNT(e.StudentID) > 5;

mysql> SELECT c.CourseID,
    ->        c.CourseName,
    ->        COUNT(e.StudentID) AS StudentCount
    -> FROM Courses c
    -> JOIN Enrollments e
    -> ON c.CourseID = e.CourseID
    -> GROUP BY c.CourseID, c.CourseName
    -> HAVING COUNT(e.StudentID) > 5;
Empty set (0.00 sec)

5. Find students who are enrolled in both Introduction to SQL and Data Structures.


SELECT s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;

mysql> SELECT s.StudentID,
    ->        s.FirstName,
    ->        s.LastName
    -> FROM Students s
    -> JOIN Enrollments e
    -> ON s.StudentID = e.StudentID
    -> JOIN Courses c
    -> ON e.CourseID = c.CourseID
    -> WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
    -> GROUP BY s.StudentID, s.FirstName, s.LastName
    -> HAVING COUNT(DISTINCT c.CourseName) = 2;
Empty set (0.01 sec)

6. Find students who are either enrolled in Introduction to SQL or Data Structures.

SELECT DISTINCT
       s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');

+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         2 | Jane      | Smith    |
+-----------+-----------+----------+

7. Calculate the average number of credits for all courses.

SELECT AVG(Credits) AS AverageCredits
FROM Courses;

+----------------+
| AverageCredits |
+----------------+
|         3.5000 |
+----------------+

8. Find the maximum salary of instructors in the Computer Science department.

SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
JOIN Departments d
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

+---------------+
| MaximumSalary |
+---------------+
|          NULL |
+---------------+

9. Count the number of students enrolled in each department.

SELECT d.DepartmentID,
       d.DepartmentName,
       COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Departments d
LEFT JOIN Courses c
ON d.DepartmentID = c.DepartmentID
LEFT JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;

+--------------+------------------+--------------+
| DepartmentID | DepartmentName   | StudentCount |
+--------------+------------------+--------------+
|            1 | Computer Science |            1 |
|            2 | Mathematics      |            1 |
+--------------+------------------+--------------+

10. INNER JOIN: Retrieve students and their corresponding courses.

SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseID,
       c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Courses c
ON e.CourseID = c.CourseID;

+-----------+-----------+----------+----------+---------------------+
| StudentID | FirstName | LastName | CourseID | CourseName          |
+-----------+-----------+----------+----------+---------------------+
|         1 | John      | Doe      |      101 | Introduction to SQL |
|         2 | Jane      | Smith    |      102 | Data Structures     |
+-----------+-----------+----------+----------+---------------------+

11. LEFT JOIN: Retrieve all students and their corresponding courses, if any.

SELECT s.StudentID,
       s.FirstName,
       s.LastName,
       c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Courses c
ON e.CourseID = c.CourseID;

+-----------+-----------+----------+---------------------+
| StudentID | FirstName | LastName | CourseName          |
+-----------+-----------+----------+---------------------+
|         1 | John      | Doe      | Introduction to SQL |
|         2 | Jane      | Smith    | Data Structures     |
+-----------+-----------+----------+---------------------+

12. Subquery: Find students enrolled in courses that have more than 10 students.

SELECT *
FROM Students
WHERE StudentID IN (
    SELECT e.StudentID
    FROM Enrollments e
    WHERE e.CourseID IN (
        SELECT CourseID
        FROM Enrollments
        GROUP BY CourseID
        HAVING COUNT(StudentID) > 10
    )
);

Empty set (0.00 sec)

13. Extract the year from the EnrollmentDate of students.

SELECT StudentID,
       FirstName,
       LastName,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

+-----------+-----------+----------+----------------+
| StudentID | FirstName | LastName | EnrollmentYear |
+-----------+-----------+----------+----------------+
|         1 | John      | Doe      |           2022 |
|         2 | Jane      | Smith    |           2021 |
+-----------+-----------+----------+----------------+

14. Concatenate the instructor's first and last name.

SELECT InstructorID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;

+--------------+---------------+
| InstructorID | FullName      |
+--------------+---------------+
|            1 | Alice Johnson |
|            2 | Bob Lee       |
+--------------+---------------+

15. Calculate the running total of students enrolled in courses.

SELECT c.CourseID,
       c.CourseName,
       COUNT(e.StudentID) AS StudentCount,
       SUM(COUNT(e.StudentID)) OVER (
           ORDER BY c.CourseID
       ) AS RunningTotal
FROM Courses c
LEFT JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName;

+----------+---------------------+--------------+--------------+
| CourseID | CourseName          | StudentCount | RunningTotal |
+----------+---------------------+--------------+--------------+
|      101 | Introduction to SQL |            1 |            1 |
|      102 | Data Structures     |            1 |            2 |
+----------+---------------------+--------------+--------------+

16. Label students as 'Senior' or 'Junior' based on their year of enrollment. (If the enrollment date is more than 4 years from the currendate, put the label ‘Senior’ otherwise ‘Junior’ )

SELECT StudentID,
       FirstName,
       LastName,
       EnrollmentDate,
       CASE
           WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
           THEN 'Senior'
           ELSE 'Junior'
       END AS StudentLevel
FROM Students;

+-----------+-----------+----------+----------------+--------------+
| StudentID | FirstName | LastName | EnrollmentDate | StudentLevel |
+-----------+-----------+----------+----------------+--------------+
|         1 | John      | Doe      | 2022-08-01     | Senior       |
|         2 | Jane      | Smith    | 2021-08-01     | Senior       |
+-----------+-----------+----------+----------------+--------------+