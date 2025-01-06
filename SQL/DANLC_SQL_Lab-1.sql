Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> show databases
    -> ^C
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| anp8340                 |
| information_schema      |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
6 rows in set (0.00 sec)

mysql> use studentmanagementsystem
Database changed

mysql> create table Student(
    -> StudentID VARCHAR(10) PRIMARY KEY,
    -> FirstName VARCHAR(15) NOT NULL,
    -> LastName VARCHAR(15) NOT NULL,
    -> DateOfBirth DateTime NOT NULL,
    -> Gender VARCHAR(10) NOT NULL,
    -> Email VARCHAR(20) UNIQUE NOT NULL,
    -> Phone VARCHAR(15) NOT NULL);
Query OK, 0 rows affected (0.10 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(15) | NO   |     | NULL    |       |
| LastName    | varchar(15) | NO   |     | NULL    |       |
| DateOfBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   | UNI | NULL    |       |
| Phone       | varchar(15) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into Student(StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone)
    -> VALUES('001', 'Tushar', 'Deshpande', '2002-10-12', 'M', '
abc@example.com', '0102020202');
Query OK, 1 row affected (0.01 sec)

mysql> create table Course(
    -> CourseID VARCHAR(10) PRIMARY KEY,
    -> CourseTitle VARCHAR(15) NOT NULL,
    -> Credits VARCHAR(10) NOT NULL);
Query OK, 0 rows affected (0.06 sec)

mysql> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(10) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(15) | NO   |     | NULL    |       |
| Credits     | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table Instructor(
    -> InstrucorID VARCHAR(10) PRIMARY KEY,
    -> FirstName VARCHAR(10) NOT NULL,
    -> LastName VARCHAR(10) NOT NULL,
    -> Email VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.07 sec)

mysql> desc Instructor;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| InstrucorID | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(10) | NO   |     | NULL    |       |
| LastName    | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> create table Enrollment(
    -> EnrollmentID VARCHAR(10) PRIMARY KEY,
    -> EnrollmentDate DateTime NOT NULL,
    -> StudentID VARCHAR(10),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> CourseID VARCHAR(10),
    -> FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -> InstrucorID VARCHAR(10),
    -> FOREIGN KEY (InstrucorID) REFERENCES Instructor(InstrucorID));
Query OK, 0 rows affected (0.09 sec)

mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(10) | NO   | PRI | NULL    |       |
| EnrollmentDate | datetime    | NO   |     | NULL    |       |
| StudentID      | varchar(10) | YES  | MUL | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| InstrucorID    | varchar(10) | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Score(
    -> ScoreID VARCHAR(10) PRIMARY KEY,
    -> CourseID VARCHAR(10),
    -> FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -> StudentID VARCHAR(10),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> DateOfExam DateTime NOT NULL,
    -> CreditObtained INT NOT NULL);
Query OK, 0 rows affected (0.06 sec)

mysql> desc Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(10) | NO   | PRI | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| StudentID      | varchar(10) | YES  | MUL | NULL    |       |
| DateOfExam     | datetime    | NO   |     | NULL    |       |
| CreditObtained | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Feedback(
    -> FeedbackID VARCHAR(10) PRIMARY KEY,
    -> StudentID VARCHAR(10),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> Date DateTime NOT NULL,
    -> InstructorName VARCHAR(20),
    -> Feedback VARCHAR(50));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(10) | NO   | PRI | NULL    |       |
| StudentID      | varchar(10) | YES  | MUL | NULL    |       |
| Date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(20) | YES  |     | NULL    |       |
| Feedback       | varchar(50) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)