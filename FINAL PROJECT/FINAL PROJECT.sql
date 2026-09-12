DROP DATABASE IF EXISTS UniversityDB;

CREATE DATABASE UniversityDB;

USE UniversityDB;


-- CREATE DEPARTMENTS TABLE
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Information Technology'),
(5, 'Artificial Intelligence');


-- CREATE STUDENTS TABLE
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
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
(3, 'Michael', 'Brown', 'michael.brown@email.com', '2001-03-12', '2023-08-01'),
(4, 'Emily', 'Davis', 'emily.davis@email.com', '2000-07-18', '2022-08-01'),
(5, 'Daniel', 'Wilson', 'daniel.wilson@email.com', '2002-02-20', '2024-08-01'),
(6, 'Sophia', 'Taylor', 'sophia.taylor@email.com', '2001-09-10', '2023-08-01'),
(7, 'James', 'Anderson', 'james.anderson@email.com', '2000-11-05', '2022-08-01'),
(8, 'Olivia', 'Thomas', 'olivia.thomas@email.com', '2002-04-22', '2024-08-01'),
(9, 'William', 'Jackson', 'william.jackson@email.com', '2001-06-15', '2023-08-01'),
(10, 'Ava', 'White', 'ava.white@email.com', '2000-12-30', '2022-08-01'),
(11, 'Benjamin', 'Harris', 'benjamin.harris@email.com', '2002-01-11', '2024-08-01'),
(12, 'Isabella', 'Martin', 'isabella.martin@email.com', '2001-08-14', '2023-08-01'),
(13, 'Lucas', 'Thompson', 'lucas.thompson@email.com', '2000-05-19', '2022-08-01'),
(14, 'Mia', 'Garcia', 'mia.garcia@email.com', '2002-10-02', '2024-08-01'),
(15, 'Henry', 'Martinez', 'henry.martinez@email.com', '2001-02-28', '2023-08-01'),
(16, 'Charlotte', 'Robinson', 'charlotte.robinson@email.com', '2000-09-25', '2022-08-01'),
(17, 'Alexander', 'Clark', 'alexander.clark@email.com', '2002-03-17', '2024-08-01'),
(18, 'Amelia', 'Rodriguez', 'amelia.rodriguez@email.com', '2001-07-07', '2023-08-01'),
(19, 'Ethan', 'Lewis', 'ethan.lewis@email.com', '2000-04-13', '2022-08-01'),
(20, 'Harper', 'Lee', 'harper.lee@email.com', '2002-11-21', '2024-08-01'),
(21, 'Matthew', 'Walker', 'matthew.walker@email.com', '2001-01-30', '2023-08-01'),
(22, 'Evelyn', 'Hall', 'evelyn.hall@email.com', '2000-06-16', '2022-08-01'),
(23, 'Joseph', 'Allen', 'joseph.allen@email.com', '2002-05-09', '2024-08-01'),
(24, 'Abigail', 'Young', 'abigail.young@email.com', '2001-10-24', '2023-08-01'),
(25, 'David', 'King', 'david.king@email.com', '2000-02-05', '2022-08-01'),
(26, 'Ella', 'Wright', 'ella.wright@email.com', '2002-08-12', '2024-08-01'),
(27, 'Christopher', 'Scott', 'christopher.scott@email.com', '2001-03-27', '2023-08-01'),
(28, 'Scarlett', 'Green', 'scarlett.green@email.com', '2000-12-08', '2022-08-01'),
(29, 'Andrew', 'Baker', 'andrew.baker@email.com', '2002-06-18', '2024-08-01'),
(30, 'Grace', 'Adams', 'grace.adams@email.com', '2001-09-29', '2023-08-01'),
(31, 'Joshua', 'Nelson', 'joshua.nelson@email.com', '2000-01-22', '2022-08-01'),
(32, 'Chloe', 'Carter', 'chloe.carter@email.com', '2002-04-05', '2024-08-01'),
(33, 'Ryan', 'Mitchell', 'ryan.mitchell@email.com', '2001-11-13', '2023-08-01'),
(34, 'Lily', 'Perez', 'lily.perez@email.com', '2000-07-26', '2022-08-01'),
(35, 'Nathan', 'Roberts', 'nathan.roberts@email.com', '2002-02-16', '2024-08-01'),
(36, 'Zoe', 'Turner', 'zoe.turner@email.com', '2001-05-28', '2023-08-01'),
(37, 'Samuel', 'Phillips', 'samuel.phillips@email.com', '2000-10-10', '2022-08-01'),
(38, 'Hannah', 'Campbell', 'hannah.campbell@email.com', '2002-03-03', '2024-08-01'),
(39, 'Anthony', 'Parker', 'anthony.parker@email.com', '2001-08-20', '2023-08-01'),
(40, 'Victoria', 'Evans', 'victoria.evans@email.com', '2000-06-06', '2022-08-01'),
(41, 'Dylan', 'Edwards', 'dylan.edwards@email.com', '2002-01-19', '2024-08-01'),
(42, 'Luna', 'Collins', 'luna.collins@email.com', '2001-04-11', '2023-08-01'),
(43, 'Charles', 'Stewart', 'charles.stewart@email.com', '2000-09-03', '2022-08-01'),
(44, 'Nora', 'Sanchez', 'nora.sanchez@email.com', '2002-07-15', '2024-08-01'),
(45, 'Thomas', 'Morris', 'thomas.morris@email.com', '2001-02-09', '2023-08-01'),
(46, 'Aria', 'Rogers', 'aria.rogers@email.com', '2000-11-27', '2022-08-01'),
(47, 'Robert', 'Reed', 'robert.reed@email.com', '2002-05-23', '2024-08-01'),
(48, 'Layla', 'Cook', 'layla.cook@email.com', '2001-10-16', '2023-08-01'),
(49, 'Jack', 'Morgan', 'jack.morgan@email.com', '2000-03-31', '2022-08-01'),
(50, 'Sofia', 'Bell', 'sofia.bell@email.com', '2002-09-18', '2024-08-01');

SELECT * FROM Students;

