Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 8.0.40 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use studentmanagementsystem;
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| employee                          |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
+-----------------------------------+
7 rows in set (0.02 sec)

mysql> create table BankAccount(
    -> account_id int primary key,
    -> account_holder_name varchar(50) NOT NULL,
    -> account_balance decimail(10,2));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'decimail(10,2))' at line 4
mysql> create table BankAccount(
    -> account_id int primary key,
    -> account_holder_name varchar(50) NOT NULL,
    -> account_balance decimail(10,2)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'decimail(10,2)
)' at line 4
mysql> create table BankAccount(
    -> account_id int primary key,
    -> account_holder_name varchar(50) NOT NULL,
    -> account_balance decimal(10,2));
Query OK, 0 rows affected (0.10 sec)

mysql> -- Task 1: Insert Data
mysql> -- Insert data into the BankAccount table
mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)
    -> VALUES
    -> (101, 'Alice Johnson', 25000.50),
    -> (102, 'Bob Smith', 40000.75),
    -> (103, 'Charlie Brown', 35000.00),
    -> (104, 'Diana Prince', 15000.25),
    -> (105, 'Ethan Hunt', 50000.00);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> show BankAccount;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BankAccount' at line 1
mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Alice Johnson       |        25000.50 |
|        102 | Bob Smith           |        40000.75 |
|        103 | Charlie Brown       |        35000.00 |
|        104 | Diana Prince        |        15000.25 |
|        105 | Ethan Hunt          |        50000.00 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> -- Task 2: Retrieving Data
mysql> -- Retrieve the account_holder_name and account_balance of allaccount holders
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Alice Johnson       |        25000.50 |
| Bob Smith           |        40000.75 |
| Charlie Brown       |        35000.00 |
| Diana Prince        |        15000.25 |
| Ethan Hunt          |        50000.00 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> -- Task 3: Filtering Data
mysql> -- Retrieve the account_holder_name and account_balance where the account_balance is more than 30,000
mysql> SELECT account_holder_name, account_balance
    -> FROM BankAccount
    -> WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Bob Smith           |        40000.75 |
| Charlie Brown       |        35000.00 |
| Ethan Hunt          |        50000.00 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> -- Task 4: Updating Data
mysql> -- Change the account_balance of the account holder whose ID is 101
mysql> UPDATE BankAccount
    -> SET account_balance = 30000.00
    -> WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
