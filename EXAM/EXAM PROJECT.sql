-- CREATE DATABASE :-

CREATE DATABASE hospital_management;

USE hospital_management;

-- CREATE THE PATIENT TABLE :-

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

INSERT INTO Patients
(patient_id, name, dob, gender, phone_number, email, address, registration_date)
VALUES
(1,'Aarav Patel','1995-01-15','Male','9876500001','aarav@gmail.com','Surat','2026-01-05'),
(2,'Aditi Shah','1998-02-20','Female','9876500002','aditi@gmail.com','Ahmedabad','2026-01-10'),
(3,'Rahul Desai','1992-03-12','Male','9876500003','rahul@gmail.com','Vadodara','2026-01-15'),
(4,'Priya Mehta','1997-04-18','Female','9876500004','priya@gmail.com','Surat','2026-02-01'),
(5,'Rohan Patel','1990-05-25','Male','9876500005','rohan@gmail.com','Rajkot','2026-02-05'),
(6,'Neha Shah','1996-06-10','Female','9876500006','neha@gmail.com','Surat','2026-02-10'),
(7,'Karan Joshi','1993-07-22','Male','9876500007','karan@gmail.com','Ahmedabad','2026-02-15'),
(8,'Kavya Desai','1999-08-14','Female','9876500008','kavya@gmail.com','Vadodara','2026-02-20'),
(9,'Vivek Mehta','1988-09-30','Male','9876500009','vivek@gmail.com','Surat','2026-03-01'),
(10,'Isha Patel','2000-10-05','Female','9876500010','isha@gmail.com','Rajkot','2026-03-05'),
(11,'Arjun Shah','1994-11-11','Male','9876500011','arjun@gmail.com','Surat','2026-03-10'),
(12,'Sneha Patel','1998-12-19','Female','9876500012','sneha@gmail.com','Ahmedabad','2026-03-15'),
(13,'Dev Mehta','1991-01-28','Male','9876500013','dev@gmail.com','Vadodara','2026-03-20'),
(14,'Riya Shah','1997-02-16','Female','9876500014','riya@gmail.com','Surat','2026-04-01'),
(15,'Manav Patel','1995-03-21','Male','9876500015','manav@gmail.com','Rajkot','2026-04-05'),
(16,'Ananya Desai','1999-04-09','Female','9876500016','ananya@gmail.com','Surat','2026-04-10'),
(17,'Yash Mehta','1990-05-17','Male','9876500017','yash@gmail.com','Ahmedabad','2026-04-15'),
(18,'Diya Patel','2001-06-25','Female','9876500018','diya@gmail.com','Vadodara','2026-04-20'),
(19,'Harsh Shah','1993-07-13','Male','9876500019','harsh@gmail.com','Surat','2026-05-01'),
(20,'Mira Desai','1996-08-23','Female','9876500020','mira@gmail.com','Rajkot','2026-05-05'),
(21,'Aditya Patel','1992-09-18','Male','9876500021','aditya@gmail.com','Surat','2026-05-10'),
(22,'Pooja Shah','1995-10-27','Female','9876500022','pooja@gmail.com','Ahmedabad','2026-05-15'),
(23,'Nikhil Mehta','1989-11-06','Male','9876500023','nikhil@gmail.com','Vadodara','2026-05-20'),
(24,'Tanvi Patel','1998-12-15','Female','9876500024','tanvi@gmail.com','Surat','2026-06-01'),
(25,'Dhruv Shah','1994-01-20','Male','9876500025','dhruv@gmail.com','Rajkot','2026-06-05'),
(26,'Khushi Desai','2000-02-11','Female','9876500026','khushi@gmail.com','Surat','2026-06-10'),
(27,'Jay Mehta','1991-03-29','Male','9876500027','jay@gmail.com','Ahmedabad','2026-06-15'),
(28,'Mahi Patel','1997-04-07','Female','9876500028','mahi@gmail.com','Vadodara','2026-06-20'),
(29,'Om Shah','1993-05-19','Male','9876500029','om@gmail.com','Surat','2026-07-01'),
(30,'Avni Desai','1999-06-28','Female','9876500030','avni@gmail.com','Rajkot','2026-07-05'),
(31,'Sahil Patel','1990-07-16','Male','9876500031','sahil@gmail.com','Surat','2026-07-10'),
(32,'Jiya Shah','2001-08-24','Female','9876500032','jiya@gmail.com','Ahmedabad','2026-07-15'),
(33,'Parth Mehta','1995-09-12','Male','9876500033','parth@gmail.com','Vadodara','2026-07-20'),
(34,'Nisha Patel','1996-10-21','Female','9876500034','nisha@gmail.com','Surat','2026-08-01'),
(35,'Krish Shah','1992-11-17','Male','9876500035','krish@gmail.com','Rajkot','2026-08-05'),
(36,'Simran Desai','1998-12-03','Female','9876500036','simran@gmail.com','Surat','2026-08-10'),
(37,'Rudra Patel','1994-01-14','Male','9876500037','rudra@gmail.com','Ahmedabad','2026-08-15'),
(38,'Ayesha Shah','1997-02-26','Female','9876500038','ayesha@gmail.com','Vadodara','2026-08-20'),
(39,'Meet Mehta','1991-03-08','Male','9876500039','meet@gmail.com','Surat','2026-08-25'),
(40,'Sara Patel','2000-04-19','Female','9876500040','sara@gmail.com','Rajkot','2026-09-01');

SELECT * FROM Patients;

+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
| patient_id | name         | dob        | gender | phone_number | email            | address   | registration_date |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
|          1 | Aarav Patel  | 1995-01-15 | Male   | 9876500001   | aarav@gmail.com  | Surat     | 2026-01-05        |
|          2 | Aditi Shah   | 1998-02-20 | Female | 9876500002   | aditi@gmail.com  | Ahmedabad | 2026-01-10        |
|          3 | Rahul Desai  | 1992-03-12 | Male   | 9876500003   | rahul@gmail.com  | Vadodara  | 2026-01-15        |
|          4 | Priya Mehta  | 1997-04-18 | Female | 9876500004   | priya@gmail.com  | Surat     | 2026-02-01        |
|          5 | Rohan Patel  | 1990-05-25 | Male   | 9876500005   | rohan@gmail.com  | Rajkot    | 2026-02-05        |
|          6 | Neha Shah    | 1996-06-10 | Female | 9876500006   | neha@gmail.com   | Surat     | 2026-02-10        |
|          7 | Karan Joshi  | 1993-07-22 | Male   | 9876500007   | karan@gmail.com  | Ahmedabad | 2026-02-15        |
|          8 | Kavya Desai  | 1999-08-14 | Female | 9876500008   | kavya@gmail.com  | Vadodara  | 2026-02-20        |
|          9 | Vivek Mehta  | 1988-09-30 | Male   | 9876500009   | vivek@gmail.com  | Surat     | 2026-03-01        |
|         10 | Isha Patel   | 2000-10-05 | Female | 9876500010   | isha@gmail.com   | Rajkot    | 2026-03-05        |
|         11 | Arjun Shah   | 1994-11-11 | Male   | 9876500011   | arjun@gmail.com  | Surat     | 2026-03-10        |
|         12 | Sneha Patel  | 1998-12-19 | Female | 9876500012   | sneha@gmail.com  | Ahmedabad | 2026-03-15        |
|         13 | Dev Mehta    | 1991-01-28 | Male   | 9876500013   | dev@gmail.com    | Vadodara  | 2026-03-20        |
|         14 | Riya Shah    | 1997-02-16 | Female | 9876500014   | riya@gmail.com   | Surat     | 2026-04-01        |
|         15 | Manav Patel  | 1995-03-21 | Male   | 9876500015   | manav@gmail.com  | Rajkot    | 2026-04-05        |
|         16 | Ananya Desai | 1999-04-09 | Female | 9876500016   | ananya@gmail.com | Surat     | 2026-04-10        |
|         17 | Yash Mehta   | 1990-05-17 | Male   | 9876500017   | yash@gmail.com   | Ahmedabad | 2026-04-15        |
|         18 | Diya Patel   | 2001-06-25 | Female | 9876500018   | diya@gmail.com   | Vadodara  | 2026-04-20        |
|         19 | Harsh Shah   | 1993-07-13 | Male   | 9876500019   | harsh@gmail.com  | Surat     | 2026-05-01        |
|         20 | Mira Desai   | 1996-08-23 | Female | 9876500020   | mira@gmail.com   | Rajkot    | 2026-05-05        |
|         21 | Aditya Patel | 1992-09-18 | Male   | 9876500021   | aditya@gmail.com | Surat     | 2026-05-10        |
|         22 | Pooja Shah   | 1995-10-27 | Female | 9876500022   | pooja@gmail.com  | Ahmedabad | 2026-05-15        |
|         23 | Nikhil Mehta | 1989-11-06 | Male   | 9876500023   | nikhil@gmail.com | Vadodara  | 2026-05-20        |
|         24 | Tanvi Patel  | 1998-12-15 | Female | 9876500024   | tanvi@gmail.com  | Surat     | 2026-06-01        |
|         25 | Dhruv Shah   | 1994-01-20 | Male   | 9876500025   | dhruv@gmail.com  | Rajkot    | 2026-06-05        |
|         26 | Khushi Desai | 2000-02-11 | Female | 9876500026   | khushi@gmail.com | Surat     | 2026-06-10        |
|         27 | Jay Mehta    | 1991-03-29 | Male   | 9876500027   | jay@gmail.com    | Ahmedabad | 2026-06-15        |
|         28 | Mahi Patel   | 1997-04-07 | Female | 9876500028   | mahi@gmail.com   | Vadodara  | 2026-06-20        |
|         29 | Om Shah      | 1993-05-19 | Male   | 9876500029   | om@gmail.com     | Surat     | 2026-07-01        |
|         30 | Avni Desai   | 1999-06-28 | Female | 9876500030   | avni@gmail.com   | Rajkot    | 2026-07-05        |
|         31 | Sahil Patel  | 1990-07-16 | Male   | 9876500031   | sahil@gmail.com  | Surat     | 2026-07-10        |
|         32 | Jiya Shah    | 2001-08-24 | Female | 9876500032   | jiya@gmail.com   | Ahmedabad | 2026-07-15        |
|         33 | Parth Mehta  | 1995-09-12 | Male   | 9876500033   | parth@gmail.com  | Vadodara  | 2026-07-20        |
|         34 | Nisha Patel  | 1996-10-21 | Female | 9876500034   | nisha@gmail.com  | Surat     | 2026-08-01        |
|         35 | Krish Shah   | 1992-11-17 | Male   | 9876500035   | krish@gmail.com  | Rajkot    | 2026-08-05        |
|         36 | Simran Desai | 1998-12-03 | Female | 9876500036   | simran@gmail.com | Surat     | 2026-08-10        |
|         37 | Rudra Patel  | 1994-01-14 | Male   | 9876500037   | rudra@gmail.com  | Ahmedabad | 2026-08-15        |
|         38 | Ayesha Shah  | 1997-02-26 | Female | 9876500038   | ayesha@gmail.com | Vadodara  | 2026-08-20        |
|         39 | Meet Mehta   | 1991-03-08 | Male   | 9876500039   | meet@gmail.com   | Surat     | 2026-08-25        |
|         40 | Sara Patel   | 2000-04-19 | Female | 9876500040   | sara@gmail.com   | Rajkot    | 2026-09-01        |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+

SELECT COUNT(*) AS total_patients
FROM Patients;

+----------------+
| total_patients |
+----------------+
|             40 |
+----------------+

-- CREATE THE DOCTORS TABLE :-

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

INSERT INTO Doctors
(doctor_id,name,specialization,phone_number,email,available_days,consultation_fee,experience_years)
VALUES
(1,'Dr. Raj Patel','Cardiology','9000000001','raj@hospital.com','Mon-Fri',1500,18),
(2,'Dr. Priya Shah','Neurology','9000000002','priya@hospital.com','Mon-Wed',1800,12),
(3,'Dr. Amit Mehta','Dermatology','9000000003','amit@hospital.com','Tue-Thu',1200,8),
(4,'Dr. Neha Desai','Pediatrics','9000000004','neha@hospital.com','Mon-Fri',1000,16),
(5,'Dr. Kunal Patel','Orthopedics','9000000005','kunal@hospital.com','Mon-Sat',1600,20),
(6,'Dr. Rina Shah','Gynecology','9000000006','rina@hospital.com','Tue-Sat',1400,10),
(7,'Dr. Vijay Mehta','Cardiology','9000000007','vijay@hospital.com','Mon-Fri',1700,22),
(8,'Dr. Anjali Patel','Neurology','9000000008','anjali@hospital.com','Mon-Thu',1900,17),
(9,'Dr. Rahul Shah','Dermatology','9000000009','rahul@hospital.com','Tue-Fri',1300,6),
(10,'Dr. Meera Desai','Pediatrics','9000000010','meera@hospital.com','Mon-Sat',1100,14),
(11,'Dr. Suresh Patel','Orthopedics','9000000011','suresh@hospital.com','Mon-Fri',1500,19),
(12,'Dr. Kavita Shah','Gynecology','9000000012','kavita@hospital.com','Tue-Sat',1250,7),
(13,'Dr. Nitin Mehta','Cardiology','9000000013','nitin@hospital.com','Mon-Fri',1600,21),
(14,'Dr. Pooja Desai','Neurology','9000000014','pooja@hospital.com','Mon-Thu',1750,11),
(15,'Dr. Hardik Patel','Dermatology','9000000015','hardik@hospital.com','Tue-Fri',1150,4),
(16,'Dr. Sneha Shah','Pediatrics','9000000016','sneha@hospital.com','Mon-Sat',1050,13),
(17,'Dr. Jay Mehta','Orthopedics','9000000017','jay@hospital.com','Mon-Fri',1450,16),
(18,'Dr. Asha Patel','Gynecology','9000000018','asha@hospital.com','Tue-Sat',1350,9),
(19,'Dr. Rakesh Shah','Cardiology','9000000019','rakesh@hospital.com','Mon-Fri',2000,25),
(20,'Dr. Divya Desai','Neurology','9000000020','divya@hospital.com','Mon-Thu',1650,15),
(21,'Dr. Mohit Patel','Dermatology','9000000021','mohit@hospital.com','Tue-Fri',1250,5),
(22,'Dr. Nisha Shah','Pediatrics','9000000022','nisha@hospital.com','Mon-Sat',1000,18),
(23,'Dr. Chirag Mehta','Orthopedics','9000000023','chirag@hospital.com','Mon-Fri',1550,23),
(24,'Dr. Komal Patel','Gynecology','9000000024','komal@hospital.com','Tue-Sat',1450,12),
(25,'Dr. Sanjay Shah','Cardiology','9000000025','sanjay@hospital.com','Mon-Fri',1850,20),
(26,'Dr. Ritu Desai','Neurology','9000000026','ritu@hospital.com','Mon-Thu',1950,16),
(27,'Dr. Akash Patel','Dermatology','9000000027','akash@hospital.com','Tue-Fri',1100,3),
(28,'Dr. Bhavna Shah','Pediatrics','9000000028','bhavna@hospital.com','Mon-Sat',950,7),
(29,'Dr. Deep Mehta','Orthopedics','9000000029','deep@hospital.com','Mon-Fri',1500,17),
(30,'Dr. Mona Patel','Gynecology','9000000030','mona@hospital.com','Tue-Sat',1300,11),
(31,'Dr. Rajesh Shah','Cardiology','9000000031','rajesh@hospital.com','Mon-Fri',1750,19),
(32,'Dr. Seema Desai','Neurology','9000000032','seema@hospital.com','Mon-Thu',1600,14),
(33,'Dr. Manish Patel','Dermatology','9000000033','manish@hospital.com','Tue-Fri',1200,9),
(34,'Dr. Alka Shah','Pediatrics','9000000034','alka@hospital.com','Mon-Sat',1000,6),
(35,'Dr. Hemant Mehta','Orthopedics','9000000035','hemant@hospital.com','Mon-Fri',1650,24),
(36,'Dr. Reema Patel','Gynecology','9000000036','reema@hospital.com','Tue-Sat',1400,8),
(37,'Dr. Chetan Shah','Cardiology','9000000037','chetan@hospital.com','Mon-Fri',1550,13),
(38,'Dr. Sonal Desai','Neurology','9000000038','sonal@hospital.com','Mon-Thu',1800,21),
(39,'Dr. Hitesh Patel','Dermatology','9000000039','hitesh@hospital.com','Tue-Fri',1350,10),
(40,'Dr. Rekha Shah','Pediatrics','9000000040','rekha@hospital.com','Mon-Sat',1050,15);