+-----------+-------------+-----------+------------------------------+------------+----------------+
| StudentID | FirstName   | LastName  | Email                        | BirthDate  | EnrollmentDate |
+-----------+-------------+-----------+------------------------------+------------+----------------+
|         1 | John        | Doe       | john.doe@email.com           | 2000-01-15 | 2022-08-01     |
|         2 | Jane        | Smith     | jane.smith@email.com         | 1999-05-25 | 2021-08-01     |
|         3 | Michael     | Brown     | michael.brown@email.com      | 2001-03-12 | 2023-08-01     |
|         4 | Emily       | Davis     | emily.davis@email.com        | 2000-07-18 | 2022-08-01     |
|         5 | Daniel      | Wilson    | daniel.wilson@email.com      | 2002-02-20 | 2024-08-01     |
|         6 | Sophia      | Taylor    | sophia.taylor@email.com      | 2001-09-10 | 2023-08-01     |
|         7 | James       | Anderson  | james.anderson@email.com     | 2000-11-05 | 2022-08-01     |
|         8 | Olivia      | Thomas    | olivia.thomas@email.com      | 2002-04-22 | 2024-08-01     |
|         9 | William     | Jackson   | william.jackson@email.com    | 2001-06-15 | 2023-08-01     |
|        10 | Ava         | White     | ava.white@email.com          | 2000-12-30 | 2022-08-01     |
|        11 | Benjamin    | Harris    | benjamin.harris@email.com    | 2002-01-11 | 2024-08-01     |
|        12 | Isabella    | Martin    | isabella.martin@email.com    | 2001-08-14 | 2023-08-01     |
|        13 | Lucas       | Thompson  | lucas.thompson@email.com     | 2000-05-19 | 2022-08-01     |
|        14 | Mia         | Garcia    | mia.garcia@email.com         | 2002-10-02 | 2024-08-01     |
|        15 | Henry       | Martinez  | henry.martinez@email.com     | 2001-02-28 | 2023-08-01     |
|        16 | Charlotte   | Robinson  | charlotte.robinson@email.com | 2000-09-25 | 2022-08-01     |
|        17 | Alexander   | Clark     | alexander.clark@email.com    | 2002-03-17 | 2024-08-01     |
|        18 | Amelia      | Rodriguez | amelia.rodriguez@email.com   | 2001-07-07 | 2023-08-01     |
|        19 | Ethan       | Lewis     | ethan.lewis@email.com        | 2000-04-13 | 2022-08-01     |
|        20 | Harper      | Lee       | harper.lee@email.com         | 2002-11-21 | 2024-08-01     |
|        21 | Matthew     | Walker    | matthew.walker@email.com     | 2001-01-30 | 2023-08-01     |
|        22 | Evelyn      | Hall      | evelyn.hall@email.com        | 2000-06-16 | 2022-08-01     |
|        23 | Joseph      | Allen     | joseph.allen@email.com       | 2002-05-09 | 2024-08-01     |
|        24 | Abigail     | Young     | abigail.young@email.com      | 2001-10-24 | 2023-08-01     |
|        25 | David       | King      | david.king@email.com         | 2000-02-05 | 2022-08-01     |
|        26 | Ella        | Wright    | ella.wright@email.com        | 2002-08-12 | 2024-08-01     |
|        27 | Christopher | Scott     | christopher.scott@email.com  | 2001-03-27 | 2023-08-01     |
|        28 | Scarlett    | Green     | scarlett.green@email.com     | 2000-12-08 | 2022-08-01     |
|        29 | Andrew      | Baker     | andrew.baker@email.com       | 2002-06-18 | 2024-08-01     |
|        30 | Grace       | Adams     | grace.adams@email.com        | 2001-09-29 | 2023-08-01     |
|        31 | Joshua      | Nelson    | joshua.nelson@email.com      | 2000-01-22 | 2022-08-01     |
|        32 | Chloe       | Carter    | chloe.carter@email.com       | 2002-04-05 | 2024-08-01     |
|        33 | Ryan        | Mitchell  | ryan.mitchell@email.com      | 2001-11-13 | 2023-08-01     |
|        34 | Lily        | Perez     | lily.perez@email.com         | 2000-07-26 | 2022-08-01     |
|        35 | Nathan      | Roberts   | nathan.roberts@email.com     | 2002-02-16 | 2024-08-01     |
|        36 | Zoe         | Turner    | zoe.turner@email.com         | 2001-05-28 | 2023-08-01     |
|        37 | Samuel      | Phillips  | samuel.phillips@email.com    | 2000-10-10 | 2022-08-01     |
|        38 | Hannah      | Campbell  | hannah.campbell@email.com    | 2002-03-03 | 2024-08-01     |
|        39 | Anthony     | Parker    | anthony.parker@email.com     | 2001-08-20 | 2023-08-01     |
|        40 | Victoria    | Evans     | victoria.evans@email.com     | 2000-06-06 | 2022-08-01     |
|        41 | Dylan       | Edwards   | dylan.edwards@email.com      | 2002-01-19 | 2024-08-01     |
|        42 | Luna        | Collins   | luna.collins@email.com       | 2001-04-11 | 2023-08-01     |
|        43 | Charles     | Stewart   | charles.stewart@email.com    | 2000-09-03 | 2022-08-01     |
|        44 | Nora        | Sanchez   | nora.sanchez@email.com       | 2002-07-15 | 2024-08-01     |
|        45 | Thomas      | Morris    | thomas.morris@email.com      | 2001-02-09 | 2023-08-01     |
|        46 | Aria        | Rogers    | aria.rogers@email.com        | 2000-11-27 | 2022-08-01     |
|        47 | Robert      | Reed      | robert.reed@email.com        | 2002-05-23 | 2024-08-01     |
|        48 | Layla       | Cook      | layla.cook@email.com         | 2001-10-16 | 2023-08-01     |
|        49 | Jack        | Morgan    | jack.morgan@email.com        | 2000-03-31 | 2022-08-01     |
|        50 | Sofia       | Bell      | sofia.bell@email.com         | 2002-09-18 | 2024-08-01     |
+-----------+-------------+-----------+------------------------------+------------+----------------+

-- CREATE COURSES TABLE
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Courses VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4),
(103, 'Database Management', 1, 3),
(104, 'Calculus', 2, 4),
(105, 'Physics Fundamentals', 3, 3),
(106, 'Web Development', 4, 3),
(107, 'Artificial Intelligence', 5, 4),
(108, 'Machine Learning', 5, 4),
(109, 'Computer Networks', 4, 3),
(110, 'Statistics', 2, 3);

SELECT * FROM Courses;

+----------+-------------------------+--------------+---------+
| CourseID | CourseName              | DepartmentID | Credits |
+----------+-------------------------+--------------+---------+
|      101 | Introduction to SQL     |            1 |       3 |
|      102 | Data Structures         |            2 |       4 |
|      103 | Database Management     |            1 |       3 |
|      104 | Calculus                |            2 |       4 |
|      105 | Physics Fundamentals    |            3 |       3 |
|      106 | Web Development         |            4 |       3 |
|      107 | Artificial Intelligence |            5 |       4 |
|      108 | Machine Learning        |            5 |       4 |
|      109 | Computer Networks       |            4 |       3 |
|      110 | Statistics              |            2 |       3 |
+----------+-------------------------+--------------+---------+

-- CREATE INSTRUCTORS TABLE
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Instructors VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1, 75000),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2, 68000),
(3, 'Robert', 'Miller', 'robert.miller@univ.com', 3, 72000),
(4, 'Linda', 'Wilson', 'linda.wilson@univ.com', 4, 70000),
(5, 'David', 'Moore', 'david.moore@univ.com', 5, 85000),
(6, 'Susan', 'Taylor', 'susan.taylor@univ.com', 1, 80000),
(7, 'James', 'Thomas', 'james.thomas@univ.com', 2, 65000),
(8, 'Karen', 'Jackson', 'karen.jackson@univ.com', 4, 73000),
(9, 'Michael', 'White', 'michael.white@univ.com', 5, 90000),
(10, 'Patricia', 'Harris', 'patricia.harris@univ.com', 3, 71000);

SELECT * FROM Instructors;

+--------------+-----------+----------+--------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                    | DepartmentID | Salary   |
+--------------+-----------+----------+--------------------------+--------------+----------+
|            1 | Alice     | Johnson  | alice.johnson@univ.com   |            1 | 75000.00 |
|            2 | Bob       | Lee      | bob.lee@univ.com         |            2 | 68000.00 |
|            3 | Robert    | Miller   | robert.miller@univ.com   |            3 | 72000.00 |
|            4 | Linda     | Wilson   | linda.wilson@univ.com    |            4 | 70000.00 |
|            5 | David     | Moore    | david.moore@univ.com     |            5 | 85000.00 |
|            6 | Susan     | Taylor   | susan.taylor@univ.com    |            1 | 80000.00 |
|            7 | James     | Thomas   | james.thomas@univ.com    |            2 | 65000.00 |
|            8 | Karen     | Jackson  | karen.jackson@univ.com   |            4 | 73000.00 |
|            9 | Michael   | White    | michael.white@univ.com   |            5 | 90000.00 |
|           10 | Patricia  | Harris   | patricia.harris@univ.com |            3 | 71000.00 |
+--------------+-----------+----------+--------------------------+--------------+----------+

