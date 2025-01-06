Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 31
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current inputstatement.

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
6 rows in set (0.10 sec)

mysql> use studentmanagementsystem
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
+-----------------------------------+
6 rows in set (0.03 sec)

mysql> INSERT INTO student (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone) VALUES
    -> ('S001', 'Alice', 'Smith', '2003-05-12 00:00:00', 'Female', 'alice@example.com', '1234567890'),
    -> ('S002', 'Bob', 'Johnson', '2002-08-21 00:00:00', 'Male', 'bob@example.com', '2345678901'),
    -> ('S003', 'Charlie', 'Brown', '2004-01-15 00:00:00', 'Male', 'charlie@example.com', '3456789012'),
    -> ('S004', 'Diana', 'Clark', '2003-11-30 00:00:00', 'Female', 'diana@example.com', '4567890123'),
    -> ('S005', 'Ethan', 'Adams', '2002-07-19 00:00:00', 'Male', 'ethan@example.com', '5678901234');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth         | Gender | Email               | Phone      |
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
| 001       | Tushar    | Deshpande | 2002-10-12 00:00:00 | M      | abc@example.com     | 0102020202 |
| S001      | Alice     | Smith     | 2003-05-12 00:00:00 | Female | alice@example.com   | 1234567890 |
| S002      | Bob       | Johnson   | 2002-08-21 00:00:00 | Male   | bob@example.com     | 2345678901 |
| S003      | Charlie   | Brown     | 2004-01-15 00:00:00 | Male   | charlie@example.com | 3456789012 |
| S004      | Diana     | Clark     | 2003-11-30 00:00:00 | Female | diana@example.com   | 4567890123 |
| S005      | Ethan     | Adams     | 2002-07-19 00:00:00 | Male   | ethan@example.com   | 5678901234 |
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
6 rows in set (0.01 sec)

mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(10) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(15) | NO   |     | NULL    |       |
| Credits     | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO course (CourseID, CourseTitle, Credits) VALUES
    -> ('C001', 'Calculus', '3'),
    -> ('C002', 'Physics', '4'),
    -> ('C003', 'Chemistry', '3'),
    -> ('C004', 'Biology', '4'),
    -> ('C005', 'Programming', '5');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from course;
+----------+-------------+---------+
| CourseID | CourseTitle | Credits |
+----------+-------------+---------+
| C001     | Calculus    | 3       |
| C002     | Physics     | 4       |
| C003     | Chemistry   | 3       |
| C004     | Biology     | 4       |
| C005     | Programming | 5       |
+----------+-------------+---------+
5 rows in set (0.00 sec)