SELECT * from doctors;

+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
| doctor_id | name             | specialization | phone_number | email               | available_days | consultation_fee | experience_years |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
|         1 | Dr. Raj Patel    | Cardiology     | 9000000001   | raj@hospital.com    | Mon-Fri        |          1500.00 |               18 |
|         2 | Dr. Priya Shah   | Neurology      | 9000000002   | priya@hospital.com  | Mon-Wed        |          1800.00 |               12 |
|         3 | Dr. Amit Mehta   | Dermatology    | 9000000003   | amit@hospital.com   | Tue-Thu        |          1200.00 |                8 |
|         4 | Dr. Neha Desai   | Pediatrics     | 9000000004   | neha@hospital.com   | Mon-Fri        |          1000.00 |               16 |
|         5 | Dr. Kunal Patel  | Orthopedics    | 9000000005   | kunal@hospital.com  | Mon-Sat        |          1600.00 |               20 |
|         6 | Dr. Rina Shah    | Gynecology     | 9000000006   | rina@hospital.com   | Tue-Sat        |          1400.00 |               10 |
|         7 | Dr. Vijay Mehta  | Cardiology     | 9000000007   | vijay@hospital.com  | Mon-Fri        |          1700.00 |               22 |
|         8 | Dr. Anjali Patel | Neurology      | 9000000008   | anjali@hospital.com | Mon-Thu        |          1900.00 |               17 |
|         9 | Dr. Rahul Shah   | Dermatology    | 9000000009   | rahul@hospital.com  | Tue-Fri        |          1300.00 |                6 |
|        10 | Dr. Meera Desai  | Pediatrics     | 9000000010   | meera@hospital.com  | Mon-Sat        |          1100.00 |               14 |
|        11 | Dr. Suresh Patel | Orthopedics    | 9000000011   | suresh@hospital.com | Mon-Fri        |          1500.00 |               19 |
|        12 | Dr. Kavita Shah  | Gynecology     | 9000000012   | kavita@hospital.com | Tue-Sat        |          1250.00 |                7 |
|        13 | Dr. Nitin Mehta  | Cardiology     | 9000000013   | nitin@hospital.com  | Mon-Fri        |          1600.00 |               21 |
|        14 | Dr. Pooja Desai  | Neurology      | 9000000014   | pooja@hospital.com  | Mon-Thu        |          1750.00 |               11 |
|        15 | Dr. Hardik Patel | Dermatology    | 9000000015   | hardik@hospital.com | Tue-Fri        |          1150.00 |                4 |
|        16 | Dr. Sneha Shah   | Pediatrics     | 9000000016   | sneha@hospital.com  | Mon-Sat        |          1050.00 |               13 |
|        17 | Dr. Jay Mehta    | Orthopedics    | 9000000017   | jay@hospital.com    | Mon-Fri        |          1450.00 |               16 |
|        18 | Dr. Asha Patel   | Gynecology     | 9000000018   | asha@hospital.com   | Tue-Sat        |          1350.00 |                9 |
|        19 | Dr. Rakesh Shah  | Cardiology     | 9000000019   | rakesh@hospital.com | Mon-Fri        |          2000.00 |               25 |
|        20 | Dr. Divya Desai  | Neurology      | 9000000020   | divya@hospital.com  | Mon-Thu        |          1650.00 |               15 |
|        21 | Dr. Mohit Patel  | Dermatology    | 9000000021   | mohit@hospital.com  | Tue-Fri        |          1250.00 |                5 |
|        22 | Dr. Nisha Shah   | Pediatrics     | 9000000022   | nisha@hospital.com  | Mon-Sat        |          1000.00 |               18 |
|        23 | Dr. Chirag Mehta | Orthopedics    | 9000000023   | chirag@hospital.com | Mon-Fri        |          1550.00 |               23 |
|        24 | Dr. Komal Patel  | Gynecology     | 9000000024   | komal@hospital.com  | Tue-Sat        |          1450.00 |               12 |
|        25 | Dr. Sanjay Shah  | Cardiology     | 9000000025   | sanjay@hospital.com | Mon-Fri        |          1850.00 |               20 |
|        26 | Dr. Ritu Desai   | Neurology      | 9000000026   | ritu@hospital.com   | Mon-Thu        |          1950.00 |               16 |
|        27 | Dr. Akash Patel  | Dermatology    | 9000000027   | akash@hospital.com  | Tue-Fri        |          1100.00 |                3 |
|        28 | Dr. Bhavna Shah  | Pediatrics     | 9000000028   | bhavna@hospital.com | Mon-Sat        |           950.00 |                7 |
|        29 | Dr. Deep Mehta   | Orthopedics    | 9000000029   | deep@hospital.com   | Mon-Fri        |          1500.00 |               17 |
|        30 | Dr. Mona Patel   | Gynecology     | 9000000030   | mona@hospital.com   | Tue-Sat        |          1300.00 |               11 |
|        31 | Dr. Rajesh Shah  | Cardiology     | 9000000031   | rajesh@hospital.com | Mon-Fri        |          1750.00 |               19 |
|        32 | Dr. Seema Desai  | Neurology      | 9000000032   | seema@hospital.com  | Mon-Thu        |          1600.00 |               14 |
|        33 | Dr. Manish Patel | Dermatology    | 9000000033   | manish@hospital.com | Tue-Fri        |          1200.00 |                9 |
|        34 | Dr. Alka Shah    | Pediatrics     | 9000000034   | alka@hospital.com   | Mon-Sat        |          1000.00 |                6 |
|        35 | Dr. Hemant Mehta | Orthopedics    | 9000000035   | hemant@hospital.com | Mon-Fri        |          1650.00 |               24 |
|        36 | Dr. Reema Patel  | Gynecology     | 9000000036   | reema@hospital.com  | Tue-Sat        |          1400.00 |                8 |
|        37 | Dr. Chetan Shah  | Cardiology     | 9000000037   | chetan@hospital.com | Mon-Fri        |          1550.00 |               13 |
|        38 | Dr. Sonal Desai  | Neurology      | 9000000038   | sonal@hospital.com  | Mon-Thu        |          1800.00 |               21 |
|        39 | Dr. Hitesh Patel | Dermatology    | 9000000039   | hitesh@hospital.com | Tue-Fri        |          1350.00 |               10 |
|        40 | Dr. Rekha Shah   | Pediatrics     | 9000000040   | rekha@hospital.com  | Mon-Sat        |          1050.00 |               15 |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
SELECT COUNT(*) AS total_doctors
FROM Doctors;

+---------------+
| total_doctors |
+---------------+
|            40 |
+---------------+

-- CRAETE THE APPOITMENT TABLE :-

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments
(appointment_id,patient_id,doctor_id,appointment_date,status)
VALUES
(1,1,1,'2026-01-10','Completed'),
(2,2,2,'2026-01-15','Completed'),
(3,3,3,'2026-01-20','Scheduled'),
(4,4,4,'2026-02-05','Completed'),
(5,5,5,'2026-02-10','Cancelled'),
(6,6,6,'2026-02-15','Completed'),
(7,7,7,'2026-02-20','Scheduled'),
(8,8,8,'2026-03-01','Completed'),
(9,9,9,'2026-03-05','Completed'),
(10,10,10,'2026-03-10','Scheduled'),
(11,11,11,'2026-03-15','Completed'),
(12,12,12,'2026-03-20','Completed'),
(13,13,13,'2026-04-01','Scheduled'),
(14,14,14,'2026-04-05','Completed'),
(15,15,15,'2026-04-10','Completed'),
(16,16,16,'2026-04-15','Cancelled'),
(17,17,17,'2026-04-20','Completed'),
(18,18,18,'2026-05-01','Scheduled'),
(19,19,19,'2026-05-05','Completed'),
(20,20,20,'2026-05-10','Completed'),
(21,21,21,'2026-05-15','Scheduled'),
(22,22,22,'2026-05-20','Completed'),
(23,23,23,'2026-06-01','Completed'),
(24,24,24,'2026-06-05','Scheduled'),
(25,25,25,'2026-06-10','Completed'),
(26,26,26,'2026-06-15','Completed'),
(27,27,27,'2026-06-20','Scheduled'),
(28,28,28,'2026-07-01','Completed'),
(29,29,29,'2026-07-05','Completed'),
(30,30,30,'2026-07-10','Scheduled'),
(31,1,31,'2026-07-15','Completed'),
(32,2,32,'2026-07-20','Completed'),
(33,3,33,'2026-08-01','Scheduled'),
(34,4,34,'2026-08-05','Completed'),
(35,5,35,'2026-08-10','Completed'),
(36,6,36,'2026-08-15','Scheduled'),
(37,7,37,'2026-08-20','Completed'),
(38,8,38,'2026-08-25','Completed'),
(39,9,39,'2026-09-01','Scheduled'),
(40,10,40,'2026-09-05','Completed');

SELECT * FROM appointments;

+----------------+------------+-----------+------------------+-----------+
| appointment_id | patient_id | doctor_id | appointment_date | status    |
+----------------+------------+-----------+------------------+-----------+
|              1 |          1 |         1 | 2026-01-10       | Completed |
|              2 |          2 |         2 | 2026-01-15       | Completed |
|              3 |          3 |         3 | 2026-01-20       | Scheduled |
|              4 |          4 |         4 | 2026-02-05       | Completed |
|              5 |          5 |         5 | 2026-02-10       | Cancelled |
|              6 |          6 |         6 | 2026-02-15       | Completed |
|              7 |          7 |         7 | 2026-02-20       | Scheduled |
|              8 |          8 |         8 | 2026-03-01       | Completed |
|              9 |          9 |         9 | 2026-03-05       | Completed |
|             10 |         10 |        10 | 2026-03-10       | Scheduled |
|             11 |         11 |        11 | 2026-03-15       | Completed |
|             12 |         12 |        12 | 2026-03-20       | Completed |
|             13 |         13 |        13 | 2026-04-01       | Scheduled |
|             14 |         14 |        14 | 2026-04-05       | Completed |
|             15 |         15 |        15 | 2026-04-10       | Completed |
|             16 |         16 |        16 | 2026-04-15       | Cancelled |
|             17 |         17 |        17 | 2026-04-20       | Completed |
|             18 |         18 |        18 | 2026-05-01       | Scheduled |
|             19 |         19 |        19 | 2026-05-05       | Completed |
|             20 |         20 |        20 | 2026-05-10       | Completed |
|             21 |         21 |        21 | 2026-05-15       | Scheduled |
|             22 |         22 |        22 | 2026-05-20       | Completed |
|             23 |         23 |        23 | 2026-06-01       | Completed |
|             24 |         24 |        24 | 2026-06-05       | Scheduled |
|             25 |         25 |        25 | 2026-06-10       | Completed |
|             26 |         26 |        26 | 2026-06-15       | Completed |
|             27 |         27 |        27 | 2026-06-20       | Scheduled |
|             28 |         28 |        28 | 2026-07-01       | Completed |
|             29 |         29 |        29 | 2026-07-05       | Completed |
|             30 |         30 |        30 | 2026-07-10       | Scheduled |
|             31 |          1 |        31 | 2026-07-15       | Completed |
|             32 |          2 |        32 | 2026-07-20       | Completed |
|             33 |          3 |        33 | 2026-08-01       | Scheduled |
|             34 |          4 |        34 | 2026-08-05       | Completed |
|             35 |          5 |        35 | 2026-08-10       | Completed |
|             36 |          6 |        36 | 2026-08-15       | Scheduled |
|             37 |          7 |        37 | 2026-08-20       | Completed |
|             38 |          8 |        38 | 2026-08-25       | Completed |
|             39 |          9 |        39 | 2026-09-01       | Scheduled |
|             40 |         10 |        40 | 2026-09-05       | Completed |
+----------------+------------+-----------+------------------+-----------+

SELECT COUNT(*) AS total_appointments
FROM Appointments;

+--------------------+
| total_appointments |
+--------------------+
|                 40 |
+--------------------+

-- CREATE THE MEDICAL RECORDS TABLE 

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

INSERT INTO Medical_Records
(record_id,patient_id,doctor_id,diagnosis,prescription,treatment_date,admission_date,discharge_date)
VALUES
(1,1,1,'Heart Checkup','Medicine A','2026-01-10','2026-01-09','2026-01-10'),
(2,2,2,'Migraine','Medicine B','2026-01-15','2026-01-14','2026-01-15'),
(3,3,3,'Skin Allergy','Cream A','2026-01-20','2026-01-19','2026-01-20'),
(4,4,4,'Fever','Medicine C','2026-02-05','2026-02-04','2026-02-05'),
(5,5,5,'Fracture','Medicine D','2026-02-10','2026-02-08','2026-02-10'),
(6,6,6,'Checkup','Medicine E','2026-02-15','2026-02-14','2026-02-15'),
(7,7,7,'Heart Pain','Medicine F','2026-02-20','2026-02-18','2026-02-20'),
(8,8,8,'Headache','Medicine G','2026-03-01','2026-02-28','2026-03-01'),
(9,9,9,'Acne','Cream B','2026-03-05','2026-03-04','2026-03-05'),
(10,10,10,'Cold','Medicine H','2026-03-10','2026-03-09','2026-03-10'),
(11,11,11,'Back Pain','Medicine I','2026-03-15','2026-03-14','2026-03-15'),
(12,12,12,'Routine Checkup','Medicine J','2026-03-20','2026-03-19','2026-03-20'),
(13,13,13,'Cardiac Test','Medicine K','2026-04-01','2026-03-30','2026-04-01'),
(14,14,14,'Migraine','Medicine L','2026-04-05','2026-04-04','2026-04-05'),
(15,15,15,'Skin Infection','Cream C','2026-04-10','2026-04-09','2026-04-10'),
(16,16,16,'Fever','Medicine M','2026-04-15','2026-04-14','2026-04-15'),
(17,17,17,'Knee Pain','Medicine N','2026-04-20','2026-04-18','2026-04-20'),
(18,18,18,'Routine Checkup','Medicine O','2026-05-01','2026-04-30','2026-05-01'),
(19,19,19,'Heart Disease','Medicine P','2026-05-05','2026-05-02','2026-05-05'),
(20,20,20,'Neurological Test','Medicine Q','2026-05-10','2026-05-08','2026-05-10'),
(21,21,21,'Skin Allergy','Cream D','2026-05-15','2026-05-14','2026-05-15'),
(22,22,22,'Child Fever','Medicine R','2026-05-20','2026-05-19','2026-05-20'),
(23,23,23,'Bone Pain','Medicine S','2026-06-01','2026-05-30','2026-06-01'),
(24,24,24,'Checkup','Medicine T','2026-06-05','2026-06-04','2026-06-05'),
(25,25,25,'Heart Checkup','Medicine U','2026-06-10','2026-06-08','2026-06-10'),
(26,26,26,'Headache','Medicine V','2026-06-15','2026-06-14','2026-06-15'),
(27,27,27,'Acne','Cream E','2026-06-20','2026-06-19','2026-06-20'),
(28,28,28,'Cold','Medicine W','2026-07-01','2026-06-30','2026-07-01'),
(29,29,29,'Fracture','Medicine X','2026-07-05','2026-07-03','2026-07-05'),
(30,30,30,'Routine Checkup','Medicine Y','2026-07-10','2026-07-09','2026-07-10'),
(31,1,31,'Heart Test','Medicine Z','2026-07-15','2026-07-14','2026-07-15'),
(32,2,32,'Migraine','Medicine AA','2026-07-20','2026-07-19','2026-07-20'),
(33,3,33,'Skin Allergy','Cream F','2026-08-01','2026-07-31','2026-08-01'),
(34,4,34,'Fever','Medicine AB','2026-08-05','2026-08-04','2026-08-05'),
(35,5,35,'Back Pain','Medicine AC','2026-08-10','2026-08-09','2026-08-10'),
(36,6,36,'Routine Checkup','Medicine AD','2026-08-15','2026-08-14','2026-08-15'),
(37,7,37,'Heart Checkup','Medicine AE','2026-08-20','2026-08-19','2026-08-20'),
(38,8,38,'Headache','Medicine AF','2026-08-25','2026-08-24','2026-08-25'),
(39,9,39,'Skin Infection','Cream G','2026-09-01','2026-08-31','2026-09-01'),
(40,10,40,'Child Checkup','Medicine AG','2026-09-05','2026-09-04','2026-09-05');