-- CREATE ENROLLMENTS TABLE
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Enrollments VALUES
(1,1,101,'2022-08-01'),
(2,2,102,'2021-08-01'),
(3,3,103,'2023-08-01'),
(4,4,101,'2022-08-01'),
(5,5,104,'2024-08-01'),
(6,6,105,'2023-08-01'),
(7,7,101,'2022-08-01'),
(8,8,106,'2024-08-01'),
(9,9,107,'2023-08-01'),
(10,10,101,'2022-08-01'),
(11,11,108,'2024-08-01'),
(12,12,102,'2023-08-01'),
(13,13,103,'2022-08-01'),
(14,14,104,'2024-08-01'),
(15,15,105,'2023-08-01'),
(16,16,101,'2022-08-01'),
(17,17,106,'2024-08-01'),
(18,18,107,'2023-08-01'),
(19,19,108,'2022-08-01'),
(20,20,101,'2024-08-01'),
(21,21,102,'2023-08-01'),
(22,22,103,'2022-08-01'),
(23,23,104,'2024-08-01'),
(24,24,105,'2023-08-01'),
(25,25,101,'2022-08-01'),
(26,26,106,'2024-08-01'),
(27,27,107,'2023-08-01'),
(28,28,108,'2022-08-01'),
(29,29,101,'2024-08-01'),
(30,30,102,'2023-08-01'),
(31,31,103,'2022-08-01'),
(32,32,104,'2024-08-01'),
(33,33,105,'2023-08-01'),
(34,34,101,'2022-08-01'),
(35,35,106,'2024-08-01'),
(36,36,107,'2023-08-01'),
(37,37,108,'2022-08-01'),
(38,38,101,'2024-08-01'),
(39,39,102,'2023-08-01'),
(40,40,103,'2022-08-01'),
(41,41,104,'2024-08-01'),
(42,42,105,'2023-08-01'),
(43,43,101,'2022-08-01'),
(44,44,106,'2024-08-01'),
(45,45,107,'2023-08-01'),
(46,46,108,'2022-08-01'),
(47,47,101,'2024-08-01'),
(48,48,102,'2023-08-01'),
(49,49,103,'2022-08-01'),
(50,50,104,'2024-08-01');

SELECT COUNT(*) AS TotalStudents
FROM Students;

+---------------+
| TotalStudents |
+---------------+
|            50 |
+---------------+

SELECT * FROM Students;

+-----------+-------------+-----------+------------------------------+------------+----------------+
| StudentID | FirstName   | LastName  | Email                        | BirthDate  | EnrollmentDate |
+-----------+-------------+-----------+------------------------------+------------+----------------+
|         1 | John        | Doe       | john.doe@email.com           | 2000-01-15 | 2022-08-01     |
|         2 | Jane        | Smith     | jane.smith@email.com         | 1999-05-25 | 2021-08-01     |
|         3 | Michael     | Brown     | michael.brown@email.com      | 2001-03-12 | 2023-08-01     |
|         4 | Emily       | Davis     | emily.davis@email.com        | 2000-07-18 | 2022-08-01     |
|         5 | Daniel      | Wilson    | daniel.wilson@email.com      | 2002-02-20 | 2024-08-01     |
|         6 | Sophia      | Taylor    | sophia.taylor@email.com      | 2001-09-10 | 2023-08-01     |
|         7 | James       | Anderson  | james.anderson@email.com     | 2000-11-05 | 2022-08-01     |
|         8 | Olivia      | Thomas    | olivia.thomas@email.com      | 2002-04-22 | 2024-08-01     |
|         9 | William     | Jackson   | william.jackson@email.com    | 2001-06-15 | 2023-08-01     |
|        10 | Ava         | White     | ava.white@email.com          | 2000-12-30 | 2022-08-01     |
|        11 | Benjamin    | Harris    | benjamin.harris@email.com    | 2002-01-11 | 2024-08-01     |
|        12 | Isabella    | Martin    | isabella.martin@email.com    | 2001-08-14 | 2023-08-01     |
|        13 | Lucas       | Thompson  | lucas.thompson@email.com     | 2000-05-19 | 2022-08-01     |
|        14 | Mia         | Garcia    | mia.garcia@email.com         | 2002-10-02 | 2024-08-01     |
|        15 | Henry       | Martinez  | henry.martinez@email.com     | 2001-02-28 | 2023-08-01     |
|        16 | Charlotte   | Robinson  | charlotte.robinson@email.com | 2000-09-25 | 2022-08-01     |
|        17 | Alexander   | Clark     | alexander.clark@email.com    | 2002-03-17 | 2024-08-01     |
|        18 | Amelia      | Rodriguez | amelia.rodriguez@email.com   | 2001-07-07 | 2023-08-01     |
|        19 | Ethan       | Lewis     | ethan.lewis@email.com        | 2000-04-13 | 2022-08-01     |
|        20 | Harper      | Lee       | harper.lee@email.com         | 2002-11-21 | 2024-08-01     |
|        21 | Matthew     | Walker    | matthew.walker@email.com     | 2001-01-30 | 2023-08-01     |
|        22 | Evelyn      | Hall      | evelyn.hall@email.com        | 2000-06-16 | 2022-08-01     |
|        23 | Joseph      | Allen     | joseph.allen@email.com       | 2002-05-09 | 2024-08-01     |
|        24 | Abigail     | Young     | abigail.young@email.com      | 2001-10-24 | 2023-08-01     |
|        25 | David       | King      | david.king@email.com         | 2000-02-05 | 2022-08-01     |
|        26 | Ella        | Wright    | ella.wright@email.com        | 2002-08-12 | 2024-08-01     |
|        27 | Christopher | Scott     | christopher.scott@email.com  | 2001-03-27 | 2023-08-01     |
|        28 | Scarlett    | Green     | scarlett.green@email.com     | 2000-12-08 | 2022-08-01     |
|        29 | Andrew      | Baker     | andrew.baker@email.com       | 2002-06-18 | 2024-08-01     |
|        30 | Grace       | Adams     | grace.adams@email.com        | 2001-09-29 | 2023-08-01     |
|        31 | Joshua      | Nelson    | joshua.nelson@email.com      | 2000-01-22 | 2022-08-01     |
|        32 | Chloe       | Carter    | chloe.carter@email.com       | 2002-04-05 | 2024-08-01     |
|        33 | Ryan        | Mitchell  | ryan.mitchell@email.com      | 2001-11-13 | 2023-08-01     |
|        34 | Lily        | Perez     | lily.perez@email.com         | 2000-07-26 | 2022-08-01     |
|        35 | Nathan      | Roberts   | nathan.roberts@email.com     | 2002-02-16 | 2024-08-01     |
|        36 | Zoe         | Turner    | zoe.turner@email.com         | 2001-05-28 | 2023-08-01     |
|        37 | Samuel      | Phillips  | samuel.phillips@email.com    | 2000-10-10 | 2022-08-01     |
|        38 | Hannah      | Campbell  | hannah.campbell@email.com    | 2002-03-03 | 2024-08-01     |
|        39 | Anthony     | Parker    | anthony.parker@email.com     | 2001-08-20 | 2023-08-01     |
|        40 | Victoria    | Evans     | victoria.evans@email.com     | 2000-06-06 | 2022-08-01     |
|        41 | Dylan       | Edwards   | dylan.edwards@email.com      | 2002-01-19 | 2024-08-01     |
|        42 | Luna        | Collins   | luna.collins@email.com       | 2001-04-11 | 2023-08-01     |
|        43 | Charles     | Stewart   | charles.stewart@email.com    | 2000-09-03 | 2022-08-01     |
|        44 | Nora        | Sanchez   | nora.sanchez@email.com       | 2002-07-15 | 2024-08-01     |
|        45 | Thomas      | Morris    | thomas.morris@email.com      | 2001-02-09 | 2023-08-01     |
|        46 | Aria        | Rogers    | aria.rogers@email.com        | 2000-11-27 | 2022-08-01     |
|        47 | Robert      | Reed      | robert.reed@email.com        | 2002-05-23 | 2024-08-01     |
|        48 | Layla       | Cook      | layla.cook@email.com         | 2001-10-16 | 2023-08-01     |
|        49 | Jack        | Morgan    | jack.morgan@email.com        | 2000-03-31 | 2022-08-01     |
|        50 | Sofia       | Bell      | sofia.bell@email.com         | 2002-09-18 | 2024-08-01     |
+-----------+-------------+-----------+------------------------------+------------+----------------+

=======================================================================================================================================================================================================

--Queries to Perform:

1. Perform CRUD Operations on all tables.

--READ

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;
SELECT * FROM Departments;

