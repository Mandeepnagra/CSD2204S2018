MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| csd2204s2018       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
+------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer;
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C02','Bob Marley','Bm','Toronto','100100',23);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C03','Cherlies Theron','Cher','New York','120134',20);
Query OK, 1 row affected (0.17 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C04','Denial Jack','DJ','Brazil','341020',25);
Query OK, 1 row affected (0.04 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C05','Donna Newman','New','Toronto','130120',50);
Query OK, 1 row affected (0.05 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C06','Eston M.','M.','Toronto','201023',65);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C07','Bobby Chacko','Chac','New York','320300',70);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C08','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.08 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C09','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.04 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C10','Jack Sp','Sparrow','New Jersey','102301',35);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,nickname FROM Customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob Marley      | Bm       |
| Cherlies Theron | Cher     |
| Denial Jack     | DJ       |
| Donna Newman    | New      |
| Eston M.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
| Jack Sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT city,postalcode FROM Customer;
+------------+------------+
| city       | postalcode |
+------------+------------+
| WDC        | 321200     |
| Toronto    | 100100     |
| New York   | 120134     |
| Brazil     | 341020     |
| Toronto    | 130120     |
| Toronto    | 201023     |
| New York   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New Jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='Ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalCode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE nickname='AK';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT city FROM Customer WHERE name='Eston M.';
+---------+
| city    |
+---------+
| Toronto |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE name='Eston M.';
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city!='Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city<>'Toronto';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Cherlies Theron | New York   |
| Denial Jack     | Brazil     |
| Bobby Chacko    | New York   |
| Ashko Charles   | USA        |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age='50';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age<'50';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age>'50';
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C06    | Eston M.      | M.       | Toronto  | 201023     |   65 |
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA      | 418921     |   62 |
+--------+---------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name>'Donna Newman';
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name>'Donna';
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name<'Donna';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C07    | Bobby Chacko    | Chac     | New York | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE name='Ashley' OR city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE name='Ashley' || city='Toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     |
| Bob Marley   | Toronto |
| Donna Newman | Toronto |
| Eston M.     | Toronto |
+--------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='New York'||city='Toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob Marley      | Toronto  |
| Cherlies Theron | New York |
| Donna Newman    | Toronto  |
| Eston M.        | Toronto  |
| Bobby Chacko    | New York |
+-----------------+----------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='Toronto' && age>50;
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto |
+----------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE city='Toronto' && age>50;
+----------+------+
| name     | age  |
+----------+------+
| Eston M. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) FROM Customer WHERE city='Toronto';
+----------+
| COUNT(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) "No. of Customers in the Toronto city" FROM Customer WHERE city='Toronto';
+--------------------------------------+
| No. of Customers in the Toronto city |
+--------------------------------------+
|                                    3 |
+--------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) "No. of Customers with the Age more than 40" FROM Customer WHERE age > 40;
+--------------------------------------------+
| No. of Customers with the Age more than 40 |
+--------------------------------------------+
|                                          5 |
+--------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) "No. of Customers with the Age more than 40" FROM Customer WHERE age > 50;
+--------------------------------------------+
| No. of Customers with the Age more than 40 |
+--------------------------------------------+
|                                          4 |
+--------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age > 30 && age < 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age BETWEEN 30 AND 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.     | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age NOT BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE NOT age BETWEEN 30 AND 70;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE MAX age;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'age' at line 1
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age = MAX;
ERROR 1054 (42S22): Unknown column 'MAX' in 'where clause'
MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE age(MAX);
ERROR 1305 (42000): FUNCTION csd2204s2018.age does not exist
MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE MAX(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE ax(age);
ERROR 1305 (42000): FUNCTION csd2204s2018.ax does not exist
MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE max(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S2018]> SELECT name,age FROM Customer WHERE age=max(age);
ERROR 1111 (HY000): Invalid use of group function
MariaDB [CSD2204S2018]> SELECT name,max(age) FROM Customer;
+--------+----------+
| name   | max(age) |
+--------+----------+
| Ashley |       72 |
+--------+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT max(age) FROM Customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT min(age) FROM Customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT avg(age) FROM Customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob Marley   | Bm       | Toronto  | 100100     |   23 |
| C07    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name NOT LIKE 'B%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '%B';
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '%n';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city LIKE 'N%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city LIKE 'New%';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '__n%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
| C09    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer LIMIT 4;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age=20||age=25||age=65||age=72;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age IN(20,25,65,72);
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil   | 341020     |   25 |
| C06    | Eston M.        | M.       | Toronto  | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age NOT IN(20,25,65,72);
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalCode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley   | Bm       | Toronto    | 100100     |   23 |
| C05    | Donna Newman | New      | Toronto    | 130120     |   50 |
| C07    | Bobby Chacko | Chac     | New York   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | Sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city IN('Toronto','GTA','USA','WDC');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalCode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321200     |   34 |
| C02    | Bob Marley    | Bm       | Toronto | 100100     |   23 |
| C05    | Donna Newman  | New      | Toronto | 130120     |   50 |
| C06    | Eston M.      | M.       | Toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city IN(LIKE '%N' );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKE '%N' )' at line 1
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city IN LIKe('%N');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'LIKe('%N')' at line 1
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE cityLIKE  IN('%N');
ERROR 1054 (42S22): Unknown column 'cityLIKE' in 'where clause'
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city LIKE  IN('%N');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'IN('%N')' at line 1
MariaDB [CSD2204S2018]> SELECT DISTINCT(city) 'UNIQUE CITIES' FROM Customer;
+---------------+
| UNIQUE CITIES |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(city) AS 'UNIQUE CITIES' FROM Customer;
+---------------+
| UNIQUE CITIES |
+---------------+
| WDC           |
| Toronto       |
| New York      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(DISTINCT(city)) AS 'UNIQUE CITIES' FROM Customer;
+---------------+
| UNIQUE CITIES |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name ASC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY age DESC;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY age DESC LIMIt 1;
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY age DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalCode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
| C07    | Bobby Chacko  | Chac     | New York | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY age DESC LIMIT 1 ORDER BY ASC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'ORDER BY ASC' at line 1
MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t  ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalCode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | Chac     | New York | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t  ORDER BY age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custId | name       | nickname | city    | postalCode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob Marley | Bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT max(age)*100;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
MariaDB [CSD2204S2018]> SELECT max(age)*100 FROM Customer;
+--------------+
| max(age)*100 |
+--------------+
|         7200 |
+--------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT max(age)+10/2 FROM Customer;
+---------------+
| max(age)+10/2 |
+---------------+
|       77.0000 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> EXIT