SELECT * FROM Medical Records;

+-----------+------------+-----------+-------------------+--------------+----------------+----------------+----------------+
| record_id | patient_id | doctor_id | diagnosis         | prescription | treatment_date | admission_date | discharge_date |
+-----------+------------+-----------+-------------------+--------------+----------------+----------------+----------------+
|         1 |          1 |         1 | Heart Checkup     | Medicine A   | 2026-01-10     | 2026-01-09     | 2026-01-10     |
|         2 |          2 |         2 | Migraine          | Medicine B   | 2026-01-15     | 2026-01-14     | 2026-01-15     |
|         3 |          3 |         3 | Skin Allergy      | Cream A      | 2026-01-20     | 2026-01-19     | 2026-01-20     |
|         4 |          4 |         4 | Fever             | Medicine C   | 2026-02-05     | 2026-02-04     | 2026-02-05     |
|         5 |          5 |         5 | Fracture          | Medicine D   | 2026-02-10     | 2026-02-08     | 2026-02-10     |
|         6 |          6 |         6 | Checkup           | Medicine E   | 2026-02-15     | 2026-02-14     | 2026-02-15     |
|         7 |          7 |         7 | Heart Pain        | Medicine F   | 2026-02-20     | 2026-02-18     | 2026-02-20     |
|         8 |          8 |         8 | Headache          | Medicine G   | 2026-03-01     | 2026-02-28     | 2026-03-01     |
|         9 |          9 |         9 | Acne              | Cream B      | 2026-03-05     | 2026-03-04     | 2026-03-05     |
|        10 |         10 |        10 | Cold              | Medicine H   | 2026-03-10     | 2026-03-09     | 2026-03-10     |
|        11 |         11 |        11 | Back Pain         | Medicine I   | 2026-03-15     | 2026-03-14     | 2026-03-15     |
|        12 |         12 |        12 | Routine Checkup   | Medicine J   | 2026-03-20     | 2026-03-19     | 2026-03-20     |
|        13 |         13 |        13 | Cardiac Test      | Medicine K   | 2026-04-01     | 2026-03-30     | 2026-04-01     |
|        14 |         14 |        14 | Migraine          | Medicine L   | 2026-04-05     | 2026-04-04     | 2026-04-05     |
|        15 |         15 |        15 | Skin Infection    | Cream C      | 2026-04-10     | 2026-04-09     | 2026-04-10     |
|        16 |         16 |        16 | Fever             | Medicine M   | 2026-04-15     | 2026-04-14     | 2026-04-15     |
|        17 |         17 |        17 | Knee Pain         | Medicine N   | 2026-04-20     | 2026-04-18     | 2026-04-20     |
|        18 |         18 |        18 | Routine Checkup   | Medicine O   | 2026-05-01     | 2026-04-30     | 2026-05-01     |
|        19 |         19 |        19 | Heart Disease     | Medicine P   | 2026-05-05     | 2026-05-02     | 2026-05-05     |
|        20 |         20 |        20 | Neurological Test | Medicine Q   | 2026-05-10     | 2026-05-08     | 2026-05-10     |
|        21 |         21 |        21 | Skin Allergy      | Cream D      | 2026-05-15     | 2026-05-14     | 2026-05-15     |
|        22 |         22 |        22 | Child Fever       | Medicine R   | 2026-05-20     | 2026-05-19     | 2026-05-20     |
|        23 |         23 |        23 | Bone Pain         | Medicine S   | 2026-06-01     | 2026-05-30     | 2026-06-01     |
|        24 |         24 |        24 | Checkup           | Medicine T   | 2026-06-05     | 2026-06-04     | 2026-06-05     |
|        25 |         25 |        25 | Heart Checkup     | Medicine U   | 2026-06-10     | 2026-06-08     | 2026-06-10     |
|        26 |         26 |        26 | Headache          | Medicine V   | 2026-06-15     | 2026-06-14     | 2026-06-15     |
|        27 |         27 |        27 | Acne              | Cream E      | 2026-06-20     | 2026-06-19     | 2026-06-20     |
|        28 |         28 |        28 | Cold              | Medicine W   | 2026-07-01     | 2026-06-30     | 2026-07-01     |
|        29 |         29 |        29 | Fracture          | Medicine X   | 2026-07-05     | 2026-07-03     | 2026-07-05     |
|        30 |         30 |        30 | Routine Checkup   | Medicine Y   | 2026-07-10     | 2026-07-09     | 2026-07-10     |
|        31 |          1 |        31 | Heart Test        | Medicine Z   | 2026-07-15     | 2026-07-14     | 2026-07-15     |
|        32 |          2 |        32 | Migraine          | Medicine AA  | 2026-07-20     | 2026-07-19     | 2026-07-20     |
|        33 |          3 |        33 | Skin Allergy      | Cream F      | 2026-08-01     | 2026-07-31     | 2026-08-01     |
|        34 |          4 |        34 | Fever             | Medicine AB  | 2026-08-05     | 2026-08-04     | 2026-08-05     |
|        35 |          5 |        35 | Back Pain         | Medicine AC  | 2026-08-10     | 2026-08-09     | 2026-08-10     |
|        36 |          6 |        36 | Routine Checkup   | Medicine AD  | 2026-08-15     | 2026-08-14     | 2026-08-15     |
|        37 |          7 |        37 | Heart Checkup     | Medicine AE  | 2026-08-20     | 2026-08-19     | 2026-08-20     |
|        38 |          8 |        38 | Headache          | Medicine AF  | 2026-08-25     | 2026-08-24     | 2026-08-25     |
|        39 |          9 |        39 | Skin Infection    | Cream G      | 2026-09-01     | 2026-08-31     | 2026-09-01     |
|        40 |         10 |        40 | Child Checkup     | Medicine AG  | 2026-09-05     | 2026-09-04     | 2026-09-05     |
+-----------+------------+-----------+-------------------+--------------+----------------+----------------+----------------+

SELECT COUNT(*) AS total_records
FROM Medical_Records;

+---------------+
| total_records |
+---------------+
|            40 |
+---------------+

-- CREATE THE BILLING TABLE :-

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

INSERT INTO Billing
(invoice_id,patient_id,appointment_id,amount,payment_status,payment_date)
VALUES
(1,1,1,1500,'Paid','2026-01-10'),
(2,2,2,1800,'Paid','2026-01-15'),
(3,3,3,1200,'Pending',NULL),
(4,4,4,1000,'Paid','2026-02-05'),
(5,5,5,1600,'Cancelled',NULL),
(6,6,6,1400,'Paid','2026-02-15'),
(7,7,7,1700,'Pending',NULL),
(8,8,8,1900,'Paid','2026-03-01'),
(9,9,9,1300,'Paid','2026-03-05'),
(10,10,10,1100,'Pending',NULL),
(11,11,11,1500,'Paid','2026-03-15'),
(12,12,12,1250,'Paid','2026-03-20'),
(13,13,13,1600,'Pending',NULL),
(14,14,14,1750,'Paid','2026-04-05'),
(15,15,15,1150,'Paid','2026-04-10'),
(16,16,16,1050,'Cancelled',NULL),
(17,17,17,1450,'Paid','2026-04-20'),
(18,18,18,1350,'Pending',NULL),
(19,19,19,2000,'Paid','2026-05-05'),
(20,20,20,1650,'Paid','2026-05-10'),
(21,21,21,1250,'Pending',NULL),
(22,22,22,1000,'Paid','2026-05-20'),
(23,23,23,1550,'Paid','2026-06-01'),
(24,24,24,1450,'Pending',NULL),
(25,25,25,1850,'Paid','2026-06-10'),
(26,26,26,1950,'Paid','2026-06-15'),
(27,27,27,1100,'Pending',NULL),
(28,28,28,950,'Paid','2026-07-01'),
(29,29,29,1500,'Paid','2026-07-05'),
(30,30,30,1300,'Pending',NULL),
(31,1,31,1750,'Paid','2026-07-15'),
(32,2,32,1600,'Paid','2026-07-20'),
(33,3,33,1200,'Pending',NULL),
(34,4,34,1000,'Paid','2026-08-05'),
(35,5,35,1650,'Paid','2026-08-10'),
(36,6,36,1400,'Pending',NULL),
(37,7,37,1550,'Paid','2026-08-20'),
(38,8,38,1800,'Paid','2026-08-25'),
(39,9,39,1350,'Pending',NULL),
(40,10,40,1050,'Paid','2026-09-05');

SELECT * FROM billing;

+------------+------------+----------------+---------+----------------+--------------+
| invoice_id | patient_id | appointment_id | amount  | payment_status | payment_date |
+------------+------------+----------------+---------+----------------+--------------+
|          1 |          1 |              1 | 1500.00 | Paid           | 2026-01-10   |
|          2 |          2 |              2 | 1800.00 | Paid           | 2026-01-15   |
|          3 |          3 |              3 | 1200.00 | Pending        | NULL         |
|          4 |          4 |              4 | 1000.00 | Paid           | 2026-02-05   |
|          5 |          5 |              5 | 1600.00 | Cancelled      | NULL         |
|          6 |          6 |              6 | 1400.00 | Paid           | 2026-02-15   |
|          7 |          7 |              7 | 1700.00 | Pending        | NULL         |
|          8 |          8 |              8 | 1900.00 | Paid           | 2026-03-01   |
|          9 |          9 |              9 | 1300.00 | Paid           | 2026-03-05   |
|         10 |         10 |             10 | 1100.00 | Pending        | NULL         |
|         11 |         11 |             11 | 1500.00 | Paid           | 2026-03-15   |
|         12 |         12 |             12 | 1250.00 | Paid           | 2026-03-20   |
|         13 |         13 |             13 | 1600.00 | Pending        | NULL         |
|         14 |         14 |             14 | 1750.00 | Paid           | 2026-04-05   |
|         15 |         15 |             15 | 1150.00 | Paid           | 2026-04-10   |
|         16 |         16 |             16 | 1050.00 | Cancelled      | NULL         |
|         17 |         17 |             17 | 1450.00 | Paid           | 2026-04-20   |
|         18 |         18 |             18 | 1350.00 | Pending        | NULL         |
|         19 |         19 |             19 | 2000.00 | Paid           | 2026-05-05   |
|         20 |         20 |             20 | 1650.00 | Paid           | 2026-05-10   |
|         21 |         21 |             21 | 1250.00 | Pending        | NULL         |
|         22 |         22 |             22 | 1000.00 | Paid           | 2026-05-20   |
|         23 |         23 |             23 | 1550.00 | Paid           | 2026-06-01   |
|         24 |         24 |             24 | 1450.00 | Pending        | NULL         |
|         25 |         25 |             25 | 1850.00 | Paid           | 2026-06-10   |
|         26 |         26 |             26 | 1950.00 | Paid           | 2026-06-15   |
|         27 |         27 |             27 | 1100.00 | Pending        | NULL         |
|         28 |         28 |             28 |  950.00 | Paid           | 2026-07-01   |
|         29 |         29 |             29 | 1500.00 | Paid           | 2026-07-05   |
|         30 |         30 |             30 | 1300.00 | Pending        | NULL         |
|         31 |          1 |             31 | 1750.00 | Paid           | 2026-07-15   |
|         32 |          2 |             32 | 1600.00 | Paid           | 2026-07-20   |
|         33 |          3 |             33 | 1200.00 | Pending        | NULL         |
|         34 |          4 |             34 | 1000.00 | Paid           | 2026-08-05   |
|         35 |          5 |             35 | 1650.00 | Paid           | 2026-08-10   |
|         36 |          6 |             36 | 1400.00 | Pending        | NULL         |
|         37 |          7 |             37 | 1550.00 | Paid           | 2026-08-20   |
|         38 |          8 |             38 | 1800.00 | Paid           | 2026-08-25   |
|         39 |          9 |             39 | 1350.00 | Pending        | NULL         |
|         40 |         10 |             40 | 1050.00 | Paid           | 2026-09-05   |
+------------+------------+----------------+---------+----------------+--------------+

SELECT COUNT(*) AS total_bills
FROM Billing;

+-------------+
| total_bills |
+-------------+
|          40 |
+-------------+

-- CREATE THE DEPARTMENTS TABLE :-

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments
(department_id, department_name)
VALUES
(1,'Cardiology'),
(2,'Neurology'),
(3,'Dermatology'),
(4,'Pediatrics'),
(5,'Orthopedics'),
(6,'Gynecology'),
(7,'General Medicine'),
(8,'ENT'),
(9,'Ophthalmology'),
(10,'Dentistry'),
(11,'Psychiatry'),
(12,'Radiology'),
(13,'Oncology'),
(14,'Urology'),
(15,'Nephrology'),
(16,'Gastroenterology'),
(17,'Pulmonology'),
(18,'Endocrinology'),
(19,'Rheumatology'),
(20,'Hematology'),
(21,'Emergency Medicine'),
(22,'Pathology'),
(23,'Anesthesiology'),
(24,'Plastic Surgery'),
(25,'Neurosurgery'),
(26,'Cardiac Surgery'),
(27,'General Surgery'),
(28,'Vascular Surgery'),
(29,'Physiotherapy'),
(30,'Nutrition'),
(31,'Infectious Disease'),
(32,'Immunology'),
(33,'Geriatrics'),
(34,'Neonatology'),
(35,'Radiotherapy'),
(36,'Critical Care'),
(37,'Family Medicine'),
(38,'Sports Medicine'),
(39,'Pain Management'),
(40,'Rehabilitation');