mysql> SELECT * FROM Students;
+-----------+-------------+-----------+------------------------------+------------+----------------+
| StudentID | FirstName   | LastName  | Email                        | BirthDate  | EnrollmentDate |
+-----------+-------------+-----------+------------------------------+------------+----------------+
|         1 | John        | Doe       | john.doe@email.com           | 2000-01-15 | 2022-08-01     |
|         2 | Jane        | Smith     | jane.smith@email.com         | 1999-05-25 | 2021-08-01     |
|         3 | Michael     | Brown     | michael.brown@email.com      | 2001-03-12 | 2023-08-01     |
|         4 | Emily       | Davis     | emily.davis@email.com        | 2000-07-18 | 2022-08-01     |
|         5 | Daniel      | Wilson    | daniel.wilson@email.com      | 2002-02-20 | 2024-08-01     |
|         6 | Sophia      | Taylor    | sophia.taylor@email.com      | 2001-09-10 | 2023-08-01     |
|         7 | James       | Anderson  | james.anderson@email.com     | 2000-11-05 | 2022-08-01     |
|         8 | Olivia      | Thomas    | olivia.thomas@email.com      | 2002-04-22 | 2024-08-01     |
|         9 | William     | Jackson   | william.jackson@email.com    | 2001-06-15 | 2023-08-01     |
|        10 | Ava         | White     | ava.white@email.com          | 2000-12-30 | 2022-08-01     |
|        11 | Benjamin    | Harris    | benjamin.harris@email.com    | 2002-01-11 | 2024-08-01     |
|        12 | Isabella    | Martin    | isabella.martin@email.com    | 2001-08-14 | 2023-08-01     |
|        13 | Lucas       | Thompson  | lucas.thompson@email.com     | 2000-05-19 | 2022-08-01     |
|        14 | Mia         | Garcia    | mia.garcia@email.com         | 2002-10-02 | 2024-08-01     |
|        15 | Henry       | Martinez  | henry.martinez@email.com     | 2001-02-28 | 2023-08-01     |
|        16 | Charlotte   | Robinson  | charlotte.robinson@email.com | 2000-09-25 | 2022-08-01     |
|        17 | Alexander   | Clark     | alexander.clark@email.com    | 2002-03-17 | 2024-08-01     |
|        18 | Amelia      | Rodriguez | amelia.rodriguez@email.com   | 2001-07-07 | 2023-08-01     |
|        19 | Ethan       | Lewis     | ethan.lewis@email.com        | 2000-04-13 | 2022-08-01     |
|        20 | Harper      | Lee       | harper.lee@email.com         | 2002-11-21 | 2024-08-01     |
|        21 | Matthew     | Walker    | matthew.walker@email.com     | 2001-01-30 | 2023-08-01     |
|        22 | Evelyn      | Hall      | evelyn.hall@email.com        | 2000-06-16 | 2022-08-01     |
|        23 | Joseph      | Allen     | joseph.allen@email.com       | 2002-05-09 | 2024-08-01     |
|        24 | Abigail     | Young     | abigail.young@email.com      | 2001-10-24 | 2023-08-01     |
|        25 | David       | King      | david.king@email.com         | 2000-02-05 | 2022-08-01     |
|        26 | Ella        | Wright    | ella.wright@email.com        | 2002-08-12 | 2024-08-01     |
|        27 | Christopher | Scott     | christopher.scott@email.com  | 2001-03-27 | 2023-08-01     |
|        28 | Scarlett    | Green     | scarlett.green@email.com     | 2000-12-08 | 2022-08-01     |
|        29 | Andrew      | Baker     | andrew.baker@email.com       | 2002-06-18 | 2024-08-01     |
|        30 | Grace       | Adams     | grace.adams@email.com        | 2001-09-29 | 2023-08-01     |
|        31 | Joshua      | Nelson    | joshua.nelson@email.com      | 2000-01-22 | 2022-08-01     |
|        32 | Chloe       | Carter    | chloe.carter@email.com       | 2002-04-05 | 2024-08-01     |
|        33 | Ryan        | Mitchell  | ryan.mitchell@email.com      | 2001-11-13 | 2023-08-01     |
|        34 | Lily        | Perez     | lily.perez@email.com         | 2000-07-26 | 2022-08-01     |
|        35 | Nathan      | Roberts   | nathan.roberts@email.com     | 2002-02-16 | 2024-08-01     |
|        36 | Zoe         | Turner    | zoe.turner@email.com         | 2001-05-28 | 2023-08-01     |
|        37 | Samuel      | Phillips  | samuel.phillips@email.com    | 2000-10-10 | 2022-08-01     |
|        38 | Hannah      | Campbell  | hannah.campbell@email.com    | 2002-03-03 | 2024-08-01     |
|        39 | Anthony     | Parker    | anthony.parker@email.com     | 2001-08-20 | 2023-08-01     |
|        40 | Victoria    | Evans     | victoria.evans@email.com     | 2000-06-06 | 2022-08-01     |
|        41 | Dylan       | Edwards   | dylan.edwards@email.com      | 2002-01-19 | 2024-08-01     |
|        42 | Luna        | Collins   | luna.collins@email.com       | 2001-04-11 | 2023-08-01     |
|        43 | Charles     | Stewart   | charles.stewart@email.com    | 2000-09-03 | 2022-08-01     |
|        44 | Nora        | Sanchez   | nora.sanchez@email.com       | 2002-07-15 | 2024-08-01     |
|        45 | Thomas      | Morris    | thomas.morris@email.com      | 2001-02-09 | 2023-08-01     |
|        46 | Aria        | Rogers    | aria.rogers@email.com        | 2000-11-27 | 2022-08-01     |
|        47 | Robert      | Reed      | robert.reed@email.com        | 2002-05-23 | 2024-08-01     |
|        48 | Layla       | Cook      | layla.cook@email.com         | 2001-10-16 | 2023-08-01     |
|        49 | Jack        | Morgan    | jack.morgan@email.com        | 2000-03-31 | 2022-08-01     |
|        50 | Sofia       | Bell      | sofia.bell@email.com         | 2002-09-18 | 2024-08-01     |
+-----------+-------------+-----------+------------------------------+------------+----------------+
50 rows in set (0.00 sec)

