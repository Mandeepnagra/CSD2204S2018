MariaDB [(none)]> SHOW VARIABLES LIKE 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.31-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| test               |
+--------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> CREATE DATABASE CSD2204S2018;
ERROR 1044 (42000): Access denied for user ''@'localhost' to database 'csd2204s2018'
MariaDB [(none)]> SHOW DATABASES:
    -> SHOW DATABASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':
SHOW DATABASES' at line 1
MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> CREATE TABLE Customer(
    -> custId VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalCode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.21 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
+------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> EXIT;
