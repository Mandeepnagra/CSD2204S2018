MariaDB [(none)]> show datases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'datases' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s2018       |
| information_schema |
| mysql              |
| pe_csd2204s18      |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.00 sec)

MariaDB [(none)]> use csd2204s2018;
Database changed
MariaDB [csd2204s2018]> show tables;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| c1                     |
| c3                     |
| customer               |
| orders                 |
| persons                |
| test_data_mockaroo     |
+------------------------+
6 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer;
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
10 rows in set (0.06 sec)

MariaDB [csd2204s2018]> select * from order by name,city asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order by name,city asc' at line 1
MariaDB [csd2204s2018]> select * from customer order by name,city asc;
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

MariaDB [csd2204s2018]> select * from customer order by name desc,city asc;
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

MariaDB [csd2204s2018]> select * from customer order by desc LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'desc LIMIT 3' at line 1
MariaDB [csd2204s2018]> select * from customer order by custid desc LIMIT 3;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C10    | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special  | Specie   | GTA        | 418921     |   62 |
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer order by custid desc LIMIT 3 order by asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order by asc' at line 1
MariaDB [csd2204s2018]> select * from customer order by custid desc LIMIT 3 order by custid asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'order by custid asc' at line 1
MariaDB [csd2204s2018]> select * from customer order by custid desc LIMIT 3 ( select * from t order by asc);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '( select * from t order by asc)' at line 1
MariaDB [csd2204s2018]> select * from ( select * from customer order by custid desc limit 3) as t order by custid asc;
+--------+---------------+----------+------------+------------+------+
| custId | name          | nickname | city       | postalCode | age  |
+--------+---------------+----------+------------+------------+------+
| C08    | Ashko Charles | AK       | USA        | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp       | Sparrow  | New Jersey | 102301     |   35 |
+--------+---------------+----------+------------+------------+------+
3 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer GROUP BY city;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select city from customer GROUP BY city;
+------------+
| city       |
+------------+
| Brazil     |
| GTA        |
| New Jersey |
| New York   |
| Toronto    |
| USA        |
| WDC        |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select COUNT(city) "Unique Cities" from customer GROUP BY city;
+---------------+
| Unique Cities |
+---------------+
|             1 |
|             1 |
|             1 |
|             2 |
|             3 |
|             1 |
|             1 |
+---------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select city, COUNT(city) "No. of Customers" from customer GROUP BY city;
+------------+------------------+
| city       | No. of Customers |
+------------+------------------+
| Brazil     |                1 |
| GTA        |                1 |
| New Jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
| USA        |                1 |
| WDC        |                1 |
+------------+------------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select DISTINCT(city) from customer;
+------------+
| city       |
+------------+
| WDC        |
| Toronto    |
| New York   |
| Brazil     |
| USA        |
| GTA        |
| New Jersey |
+------------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select COUNT(DISTINCT(city)) from customer;
+-----------------------+
| COUNT(DISTINCT(city)) |
+-----------------------+
|                     7 |
+-----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select city, count(city) "NO. of Customers" FROM Customer GROUP BY City HAVING city LIKE 'New%';
+------------+------------------+
| city       | NO. of Customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
+------------+------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select city, count(city) "NO. of Customers" FROM Customer GROUP BY City HAVING city LIKE 'New%' OR 'Toronto';
+------------+------------------+
| city       | NO. of Customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
+------------+------------------+
2 rows in set, 2 warnings (0.00 sec)

MariaDB [csd2204s2018]> select city, count(city) "NO. of Customers" FROM Customer GROUP BY City HAVING city LIKE 'New%' OR city = 'Toronto';
+------------+------------------+
| city       | NO. of Customers |
+------------+------------------+
| New Jersey |                1 |
| New York   |                2 |
| Toronto    |                3 |
+------------+------------------+
3 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select city, count(city) "NO. of Customers" FROM Customer GROUP BY City  HAVING COUNT(city) > 2;
+---------+------------------+
| city    | NO. of Customers |
+---------+------------------+
| Toronto |                3 |
+---------+------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^D';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial Jack  | DJ       | Brazil  | 341020     |   25 |
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP 'n$';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
| C05    | Donna Newman    | New      | Toronto  | 130120     |   50 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^..a';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^..e';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalCode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New York | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE postalcode REGEXP '^[0-9]';
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

MariaDB [csd2204s2018]> select * from customer WHERE postalcode REGEXP '^[A-Z]';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE postalcode REGEXP '^A*';
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

MariaDB [csd2204s2018]> select * from customer WHERE postalcode REGEXP '^A+';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE nickname REGEXP '^A*';
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

