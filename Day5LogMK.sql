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
10 rows in set (0.07 sec)

MariaDB [CSD2204S2018]> CREATE TABLE Persons(
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL, 
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY(ID,LastName)
    -> );
Query OK, 0 rows affected (0.23 sec)

MariaDB [CSD2204S2018]> DESC Persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(PersonID)
    -> );
ERROR 1005 (HY000): Can't create table `csd2204s2018`.`orders` (errno: 150 "Foreign key constraint is incorrectly formed")
MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ')' at line 7
MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (ID)
    -> REFERENCES Persons(ID)
    -> );
ERROR 1072 (42000): Key column 'ID' doesn't exist in table
MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.26 sec)

MariaDB [CSD2204S2018]> SHOW CREATE TABLE Orders;
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                                                                      |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Orders | CREATE TABLE `orders` (
  `OrderID` int(3) NOT NULL,
  `OrderNumber` int(3) NOT NULL,
  `PersonID` int(3) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_PersonOrder` (`PersonID`),
  CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM Orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC Orders;
+-------------+--------+------+-----+---------+-------+
| Field       | Type   | Null | Key | Default | Extra |
+-------------+--------+------+-----+---------+-------+
| OrderID     | int(3) | NO   | PRI | NULL    |       |
| OrderNumber | int(3) | NO   |     | NULL    |       |
| PersonID    | int(3) | YES  | MUL | NULL    |       |
+-------------+--------+------+-----+---------+-------+
3 rows in set (0.01 sec)

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

MariaDB [CSD2204S2018]> CREATE TABLE c1 AS SELECT * FROM Customer;
Query OK, 10 rows affected (0.24 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> CREATE TABLE c2 AS SELECT name,postalcode FROM Customer WHERE city= 'Toronto';
Query OK, 3 rows affected (0.23 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> DESC c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c1;
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

MariaDB [CSD2204S2018]> SELECT * FROM c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| c1                     |
| c2                     |
| customer               |
| orders                 |
| persons                |
+------------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> CREATE TABLE c3 LIKE Customer;
Query OK, 0 rows affected (0.19 sec)

MariaDB [CSD2204S2018]> DESC c3;
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

MariaDB [CSD2204S2018]> SELECT * FROM c3;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> INSERT INTO c3 SELECT * FROM Customer;
Query OK, 10 rows affected (0.05 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM c3;
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

MariaDB [CSD2204S2018]> ALTER TABLE c3 ADD COLUMN Country VARCHAR(100);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custId     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalCode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| Country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.04 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 MODIFY Country VARCHAR(40);
Query OK, 10 rows affected (1.19 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 MODIFY country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.07 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 CHANGE COLUMN postalcode zipcode VARCHAR(6);
Query OK, 10 rows affected (0.62 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> 
MariaDB [CSD2204S2018]> DESC c3;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| custId   | varchar(5)  | NO   | PRI | NULL    |       |
| name     | varchar(50) | YES  |     | NULL    |       |
| nickname | varchar(10) | YES  |     | NULL    |       |
| city     | varchar(20) | YES  |     | NULL    |       |
| zipcode  | varchar(6)  | YES  |     | NULL    |       |
| age      | int(3)      | YES  |     | NULL    |       |
| country  | varchar(40) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 CHANGE COLUMN zipcode postalcode  VARCHAR(6);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> ALTER TABLE c3 CHANGE COLUMN custId customerID VARCHAR(6);
Query OK, 10 rows affected (0.60 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(6)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 DROP COLUMN nickname;
Query OK, 0 rows affected (0.31 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(6)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (0.70 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(6)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(6)  | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.04 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c1 ADD primary key(custId);
Query OK, 0 rows affected (0.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c1;
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
6 rows in set (0.04 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c1 DROP INDEX custID;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [CSD2204S2018]> Show variables like 'version';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| version       | 10.1.31-MariaDB |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> ALTER TABLE c1 DROP primary key;
Query OK, 10 rows affected (0.82 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> DESC c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> DESC person;
ERROR 1146 (42S02): Table 'csd2204s2018.person' doesn't exist
MariaDB [CSD2204S2018]> DESC persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   | PRI | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM PERSONS:
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ':' at line 1
MariaDB [CSD2204S2018]> SHOW INDEX FROM PERSONS;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| persons |          0 | PRIMARY  |            2 | LastName    | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | NULL    |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | NULL    |
| C03        | Cherlies Theron | New York   | 120134     |   20 | NULL    |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | NULL    |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | NULL    |
| C06        | Eston M.        | Toronto    | 201023     |   65 | NULL    |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | NULL    |
| C08        | Ashko Charles   | USA        | 421044     |   72 | NULL    |
| C09        | Tony Special    | GTA        | 418921     |   62 | NULL    |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | NULL    |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.02 sec)

MariaDB [CSD2204S2018]> UPDATE c3 SET country = 'USA';
Query OK, 10 rows affected (0.04 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | USA     |
| C03        | Cherlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | USA     |
| C06        | Eston M.        | Toronto    | 201023     |   65 | USA     |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | USA     |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> UPDATE c3 SET country = 'CANADA' WHERE city IN('Toronto','GTA');
Query OK, 4 rows affected (0.04 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------+
| customerID | name            | city       | postalcode | age  | country |
+------------+-----------------+------------+------------+------+---------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA     |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | CANADA  |
| C03        | Cherlies Theron | New York   | 120134     |   20 | USA     |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | USA     |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | CANADA  |
| C06        | Eston M.        | Toronto    | 201023     |   65 | CANADA  |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA        | 418921     |   62 | CANADA  |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA     |
+------------+-----------------+------------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> UPDATE c3 SET country = 'SOUTH AMERICA' WHERE city='Brazil';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM c3;
+------------+-----------------+------------+------------+------+---------------+
| customerID | name            | city       | postalcode | age  | country       |
+------------+-----------------+------------+------------+------+---------------+
| C01        | Ashley          | WDC        | 321200     |   34 | USA           |
| C02        | Bob Marley      | Toronto    | 100100     |   23 | CANADA        |
| C03        | Cherlies Theron | New York   | 120134     |   20 | USA           |
| C04        | Denial Jack     | Brazil     | 341020     |   25 | SOUTH AMERICA |
| C05        | Donna Newman    | Toronto    | 130120     |   50 | CANADA        |
| C06        | Eston M.        | Toronto    | 201023     |   65 | CANADA        |
| C07        | Bobby Chacko    | New York   | 320300     |   70 | USA           |
| C08        | Ashko Charles   | USA        | 421044     |   72 | USA           |
| C09        | Tony Special    | GTA        | 418921     |   62 | CANADA        |
| C10        | Jack Sp         | New Jersey | 102301     |   35 | USA           |
+------------+-----------------+------------+------------+------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.03 sec)

MariaDB [CSD2204S2018]> DELETE FROM c2 WHERE name LIKE 'Bob';
Query OK, 0 rows affected (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Bob Marley   | 100100     |
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DELETE FROM c2 WHERE name LIKE 'Bob%';
Query OK, 1 row affected (0.07 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c2;
+--------------+------------+
| name         | postalcode |
+--------------+------------+
| Donna Newman | 130120     |
| Eston M.     | 201023     |
+--------------+------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DELETE FROM c2;
Query OK, 2 rows affected (0.07 sec)

MariaDB [CSD2204S2018]> DELETE FROM c2;
Query OK, 0 rows affected (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c2;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> DROP TABLE c2;
Query OK, 0 rows affected (0.15 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| c1                     |
| c3                     |
| customer               |
| orders                 |
| persons                |
+------------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM c1;
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

MariaDB [CSD2204S2018]> UPDATE c1 SET custId = '1' WHERE age>=50;
Query OK, 5 rows affected (0.06 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM c1;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalCode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob Marley      | Bm       | Toronto    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | New York   | 120134     |   20 |
| C04    | Denial Jack     | DJ       | Brazil     | 341020     |   25 |
| 1      | Donna Newman    | New      | Toronto    | 130120     |   50 |
| 1      | Eston M.        | M.       | Toronto    | 201023     |   65 |
| 1      | Bobby Chacko    | Chac     | New York   | 320300     |   70 |
| 1      | Ashko Charles   | AK       | USA        | 421044     |   72 |
| 1      | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | Sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> EXIT;