mysql> SELECT * FROM Courses;
+----------+-------------------------+--------------+---------+
| CourseID | CourseName              | DepartmentID | Credits |
+----------+-------------------------+--------------+---------+
|      101 | Introduction to SQL     |            1 |       3 |
|      102 | Data Structures         |            2 |       4 |
|      103 | Database Management     |            1 |       3 |
|      104 | Calculus                |            2 |       4 |
|      105 | Physics Fundamentals    |            3 |       3 |
|      106 | Web Development         |            4 |       3 |
|      107 | Artificial Intelligence |            5 |       4 |
|      108 | Machine Learning        |            5 |       4 |
|      109 | Computer Networks       |            4 |       3 |
|      110 | Statistics              |            2 |       3 |
+----------+-------------------------+--------------+---------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Instructors;
+--------------+-----------+----------+--------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                    | DepartmentID | Salary   |
+--------------+-----------+----------+--------------------------+--------------+----------+
|            1 | Alice     | Johnson  | alice.johnson@univ.com   |            1 | 75000.00 |
|            2 | Bob       | Lee      | bob.lee@univ.com         |            2 | 68000.00 |
|            3 | Robert    | Miller   | robert.miller@univ.com   |            3 | 72000.00 |
|            4 | Linda     | Wilson   | linda.wilson@univ.com    |            4 | 70000.00 |
|            5 | David     | Moore    | david.moore@univ.com     |            5 | 85000.00 |
|            6 | Susan     | Taylor   | susan.taylor@univ.com    |            1 | 80000.00 |
|            7 | James     | Thomas   | james.thomas@univ.com    |            2 | 65000.00 |
|            8 | Karen     | Jackson  | karen.jackson@univ.com   |            4 | 73000.00 |
|            9 | Michael   | White    | michael.white@univ.com   |            5 | 90000.00 |
|           10 | Patricia  | Harris   | patricia.harris@univ.com |            3 | 71000.00 |
+--------------+-----------+----------+--------------------------+--------------+----------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM Enrollments;
+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|            1 |         1 |      101 | 2022-08-01     |
|            2 |         2 |      102 | 2021-08-01     |
|            3 |         3 |      103 | 2023-08-01     |
|            4 |         4 |      101 | 2022-08-01     |
|            5 |         5 |      104 | 2024-08-01     |
|            6 |         6 |      105 | 2023-08-01     |
|            7 |         7 |      101 | 2022-08-01     |
|            8 |         8 |      106 | 2024-08-01     |
|            9 |         9 |      107 | 2023-08-01     |
|           10 |        10 |      101 | 2022-08-01     |
|           11 |        11 |      108 | 2024-08-01     |
|           12 |        12 |      102 | 2023-08-01     |
|           13 |        13 |      103 | 2022-08-01     |
|           14 |        14 |      104 | 2024-08-01     |
|           15 |        15 |      105 | 2023-08-01     |
|           16 |        16 |      101 | 2022-08-01     |
|           17 |        17 |      106 | 2024-08-01     |
|           18 |        18 |      107 | 2023-08-01     |
|           19 |        19 |      108 | 2022-08-01     |
|           20 |        20 |      101 | 2024-08-01     |
|           21 |        21 |      102 | 2023-08-01     |
|           22 |        22 |      103 | 2022-08-01     |
|           23 |        23 |      104 | 2024-08-01     |
|           24 |        24 |      105 | 2023-08-01     |
|           25 |        25 |      101 | 2022-08-01     |
|           26 |        26 |      106 | 2024-08-01     |
|           27 |        27 |      107 | 2023-08-01     |
|           28 |        28 |      108 | 2022-08-01     |
|           29 |        29 |      101 | 2024-08-01     |
|           30 |        30 |      102 | 2023-08-01     |
|           31 |        31 |      103 | 2022-08-01     |
|           32 |        32 |      104 | 2024-08-01     |
|           33 |        33 |      105 | 2023-08-01     |
|           34 |        34 |      101 | 2022-08-01     |
|           35 |        35 |      106 | 2024-08-01     |
|           36 |        36 |      107 | 2023-08-01     |
|           37 |        37 |      108 | 2022-08-01     |
|           38 |        38 |      101 | 2024-08-01     |
|           39 |        39 |      102 | 2023-08-01     |
|           40 |        40 |      103 | 2022-08-01     |
|           41 |        41 |      104 | 2024-08-01     |
|           42 |        42 |      105 | 2023-08-01     |
|           43 |        43 |      101 | 2022-08-01     |
|           44 |        44 |      106 | 2024-08-01     |
|           45 |        45 |      107 | 2023-08-01     |
|           46 |        46 |      108 | 2022-08-01     |
|           47 |        47 |      101 | 2024-08-01     |
|           48 |        48 |      102 | 2023-08-01     |
|           49 |        49 |      103 | 2022-08-01     |
|           50 |        50 |      104 | 2024-08-01     |
+--------------+-----------+----------+----------------+
50 rows in set (0.00 sec)

+--------------+-------------------------+
| DepartmentID | DepartmentName          |
+--------------+-------------------------+
|            1 | Computer Science        |
|            2 | Mathematics             |
|            3 | Physics                 |
|            4 | Information Technology  |
|            5 | Artificial Intelligence |
+--------------+-------------------------+
5 rows in set (0.00 sec)

--UPDATE

UPDATE Students
SET LastName = 'Updated'
WHERE StudentID = 51;


--DELETE

DELETE FROM Students
WHERE StudentID = 51;

2. Retrieve students who enrolled after 2022.

SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';

+-----------+-------------+-----------+-----------------------------+------------+----------------+
| StudentID | FirstName   | LastName  | Email                       | BirthDate  | EnrollmentDate |
+-----------+-------------+-----------+-----------------------------+------------+----------------+
|         3 | Michael     | Brown     | michael.brown@email.com     | 2001-03-12 | 2023-08-01     |
|         5 | Daniel      | Wilson    | daniel.wilson@email.com     | 2002-02-20 | 2024-08-01     |
|         6 | Sophia      | Taylor    | sophia.taylor@email.com     | 2001-09-10 | 2023-08-01     |
|         8 | Olivia      | Thomas    | olivia.thomas@email.com     | 2002-04-22 | 2024-08-01     |
|         9 | William     | Jackson   | william.jackson@email.com   | 2001-06-15 | 2023-08-01     |
|        11 | Benjamin    | Harris    | benjamin.harris@email.com   | 2002-01-11 | 2024-08-01     |
|        12 | Isabella    | Martin    | isabella.martin@email.com   | 2001-08-14 | 2023-08-01     |
|        14 | Mia         | Garcia    | mia.garcia@email.com        | 2002-10-02 | 2024-08-01     |
|        15 | Henry       | Martinez  | henry.martinez@email.com    | 2001-02-28 | 2023-08-01     |
|        17 | Alexander   | Clark     | alexander.clark@email.com   | 2002-03-17 | 2024-08-01     |
|        18 | Amelia      | Rodriguez | amelia.rodriguez@email.com  | 2001-07-07 | 2023-08-01     |
|        20 | Harper      | Lee       | harper.lee@email.com        | 2002-11-21 | 2024-08-01     |
|        21 | Matthew     | Walker    | matthew.walker@email.com    | 2001-01-30 | 2023-08-01     |
|        23 | Joseph      | Allen     | joseph.allen@email.com      | 2002-05-09 | 2024-08-01     |
|        24 | Abigail     | Young     | abigail.young@email.com     | 2001-10-24 | 2023-08-01     |
|        26 | Ella        | Wright    | ella.wright@email.com       | 2002-08-12 | 2024-08-01     |
|        27 | Christopher | Scott     | christopher.scott@email.com | 2001-03-27 | 2023-08-01     |
|        29 | Andrew      | Baker     | andrew.baker@email.com      | 2002-06-18 | 2024-08-01     |
|        30 | Grace       | Adams     | grace.adams@email.com       | 2001-09-29 | 2023-08-01     |
|        32 | Chloe       | Carter    | chloe.carter@email.com      | 2002-04-05 | 2024-08-01     |
|        33 | Ryan        | Mitchell  | ryan.mitchell@email.com     | 2001-11-13 | 2023-08-01     |
|        35 | Nathan      | Roberts   | nathan.roberts@email.com    | 2002-02-16 | 2024-08-01     |
|        36 | Zoe         | Turner    | zoe.turner@email.com        | 2001-05-28 | 2023-08-01     |
|        38 | Hannah      | Campbell  | hannah.campbell@email.com   | 2002-03-03 | 2024-08-01     |
|        39 | Anthony     | Parker    | anthony.parker@email.com    | 2001-08-20 | 2023-08-01     |
|        41 | Dylan       | Edwards   | dylan.edwards@email.com     | 2002-01-19 | 2024-08-01     |
|        42 | Luna        | Collins   | luna.collins@email.com      | 2001-04-11 | 2023-08-01     |
|        44 | Nora        | Sanchez   | nora.sanchez@email.com      | 2002-07-15 | 2024-08-01     |
|        45 | Thomas      | Morris    | thomas.morris@email.com     | 2001-02-09 | 2023-08-01     |
|        47 | Robert      | Reed      | robert.reed@email.com       | 2002-05-23 | 2024-08-01     |
|        48 | Layla       | Cook      | layla.cook@email.com        | 2001-10-16 | 2023-08-01     |
|        50 | Sofia       | Bell      | sofia.bell@email.com        | 2002-09-18 | 2024-08-01     |
+-----------+-------------+-----------+-----------------------------+------------+----------------+

3. Retrieve courses offered by the Mathematics department with a limit of 5 courses.

SELECT c.CourseID,
       c.CourseName,
       c.Credits
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

+----------+-----------------+---------+
| CourseID | CourseName      | Credits |
+----------+-----------------+---------+
|      102 | Data Structures |       4 |
|      104 | Calculus        |       4 |
|      110 | Statistics      |       3 |
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

+----------+---------------------+--------------+
| CourseID | CourseName          | StudentCount |
+----------+---------------------+--------------+
|      101 | Introduction to SQL |           12 |
|      102 | Data Structures     |            6 |
|      103 | Database Management |            6 |
|      104 | Calculus            |            6 |
+----------+---------------------+--------------+

5. Find students who are enrolled in both Introduction to SQL and Data Structures.

SELECT s.StudentID,
       s.FirstName,
       s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN
('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseName) = 2;

+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         2 | Jane      | Smith    |
|         4 | Emily     | Davis    |
|         7 | James     | Anderson |
|        10 | Ava       | White    |
|        12 | Isabella  | Martin   |
|        16 | Charlotte | Robinson |
|        20 | Harper    | Lee      |
+-----------+-----------+----------+

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
WHERE c.CourseName IN
('Introduction to SQL', 'Data Structures');

+-----------+-----------+-----------+
| StudentID | FirstName | LastName  |
+-----------+-----------+-----------+
|         1 | John      | Doe       |
|         4 | Emily     | Davis     |
|         7 | James     | Anderson  |
|        10 | Ava       | White     |
|        16 | Charlotte | Robinson  |
|        20 | Harper    | Lee       |
|        25 | David     | King      |
|        29 | Andrew    | Baker     |
|        34 | Lily      | Perez     |
|        38 | Hannah    | Campbell  |
|        43 | Charles   | Stewart   |
|        47 | Robert    | Reed      |
|         2 | Jane      | Smith     |
|         3 | Michael   | Brown     |
|         5 | Daniel    | Wilson    |
|         8 | Olivia    | Thomas    |
|        11 | Benjamin  | Harris    |
|        12 | Isabella  | Martin    |
|        14 | Mia       | Garcia    |
|        17 | Alexander | Clark     |
|        19 | Ethan     | Lewis     |
|        21 | Matthew   | Walker    |
|        30 | Grace     | Adams     |
|        39 | Anthony   | Parker    |
|        48 | Layla     | Cook      |
|         6 | Sophia    | Taylor    |
|         9 | William   | Jackson   |
|        13 | Lucas     | Thompson  |
|        15 | Henry     | Martinez  |
|        18 | Amelia    | Rodriguez |
+-----------+-----------+-----------+

7. Calculate the average number of credits for all courses.

SELECT AVG(Credits) AS AverageCredits
FROM Courses;

+----------------+
| AverageCredits |
+----------------+
|         3.4000 |
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
|      80000.00 |
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

+--------------+-------------------------+--------------+
| DepartmentID | DepartmentName          | StudentCount |
+--------------+-------------------------+--------------+
|            1 | Computer Science        |           26 |
|            2 | Mathematics             |           23 |
|            3 | Physics                 |            5 |
|            4 | Information Technology  |            5 |
|            5 | Artificial Intelligence |           10 |
+--------------+-------------------------+--------------+

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

+-----------+-------------+-----------+----------+-------------------------+
| StudentID | FirstName   | LastName  | CourseID | CourseName              |
+-----------+-------------+-----------+----------+-------------------------+
|         1 | John        | Doe       |      101 | Introduction to SQL     |
|         4 | Emily       | Davis     |      101 | Introduction to SQL     |
|         7 | James       | Anderson  |      101 | Introduction to SQL     |
|        10 | Ava         | White     |      101 | Introduction to SQL     |
|        16 | Charlotte   | Robinson  |      101 | Introduction to SQL     |
|        20 | Harper      | Lee       |      101 | Introduction to SQL     |
|        25 | David       | King      |      101 | Introduction to SQL     |
|        29 | Andrew      | Baker     |      101 | Introduction to SQL     |
|        34 | Lily        | Perez     |      101 | Introduction to SQL     |
|        38 | Hannah      | Campbell  |      101 | Introduction to SQL     |
|        43 | Charles     | Stewart   |      101 | Introduction to SQL     |
|        47 | Robert      | Reed      |      101 | Introduction to SQL     |
|         2 | Jane        | Smith     |      101 | Introduction to SQL     |
|         3 | Michael     | Brown     |      101 | Introduction to SQL     |
|         5 | Daniel      | Wilson    |      101 | Introduction to SQL     |
|         8 | Olivia      | Thomas    |      101 | Introduction to SQL     |
|        11 | Benjamin    | Harris    |      101 | Introduction to SQL     |
|        12 | Isabella    | Martin    |      101 | Introduction to SQL     |
|        14 | Mia         | Garcia    |      101 | Introduction to SQL     |
|        17 | Alexander   | Clark     |      101 | Introduction to SQL     |
|        19 | Ethan       | Lewis     |      101 | Introduction to SQL     |
|         2 | Jane        | Smith     |      102 | Data Structures         |
|        12 | Isabella    | Martin    |      102 | Data Structures         |
|        21 | Matthew     | Walker    |      102 | Data Structures         |
|        30 | Grace       | Adams     |      102 | Data Structures         |
|        39 | Anthony     | Parker    |      102 | Data Structures         |
|        48 | Layla       | Cook      |      102 | Data Structures         |
|         1 | John        | Doe       |      102 | Data Structures         |
|         4 | Emily       | Davis     |      102 | Data Structures         |
|         6 | Sophia      | Taylor    |      102 | Data Structures         |
|         7 | James       | Anderson  |      102 | Data Structures         |
|         9 | William     | Jackson   |      102 | Data Structures         |
|        10 | Ava         | White     |      102 | Data Structures         |
|        13 | Lucas       | Thompson  |      102 | Data Structures         |
|        15 | Henry       | Martinez  |      102 | Data Structures         |
|        16 | Charlotte   | Robinson  |      102 | Data Structures         |
|        18 | Amelia      | Rodriguez |      102 | Data Structures         |
|        20 | Harper      | Lee       |      102 | Data Structures         |
|         3 | Michael     | Brown     |      103 | Database Management     |
|        13 | Lucas       | Thompson  |      103 | Database Management     |
|        22 | Evelyn      | Hall      |      103 | Database Management     |
|        31 | Joshua      | Nelson    |      103 | Database Management     |
|        40 | Victoria    | Evans     |      103 | Database Management     |
|        49 | Jack        | Morgan    |      103 | Database Management     |
|         5 | Daniel      | Wilson    |      104 | Calculus                |
|        14 | Mia         | Garcia    |      104 | Calculus                |
|        23 | Joseph      | Allen     |      104 | Calculus                |
|        32 | Chloe       | Carter    |      104 | Calculus                |
|        41 | Dylan       | Edwards   |      104 | Calculus                |
|        50 | Sofia       | Bell      |      104 | Calculus                |
|         6 | Sophia      | Taylor    |      105 | Physics Fundamentals    |
|        15 | Henry       | Martinez  |      105 | Physics Fundamentals    |
|        24 | Abigail     | Young     |      105 | Physics Fundamentals    |
|        33 | Ryan        | Mitchell  |      105 | Physics Fundamentals    |
|        42 | Luna        | Collins   |      105 | Physics Fundamentals    |
|         8 | Olivia      | Thomas    |      106 | Web Development         |
|        17 | Alexander   | Clark     |      106 | Web Development         |
|        26 | Ella        | Wright    |      106 | Web Development         |
|        35 | Nathan      | Roberts   |      106 | Web Development         |
|        44 | Nora        | Sanchez   |      106 | Web Development         |
|         9 | William     | Jackson   |      107 | Artificial Intelligence |
|        18 | Amelia      | Rodriguez |      107 | Artificial Intelligence |
|        27 | Christopher | Scott     |      107 | Artificial Intelligence |
|        36 | Zoe         | Turner    |      107 | Artificial Intelligence |
|        45 | Thomas      | Morris    |      107 | Artificial Intelligence |
|        11 | Benjamin    | Harris    |      108 | Machine Learning        |
|        19 | Ethan       | Lewis     |      108 | Machine Learning        |
|        28 | Scarlett    | Green     |      108 | Machine Learning        |
|        37 | Samuel      | Phillips  |      108 | Machine Learning        |
|        46 | Aria        | Rogers    |      108 | Machine Learning        |
+-----------+-------------+-----------+----------+-------------------------+

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

+-----------+-------------+-----------+-------------------------+
| StudentID | FirstName   | LastName  | CourseName              |
+-----------+-------------+-----------+-------------------------+
|         1 | John        | Doe       | Introduction to SQL     |
|         1 | John        | Doe       | Data Structures         |
|         2 | Jane        | Smith     | Data Structures         |
|         2 | Jane        | Smith     | Introduction to SQL     |
|         3 | Michael     | Brown     | Database Management     |
|         3 | Michael     | Brown     | Introduction to SQL     |
|         4 | Emily       | Davis     | Introduction to SQL     |
|         4 | Emily       | Davis     | Data Structures         |
|         5 | Daniel      | Wilson    | Calculus                |
|         5 | Daniel      | Wilson    | Introduction to SQL     |
|         6 | Sophia      | Taylor    | Physics Fundamentals    |
|         6 | Sophia      | Taylor    | Data Structures         |
|         7 | James       | Anderson  | Introduction to SQL     |
|         7 | James       | Anderson  | Data Structures         |
|         8 | Olivia      | Thomas    | Web Development         |
|         8 | Olivia      | Thomas    | Introduction to SQL     |
|         9 | William     | Jackson   | Artificial Intelligence |
|         9 | William     | Jackson   | Data Structures         |
|        10 | Ava         | White     | Introduction to SQL     |
|        10 | Ava         | White     | Data Structures         |
|        11 | Benjamin    | Harris    | Machine Learning        |
|        11 | Benjamin    | Harris    | Introduction to SQL     |
|        12 | Isabella    | Martin    | Data Structures         |
|        12 | Isabella    | Martin    | Introduction to SQL     |
|        13 | Lucas       | Thompson  | Database Management     |
|        13 | Lucas       | Thompson  | Data Structures         |
|        14 | Mia         | Garcia    | Calculus                |
|        14 | Mia         | Garcia    | Introduction to SQL     |
|        15 | Henry       | Martinez  | Physics Fundamentals    |
|        15 | Henry       | Martinez  | Data Structures         |
|        16 | Charlotte   | Robinson  | Introduction to SQL     |
|        16 | Charlotte   | Robinson  | Data Structures         |
|        17 | Alexander   | Clark     | Web Development         |
|        17 | Alexander   | Clark     | Introduction to SQL     |
|        18 | Amelia      | Rodriguez | Artificial Intelligence |
|        18 | Amelia      | Rodriguez | Data Structures         |
|        19 | Ethan       | Lewis     | Machine Learning        |
|        19 | Ethan       | Lewis     | Introduction to SQL     |
|        20 | Harper      | Lee       | Introduction to SQL     |
|        20 | Harper      | Lee       | Data Structures         |
|        21 | Matthew     | Walker    | Data Structures         |
|        22 | Evelyn      | Hall      | Database Management     |
|        23 | Joseph      | Allen     | Calculus                |
|        24 | Abigail     | Young     | Physics Fundamentals    |
|        25 | David       | King      | Introduction to SQL     |
|        26 | Ella        | Wright    | Web Development         |
|        27 | Christopher | Scott     | Artificial Intelligence |
|        28 | Scarlett    | Green     | Machine Learning        |
|        29 | Andrew      | Baker     | Introduction to SQL     |
|        30 | Grace       | Adams     | Data Structures         |
|        31 | Joshua      | Nelson    | Database Management     |
|        32 | Chloe       | Carter    | Calculus                |
|        33 | Ryan        | Mitchell  | Physics Fundamentals    |
|        34 | Lily        | Perez     | Introduction to SQL     |
|        35 | Nathan      | Roberts   | Web Development         |
|        36 | Zoe         | Turner    | Artificial Intelligence |
|        37 | Samuel      | Phillips  | Machine Learning        |
|        38 | Hannah      | Campbell  | Introduction to SQL     |
|        39 | Anthony     | Parker    | Data Structures         |
|        40 | Victoria    | Evans     | Database Management     |
|        41 | Dylan       | Edwards   | Calculus                |
|        42 | Luna        | Collins   | Physics Fundamentals    |
|        43 | Charles     | Stewart   | Introduction to SQL     |
|        44 | Nora        | Sanchez   | Web Development         |
|        45 | Thomas      | Morris    | Artificial Intelligence |
|        46 | Aria        | Rogers    | Machine Learning        |
|        47 | Robert      | Reed      | Introduction to SQL     |
|        48 | Layla       | Cook      | Data Structures         |
|        49 | Jack        | Morgan    | Database Management     |
|        50 | Sofia       | Bell      | Calculus                |
+-----------+-------------+-----------+-------------------------+

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

+-----------+-----------+-----------+------------------------------+------------+----------------+
| StudentID | FirstName | LastName  | Email                        | BirthDate  | EnrollmentDate |
+-----------+-----------+-----------+------------------------------+------------+----------------+
|         1 | John      | Doe       | john.doe@email.com           | 2000-01-15 | 2022-08-01     |
|         2 | Jane      | Smith     | jane.smith@email.com         | 1999-05-25 | 2021-08-01     |
|         3 | Michael   | Brown     | michael.brown@email.com      | 2001-03-12 | 2023-08-01     |
|         4 | Emily     | Davis     | emily.davis@email.com        | 2000-07-18 | 2022-08-01     |
|         5 | Daniel    | Wilson    | daniel.wilson@email.com      | 2002-02-20 | 2024-08-01     |
|         6 | Sophia    | Taylor    | sophia.taylor@email.com      | 2001-09-10 | 2023-08-01     |
|         7 | James     | Anderson  | james.anderson@email.com     | 2000-11-05 | 2022-08-01     |
|         8 | Olivia    | Thomas    | olivia.thomas@email.com      | 2002-04-22 | 2024-08-01     |
|         9 | William   | Jackson   | william.jackson@email.com    | 2001-06-15 | 2023-08-01     |
|        10 | Ava       | White     | ava.white@email.com          | 2000-12-30 | 2022-08-01     |
|        11 | Benjamin  | Harris    | benjamin.harris@email.com    | 2002-01-11 | 2024-08-01     |
|        12 | Isabella  | Martin    | isabella.martin@email.com    | 2001-08-14 | 2023-08-01     |
|        13 | Lucas     | Thompson  | lucas.thompson@email.com     | 2000-05-19 | 2022-08-01     |
|        14 | Mia       | Garcia    | mia.garcia@email.com         | 2002-10-02 | 2024-08-01     |
|        15 | Henry     | Martinez  | henry.martinez@email.com     | 2001-02-28 | 2023-08-01     |
|        16 | Charlotte | Robinson  | charlotte.robinson@email.com | 2000-09-25 | 2022-08-01     |
|        17 | Alexander | Clark     | alexander.clark@email.com    | 2002-03-17 | 2024-08-01     |
|        18 | Amelia    | Rodriguez | amelia.rodriguez@email.com   | 2001-07-07 | 2023-08-01     |
|        19 | Ethan     | Lewis     | ethan.lewis@email.com        | 2000-04-13 | 2022-08-01     |
|        20 | Harper    | Lee       | harper.lee@email.com         | 2002-11-21 | 2024-08-01     |
|        21 | Matthew   | Walker    | matthew.walker@email.com     | 2001-01-30 | 2023-08-01     |
|        25 | David     | King      | david.king@email.com         | 2000-02-05 | 2022-08-01     |
|        29 | Andrew    | Baker     | andrew.baker@email.com       | 2002-06-18 | 2024-08-01     |
|        30 | Grace     | Adams     | grace.adams@email.com        | 2001-09-29 | 2023-08-01     |
|        34 | Lily      | Perez     | lily.perez@email.com         | 2000-07-26 | 2022-08-01     |
|        38 | Hannah    | Campbell  | hannah.campbell@email.com    | 2002-03-03 | 2024-08-01     |
|        39 | Anthony   | Parker    | anthony.parker@email.com     | 2001-08-20 | 2023-08-01     |
|        43 | Charles   | Stewart   | charles.stewart@email.com    | 2000-09-03 | 2022-08-01     |
|        47 | Robert    | Reed      | robert.reed@email.com        | 2002-05-23 | 2024-08-01     |
|        48 | Layla     | Cook      | layla.cook@email.com         | 2001-10-16 | 2023-08-01     |
+-----------+-----------+-----------+------------------------------+------------+----------------

13. Extract the year from the EnrollmentDate of students.

SELECT StudentID,
       FirstName,
       LastName,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

+-----------+-------------+-----------+----------------+
| StudentID | FirstName   | LastName  | EnrollmentYear |
+-----------+-------------+-----------+----------------+
|         1 | John        | Doe       |           2022 |
|         2 | Jane        | Smith     |           2021 |
|         3 | Michael     | Brown     |           2023 |
|         4 | Emily       | Davis     |           2022 |
|         5 | Daniel      | Wilson    |           2024 |
|         6 | Sophia      | Taylor    |           2023 |
|         7 | James       | Anderson  |           2022 |
|         8 | Olivia      | Thomas    |           2024 |
|         9 | William     | Jackson   |           2023 |
|        10 | Ava         | White     |           2022 |
|        11 | Benjamin    | Harris    |           2024 |
|        12 | Isabella    | Martin    |           2023 |
|        13 | Lucas       | Thompson  |           2022 |
|        14 | Mia         | Garcia    |           2024 |
|        15 | Henry       | Martinez  |           2023 |
|        16 | Charlotte   | Robinson  |           2022 |
|        17 | Alexander   | Clark     |           2024 |
|        18 | Amelia      | Rodriguez |           2023 |
|        19 | Ethan       | Lewis     |           2022 |
|        20 | Harper      | Lee       |           2024 |
|        21 | Matthew     | Walker    |           2023 |
|        22 | Evelyn      | Hall      |           2022 |
|        23 | Joseph      | Allen     |           2024 |
|        24 | Abigail     | Young     |           2023 |
|        25 | David       | King      |           2022 |
|        26 | Ella        | Wright    |           2024 |
|        27 | Christopher | Scott     |           2023 |
|        28 | Scarlett    | Green     |           2022 |
|        29 | Andrew      | Baker     |           2024 |
|        30 | Grace       | Adams     |           2023 |
|        31 | Joshua      | Nelson    |           2022 |
|        32 | Chloe       | Carter    |           2024 |
|        33 | Ryan        | Mitchell  |           2023 |
|        34 | Lily        | Perez     |           2022 |
|        35 | Nathan      | Roberts   |           2024 |
|        36 | Zoe         | Turner    |           2023 |
|        37 | Samuel      | Phillips  |           2022 |
|        38 | Hannah      | Campbell  |           2024 |
|        39 | Anthony     | Parker    |           2023 |
|        40 | Victoria    | Evans     |           2022 |
|        41 | Dylan       | Edwards   |           2024 |
|        42 | Luna        | Collins   |           2023 |
|        43 | Charles     | Stewart   |           2022 |
|        44 | Nora        | Sanchez   |           2024 |
|        45 | Thomas      | Morris    |           2023 |
|        46 | Aria        | Rogers    |           2022 |
|        47 | Robert      | Reed      |           2024 |
|        48 | Layla       | Cook      |           2023 |
|        49 | Jack        | Morgan    |           2022 |
|        50 | Sofia       | Bell      |           2024 |
+-----------+-------------+-----------+----------------+

14. Concatenate the instructor's first and last name.

SELECT InstructorID,
       CONCAT(FirstName, ' ', LastName) AS FullName
FROM Instructors;

+--------------+-----------------+
| InstructorID | FullName        |
+--------------+-----------------+
|            1 | Alice Johnson   |
|            2 | Bob Lee         |
|            3 | Robert Miller   |
|            4 | Linda Wilson    |
|            5 | David Moore     |
|            6 | Susan Taylor    |
|            7 | James Thomas    |
|            8 | Karen Jackson   |
|            9 | Michael White   |
|           10 | Patricia Harris |
+--------------+-----------------+

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

+----------+-------------------------+--------------+--------------+
| CourseID | CourseName              | StudentCount | RunningTotal |
+----------+-------------------------+--------------+--------------+
|      101 | Introduction to SQL     |           21 |           21 |
|      102 | Data Structures         |           17 |           38 |
|      103 | Database Management     |            6 |           44 |
|      104 | Calculus                |            6 |           50 |
|      105 | Physics Fundamentals    |            5 |           55 |
|      106 | Web Development         |            5 |           60 |
|      107 | Artificial Intelligence |            5 |           65 |
|      108 | Machine Learning        |            5 |           70 |
|      109 | Computer Networks       |            0 |           70 |
|      110 | Statistics              |            0 |           70 |
+----------+-------------------------+--------------+--------------+

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

+-----------+-------------+-----------+----------------+--------------+
| StudentID | FirstName   | LastName  | EnrollmentDate | StudentLevel |
+-----------+-------------+-----------+----------------+--------------+
|         1 | John        | Doe       | 2022-08-01     | Senior       |
|         2 | Jane        | Smith     | 2021-08-01     | Senior       |
|         3 | Michael     | Brown     | 2023-08-01     | Junior       |
|         4 | Emily       | Davis     | 2022-08-01     | Senior       |
|         5 | Daniel      | Wilson    | 2024-08-01     | Junior       |
|         6 | Sophia      | Taylor    | 2023-08-01     | Junior       |
|         7 | James       | Anderson  | 2022-08-01     | Senior       |
|         8 | Olivia      | Thomas    | 2024-08-01     | Junior       |
|         9 | William     | Jackson   | 2023-08-01     | Junior       |
|        10 | Ava         | White     | 2022-08-01     | Senior       |
|        11 | Benjamin    | Harris    | 2024-08-01     | Junior       |
|        12 | Isabella    | Martin    | 2023-08-01     | Junior       |
|        13 | Lucas       | Thompson  | 2022-08-01     | Senior       |
|        14 | Mia         | Garcia    | 2024-08-01     | Junior       |
|        15 | Henry       | Martinez  | 2023-08-01     | Junior       |
|        16 | Charlotte   | Robinson  | 2022-08-01     | Senior       |
|        17 | Alexander   | Clark     | 2024-08-01     | Junior       |
|        18 | Amelia      | Rodriguez | 2023-08-01     | Junior       |
|        19 | Ethan       | Lewis     | 2022-08-01     | Senior       |
|        20 | Harper      | Lee       | 2024-08-01     | Junior       |
|        21 | Matthew     | Walker    | 2023-08-01     | Junior       |
|        22 | Evelyn      | Hall      | 2022-08-01     | Senior       |
|        23 | Joseph      | Allen     | 2024-08-01     | Junior       |
|        24 | Abigail     | Young     | 2023-08-01     | Junior       |
|        25 | David       | King      | 2022-08-01     | Senior       |
|        26 | Ella        | Wright    | 2024-08-01     | Junior       |
|        27 | Christopher | Scott     | 2023-08-01     | Junior       |
|        28 | Scarlett    | Green     | 2022-08-01     | Senior       |
|        29 | Andrew      | Baker     | 2024-08-01     | Junior       |
|        30 | Grace       | Adams     | 2023-08-01     | Junior       |
|        31 | Joshua      | Nelson    | 2022-08-01     | Senior       |
|        32 | Chloe       | Carter    | 2024-08-01     | Junior       |
|        33 | Ryan        | Mitchell  | 2023-08-01     | Junior       |
|        34 | Lily        | Perez     | 2022-08-01     | Senior       |
|        35 | Nathan      | Roberts   | 2024-08-01     | Junior       |
|        36 | Zoe         | Turner    | 2023-08-01     | Junior       |
|        37 | Samuel      | Phillips  | 2022-08-01     | Senior       |
|        38 | Hannah      | Campbell  | 2024-08-01     | Junior       |
|        39 | Anthony     | Parker    | 2023-08-01     | Junior       |
|        40 | Victoria    | Evans     | 2022-08-01     | Senior       |
|        41 | Dylan       | Edwards   | 2024-08-01     | Junior       |
|        42 | Luna        | Collins   | 2023-08-01     | Junior       |
|        43 | Charles     | Stewart   | 2022-08-01     | Senior       |
|        44 | Nora        | Sanchez   | 2024-08-01     | Junior       |
|        45 | Thomas      | Morris    | 2023-08-01     | Junior       |
|        46 | Aria        | Rogers    | 2022-08-01     | Senior       |
|        47 | Robert      | Reed      | 2024-08-01     | Junior       |
|        48 | Layla       | Cook      | 2023-08-01     | Junior       |
|        49 | Jack        | Morgan    | 2022-08-01     | Senior       |
|        50 | Sofia       | Bell      | 2024-08-01     | Junior       |
+-----------+-------------+-----------+----------------+--------------+