MariaDB [csd2204s2018]> select * from customer WHERE nickname REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE nickname REGEXP '^A?';
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

MariaDB [csd2204s2018]> select * from customer WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^A?';
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

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^A*';
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

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^D*';
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

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^D?';
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

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^B?';
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

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^B*';
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

MariaDB [csd2204s2018]> select * from customer WHERE city REGEXP '^o{3}';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE city REGEXP '^O{3}';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE city REGEXP '^n{2}';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP '^n{2}';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer WHERE name REGEXP 'n{2}';
+--------+--------------+----------+---------+------------+------+
| custId | name         | nickname | city    | postalCode | age  |
+--------+--------------+----------+---------+------------+------+
| C05    | Donna Newman | New      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer where nickname rlike ''^A[4];
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '[4]' at line 1
MariaDB [csd2204s2018]> select * from customer where nickname rlike '^A[4]';
Empty set (0.00 sec)

MariaDB [csd2204s2018]> select * from customer where nickname rlike '^[A]';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalCode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:15:56 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> alter table customer add column dob date;
Query OK, 0 rows affected (0.41 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> DESC customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [csd2204s2018]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------+
| custId | name            | nickname | city       | postalCode | age  | dob  |
+--------+-----------------+----------+------------+------------+------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | NULL |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 | NULL |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | NULL |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | NULL |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 | NULL |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | NULL |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | NULL |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | NULL |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | NULL |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | NULL |
+--------+-----------------+----------+------------+------------+------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> update customer SET dob = '1991-01-10' WHERE custId = 'C01';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1996-04-15' WHERE custId = 'C02';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1994-05-09' WHERE custId = 'C03';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1994-11-03' WHERE custId = 'C04';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1995-01-16' WHERE custId = 'C05';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1995-10-22' WHERE custId = 'C06';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1992-11-07' WHERE custId = 'C07';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1996-05-07' WHERE custId = 'C08';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1985-08-28' WHERE custId = 'C09';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> update customer SET dob = '1995-07-17' WHERE custId = 'C10';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s2018]> select * from customer;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalCode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1991-01-10 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 | 1996-04-15 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 | 1994-05-09 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 | 1994-11-03 |
| C05    | Donna Newman    | New      | Toronto    | 130120     |   50 | 1995-01-16 |
| C06    | Eston M.        | M.       | Toronto    | 201023     |   65 | 1995-10-22 |
| C07    | Bobby Chacko    | Chac     | New York   | 320300     |   70 | 1992-11-07 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 1996-05-07 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1985-08-28 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 | 1995-07-17 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) FROM Customer;
+-----------------+------------+-----------------------------------+
| name            | dob        | TIMESTAMPDIFF(YEAR,dob,CURDATE()) |
+-----------------+------------+-----------------------------------+
| Ashley          | 1991-01-10 |                                27 |
| Bob Marley      | 1996-04-15 |                                22 |
| Cherlies Theron | 1994-05-09 |                                24 |
| Denial Jack     | 1994-11-03 |                                23 |
| Donna Newman    | 1995-01-16 |                                23 |
| Eston M.        | 1995-10-22 |                                22 |
| Bobby Chacko    | 1992-11-07 |                                25 |
| Ashko Charles   | 1996-05-07 |                                22 |
| Tony Special    | 1985-08-28 |                                32 |
| Jack Sp         | 1995-07-17 |                                22 |
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1994-11-03 |   23 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1991-01-10 |   27 |
| Bob Marley      | 1996-04-15 |   22 |
| Cherlies Theron | 1994-05-09 |   24 |
| Denial Jack     | 1994-11-03 |   23 |
| Donna Newman    | 1995-01-16 |   23 |
| Eston M.        | 1995-10-22 |   22 |
| Bobby Chacko    | 1992-11-07 |   25 |
| Ashko Charles   | 1996-05-07 |   22 |
| Tony Special    | 1985-08-28 |   32 |
| Jack Sp         | 1995-07-17 |   22 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer HAVING age=22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
+---------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,CURDATE()) "age" FROM Customer WHERE TIMESTAMPDIFF(YEAR,dob,CURDATE())=22;
+---------------+------------+------+
| name          | dob        | age  |
+---------------+------------+------+
| Bob Marley    | 1996-04-15 |   22 |
| Eston M.      | 1995-10-22 |   22 |
| Ashko Charles | 1996-05-07 |   22 |
| Jack Sp       | 1995-07-17 |   22 |
+---------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [csd2204s2018]> exit;
