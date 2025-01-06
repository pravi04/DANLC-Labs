Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 32
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
6 rows in set (0.06 sec)

mysql> use studentmanagementsystem;
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
6 rows in set (0.02 sec)

mysql> create table Employee(
    -> emp_id varchar(10) ^C
mysql> -- Task 0: Create the Employee Table
mysql> -- Create the Employee table with columns: emp_id (Primary Key), first_name, last_name, age, email
mysql> CREATE TABLE Employee (
    ->     emp_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     age INT,
    ->     email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.15 sec)

mysql>
mysql> -- Task 1: Insert Data
mysql> -- Insert data into the Employee table
mysql> INSERT INTO Employee (emp_id, first_name, last_name,age, email)
    -> VALUES
    -> (1, 'John', 'Doe', 28, 'johndoe@example.com'),
    -> (2, 'Jane', 'Smith', 35, 'janesmith@example.com'),
    -> (3, 'Robert', 'Brown', 45, 'robertbrown@example.com'),
    -> (4, 'Emily', 'Davis', 26, 'emilydavis@example.com'),
    -> (5, 'Michael', 'Wilson', 32, 'michaelwilson@example.com');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Task 2: Retrieving Data
mysql> -- Retrieve the first_name and last_name of all employees

mysql> SELECT first_name, last_name
    -> FROM Employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| John       | Doe       |
| Jane       | Smith     |
| Robert     | Brown     |
| Emily      | Davis     |
| Michael    | Wilson    |
+------------+-----------+
5 rows in set (0.00 sec)

mysql>
mysql> -- Task 3: Filtering Data
mysql> -- Retrieve the first_name, last_name, and age of employees who are older than 30 years
mysql> SELECT first_name, last_name, age
    -> FROM Employee
    -> WHERE age > 30;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Jane       | Smith     |   35 |
| Robert     | Brown     |   45 |
| Michael    | Wilson    |   32 |
+------------+-----------+------+
3 rows in set (0.00 sec)

mysql>
mysql> -- Task 4: Updating Data
mysql> -- Increase the age of employees by 1 year for all employees older than 25
mysql> UPDATE Employee
    -> SET age = age + 1
    -> WHERE age > 25;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from employee;
+--------+------------+-----------+------+---------------------------+
| emp_id | first_name | last_name | age  | email
         |
+--------+------------+-----------+------+---------------------------+
|      1 | John       | Doe       |   29 | johndoe@example.com       |
|      2 | Jane       | Smith     |   36 | janesmith@example.com     |
|      3 | Robert     | Brown     |   46 | robertbrown@example.com   |
|      4 | Emily      | Davis     |   27 | emilydavis@example.com    |
|      5 | Michael    | Wilson    |   33 | michaelwilson@example.com |
+--------+------------+-----------+------+---------------------------+
5 rows in set (0.00 sec)

mysql>