SELECT * FROM Departments;

+---------------+--------------------+
| department_id | department_name    |
+---------------+--------------------+
|             1 | Cardiology         |
|             2 | Neurology          |
|             3 | Dermatology        |
|             4 | Pediatrics         |
|             5 | Orthopedics        |
|             6 | Gynecology         |
|             7 | General Medicine   |
|             8 | ENT                |
|             9 | Ophthalmology      |
|            10 | Dentistry          |
|            11 | Psychiatry         |
|            12 | Radiology          |
|            13 | Oncology           |
|            14 | Urology            |
|            15 | Nephrology         |
|            16 | Gastroenterology   |
|            17 | Pulmonology        |
|            18 | Endocrinology      |
|            19 | Rheumatology       |
|            20 | Hematology         |
|            21 | Emergency Medicine |
|            22 | Pathology          |
|            23 | Anesthesiology     |
|            24 | Plastic Surgery    |
|            25 | Neurosurgery       |
|            26 | Cardiac Surgery    |
|            27 | General Surgery    |
|            28 | Vascular Surgery   |
|            29 | Physiotherapy      |
|            30 | Nutrition          |
|            31 | Infectious Disease |
|            32 | Immunology         |
|            33 | Geriatrics         |
|            34 | Neonatology        |
|            35 | Radiotherapy       |
|            36 | Critical Care      |
|            37 | Family Medicine    |
|            38 | Sports Medicine    |
|            39 | Pain Management    |
|            40 | Rehabilitation     |
+---------------+--------------------+

SELECT COUNT(*) AS total_departments
FROM Departments;

+-------------------+
| total_departments |
+-------------------+
|                40 |
+-------------------+

-- CREATE THE DOCTOR_DEPARTMENT MAPPING TABLE :-

CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,
    
    PRIMARY KEY (doctor_id, department_id),
    
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

INSERT INTO Doctor_Department
(doctor_id, department_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,1),
(8,2),
(9,3),
(10,4),
(11,5),
(12,6),
(13,1),
(14,2),
(15,3),
(16,4),
(17,5),
(18,6),
(19,1),
(20,2),
(21,3),
(22,4),
(23,5),
(24,6),
(25,1),
(26,2),
(27,3),
(28,4),
(29,5),
(30,6),
(31,1),
(32,2),
(33,3),
(34,4),
(35,5),
(36,6),
(37,1),
(38,2),
(39,3),
(40,4);

SELECT * FROM Doctor_Department;

+-----------+---------------+
| doctor_id | department_id |
+-----------+---------------+
|         1 |             1 |
|         7 |             1 |
|        13 |             1 |
|        19 |             1 |
|        25 |             1 |
|        31 |             1 |
|        37 |             1 |
|         2 |             2 |
|         8 |             2 |
|        14 |             2 |
|        20 |             2 |
|        26 |             2 |
|        32 |             2 |
|        38 |             2 |
|         3 |             3 |
|         9 |             3 |
|        15 |             3 |
|        21 |             3 |
|        27 |             3 |
|        33 |             3 |
|        39 |             3 |
|         4 |             4 |
|        10 |             4 |
|        16 |             4 |
|        22 |             4 |
|        28 |             4 |
|        34 |             4 |
|        40 |             4 |
|         5 |             5 |
|        11 |             5 |
|        17 |             5 |
|        23 |             5 |
|        29 |             5 |
|        35 |             5 |
|         6 |             6 |
|        12 |             6 |
|        18 |             6 |
|        24 |             6 |
|        30 |             6 |
|        36 |             6 |
+-----------+---------------+

SELECT COUNT(*) AS total_appointments
FROM Appointments;

+--------------------+
| total_appointments |
+--------------------+
|                 40 |
+--------------------+

==============================================================================================================================================================

TASK-1. Implement CRUD Operations (Low Weightage):-

=> Insert new patients, doctors, and appointments into the database.

INSERT INTO Patients
(patient_id,name,dob,gender,phone_number,email,address,registration_date)
VALUES
(41,'Test Patient','2000-01-01','Male','9999999999',
'test@gmail.com','Surat','2026-09-11');

Query OK, 1 row affected 

=> Update patient details when they change addresses.

UPDATE Patients
SET address = 'Ahmedabad'
WHERE patient_id = 1;

SELECT * FROM Patients
WHERE patient_id = 1;

+------------+-------------+------------+--------+--------------+-----------------+-----------+-------------------+
| patient_id | name        | dob        | gender | phone_number | email           | address   | registration_date |
+------------+-------------+------------+--------+--------------+-----------------+-----------+-------------------+
|          1 | Aarav Patel | 1995-01-15 | Male   | 9876500001   | aarav@gmail.com | Ahmedabad | 2026-01-05        |
+------------+-------------+------------+--------+--------------+-----------------+-----------+-------------------+

=> Delete cancelled appointments older than 6 months.

DELETE FROM Appointments
WHERE status = 'Cancelled'
AND appointment_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

Query OK, 0 rows affected 

======================================================================================================================================================

TASK-2 Use SQL Clauses (WHERE, HAVING, LIMIT) (Low Weightage)

=> Find all patients registered in the last year.

SELECT *
FROM Patients
WHERE registration_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
| patient_id | name         | dob        | gender | phone_number | email            | address   | registration_date |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
|          1 | Aarav Patel  | 1995-01-15 | Male   | 9876500001   | aarav@gmail.com  | Ahmedabad | 2026-01-05        |
|          2 | Aditi Shah   | 1998-02-20 | Female | 9876500002   | aditi@gmail.com  | Ahmedabad | 2026-01-10        |
|          3 | Rahul Desai  | 1992-03-12 | Male   | 9876500003   | rahul@gmail.com  | Vadodara  | 2026-01-15        |
|          4 | Priya Mehta  | 1997-04-18 | Female | 9876500004   | priya@gmail.com  | Surat     | 2026-02-01        |
|          5 | Rohan Patel  | 1990-05-25 | Male   | 9876500005   | rohan@gmail.com  | Rajkot    | 2026-02-05        |
|          6 | Neha Shah    | 1996-06-10 | Female | 9876500006   | neha@gmail.com   | Surat     | 2026-02-10        |
|          7 | Karan Joshi  | 1993-07-22 | Male   | 9876500007   | karan@gmail.com  | Ahmedabad | 2026-02-15        |
|          8 | Kavya Desai  | 1999-08-14 | Female | 9876500008   | kavya@gmail.com  | Vadodara  | 2026-02-20        |
|          9 | Vivek Mehta  | 1988-09-30 | Male   | 9876500009   | vivek@gmail.com  | Surat     | 2026-03-01        |
|         10 | Isha Patel   | 2000-10-05 | Female | 9876500010   | isha@gmail.com   | Rajkot    | 2026-03-05        |
|         11 | Arjun Shah   | 1994-11-11 | Male   | 9876500011   | arjun@gmail.com  | Surat     | 2026-03-10        |
|         12 | Sneha Patel  | 1998-12-19 | Female | 9876500012   | sneha@gmail.com  | Ahmedabad | 2026-03-15        |
|         13 | Dev Mehta    | 1991-01-28 | Male   | 9876500013   | dev@gmail.com    | Vadodara  | 2026-03-20        |
|         14 | Riya Shah    | 1997-02-16 | Female | 9876500014   | riya@gmail.com   | Surat     | 2026-04-01        |
|         15 | Manav Patel  | 1995-03-21 | Male   | 9876500015   | manav@gmail.com  | Rajkot    | 2026-04-05        |
|         16 | Ananya Desai | 1999-04-09 | Female | 9876500016   | ananya@gmail.com | Surat     | 2026-04-10        |
|         17 | Yash Mehta   | 1990-05-17 | Male   | 9876500017   | yash@gmail.com   | Ahmedabad | 2026-04-15        |
|         18 | Diya Patel   | 2001-06-25 | Female | 9876500018   | diya@gmail.com   | Vadodara  | 2026-04-20        |
|         19 | Harsh Shah   | 1993-07-13 | Male   | 9876500019   | harsh@gmail.com  | Surat     | 2026-05-01        |
|         20 | Mira Desai   | 1996-08-23 | Female | 9876500020   | mira@gmail.com   | Rajkot    | 2026-05-05        |
|         21 | Aditya Patel | 1992-09-18 | Male   | 9876500021   | aditya@gmail.com | Surat     | 2026-05-10        |
|         22 | Pooja Shah   | 1995-10-27 | Female | 9876500022   | pooja@gmail.com  | Ahmedabad | 2026-05-15        |
|         23 | Nikhil Mehta | 1989-11-06 | Male   | 9876500023   | nikhil@gmail.com | Vadodara  | 2026-05-20        |
|         24 | Tanvi Patel  | 1998-12-15 | Female | 9876500024   | tanvi@gmail.com  | Surat     | 2026-06-01        |
|         25 | Dhruv Shah   | 1994-01-20 | Male   | 9876500025   | dhruv@gmail.com  | Rajkot    | 2026-06-05        |
|         26 | Khushi Desai | 2000-02-11 | Female | 9876500026   | khushi@gmail.com | Surat     | 2026-06-10        |
|         27 | Jay Mehta    | 1991-03-29 | Male   | 9876500027   | jay@gmail.com    | Ahmedabad | 2026-06-15        |
|         28 | Mahi Patel   | 1997-04-07 | Female | 9876500028   | mahi@gmail.com   | Vadodara  | 2026-06-20        |
|         29 | Om Shah      | 1993-05-19 | Male   | 9876500029   | om@gmail.com     | Surat     | 2026-07-01        |
|         30 | Avni Desai   | 1999-06-28 | Female | 9876500030   | avni@gmail.com   | Rajkot    | 2026-07-05        |
|         31 | Sahil Patel  | 1990-07-16 | Male   | 9876500031   | sahil@gmail.com  | Surat     | 2026-07-10        |
|         32 | Jiya Shah    | 2001-08-24 | Female | 9876500032   | jiya@gmail.com   | Ahmedabad | 2026-07-15        |
|         33 | Parth Mehta  | 1995-09-12 | Male   | 9876500033   | parth@gmail.com  | Vadodara  | 2026-07-20        |
|         34 | Nisha Patel  | 1996-10-21 | Female | 9876500034   | nisha@gmail.com  | Surat     | 2026-08-01        |
|         35 | Krish Shah   | 1992-11-17 | Male   | 9876500035   | krish@gmail.com  | Rajkot    | 2026-08-05        |
|         36 | Simran Desai | 1998-12-03 | Female | 9876500036   | simran@gmail.com | Surat     | 2026-08-10        |
|         37 | Rudra Patel  | 1994-01-14 | Male   | 9876500037   | rudra@gmail.com  | Ahmedabad | 2026-08-15        |
|         38 | Ayesha Shah  | 1997-02-26 | Female | 9876500038   | ayesha@gmail.com | Vadodara  | 2026-08-20        |
|         39 | Meet Mehta   | 1991-03-08 | Male   | 9876500039   | meet@gmail.com   | Surat     | 2026-08-25        |
|         40 | Sara Patel   | 2000-04-19 | Female | 9876500040   | sara@gmail.com   | Rajkot    | 2026-09-01        |
|         41 | Test Patient | 2000-01-01 | Male   | 9999999999   | test@gmail.com   | Surat     | 2026-09-11        |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+

=> Get the top 5 highest-paying patients.

SELECT 
    p.patient_id,
    p.name,
    SUM(b.amount) AS total_spent
FROM Patients p
JOIN Billing b
ON p.patient_id = b.patient_id
GROUP BY p.patient_id, p.name
ORDER BY total_spent DESC
LIMIT 5;

+------------+-------------+-------------+
| patient_id | name        | total_spent |
+------------+-------------+-------------+
|          8 | Kavya Desai |     3700.00 |
|          2 | Aditi Shah  |     3400.00 |
|          1 | Aarav Patel |     3250.00 |
|          7 | Karan Joshi |     3250.00 |
|          6 | Neha Shah   |     2800.00 |
+------------+-------------+-------------+

=> Retrieve doctors who charge more than 21,000.

SELECT *
FROM Doctors
WHERE consultation_fee > 1000;

+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
| doctor_id | name             | specialization | phone_number | email               | available_days | consultation_fee | experience_years |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
|         1 | Dr. Raj Patel    | Cardiology     | 9000000001   | raj@hospital.com    | Mon-Fri        |          1500.00 |               18 |
|         2 | Dr. Priya Shah   | Neurology      | 9000000002   | priya@hospital.com  | Mon-Wed        |          1800.00 |               12 |
|         3 | Dr. Amit Mehta   | Dermatology    | 9000000003   | amit@hospital.com   | Tue-Thu        |          1200.00 |                8 |
|         5 | Dr. Kunal Patel  | Orthopedics    | 9000000005   | kunal@hospital.com  | Mon-Sat        |          1600.00 |               20 |
|         6 | Dr. Rina Shah    | Gynecology     | 9000000006   | rina@hospital.com   | Tue-Sat        |          1400.00 |               10 |
|         7 | Dr. Vijay Mehta  | Cardiology     | 9000000007   | vijay@hospital.com  | Mon-Fri        |          1700.00 |               22 |
|         8 | Dr. Anjali Patel | Neurology      | 9000000008   | anjali@hospital.com | Mon-Thu        |          1900.00 |               17 |
|         9 | Dr. Rahul Shah   | Dermatology    | 9000000009   | rahul@hospital.com  | Tue-Fri        |          1300.00 |                6 |
|        10 | Dr. Meera Desai  | Pediatrics     | 9000000010   | meera@hospital.com  | Mon-Sat        |          1100.00 |               14 |
|        11 | Dr. Suresh Patel | Orthopedics    | 9000000011   | suresh@hospital.com | Mon-Fri        |          1500.00 |               19 |
|        12 | Dr. Kavita Shah  | Gynecology     | 9000000012   | kavita@hospital.com | Tue-Sat        |          1250.00 |                7 |
|        13 | Dr. Nitin Mehta  | Cardiology     | 9000000013   | nitin@hospital.com  | Mon-Fri        |          1600.00 |               21 |
|        14 | Dr. Pooja Desai  | Neurology      | 9000000014   | pooja@hospital.com  | Mon-Thu        |          1750.00 |               11 |
|        15 | Dr. Hardik Patel | Dermatology    | 9000000015   | hardik@hospital.com | Tue-Fri        |          1150.00 |                4 |
|        16 | Dr. Sneha Shah   | Pediatrics     | 9000000016   | sneha@hospital.com  | Mon-Sat        |          1050.00 |               13 |
|        17 | Dr. Jay Mehta    | Orthopedics    | 9000000017   | jay@hospital.com    | Mon-Fri        |          1450.00 |               16 |
|        18 | Dr. Asha Patel   | Gynecology     | 9000000018   | asha@hospital.com   | Tue-Sat        |          1350.00 |                9 |
|        19 | Dr. Rakesh Shah  | Cardiology     | 9000000019   | rakesh@hospital.com | Mon-Fri        |          2000.00 |               25 |
|        20 | Dr. Divya Desai  | Neurology      | 9000000020   | divya@hospital.com  | Mon-Thu        |          1650.00 |               15 |
|        21 | Dr. Mohit Patel  | Dermatology    | 9000000021   | mohit@hospital.com  | Tue-Fri        |          1250.00 |                5 |
|        23 | Dr. Chirag Mehta | Orthopedics    | 9000000023   | chirag@hospital.com | Mon-Fri        |          1550.00 |               23 |
|        24 | Dr. Komal Patel  | Gynecology     | 9000000024   | komal@hospital.com  | Tue-Sat        |          1450.00 |               12 |
|        25 | Dr. Sanjay Shah  | Cardiology     | 9000000025   | sanjay@hospital.com | Mon-Fri        |          1850.00 |               20 |
|        26 | Dr. Ritu Desai   | Neurology      | 9000000026   | ritu@hospital.com   | Mon-Thu        |          1950.00 |               16 |
|        27 | Dr. Akash Patel  | Dermatology    | 9000000027   | akash@hospital.com  | Tue-Fri        |          1100.00 |                3 |
|        29 | Dr. Deep Mehta   | Orthopedics    | 9000000029   | deep@hospital.com   | Mon-Fri        |          1500.00 |               17 |
|        30 | Dr. Mona Patel   | Gynecology     | 9000000030   | mona@hospital.com   | Tue-Sat        |          1300.00 |               11 |
|        31 | Dr. Rajesh Shah  | Cardiology     | 9000000031   | rajesh@hospital.com | Mon-Fri        |          1750.00 |               19 |
|        32 | Dr. Seema Desai  | Neurology      | 9000000032   | seema@hospital.com  | Mon-Thu        |          1600.00 |               14 |
|        33 | Dr. Manish Patel | Dermatology    | 9000000033   | manish@hospital.com | Tue-Fri        |          1200.00 |                9 |
|        35 | Dr. Hemant Mehta | Orthopedics    | 9000000035   | hemant@hospital.com | Mon-Fri        |          1650.00 |               24 |
|        36 | Dr. Reema Patel  | Gynecology     | 9000000036   | reema@hospital.com  | Tue-Sat        |          1400.00 |                8 |
|        37 | Dr. Chetan Shah  | Cardiology     | 9000000037   | chetan@hospital.com | Mon-Fri        |          1550.00 |               13 |
|        38 | Dr. Sonal Desai  | Neurology      | 9000000038   | sonal@hospital.com  | Mon-Thu        |          1800.00 |               21 |
|        39 | Dr. Hitesh Patel | Dermatology    | 9000000039   | hitesh@hospital.com | Tue-Fri        |          1350.00 |               10 |
|        40 | Dr. Rekha Shah   | Pediatrics     | 9000000040   | rekha@hospital.com  | Mon-Sat        |          1050.00 |               15 |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+

