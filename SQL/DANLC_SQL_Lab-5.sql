Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 34
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
| bankaccount                       |
| course                            |
| employee                          |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
+-----------------------------------+
8 rows in set (0.05 sec)

mysql> select * from student;
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
6 rows in set (0.02 sec)

mysql> SELECT * FROM student ORDER BY LastName ASC;
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
| StudentID | FirstName | LastName  | DateOfBirth         | Gender | Email               | Phone      |
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
| S005      | Ethan     | Adams     | 2002-07-19 00:00:00 | Male   | ethan@example.com   | 5678901234 |
| S003      | Charlie   | Brown     | 2004-01-15 00:00:00 | Male   | charlie@example.com | 3456789012 |
| S004      | Diana     | Clark     | 2003-11-30 00:00:00 | Female | diana@example.com   | 4567890123 |
| 001       | Tushar    | Deshpande | 2002-10-12 00:00:00 | M      | abc@example.com     | 0102020202 |
| S002      | Bob       | Johnson   | 2002-08-21 00:00:00 | Male   | bob@example.com     | 2345678901 |
| S001      | Alice     | Smith     | 2003-05-12 00:00:00 | Female | alice@example.com   | 1234567890 |
+-----------+-----------+-----------+---------------------+--------+---------------------+------------+
6 rows in set (0.00 sec)

mysql> SELECT Gender, COUNT(*) AS Total FROM Student GROUP BY Gender;
+--------+-------+
| Gender | Total |
+--------+-------+
| M      |     1 |
| Female |     2 |
| Male   |     3 |
+--------+-------+
3 rows in set (0.01 sec)

mysql> -- used group by clause and count() function
mysql>