mysql> desc instructor;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| InstrucorID | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(10) | NO   |     | NULL    |       |
| LastName    | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO instructor (InstrucorID, FirstName, LastName, Email)
    -> VALUES
    -> ('I001', 'John', 'Doe', 'johndoe@ex.com'),
    -> ('I002', 'Jane', 'Smith', 'janesmith@ex.com'),
    -> ('I003', 'Robert', 'Brown', 'robertb@ex.com'),
    -> ('I004', 'Emily', 'Davis', 'emilyd@ex.com'),
    -> ('I005', 'Michael', 'Wilson', 'michael@ex.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from instructor;
+-------------+-----------+----------+------------------+
| InstrucorID | FirstName | LastName | Email            |
+-------------+-----------+----------+------------------+
| I001        | John      | Doe      | johndoe@ex.com   |
| I002        | Jane      | Smith    | janesmith@ex.com |
| I003        | Robert    | Brown    | robertb@ex.com   |
| I004        | Emily     | Davis    | emilyd@ex.com    |
| I005        | Michael   | Wilson   | michael@ex.com   |
+-------------+-----------+----------+------------------+
5 rows in set (0.00 sec)

mysql> desc enrollment;
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

mysql> INSERT INTO enrollment (EnrollmentID, EnrollmentDate, StudentID, CourseID, InstrucorID)
    -> VALUES
    -> ('E001', '2025-01-01 10:00:00', 'S001', 'C001', 'I001'),
    -> ('E002', '2025-01-02 11:00:00', 'S002', 'C002', 'I002'),
    -> ('E003', '2025-01-03 12:00:00', 'S003', 'C003', 'I003'),
    -> ('E004', '2025-01-04 13:00:00', 'S004', 'C004', 'I004'),
    -> ('E005', '2025-01-05 14:00:00', 'S005', 'C005', 'I005');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+--------------+---------------------+-----------+----------+-------------+
| EnrollmentID | EnrollmentDate      | StudentID | CourseID | InstrucorID |
+--------------+---------------------+-----------+----------+-------------+
| E001         | 2025-01-01 10:00:00 | S001      | C001     | I001      |
| E002         | 2025-01-02 11:00:00 | S002      | C002     | I002      |
| E003         | 2025-01-03 12:00:00 | S003      | C003     | I003      |
| E004         | 2025-01-04 13:00:00 | S004      | C004     | I004      |
| E005         | 2025-01-05 14:00:00 | S005      | C005     | I005      |
+--------------+---------------------+-----------+----------+-------------+
5 rows in set (0.00 sec)

mysql> desc score;
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

mysql> INSERT INTO score (ScoreID, CourseID, StudentID, DateOfExam,CreditObtained)
    -> VALUES
    -> ('S001', 'C001', 'S001', '2025-01-01 09:00:00', 85),
    -> ('S002', 'C002', 'S002', '2025-01-02 09:00:00', 90),
    -> ('S003', 'C003', 'S003', '2025-01-03 09:00:00', 75),
    -> ('S004', 'C004', 'S004', '2025-01-04 09:00:00', 95),
    -> ('S005', 'C005', 'S005', '2025-01-05 09:00:00', 80);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from score;
+---------+----------+-----------+---------------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam          | CreditObtained |
+---------+----------+-----------+---------------------+----------------+
| S001    | C001     | S001      | 2025-01-01 09:00:00 | 85 |
| S002    | C002     | S002      | 2025-01-02 09:00:00 | 90 |
| S003    | C003     | S003      | 2025-01-03 09:00:00 | 75 |
| S004    | C004     | S004      | 2025-01-04 09:00:00 | 95 |
| S005    | C005     | S005      | 2025-01-05 09:00:00 | 80 |
+---------+----------+-----------+---------------------+----------------+
5 rows in set (0.00 sec)

mysql> desc feedback;
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

mysql> INSERT INTO feedback (FeedbackID, StudentID, Date, InstructorName, Feedback)
    -> VALUES
    -> ('F001', 'S001', '2025-01-01 15:00:00', 'John Doe', 'Great course, very informative!'),
    -> ('F002', 'S002', '2025-01-02 16:00:00', 'Jane Smith', 'Well structured and clear.'),
    -> ('F003', 'S003', '2025-01-03 17:00:00', 'Robert Brown', 'Could use more examples.'),
    -> ('F004', 'S004', '2025-01-04 18:00:00', 'Emily Davis', 'Excellent presentation and content.'),
    -> ('F005', 'S005', '2025-01-05 19:00:00', 'Michael Wilson', 'Interesting subject, but challenging.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+------------+-----------+---------------------+----------------+---------------------------------------+
| FeedbackID | StudentID | Date                | InstructorName | Feedback                              |
+------------+-----------+---------------------+----------------+---------------------------------------+
| F001       | S001      | 2025-01-01 15:00:00 | John Doe       | Great course, very informative!       |
| F002       | S002      | 2025-01-02 16:00:00 | Jane Smith     | Well structured and clear.            |
| F003       | S003      | 2025-01-03 17:00:00 | Robert Brown   | Could use more examples.              |
| F004       | S004      | 2025-01-04 18:00:00 | Emily Davis    | Excellent presentation and content.   |
| F005       | S005      | 2025-01-05 19:00:00 | Michael Wilson | Interesting subject, but challenging. |
+------------+-----------+---------------------+----------------+---------------------------------------+
5 rows in set (0.00 sec)