=============================================================================================================================================================================

TASK-3. Apply SQL Operators (AND, OR, NOT) (Medium Weightage)

=> Find appointments where Status = 'Scheduled' AND doctor_id = 3.

SELECT *
FROM Appointments
WHERE status = 'Scheduled'
AND doctor_id = 3;

+----------------+------------+-----------+------------------+-----------+
| appointment_id | patient_id | doctor_id | appointment_date | status    |
+----------------+------------+-----------+------------------+-----------+
|              3 |          3 |         3 | 2026-01-20       | Scheduled |
+----------------+------------+-----------+------------------+-----------+

=> Retrieve doctors who specialize in Cardiology OR Neurology.

SELECT *
FROM Doctors
WHERE specialization = 'Cardiology'
OR specialization = 'Neurology';

+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
| doctor_id | name             | specialization | phone_number | email               | available_days | consultation_fee | experience_years |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
|         1 | Dr. Raj Patel    | Cardiology     | 9000000001   | raj@hospital.com    | Mon-Fri        |          1500.00 |               18 |
|         2 | Dr. Priya Shah   | Neurology      | 9000000002   | priya@hospital.com  | Mon-Wed        |          1800.00 |               12 |
|         7 | Dr. Vijay Mehta  | Cardiology     | 9000000007   | vijay@hospital.com  | Mon-Fri        |          1700.00 |               22 |
|         8 | Dr. Anjali Patel | Neurology      | 9000000008   | anjali@hospital.com | Mon-Thu        |          1900.00 |               17 |
|        13 | Dr. Nitin Mehta  | Cardiology     | 9000000013   | nitin@hospital.com  | Mon-Fri        |          1600.00 |               21 |
|        14 | Dr. Pooja Desai  | Neurology      | 9000000014   | pooja@hospital.com  | Mon-Thu        |          1750.00 |               11 |
|        19 | Dr. Rakesh Shah  | Cardiology     | 9000000019   | rakesh@hospital.com | Mon-Fri        |          2000.00 |               25 |
|        20 | Dr. Divya Desai  | Neurology      | 9000000020   | divya@hospital.com  | Mon-Thu        |          1650.00 |               15 |
|        25 | Dr. Sanjay Shah  | Cardiology     | 9000000025   | sanjay@hospital.com | Mon-Fri        |          1850.00 |               20 |
|        26 | Dr. Ritu Desai   | Neurology      | 9000000026   | ritu@hospital.com   | Mon-Thu        |          1950.00 |               16 |
|        31 | Dr. Rajesh Shah  | Cardiology     | 9000000031   | rajesh@hospital.com | Mon-Fri        |          1750.00 |               19 |
|        32 | Dr. Seema Desai  | Neurology      | 9000000032   | seema@hospital.com  | Mon-Thu        |          1600.00 |               14 |
|        37 | Dr. Chetan Shah  | Cardiology     | 9000000037   | chetan@hospital.com | Mon-Fri        |          1550.00 |               13 |
|        38 | Dr. Sonal Desai  | Neurology      | 9000000038   | sonal@hospital.com  | Mon-Thu        |          1800.00 |               21 |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+

=> Get patients who have NOT visited in the past year.

SELECT *
FROM Patients p
WHERE NOT EXISTS (
    SELECT 1
    FROM Appointments a
    WHERE a.patient_id = p.patient_id
    AND a.appointment_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
);

+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
| patient_id | name         | dob        | gender | phone_number | email            | address   | registration_date |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+
|         31 | Sahil Patel  | 1990-07-16 | Male   | 9876500031   | sahil@gmail.com  | Surat     | 2026-07-10        |
|         32 | Jiya Shah    | 2001-08-24 | Female | 9876500032   | jiya@gmail.com   | Ahmedabad | 2026-07-15        |
|         33 | Parth Mehta  | 1995-09-12 | Male   | 9876500033   | parth@gmail.com  | Vadodara  | 2026-07-20        |
|         34 | Nisha Patel  | 1996-10-21 | Female | 9876500034   | nisha@gmail.com  | Surat     | 2026-08-01        |
|         35 | Krish Shah   | 1992-11-17 | Male   | 9876500035   | krish@gmail.com  | Rajkot    | 2026-08-05        |
|         36 | Simran Desai | 1998-12-03 | Female | 9876500036   | simran@gmail.com | Surat     | 2026-08-10        |
|         37 | Rudra Patel  | 1994-01-14 | Male   | 9876500037   | rudra@gmail.com  | Ahmedabad | 2026-08-15        |
|         38 | Ayesha Shah  | 1997-02-26 | Female | 9876500038   | ayesha@gmail.com | Vadodara  | 2026-08-20        |
|         39 | Meet Mehta   | 1991-03-08 | Male   | 9876500039   | meet@gmail.com   | Surat     | 2026-08-25        |
|         40 | Sara Patel   | 2000-04-19 | Female | 9876500040   | sara@gmail.com   | Rajkot    | 2026-09-01        |
|         41 | Test Patient | 2000-01-01 | Male   | 9999999999   | test@gmail.com   | Surat     | 2026-09-11        |
+------------+--------------+------------+--------+--------------+------------------+-----------+-------------------+

====================================================================================================================================

TASK-4. Sorting & Grouping Data (ORDER BY, GROUP BY) (Medium Weightage)

=> List all doctors sorted by specialization.

SELECT *
FROM Doctors
ORDER BY specialization ASC;

+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
| doctor_id | name             | specialization | phone_number | email               | available_days | consultation_fee | experience_years |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+
|         1 | Dr. Raj Patel    | Cardiology     | 9000000001   | raj@hospital.com    | Mon-Fri        |          1500.00 |               18 |
|        13 | Dr. Nitin Mehta  | Cardiology     | 9000000013   | nitin@hospital.com  | Mon-Fri        |          1600.00 |               21 |
|        31 | Dr. Rajesh Shah  | Cardiology     | 9000000031   | rajesh@hospital.com | Mon-Fri        |          1750.00 |               19 |
|        19 | Dr. Rakesh Shah  | Cardiology     | 9000000019   | rakesh@hospital.com | Mon-Fri        |          2000.00 |               25 |
|        25 | Dr. Sanjay Shah  | Cardiology     | 9000000025   | sanjay@hospital.com | Mon-Fri        |          1850.00 |               20 |
|        37 | Dr. Chetan Shah  | Cardiology     | 9000000037   | chetan@hospital.com | Mon-Fri        |          1550.00 |               13 |
|         7 | Dr. Vijay Mehta  | Cardiology     | 9000000007   | vijay@hospital.com  | Mon-Fri        |          1700.00 |               22 |
|        39 | Dr. Hitesh Patel | Dermatology    | 9000000039   | hitesh@hospital.com | Tue-Fri        |          1350.00 |               10 |
|         3 | Dr. Amit Mehta   | Dermatology    | 9000000003   | amit@hospital.com   | Tue-Thu        |          1200.00 |                8 |
|        21 | Dr. Mohit Patel  | Dermatology    | 9000000021   | mohit@hospital.com  | Tue-Fri        |          1250.00 |                5 |
|        27 | Dr. Akash Patel  | Dermatology    | 9000000027   | akash@hospital.com  | Tue-Fri        |          1100.00 |                3 |
|        33 | Dr. Manish Patel | Dermatology    | 9000000033   | manish@hospital.com | Tue-Fri        |          1200.00 |                9 |
|        15 | Dr. Hardik Patel | Dermatology    | 9000000015   | hardik@hospital.com | Tue-Fri        |          1150.00 |                4 |
|         9 | Dr. Rahul Shah   | Dermatology    | 9000000009   | rahul@hospital.com  | Tue-Fri        |          1300.00 |                6 |
|         6 | Dr. Rina Shah    | Gynecology     | 9000000006   | rina@hospital.com   | Tue-Sat        |          1400.00 |               10 |
|        12 | Dr. Kavita Shah  | Gynecology     | 9000000012   | kavita@hospital.com | Tue-Sat        |          1250.00 |                7 |
|        30 | Dr. Mona Patel   | Gynecology     | 9000000030   | mona@hospital.com   | Tue-Sat        |          1300.00 |               11 |
|        18 | Dr. Asha Patel   | Gynecology     | 9000000018   | asha@hospital.com   | Tue-Sat        |          1350.00 |                9 |
|        36 | Dr. Reema Patel  | Gynecology     | 9000000036   | reema@hospital.com  | Tue-Sat        |          1400.00 |                8 |
|        24 | Dr. Komal Patel  | Gynecology     | 9000000024   | komal@hospital.com  | Tue-Sat        |          1450.00 |               12 |
|         2 | Dr. Priya Shah   | Neurology      | 9000000002   | priya@hospital.com  | Mon-Wed        |          1800.00 |               12 |
|         8 | Dr. Anjali Patel | Neurology      | 9000000008   | anjali@hospital.com | Mon-Thu        |          1900.00 |               17 |
|        14 | Dr. Pooja Desai  | Neurology      | 9000000014   | pooja@hospital.com  | Mon-Thu        |          1750.00 |               11 |
|        20 | Dr. Divya Desai  | Neurology      | 9000000020   | divya@hospital.com  | Mon-Thu        |          1650.00 |               15 |
|        26 | Dr. Ritu Desai   | Neurology      | 9000000026   | ritu@hospital.com   | Mon-Thu        |          1950.00 |               16 |
|        32 | Dr. Seema Desai  | Neurology      | 9000000032   | seema@hospital.com  | Mon-Thu        |          1600.00 |               14 |
|        38 | Dr. Sonal Desai  | Neurology      | 9000000038   | sonal@hospital.com  | Mon-Thu        |          1800.00 |               21 |
|         5 | Dr. Kunal Patel  | Orthopedics    | 9000000005   | kunal@hospital.com  | Mon-Sat        |          1600.00 |               20 |
|        11 | Dr. Suresh Patel | Orthopedics    | 9000000011   | suresh@hospital.com | Mon-Fri        |          1500.00 |               19 |
|        29 | Dr. Deep Mehta   | Orthopedics    | 9000000029   | deep@hospital.com   | Mon-Fri        |          1500.00 |               17 |
|        23 | Dr. Chirag Mehta | Orthopedics    | 9000000023   | chirag@hospital.com | Mon-Fri        |          1550.00 |               23 |
|        35 | Dr. Hemant Mehta | Orthopedics    | 9000000035   | hemant@hospital.com | Mon-Fri        |          1650.00 |               24 |
|        17 | Dr. Jay Mehta    | Orthopedics    | 9000000017   | jay@hospital.com    | Mon-Fri        |          1450.00 |               16 |
|         4 | Dr. Neha Desai   | Pediatrics     | 9000000004   | neha@hospital.com   | Mon-Fri        |          1000.00 |               16 |
|        10 | Dr. Meera Desai  | Pediatrics     | 9000000010   | meera@hospital.com  | Mon-Sat        |          1100.00 |               14 |
|        16 | Dr. Sneha Shah   | Pediatrics     | 9000000016   | sneha@hospital.com  | Mon-Sat        |          1050.00 |               13 |
|        22 | Dr. Nisha Shah   | Pediatrics     | 9000000022   | nisha@hospital.com  | Mon-Sat        |          1000.00 |               18 |
|        28 | Dr. Bhavna Shah  | Pediatrics     | 9000000028   | bhavna@hospital.com | Mon-Sat        |           950.00 |                7 |
|        34 | Dr. Alka Shah    | Pediatrics     | 9000000034   | alka@hospital.com   | Mon-Sat        |          1000.00 |                6 |
|        40 | Dr. Rekha Shah   | Pediatrics     | 9000000040   | rekha@hospital.com  | Mon-Sat        |          1050.00 |               15 |
+-----------+------------------+----------------+--------------+---------------------+----------------+------------------+------------------+

=> Display the number of patients assigned to each doctor.

SELECT 
    d.doctor_id,
    d.name,
    COUNT(DISTINCT a.patient_id) AS patient_count
FROM Doctors d
LEFT JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name;

+-----------+------------------+---------------+
| doctor_id | name             | patient_count |
+-----------+------------------+---------------+
|         1 | Dr. Raj Patel    |             1 |
|         2 | Dr. Priya Shah   |             1 |
|         3 | Dr. Amit Mehta   |             1 |
|         4 | Dr. Neha Desai   |             1 |
|         5 | Dr. Kunal Patel  |             0 |
|         6 | Dr. Rina Shah    |             1 |
|         7 | Dr. Vijay Mehta  |             1 |
|         8 | Dr. Anjali Patel |             1 |
|         9 | Dr. Rahul Shah   |             1 |
|        10 | Dr. Meera Desai  |             1 |
|        11 | Dr. Suresh Patel |             1 |
|        12 | Dr. Kavita Shah  |             1 |
|        13 | Dr. Nitin Mehta  |             1 |
|        14 | Dr. Pooja Desai  |             1 |
|        15 | Dr. Hardik Patel |             1 |
|        16 | Dr. Sneha Shah   |             1 |
|        17 | Dr. Jay Mehta    |             1 |
|        18 | Dr. Asha Patel   |             1 |
|        19 | Dr. Rakesh Shah  |             1 |
|        20 | Dr. Divya Desai  |             1 |
|        21 | Dr. Mohit Patel  |             1 |
|        22 | Dr. Nisha Shah   |             1 |
|        23 | Dr. Chirag Mehta |             1 |
|        24 | Dr. Komal Patel  |             1 |
|        25 | Dr. Sanjay Shah  |             1 |
|        26 | Dr. Ritu Desai   |             1 |
|        27 | Dr. Akash Patel  |             1 |
|        28 | Dr. Bhavna Shah  |             1 |
|        29 | Dr. Deep Mehta   |             1 |
|        30 | Dr. Mona Patel   |             1 |
|        31 | Dr. Rajesh Shah  |             1 |
|        32 | Dr. Seema Desai  |             1 |
|        33 | Dr. Manish Patel |             1 |
|        34 | Dr. Alka Shah    |             1 |
|        35 | Dr. Hemant Mehta |             1 |
|        36 | Dr. Reema Patel  |             1 |
|        37 | Dr. Chetan Shah  |             1 |
|        38 | Dr. Sonal Desai  |             1 |
|        39 | Dr. Hitesh Patel |             1 |
|        40 | Dr. Rekha Shah   |             1 |
+-----------+------------------+---------------+

=> Show total revenue generated per department.

SELECT 
    dept.department_name,
    SUM(b.amount) AS total_revenue
FROM Departments dept
JOIN Doctor_Department dd
ON dept.department_id = dd.department_id
JOIN Doctors d
ON dd.doctor_id = d.doctor_id
JOIN Appointments a
ON d.doctor_id = a.doctor_id
JOIN Billing b
ON a.appointment_id = b.appointment_id
GROUP BY dept.department_id, dept.department_name;

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

==================================================================================================================================================================

TASK-5. Use Aggregate Functions (SUM, AVG, MAX, MIN, COUNT) (High Weightage)

=> Find the total revenue collected.

SELECT SUM(amount) AS total_revenue
FROM Billing
WHERE payment_status = 'Paid';

+---------------+
| total_revenue |
+---------------+
|      38850.00 |
+---------------+

=> Identify the most visited doctor.

SELECT 
    d.doctor_id,
    d.name,
    COUNT(a.appointment_id) AS total_visits
FROM Doctors d
JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY total_visits DESC
LIMIT 1;

+-----------+---------------+--------------+
| doctor_id | name          | total_visits |
+-----------+---------------+--------------+
|         1 | Dr. Raj Patel |            1 |
+-----------+---------------+--------------+

=> Calculate the average consultation fee.

SELECT AVG(consultation_fee) AS average_consultation_fee
FROM Doctors;

+--------------------------+
| average_consultation_fee |
+--------------------------+
|              1437.500000 |
+--------------------------+

TASK-6. Establish Primary & Foreign Key Relationships (High Weightage)

=>Ensure medical records are linked to correct patients and doctors.

SHOW CREATE TABLE Medical_Records;

+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table           | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Medical_Records | CREATE TABLE `medical_records` (
  `record_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `prescription` varchar(300) DEFAULT NULL,
  `treatment_date` date DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`),
  CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

SELECT mr.record_id,
       p.name AS patient_name,
       d.name AS doctor_name
FROM Medical_Records mr
JOIN Patients p ON mr.patient_id = p.patient_id
JOIN Doctors d ON mr.doctor_id = d.doctor_id;

+-----------+--------------+------------------+
| record_id | patient_name | doctor_name      |
+-----------+--------------+------------------+
|         1 | Aarav Patel  | Dr. Raj Patel    |
|         2 | Aditi Shah   | Dr. Priya Shah   |
|         3 | Rahul Desai  | Dr. Amit Mehta   |
|         4 | Priya Mehta  | Dr. Neha Desai   |
|         5 | Rohan Patel  | Dr. Kunal Patel  |
|         6 | Neha Shah    | Dr. Rina Shah    |
|         7 | Karan Joshi  | Dr. Vijay Mehta  |
|         8 | Kavya Desai  | Dr. Anjali Patel |
|         9 | Vivek Mehta  | Dr. Rahul Shah   |
|        10 | Isha Patel   | Dr. Meera Desai  |
|        11 | Arjun Shah   | Dr. Suresh Patel |
|        12 | Sneha Patel  | Dr. Kavita Shah  |
|        13 | Dev Mehta    | Dr. Nitin Mehta  |
|        14 | Riya Shah    | Dr. Pooja Desai  |
|        15 | Manav Patel  | Dr. Hardik Patel |
|        16 | Ananya Desai | Dr. Sneha Shah   |
|        17 | Yash Mehta   | Dr. Jay Mehta    |
|        18 | Diya Patel   | Dr. Asha Patel   |
|        19 | Harsh Shah   | Dr. Rakesh Shah  |
|        20 | Mira Desai   | Dr. Divya Desai  |
|        21 | Aditya Patel | Dr. Mohit Patel  |
|        22 | Pooja Shah   | Dr. Nisha Shah   |
|        23 | Nikhil Mehta | Dr. Chirag Mehta |
|        24 | Tanvi Patel  | Dr. Komal Patel  |
|        25 | Dhruv Shah   | Dr. Sanjay Shah  |
|        26 | Khushi Desai | Dr. Ritu Desai   |
|        27 | Jay Mehta    | Dr. Akash Patel  |
|        28 | Mahi Patel   | Dr. Bhavna Shah  |
|        29 | Om Shah      | Dr. Deep Mehta   |
|        30 | Avni Desai   | Dr. Mona Patel   |
|        31 | Aarav Patel  | Dr. Rajesh Shah  |
|        32 | Aditi Shah   | Dr. Seema Desai  |
|        33 | Rahul Desai  | Dr. Manish Patel |
|        34 | Priya Mehta  | Dr. Alka Shah    |
|        35 | Rohan Patel  | Dr. Hemant Mehta |
|        36 | Neha Shah    | Dr. Reema Patel  |
|        37 | Karan Joshi  | Dr. Chetan Shah  |
|        38 | Kavya Desai  | Dr. Sonal Desai  |
|        39 | Vivek Mehta  | Dr. Hitesh Patel |
|        40 | Isha Patel   | Dr. Rekha Shah   |
+-----------+--------------+------------------+

=> Establish relationships between invoices and appointments.

SHOW CREATE TABLE Billing;

+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table   | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Billing | CREATE TABLE `billing` (
  `invoice_id` int NOT NULL,
  `patient_id` int DEFAULT NULL,
  `appointment_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `patient_id` (`patient_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

SELECT b.invoice_id,
       b.appointment_id,
       a.appointment_date
FROM Billing b
JOIN Appointments a
ON b.appointment_id = a.appointment_id;

+------------+----------------+------------------+
| invoice_id | appointment_id | appointment_date |
+------------+----------------+------------------+
|          1 |              1 | 2026-01-10       |
|          2 |              2 | 2026-01-15       |
|          3 |              3 | 2026-01-20       |
|          4 |              4 | 2026-02-05       |
|          6 |              6 | 2026-02-15       |
|          7 |              7 | 2026-02-20       |
|          8 |              8 | 2026-03-01       |
|          9 |              9 | 2026-03-05       |
|         10 |             10 | 2026-03-10       |
|         11 |             11 | 2026-03-15       |
|         12 |             12 | 2026-03-20       |
|         13 |             13 | 2026-04-01       |
|         14 |             14 | 2026-04-05       |
|         15 |             15 | 2026-04-10       |
|         16 |             16 | 2026-04-15       |
|         17 |             17 | 2026-04-20       |
|         18 |             18 | 2026-05-01       |
|         19 |             19 | 2026-05-05       |
|         20 |             20 | 2026-05-10       |
|         21 |             21 | 2026-05-15       |
|         22 |             22 | 2026-05-20       |
|         23 |             23 | 2026-06-01       |
|         24 |             24 | 2026-06-05       |
|         25 |             25 | 2026-06-10       |
|         26 |             26 | 2026-06-15       |
|         27 |             27 | 2026-06-20       |
|         28 |             28 | 2026-07-01       |
|         29 |             29 | 2026-07-05       |
|         30 |             30 | 2026-07-10       |
|         31 |             31 | 2026-07-15       |
|         32 |             32 | 2026-07-20       |
|         33 |             33 | 2026-08-01       |
|         34 |             34 | 2026-08-05       |
|         35 |             35 | 2026-08-10       |
|         36 |             36 | 2026-08-15       |
|         37 |             37 | 2026-08-20       |
|         38 |             38 | 2026-08-25       |
|         39 |             39 | 2026-09-01       |
|         40 |             40 | 2026-09-05       |
+------------+----------------+------------------+

===================================================================================================================================

TASK-7. Implement Joins (High Weightage)

=> Retrieve a list of doctors along with their department names using INNER JOIN.

SELECT 
    d.doctor_id,
    d.name AS doctor_name,
    dept.department_name
FROM Doctors d
INNER JOIN Doctor_Department dd
ON d.doctor_id = dd.doctor_id
INNER JOIN Departments dept
ON dd.department_id = dept.department_id;

+-----------+------------------+-----------------+
| doctor_id | doctor_name      | department_name |
+-----------+------------------+-----------------+
|         1 | Dr. Raj Patel    | Cardiology      |
|         2 | Dr. Priya Shah   | Neurology       |
|         3 | Dr. Amit Mehta   | Dermatology     |
|         4 | Dr. Neha Desai   | Pediatrics      |
|         5 | Dr. Kunal Patel  | Orthopedics     |
|         6 | Dr. Rina Shah    | Gynecology      |
|         7 | Dr. Vijay Mehta  | Cardiology      |
|         8 | Dr. Anjali Patel | Neurology       |
|         9 | Dr. Rahul Shah   | Dermatology     |
|        10 | Dr. Meera Desai  | Pediatrics      |
|        11 | Dr. Suresh Patel | Orthopedics     |
|        12 | Dr. Kavita Shah  | Gynecology      |
|        13 | Dr. Nitin Mehta  | Cardiology      |
|        14 | Dr. Pooja Desai  | Neurology       |
|        15 | Dr. Hardik Patel | Dermatology     |
|        16 | Dr. Sneha Shah   | Pediatrics      |
|        17 | Dr. Jay Mehta    | Orthopedics     |
|        18 | Dr. Asha Patel   | Gynecology      |
|        19 | Dr. Rakesh Shah  | Cardiology      |
|        20 | Dr. Divya Desai  | Neurology       |
|        21 | Dr. Mohit Patel  | Dermatology     |
|        22 | Dr. Nisha Shah   | Pediatrics      |
|        23 | Dr. Chirag Mehta | Orthopedics     |
|        24 | Dr. Komal Patel  | Gynecology      |
|        25 | Dr. Sanjay Shah  | Cardiology      |
|        26 | Dr. Ritu Desai   | Neurology       |
|        27 | Dr. Akash Patel  | Dermatology     |
|        28 | Dr. Bhavna Shah  | Pediatrics      |
|        29 | Dr. Deep Mehta   | Orthopedics     |
|        30 | Dr. Mona Patel   | Gynecology      |
|        31 | Dr. Rajesh Shah  | Cardiology      |
|        32 | Dr. Seema Desai  | Neurology       |
|        33 | Dr. Manish Patel | Dermatology     |
|        34 | Dr. Alka Shah    | Pediatrics      |
|        35 | Dr. Hemant Mehta | Orthopedics     |
|        36 | Dr. Reema Patel  | Gynecology      |
|        37 | Dr. Chetan Shah  | Cardiology      |
|        38 | Dr. Sonal Desai  | Neurology       |
|        39 | Dr. Hitesh Patel | Dermatology     |
|        40 | Dr. Rekha Shah   | Pediatrics      |
+-----------+------------------+-----------------+

=> Get all patients who have completed appointments using LEFT JOIN.

SELECT 
    p.patient_id,
    p.name,
    a.appointment_id,
    a.appointment_date
FROM Patients p
LEFT JOIN Appointments a
ON p.patient_id = a.patient_id
AND a.status = 'Completed';

+------------+--------------+----------------+------------------+
| patient_id | name         | appointment_id | appointment_date |
+------------+--------------+----------------+------------------+
|          1 | Aarav Patel  |              1 | 2026-01-10       |
|          1 | Aarav Patel  |             31 | 2026-07-15       |
|          2 | Aditi Shah   |              2 | 2026-01-15       |
|          2 | Aditi Shah   |             32 | 2026-07-20       |
|          3 | Rahul Desai  |           NULL | NULL             |
|          4 | Priya Mehta  |              4 | 2026-02-05       |
|          4 | Priya Mehta  |             34 | 2026-08-05       |
|          5 | Rohan Patel  |             35 | 2026-08-10       |
|          6 | Neha Shah    |              6 | 2026-02-15       |
|          7 | Karan Joshi  |             37 | 2026-08-20       |
|          8 | Kavya Desai  |              8 | 2026-03-01       |
|          8 | Kavya Desai  |             38 | 2026-08-25       |
|          9 | Vivek Mehta  |              9 | 2026-03-05       |
|         10 | Isha Patel   |             40 | 2026-09-05       |
|         11 | Arjun Shah   |             11 | 2026-03-15       |
|         12 | Sneha Patel  |             12 | 2026-03-20       |
|         13 | Dev Mehta    |           NULL | NULL             |
|         14 | Riya Shah    |             14 | 2026-04-05       |
|         15 | Manav Patel  |             15 | 2026-04-10       |
|         16 | Ananya Desai |           NULL | NULL             |
|         17 | Yash Mehta   |             17 | 2026-04-20       |
|         18 | Diya Patel   |           NULL | NULL             |
|         19 | Harsh Shah   |             19 | 2026-05-05       |
|         20 | Mira Desai   |             20 | 2026-05-10       |
|         21 | Aditya Patel |           NULL | NULL             |
|         22 | Pooja Shah   |             22 | 2026-05-20       |
|         23 | Nikhil Mehta |             23 | 2026-06-01       |
|         24 | Tanvi Patel  |           NULL | NULL             |
|         25 | Dhruv Shah   |             25 | 2026-06-10       |
|         26 | Khushi Desai |             26 | 2026-06-15       |
|         27 | Jay Mehta    |           NULL | NULL             |
|         28 | Mahi Patel   |             28 | 2026-07-01       |
|         29 | Om Shah      |             29 | 2026-07-05       |
|         30 | Avni Desai   |           NULL | NULL             |
|         31 | Sahil Patel  |           NULL | NULL             |
|         32 | Jiya Shah    |           NULL | NULL             |
|         33 | Parth Mehta  |           NULL | NULL             |
|         34 | Nisha Patel  |           NULL | NULL             |
|         35 | Krish Shah   |           NULL | NULL             |
|         36 | Simran Desai |           NULL | NULL             |
|         37 | Rudra Patel  |           NULL | NULL             |
|         38 | Ayesha Shah  |           NULL | NULL             |
|         39 | Meet Mehta   |           NULL | NULL             |
|         40 | Sara Patel   |           NULL | NULL             |
|         41 | Test Patient |           NULL | NULL             |
+------------+--------------+----------------+------------------+

=> Find appointments that have no payments using RIGHT JOIN.

SELECT 
    a.appointment_id,
    a.patient_id,
    b.invoice_id,
    b.payment_status
FROM Billing b
RIGHT JOIN Appointments a
ON b.appointment_id = a.appointment_id
WHERE b.invoice_id IS NULL;

Empty set (0.00 sec)

=> Show patients who have never booked an appointment using FULL OUTER JOIN.

SELECT 
    p.patient_id,
    p.name,
    a.appointment_id
FROM Patients p
LEFT JOIN Appointments a
ON p.patient_id = a.patient_id

UNION

SELECT 
    p.patient_id,
    p.name,
    a.appointment_id
FROM Patients p
RIGHT JOIN Appointments a
ON p.patient_id = a.patient_id;

+------------+--------------+----------------+
| patient_id | name         | appointment_id |
+------------+--------------+----------------+
|          1 | Aarav Patel  |              1 |
|          1 | Aarav Patel  |             31 |
|          2 | Aditi Shah   |              2 |
|          2 | Aditi Shah   |             32 |
|          3 | Rahul Desai  |              3 |
|          3 | Rahul Desai  |             33 |
|          4 | Priya Mehta  |              4 |
|          4 | Priya Mehta  |             34 |
|          5 | Rohan Patel  |             35 |
|          6 | Neha Shah    |              6 |
|          6 | Neha Shah    |             36 |
|          7 | Karan Joshi  |              7 |
|          7 | Karan Joshi  |             37 |
|          8 | Kavya Desai  |              8 |
|          8 | Kavya Desai  |             38 |
|          9 | Vivek Mehta  |              9 |
|          9 | Vivek Mehta  |             39 |
|         10 | Isha Patel   |             10 |
|         10 | Isha Patel   |             40 |
|         11 | Arjun Shah   |             11 |
|         12 | Sneha Patel  |             12 |
|         13 | Dev Mehta    |             13 |
|         14 | Riya Shah    |             14 |
|         15 | Manav Patel  |             15 |
|         16 | Ananya Desai |             16 |
|         17 | Yash Mehta   |             17 |
|         18 | Diya Patel   |             18 |
|         19 | Harsh Shah   |             19 |
|         20 | Mira Desai   |             20 |
|         21 | Aditya Patel |             21 |
|         22 | Pooja Shah   |             22 |
|         23 | Nikhil Mehta |             23 |
|         24 | Tanvi Patel  |             24 |
|         25 | Dhruv Shah   |             25 |
|         26 | Khushi Desai |             26 |
|         27 | Jay Mehta    |             27 |
|         28 | Mahi Patel   |             28 |
|         29 | Om Shah      |             29 |
|         30 | Avni Desai   |             30 |
|         31 | Sahil Patel  |           NULL |
|         32 | Jiya Shah    |           NULL |
|         33 | Parth Mehta  |           NULL |
|         34 | Nisha Patel  |           NULL |
|         35 | Krish Shah   |           NULL |
|         36 | Simran Desai |           NULL |
|         37 | Rudra Patel  |           NULL |
|         38 | Ayesha Shah  |           NULL |
|         39 | Meet Mehta   |           NULL |
|         40 | Sara Patel   |           NULL |
|         41 | Test Patient |           NULL |
+------------+--------------+----------------+

============================================================================================================================================================================================

TASK-8. Use Subqueries (High Weightage)

=> Find doctors who have handled more than 50 patients.

SELECT 
    d.doctor_id,
    d.name
FROM Doctors d
WHERE d.doctor_id IN (
    SELECT doctor_id
    FROM Appointments
    GROUP BY doctor_id
    HAVING COUNT(DISTINCT patient_id) > 50
);

Empty set (0.01 sec)

=> Identify the patient who has spent the most on treatments.

SELECT 
    p.patient_id,
    p.name,
    SUM(b.amount) AS total_spent
FROM Patients p
JOIN Billing b
ON p.patient_id = b.patient_id
GROUP BY p.patient_id, p.name
HAVING SUM(b.amount) = (
    SELECT MAX(total_amount)
    FROM (
        SELECT SUM(amount) AS total_amount
        FROM Billing
        GROUP BY patient_id
    ) AS temp
);

+------------+-------------+-------------+
| patient_id | name        | total_spent |
+------------+-------------+-------------+
|          8 | Kavya Desai |     3700.00 |
+------------+-------------+-------------+

=> Get appointments where the doctor specializes in Dermatology.

SELECT *
FROM Appointments
WHERE doctor_id IN (
    SELECT doctor_id
    FROM Doctors
    WHERE specialization = 'Dermatology'
);

+----------------+------------+-----------+------------------+-----------+
| appointment_id | patient_id | doctor_id | appointment_date | status    |
+----------------+------------+-----------+------------------+-----------+
|              3 |          3 |         3 | 2026-01-20       | Scheduled |
|              9 |          9 |         9 | 2026-03-05       | Completed |
|             15 |         15 |        15 | 2026-04-10       | Completed |
|             21 |         21 |        21 | 2026-05-15       | Scheduled |
|             27 |         27 |        27 | 2026-06-20       | Scheduled |
|             33 |          3 |        33 | 2026-08-01       | Scheduled |
|             39 |          9 |        39 | 2026-09-01       | Scheduled |
+----------------+------------+-----------+------------------+-----------+

==========================================================================================================================================================================================================================

TASK-9. Implement Date & Time Functions (High Weightage)

=> Extract the month from appointment_date to count visits per month.

SELECT 
    MONTH(appointment_date) AS month_number,
    COUNT(*) AS total_visits
FROM Appointments
GROUP BY MONTH(appointment_date)
ORDER BY month_number;

+--------------+--------------+
| month_number | total_visits |
+--------------+--------------+
|            1 |            3 |
|            2 |            3 |
|            3 |            5 |
|            4 |            5 |
|            5 |            5 |
|            6 |            5 |
|            7 |            5 |
|            8 |            6 |
|            9 |            2 |
+--------------+--------------+

=> Calculate the total hospital stay duration by subtracting admission_date from discharge_date.

SELECT 
    record_id,
    patient_id,
    DATEDIFF(discharge_date, admission_date) AS stay_days
FROM Medical_Records;

+-----------+------------+-----------+
| record_id | patient_id | stay_days |
+-----------+------------+-----------+
|         1 |          1 |         1 |
|         2 |          2 |         1 |
|         3 |          3 |         1 |
|         4 |          4 |         1 |
|         5 |          5 |         2 |
|         6 |          6 |         1 |
|         7 |          7 |         2 |
|         8 |          8 |         1 |
|         9 |          9 |         1 |
|        10 |         10 |         1 |
|        11 |         11 |         1 |
|        12 |         12 |         1 |
|        13 |         13 |         2 |
|        14 |         14 |         1 |
|        15 |         15 |         1 |
|        16 |         16 |         1 |
|        17 |         17 |         2 |
|        18 |         18 |         1 |
|        19 |         19 |         3 |
|        20 |         20 |         2 |
|        21 |         21 |         1 |
|        22 |         22 |         1 |
|        23 |         23 |         2 |
|        24 |         24 |         1 |
|        25 |         25 |         2 |
|        26 |         26 |         1 |
|        27 |         27 |         1 |
|        28 |         28 |         1 |
|        29 |         29 |         2 |
|        30 |         30 |         1 |
|        31 |          1 |         1 |
|        32 |          2 |         1 |
|        33 |          3 |         1 |
|        34 |          4 |         1 |
|        35 |          5 |         1 |
|        36 |          6 |         1 |
|        37 |          7 |         1 |
|        38 |          8 |         1 |
|        39 |          9 |         1 |
|        40 |         10 |         1 |
+-----------+------------+-----------+

=> Format treatment_date as DD-MM-YYYY.

SELECT 
    record_id,
    DATE_FORMAT(treatment_date, '%d-%m-%Y') AS formatted_treatment_date
FROM Medical_Records;

+-----------+--------------------------+
| record_id | formatted_treatment_date |
+-----------+--------------------------+
|         1 | 10-01-2026               |
|         2 | 15-01-2026               |
|         3 | 20-01-2026               |
|         4 | 05-02-2026               |
|         5 | 10-02-2026               |
|         6 | 15-02-2026               |
|         7 | 20-02-2026               |
|         8 | 01-03-2026               |
|         9 | 05-03-2026               |
|        10 | 10-03-2026               |
|        11 | 15-03-2026               |
|        12 | 20-03-2026               |
|        13 | 01-04-2026               |
|        14 | 05-04-2026               |
|        15 | 10-04-2026               |
|        16 | 15-04-2026               |
|        17 | 20-04-2026               |
|        18 | 01-05-2026               |
|        19 | 05-05-2026               |
|        20 | 10-05-2026               |
|        21 | 15-05-2026               |
|        22 | 20-05-2026               |
|        23 | 01-06-2026               |
|        24 | 05-06-2026               |
|        25 | 10-06-2026               |
|        26 | 15-06-2026               |
|        27 | 20-06-2026               |
|        28 | 01-07-2026               |
|        29 | 05-07-2026               |
|        30 | 10-07-2026               |
|        31 | 15-07-2026               |
|        32 | 20-07-2026               |
|        33 | 01-08-2026               |
|        34 | 05-08-2026               |
|        35 | 10-08-2026               |
|        36 | 15-08-2026               |
|        37 | 20-08-2026               |
|        38 | 25-08-2026               |
|        39 | 01-09-2026               |
|        40 | 05-09-2026               |
+-----------+--------------------------+

====================================================================================================================================================================================

TASK-10. Use String Manipulation Functions (High Weightage)

=> Convert all patient names to uppercase.

SELECT 
    patient_id,
    UPPER(name) AS patient_name
FROM Patients;

+------------+--------------+
| patient_id | patient_name |
+------------+--------------+
|          1 | AARAV PATEL  |
|          2 | ADITI SHAH   |
|          3 | RAHUL DESAI  |
|          4 | PRIYA MEHTA  |
|          5 | ROHAN PATEL  |
|          6 | NEHA SHAH    |
|          7 | KARAN JOSHI  |
|          8 | KAVYA DESAI  |
|          9 | VIVEK MEHTA  |
|         10 | ISHA PATEL   |
|         11 | ARJUN SHAH   |
|         12 | SNEHA PATEL  |
|         13 | DEV MEHTA    |
|         14 | RIYA SHAH    |
|         15 | MANAV PATEL  |
|         16 | ANANYA DESAI |
|         17 | YASH MEHTA   |
|         18 | DIYA PATEL   |
|         19 | HARSH SHAH   |
|         20 | MIRA DESAI   |
|         21 | ADITYA PATEL |
|         22 | POOJA SHAH   |
|         23 | NIKHIL MEHTA |
|         24 | TANVI PATEL  |
|         25 | DHRUV SHAH   |
|         26 | KHUSHI DESAI |
|         27 | JAY MEHTA    |
|         28 | MAHI PATEL   |
|         29 | OM SHAH      |
|         30 | AVNI DESAI   |
|         31 | SAHIL PATEL  |
|         32 | JIYA SHAH    |
|         33 | PARTH MEHTA  |
|         34 | NISHA PATEL  |
|         35 | KRISH SHAH   |
|         36 | SIMRAN DESAI |
|         37 | RUDRA PATEL  |
|         38 | AYESHA SHAH  |
|         39 | MEET MEHTA   |
|         40 | SARA PATEL   |
|         41 | TEST PATIENT |
+------------+--------------+

=> Trim whitespace from doctor names.

SELECT 
    doctor_id,
    TRIM(name) AS doctor_name
FROM Doctors;

+-----------+------------------+
| doctor_id | doctor_name      |
+-----------+------------------+
|         1 | Dr. Raj Patel    |
|         2 | Dr. Priya Shah   |
|         3 | Dr. Amit Mehta   |
|         4 | Dr. Neha Desai   |
|         5 | Dr. Kunal Patel  |
|         6 | Dr. Rina Shah    |
|         7 | Dr. Vijay Mehta  |
|         8 | Dr. Anjali Patel |
|         9 | Dr. Rahul Shah   |
|        10 | Dr. Meera Desai  |
|        11 | Dr. Suresh Patel |
|        12 | Dr. Kavita Shah  |
|        13 | Dr. Nitin Mehta  |
|        14 | Dr. Pooja Desai  |
|        15 | Dr. Hardik Patel |
|        16 | Dr. Sneha Shah   |
|        17 | Dr. Jay Mehta    |
|        18 | Dr. Asha Patel   |
|        19 | Dr. Rakesh Shah  |
|        20 | Dr. Divya Desai  |
|        21 | Dr. Mohit Patel  |
|        22 | Dr. Nisha Shah   |
|        23 | Dr. Chirag Mehta |
|        24 | Dr. Komal Patel  |
|        25 | Dr. Sanjay Shah  |
|        26 | Dr. Ritu Desai   |
|        27 | Dr. Akash Patel  |
|        28 | Dr. Bhavna Shah  |
|        29 | Dr. Deep Mehta   |
|        30 | Dr. Mona Patel   |
|        31 | Dr. Rajesh Shah  |
|        32 | Dr. Seema Desai  |
|        33 | Dr. Manish Patel |
|        34 | Dr. Alka Shah    |
|        35 | Dr. Hemant Mehta |
|        36 | Dr. Reema Patel  |
|        37 | Dr. Chetan Shah  |
|        38 | Dr. Sonal Desai  |
|        39 | Dr. Hitesh Patel |
|        40 | Dr. Rekha Shah   |
+-----------+------------------+

=> Replace missing phone numbers with "Not Available".

SELECT 
    patient_id,
    name,
    COALESCE(phone_number, 'Not Available') AS phone_number
FROM Patients;

+------------+--------------+--------------+
| patient_id | name         | phone_number |
+------------+--------------+--------------+
|          1 | Aarav Patel  | 9876500001   |
|          2 | Aditi Shah   | 9876500002   |
|          3 | Rahul Desai  | 9876500003   |
|          4 | Priya Mehta  | 9876500004   |
|          5 | Rohan Patel  | 9876500005   |
|          6 | Neha Shah    | 9876500006   |
|          7 | Karan Joshi  | 9876500007   |
|          8 | Kavya Desai  | 9876500008   |
|          9 | Vivek Mehta  | 9876500009   |
|         10 | Isha Patel   | 9876500010   |
|         11 | Arjun Shah   | 9876500011   |
|         12 | Sneha Patel  | 9876500012   |
|         13 | Dev Mehta    | 9876500013   |
|         14 | Riya Shah    | 9876500014   |
|         15 | Manav Patel  | 9876500015   |
|         16 | Ananya Desai | 9876500016   |
|         17 | Yash Mehta   | 9876500017   |
|         18 | Diya Patel   | 9876500018   |
|         19 | Harsh Shah   | 9876500019   |
|         20 | Mira Desai   | 9876500020   |
|         21 | Aditya Patel | 9876500021   |
|         22 | Pooja Shah   | 9876500022   |
|         23 | Nikhil Mehta | 9876500023   |
|         24 | Tanvi Patel  | 9876500024   |
|         25 | Dhruv Shah   | 9876500025   |
|         26 | Khushi Desai | 9876500026   |
|         27 | Jay Mehta    | 9876500027   |
|         28 | Mahi Patel   | 9876500028   |
|         29 | Om Shah      | 9876500029   |
|         30 | Avni Desai   | 9876500030   |
|         31 | Sahil Patel  | 9876500031   |
|         32 | Jiya Shah    | 9876500032   |
|         33 | Parth Mehta  | 9876500033   |
|         34 | Nisha Patel  | 9876500034   |
|         35 | Krish Shah   | 9876500035   |
|         36 | Simran Desai | 9876500036   |
|         37 | Rudra Patel  | 9876500037   |
|         38 | Ayesha Shah  | 9876500038   |
|         39 | Meet Mehta   | 9876500039   |
|         40 | Sara Patel   | 9876500040   |
|         41 | Test Patient | 9999999999   |
+------------+--------------+--------------+

=========================================================================================================================================================================================

TASK-11. Implement Window Functions (Very High Weightage)

=> Rank doctors based on the number of patients they have treated.

SELECT 
    d.doctor_id,
    d.name,
    COUNT(a.patient_id) AS total_patients,
    RANK() OVER (
        ORDER BY COUNT(a.patient_id) DESC
    ) AS doctor_rank
FROM Doctors d
LEFT JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name;

+-----------+------------------+----------------+-------------+
| doctor_id | name             | total_patients | doctor_rank |
+-----------+------------------+----------------+-------------+
|         1 | Dr. Raj Patel    |              1 |           1 |
|         2 | Dr. Priya Shah   |              1 |           1 |
|         3 | Dr. Amit Mehta   |              1 |           1 |
|         4 | Dr. Neha Desai   |              1 |           1 |
|        40 | Dr. Rekha Shah   |              1 |           1 |
|         6 | Dr. Rina Shah    |              1 |           1 |
|         7 | Dr. Vijay Mehta  |              1 |           1 |
|         8 | Dr. Anjali Patel |              1 |           1 |
|         9 | Dr. Rahul Shah   |              1 |           1 |
|        10 | Dr. Meera Desai  |              1 |           1 |
|        11 | Dr. Suresh Patel |              1 |           1 |
|        12 | Dr. Kavita Shah  |              1 |           1 |
|        13 | Dr. Nitin Mehta  |              1 |           1 |
|        14 | Dr. Pooja Desai  |              1 |           1 |
|        15 | Dr. Hardik Patel |              1 |           1 |
|        16 | Dr. Sneha Shah   |              1 |           1 |
|        17 | Dr. Jay Mehta    |              1 |           1 |
|        18 | Dr. Asha Patel   |              1 |           1 |
|        19 | Dr. Rakesh Shah  |              1 |           1 |
|        20 | Dr. Divya Desai  |              1 |           1 |
|        21 | Dr. Mohit Patel  |              1 |           1 |
|        22 | Dr. Nisha Shah   |              1 |           1 |
|        23 | Dr. Chirag Mehta |              1 |           1 |
|        24 | Dr. Komal Patel  |              1 |           1 |
|        25 | Dr. Sanjay Shah  |              1 |           1 |
|        26 | Dr. Ritu Desai   |              1 |           1 |
|        27 | Dr. Akash Patel  |              1 |           1 |
|        28 | Dr. Bhavna Shah  |              1 |           1 |
|        29 | Dr. Deep Mehta   |              1 |           1 |
|        30 | Dr. Mona Patel   |              1 |           1 |
|        31 | Dr. Rajesh Shah  |              1 |           1 |
|        32 | Dr. Seema Desai  |              1 |           1 |
|        33 | Dr. Manish Patel |              1 |           1 |
|        34 | Dr. Alka Shah    |              1 |           1 |
|        35 | Dr. Hemant Mehta |              1 |           1 |
|        36 | Dr. Reema Patel  |              1 |           1 |
|        37 | Dr. Chetan Shah  |              1 |           1 |
|        38 | Dr. Sonal Desai  |              1 |           1 |
|        39 | Dr. Hitesh Patel |              1 |           1 |
|         5 | Dr. Kunal Patel  |              0 |          40 |
+-----------+------------------+----------------+-------------+

=> Show the cumulative revenue per month.

SELECT 
    month_name,
    monthly_revenue,
    SUM(monthly_revenue) OVER (
        ORDER BY month_name
    ) AS cumulative_revenue
FROM (
    SELECT 
        DATE_FORMAT(payment_date, '%Y-%m') AS month_name,
        SUM(amount) AS monthly_revenue
    FROM Billing
    WHERE payment_status = 'Paid'
    GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
) AS monthly_data
ORDER BY month_name;

+------------+-----------------+--------------------+
| month_name | monthly_revenue | cumulative_revenue |
+------------+-----------------+--------------------+
| 2026-01    |         3300.00 |            3300.00 |
| 2026-02    |         2400.00 |            5700.00 |
| 2026-03    |         5950.00 |           11650.00 |
| 2026-04    |         4350.00 |           16000.00 |
| 2026-05    |         4650.00 |           20650.00 |
| 2026-06    |         5350.00 |           26000.00 |
| 2026-07    |         5800.00 |           31800.00 |
| 2026-08    |         6000.00 |           37800.00 |
| 2026-09    |         1050.00 |           38850.00 |
+------------+-----------------+--------------------+

=> Display the running total of appointments made.

SELECT 
    appointment_id,
    appointment_date,
    COUNT(*) OVER (
        ORDER BY appointment_date, appointment_id
    ) AS running_total
FROM Appointments
ORDER BY appointment_date, appointment_id;

+----------------+------------------+---------------+
| appointment_id | appointment_date | running_total |
+----------------+------------------+---------------+
|              1 | 2026-01-10       |             1 |
|              2 | 2026-01-15       |             2 |
|              3 | 2026-01-20       |             3 |
|              4 | 2026-02-05       |             4 |
|              6 | 2026-02-15       |             5 |
|              7 | 2026-02-20       |             6 |
|              8 | 2026-03-01       |             7 |
|              9 | 2026-03-05       |             8 |
|             10 | 2026-03-10       |             9 |
|             11 | 2026-03-15       |            10 |
|             12 | 2026-03-20       |            11 |
|             13 | 2026-04-01       |            12 |
|             14 | 2026-04-05       |            13 |
|             15 | 2026-04-10       |            14 |
|             16 | 2026-04-15       |            15 |
|             17 | 2026-04-20       |            16 |
|             18 | 2026-05-01       |            17 |
|             19 | 2026-05-05       |            18 |
|             20 | 2026-05-10       |            19 |
|             21 | 2026-05-15       |            20 |
|             22 | 2026-05-20       |            21 |
|             23 | 2026-06-01       |            22 |
|             24 | 2026-06-05       |            23 |
|             25 | 2026-06-10       |            24 |
|             26 | 2026-06-15       |            25 |
|             27 | 2026-06-20       |            26 |
|             28 | 2026-07-01       |            27 |
|             29 | 2026-07-05       |            28 |
|             30 | 2026-07-10       |            29 |
|             31 | 2026-07-15       |            30 |
|             32 | 2026-07-20       |            31 |
|             33 | 2026-08-01       |            32 |
|             34 | 2026-08-05       |            33 |
|             35 | 2026-08-10       |            34 |
|             36 | 2026-08-15       |            35 |
|             37 | 2026-08-20       |            36 |
|             38 | 2026-08-25       |            37 |
|             39 | 2026-09-01       |            38 |
|             40 | 2026-09-05       |            39 |
+----------------+------------------+---------------+

=====================================================================================================================================================================================================

TASK-12. Apply SQL CASE Expressions (Very High Weightage)

=>Assign a Patient_Risk_Level:
"High" if they have more than 5 medical records.
"Medium" if they have 3-5 records.
"Low" otherwise.

SELECT 
    p.patient_id,
    p.name,
    COUNT(m.record_id) AS total_records,
    CASE
        WHEN COUNT(m.record_id) > 5 THEN 'High'
        WHEN COUNT(m.record_id) BETWEEN 3 AND 5 THEN 'Medium'
        ELSE 'Low'
    END AS Patient_Risk_Level
FROM Patients p
LEFT JOIN Medical_Records m
ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.name;

+------------+--------------+---------------+--------------------+
| patient_id | name         | total_records | Patient_Risk_Level |
+------------+--------------+---------------+--------------------+
|          1 | Aarav Patel  |             2 | Low                |
|          2 | Aditi Shah   |             2 | Low                |
|          3 | Rahul Desai  |             2 | Low                |
|          4 | Priya Mehta  |             2 | Low                |
|          5 | Rohan Patel  |             2 | Low                |
|          6 | Neha Shah    |             2 | Low                |
|          7 | Karan Joshi  |             2 | Low                |
|          8 | Kavya Desai  |             2 | Low                |
|          9 | Vivek Mehta  |             2 | Low                |
|         10 | Isha Patel   |             2 | Low                |
|         11 | Arjun Shah   |             1 | Low                |
|         12 | Sneha Patel  |             1 | Low                |
|         13 | Dev Mehta    |             1 | Low                |
|         14 | Riya Shah    |             1 | Low                |
|         15 | Manav Patel  |             1 | Low                |
|         16 | Ananya Desai |             1 | Low                |
|         17 | Yash Mehta   |             1 | Low                |
|         18 | Diya Patel   |             1 | Low                |
|         19 | Harsh Shah   |             1 | Low                |
|         20 | Mira Desai   |             1 | Low                |
|         21 | Aditya Patel |             1 | Low                |
|         22 | Pooja Shah   |             1 | Low                |
|         23 | Nikhil Mehta |             1 | Low                |
|         24 | Tanvi Patel  |             1 | Low                |
|         25 | Dhruv Shah   |             1 | Low                |
|         26 | Khushi Desai |             1 | Low                |
|         27 | Jay Mehta    |             1 | Low                |
|         28 | Mahi Patel   |             1 | Low                |
|         29 | Om Shah      |             1 | Low                |
|         30 | Avni Desai   |             1 | Low                |
|         31 | Sahil Patel  |             0 | Low                |
|         32 | Jiya Shah    |             0 | Low                |
|         33 | Parth Mehta  |             0 | Low                |
|         34 | Nisha Patel  |             0 | Low                |
|         35 | Krish Shah   |             0 | Low                |
|         36 | Simran Desai |             0 | Low                |
|         37 | Rudra Patel  |             0 | Low                |
|         38 | Ayesha Shah  |             0 | Low                |
|         39 | Meet Mehta   |             0 | Low                |
|         40 | Sara Patel   |             0 | Low                |
|         41 | Test Patient |             0 | Low                |
+------------+--------------+---------------+--------------------+

=> Categorize doctors:
"Senior" if they have more than 15 years of experience.
"Mid-Level" if they have 5-15 years.
"Junior" otherwise.

SELECT 
    doctor_id,
    name,
    experience_years,
    CASE
        WHEN experience_years > 15 THEN 'Senior'
        WHEN experience_years BETWEEN 5 AND 15 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS doctor_category
FROM Doctors;

+-----------+------------------+------------------+-----------------+
| doctor_id | name             | experience_years | doctor_category |
+-----------+------------------+------------------+-----------------+
|         1 | Dr. Raj Patel    |               18 | Senior          |
|         2 | Dr. Priya Shah   |               12 | Mid-Level       |
|         3 | Dr. Amit Mehta   |                8 | Mid-Level       |
|         4 | Dr. Neha Desai   |               16 | Senior          |
|         5 | Dr. Kunal Patel  |               20 | Senior          |
|         6 | Dr. Rina Shah    |               10 | Mid-Level       |
|         7 | Dr. Vijay Mehta  |               22 | Senior          |
|         8 | Dr. Anjali Patel |               17 | Senior          |
|         9 | Dr. Rahul Shah   |                6 | Mid-Level       |
|        10 | Dr. Meera Desai  |               14 | Mid-Level       |
|        11 | Dr. Suresh Patel |               19 | Senior          |
|        12 | Dr. Kavita Shah  |                7 | Mid-Level       |
|        13 | Dr. Nitin Mehta  |               21 | Senior          |
|        14 | Dr. Pooja Desai  |               11 | Mid-Level       |
|        15 | Dr. Hardik Patel |                4 | Junior          |
|        16 | Dr. Sneha Shah   |               13 | Mid-Level       |
|        17 | Dr. Jay Mehta    |               16 | Senior          |
|        18 | Dr. Asha Patel   |                9 | Mid-Level       |
|        19 | Dr. Rakesh Shah  |               25 | Senior          |
|        20 | Dr. Divya Desai  |               15 | Mid-Level       |
|        21 | Dr. Mohit Patel  |                5 | Mid-Level       |
|        22 | Dr. Nisha Shah   |               18 | Senior          |
|        23 | Dr. Chirag Mehta |               23 | Senior          |
|        24 | Dr. Komal Patel  |               12 | Mid-Level       |
|        25 | Dr. Sanjay Shah  |               20 | Senior          |
|        26 | Dr. Ritu Desai   |               16 | Senior          |
|        27 | Dr. Akash Patel  |                3 | Junior          |
|        28 | Dr. Bhavna Shah  |                7 | Mid-Level       |
|        29 | Dr. Deep Mehta   |               17 | Senior          |
|        30 | Dr. Mona Patel   |               11 | Mid-Level       |
|        31 | Dr. Rajesh Shah  |               19 | Senior          |
|        32 | Dr. Seema Desai  |               14 | Mid-Level       |
|        33 | Dr. Manish Patel |                9 | Mid-Level       |
|        34 | Dr. Alka Shah    |                6 | Mid-Level       |
|        35 | Dr. Hemant Mehta |               24 | Senior          |
|        36 | Dr. Reema Patel  |                8 | Mid-Level       |
|        37 | Dr. Chetan Shah  |               13 | Mid-Level       |
|        38 | Dr. Sonal Desai  |               21 | Senior          |
|        39 | Dr. Hitesh Patel |               10 | Mid-Level       |
|        40 | Dr. Rekha Shah   |               15 | Mid-Level       |
+-----------+------------------+------------------+-----------------+

===========================================================================================================================================================================================================================================================

--VERIFY THE QUERIES :-

SELECT COUNT(*) FROM Patients;

+----------+
| COUNT(*) |
+----------+
|       41 |
+----------+

SELECT COUNT(*) FROM Doctors;

+----------+
| COUNT(*) |
+----------+
|       40 |
+----------+

SELECT COUNT(*) FROM Appointments;

+----------+
| COUNT(*) |
+----------+
|       39 |
+----------+

SELECT COUNT(*) FROM Medical_Records;

+----------+
| COUNT(*) |
+----------+
|       40 |
+----------+

SELECT COUNT(*) FROM Billing;

+----------+
| COUNT(*) |
+----------+
|       39 |
+----------+

SELECT COUNT(*) FROM Departments;

+----------+
| COUNT(*) |
+----------+
|       40 |
+----------+

SELECT COUNT(*) FROM Doctor_Department;

+----------+
| COUNT(*) |
+----------+
|       40 |
+----------+

-- AA QUERIES NU OUTPUT CHE ANE HVE ME BADHA J RECORD SARKHA KARVANI QUERY CHALAVINE BADHA MA PACHA 40 RECORD RAKHYA

SELECT COUNT(*) AS Patients FROM Patients;

+----------+
| Patients |
+----------+
|       40 |
+----------+

SELECT COUNT(*) AS Doctors FROM Doctors;

+---------+
| Doctors |
+---------+
|      40 |
+---------+

SELECT COUNT(*) AS Appointments FROM Appointments;

+--------------+
| Appointments |
+--------------+
|           40 |
+--------------+

SELECT COUNT(*) AS Medical_Records FROM Medical_Records;

+-----------------+
| Medical_Records |
+-----------------+
|              40 |
+-----------------+

SELECT COUNT(*) AS Billing FROM Billing;

+---------+
| Billing |
+---------+
|      40 |
+---------+

SELECT COUNT(*) AS Departments FROM Departments;

+-------------+
| Departments |
+-------------+
|          40 |
+-------------+

SELECT COUNT(*) AS Doctor_Department FROM Doctor_Department;

+-------------------+
| Doctor_Department |
+-------------------+
|                40 |
+-------------------+