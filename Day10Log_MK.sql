MariaDB [CSD2204S2018]> SELECT salary FROM employees WHERE last_name LIKE 'Bell';
+---------+
| salary  |
+---------+
| 4000.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SLECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name LIKE 'Bell');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'SLECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary' at line 1
MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name LIKE 'Bell');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Diana       | Lorentz    |  4200.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Nandita     | Sarchand   |  4200.00 |
| Alexis      | Bull       |  4100.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
64 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       |
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.05 sec)

MariaDB [CSD2204S2018]> SELECT min_salary FROM jobs;
+------------+
| min_salary |
+------------+
|      20000 |
|      15000 |
|       3000 |
|       8200 |
|       4200 |
|       8200 |
|       4200 |
|      10000 |
|       6000 |
|       8000 |
|       2500 |
|       5500 |
|       2000 |
|       2500 |
|       4000 |
|       9000 |
|       4000 |
|       4000 |
|       4500 |
+------------+
19 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT min_salary+1000 FROM jobs;
+-----------------+
| min_salary+1000 |
+-----------------+
|           21000 |
|           16000 |
|            4000 |
|            9200 |
|            5200 |
|            9200 |
|            5200 |
|           11000 |
|            7000 |
|            9000 |
|            3500 |
|            6500 |
|            3000 |
|            3500 |
|            5000 |
|           10000 |
|            5000 |
|            5000 |
|            5500 |
+-----------------+
19 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT (min_salary) FROM jobs;
+------------+
| min_salary |
+------------+
|      20000 |
|      15000 |
|       3000 |
|       8200 |
|       4200 |
|       8200 |
|       4200 |
|      10000 |
|       6000 |
|       8000 |
|       2500 |
|       5500 |
|       2000 |
|       2500 |
|       4000 |
|       9000 |
|       4000 |
|       4000 |
|       4500 |
+------------+
19 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT MIN(min_salary) FROM jobs;
+-----------------+
| MIN(min_salary) |
+-----------------+
|            2000 |
+-----------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT MIN(min_salary)+1000 FROM jobs;
+----------------------+
| MIN(min_salary)+1000 |
+----------------------+
|                 3000 |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary = (SELECT MIN(min_salary)+1000 FROM jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT AVG(salary) FROM employees;
+-------------+
| AVG(salary) |
+-------------+
| 6461.682243 |
+-------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Michael     | Hartstein  | 13000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
51 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT AVG(salary) FROM employees GROUP BY department_id;
+--------------+
| AVG(salary)  |
+--------------+
|  7000.000000 |
|  4400.000000 |
|  9500.000000 |
|  4150.000000 |
|  6500.000000 |
|  3475.555556 |
|  5760.000000 |
| 10000.000000 |
|  8955.882353 |
| 19333.333333 |
|  8600.000000 |
| 10150.000000 |
+--------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ALL(SELECT AVG(salary) FROM employees GROUP BY department_id);
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ANY(SELECT AVG(salary) FROM employees GROUP BY department_id);
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Diana       | Lorentz    |  4200.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| Renske      | Ladwig     |  3600.00 |
| Trenna      | Rajs       |  3500.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Nandita     | Sarchand   |  4200.00 |
| Alexis      | Bull       |  4100.00 |
| Kelly       | Chung      |  3800.00 |
| Jennifer    | Dilly      |  3600.00 |
| Sarah       | Bell       |  4000.00 |
| Britney     | Everett    |  3900.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
70 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT MAX(salary) FROM employees WHERE job_id = 'SH_CLERK';
+-------------+
| MAX(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ANY( SELECT MAX(salary) FROM employees WHERE job_id = 'SH_CLERK');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| Alexander   | Hunold     |  9000.00 |
| Bruce       | Ernst      |  6000.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Nancy       | Greenberg  | 12000.00 |
| Daniel      | Faviet     |  9000.00 |
| John        | Chen       |  8200.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Luis        | Popp       |  6900.00 |
| Den         | Raphaely   | 11000.00 |
| Matthew     | Weiss      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| Payam       | Kaufling   |  7900.00 |
| Shanta      | Vollman    |  6500.00 |
| Kevin       | Mourgos    |  5800.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| David       | Bernstein  |  9500.00 |
| Peter       | Hall       |  9000.00 |
| Christopher | Olsen      |  8000.00 |
| Nanette     | Cambrault  |  7500.00 |
| Oliver      | Tuvault    |  7000.00 |
| Janette     | King       | 10000.00 |
| Patrick     | Sully      |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Lindsey     | Smith      |  8000.00 |
| Louise      | Doran      |  7500.00 |
| Sarath      | Sewall     |  7000.00 |
| Clara       | Vishney    | 10500.00 |
| Danielle    | Greene     |  9500.00 |
| Mattea      | Marvins    |  7200.00 |
| David       | Lee        |  6800.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Lisa        | Ozer       | 11500.00 |
| Harrison    | Bloom      | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Sundita     | Kumar      |  6100.00 |
| Ellen       | Abel       | 11000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| Kimberely   | Grant      |  7000.00 |
| Charles     | Johnson    |  6200.00 |
| Jennifer    | Whalen     |  4400.00 |
| Michael     | Hartstein  | 13000.00 |
| Pat         | Fay        |  6000.00 |
| Susan       | Mavris     |  6500.00 |
| Hermann     | Baer       | 10000.00 |
| Shelley     | Higgins    | 12000.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ANY( SELECT MAX(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ASC;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ANY( SELECT MAX(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary DESC;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 |
| Neena       | Kochhar    | 17000.00 |
| Lex         | De Haan    | 17000.00 |
| John        | Russell    | 14000.00 |
| Karen       | Partners   | 13500.00 |
| Michael     | Hartstein  | 13000.00 |
| Shelley     | Higgins    | 12000.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Lisa        | Ozer       | 11500.00 |
| Ellen       | Abel       | 11000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Clara       | Vishney    | 10500.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Peter       | Tucker     | 10000.00 |
| Janette     | King       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Hermann     | Baer       | 10000.00 |
| Tayler      | Fox        |  9600.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jack        | Livingston |  8400.00 |
| William     | Gietz      |  8300.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Payam       | Kaufling   |  7900.00 |
| Jose Manuel | Urman      |  7800.00 |
| Ismael      | Sciarra    |  7700.00 |
| Louise      | Doran      |  7500.00 |
| Nanette     | Cambrault  |  7500.00 |
| William     | Smith      |  7400.00 |
| Elizabeth   | Bates      |  7300.00 |
| Mattea      | Marvins    |  7200.00 |
| Sarath      | Sewall     |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Luis        | Popp       |  6900.00 |
| David       | Lee        |  6800.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| Sundar      | Ande       |  6400.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundita     | Kumar      |  6100.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Kevin       | Mourgos    |  5800.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Jennifer    | Whalen     |  4400.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > ANY( SELECT MAX(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ASC;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Jennifer    | Whalen     |  4400.00 |
| David       | Austin     |  4800.00 |
| Valli       | Pataballa  |  4800.00 |
| Kevin       | Mourgos    |  5800.00 |
| Bruce       | Ernst      |  6000.00 |
| Pat         | Fay        |  6000.00 |
| Sundita     | Kumar      |  6100.00 |
| Amit        | Banda      |  6200.00 |
| Charles     | Johnson    |  6200.00 |
| Sundar      | Ande       |  6400.00 |
| Susan       | Mavris     |  6500.00 |
| Shanta      | Vollman    |  6500.00 |
| David       | Lee        |  6800.00 |
| Luis        | Popp       |  6900.00 |
| Sarath      | Sewall     |  7000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Kimberely   | Grant      |  7000.00 |
| Mattea      | Marvins    |  7200.00 |
| Elizabeth   | Bates      |  7300.00 |
| William     | Smith      |  7400.00 |
| Nanette     | Cambrault  |  7500.00 |
| Louise      | Doran      |  7500.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jose Manuel | Urman      |  7800.00 |
| Payam       | Kaufling   |  7900.00 |
| Lindsey     | Smith      |  8000.00 |
| Matthew     | Weiss      |  8000.00 |
| Christopher | Olsen      |  8000.00 |
| Adam        | Fripp      |  8200.00 |
| John        | Chen       |  8200.00 |
| William     | Gietz      |  8300.00 |
| Jack        | Livingston |  8400.00 |
| Jonathon    | Taylor     |  8600.00 |
| Alyssa      | Hutton     |  8800.00 |
| Allan       | McEwen     |  9000.00 |
| Peter       | Hall       |  9000.00 |
| Alexander   | Hunold     |  9000.00 |
| Daniel      | Faviet     |  9000.00 |
| Patrick     | Sully      |  9500.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Bernstein  |  9500.00 |
| Tayler      | Fox        |  9600.00 |
| Hermann     | Baer       | 10000.00 |
| Harrison    | Bloom      | 10000.00 |
| Janette     | King       | 10000.00 |
| Peter       | Tucker     | 10000.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Clara       | Vishney    | 10500.00 |
| Gerald      | Cambrault  | 11000.00 |
| Ellen       | Abel       | 11000.00 |
| Den         | Raphaely   | 11000.00 |
| Lisa        | Ozer       | 11500.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Shelley     | Higgins    | 12000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Michael     | Hartstein  | 13000.00 |
| Karen       | Partners   | 13500.00 |
| John        | Russell    | 14000.00 |
| Lex         | De Haan    | 17000.00 |
| Neena       | Kochhar    | 17000.00 |
| Steven      | King       | 24000.00 |
+-------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary < ANY( SELECT salary FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ASC;
+------------+-------------+---------+
| first_name | last_name   | salary  |
+------------+-------------+---------+
| TJ         | Olson       | 2100.00 |
| Hazel      | Philtanker  | 2200.00 |
| Steven     | Markle      | 2200.00 |
| Ki         | Gee         | 2400.00 |
| James      | Landry      | 2400.00 |
| Martha     | Sullivan    | 2500.00 |
| James      | Marlow      | 2500.00 |
| Randall    | Perkins     | 2500.00 |
| Karen      | Colmenares  | 2500.00 |
| Peter      | Vargas      | 2500.00 |
| Joshua     | Patel       | 2500.00 |
| Douglas    | Grant       | 2600.00 |
| Donald     | OConnell    | 2600.00 |
| Guy        | Himuro      | 2600.00 |
| Randall    | Matos       | 2600.00 |
| Irene      | Mikkilineni | 2700.00 |
| John       | Seo         | 2700.00 |
| Mozhe      | Atkinson    | 2800.00 |
| Vance      | Jones       | 2800.00 |
| Sigal      | Tobias      | 2800.00 |
| Girard     | Geoni       | 2800.00 |
| Michael    | Rogers      | 2900.00 |
| Timothy    | Gates       | 2900.00 |
| Shelli     | Baida       | 2900.00 |
| Kevin      | Feeney      | 3000.00 |
| Anthony    | Cabrio      | 3000.00 |
| Alana      | Walsh       | 3100.00 |
| Jean       | Fleaur      | 3100.00 |
| Alexander  | Khoo        | 3100.00 |
| Curtis     | Davies      | 3100.00 |
| Stephen    | Stiles      | 3200.00 |
| Julia      | Nayer       | 3200.00 |
| Samuel     | McCain      | 3200.00 |
| Winston    | Taylor      | 3200.00 |
| Jason      | Mallin      | 3300.00 |
| Laura      | Bissot      | 3300.00 |
| Julia      | Dellinger   | 3400.00 |
| Trenna     | Rajs        | 3500.00 |
| Renske     | Ladwig      | 3600.00 |
| Jennifer   | Dilly       | 3600.00 |
| Kelly      | Chung       | 3800.00 |
| Britney    | Everett     | 3900.00 |
| Sarah      | Bell        | 4000.00 |
| Alexis     | Bull        | 4100.00 |
+------------+-------------+---------+
44 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT first_name, last_name, salary FROM employees WHERE salary < ANY( SELECT min(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ASC;
+------------+------------+---------+
| first_name | last_name  | salary  |
+------------+------------+---------+
| TJ         | Olson      | 2100.00 |
| Steven     | Markle     | 2200.00 |
| Hazel      | Philtanker | 2200.00 |
| James      | Landry     | 2400.00 |
| Ki         | Gee        | 2400.00 |
+------------+------------+---------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.04 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(manager_id) FROM employees WHERE manager_id != 0;
+------------+
| manager_id |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        120 |
|        121 |
|        122 |
|        123 |
|        124 |
|        145 |
|        146 |
|        147 |
|        148 |
|        149 |
|        201 |
|        205 |
+------------+
18 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT firts_name, last_name FROM emloyees WHERE employee_id NOT IN (SELECT DISTINCT(manager_id) FROM employees WHERE manager_id != 0);
ERROR 1146 (42S02): Table 'csd2204s2018.emloyees' doesn't exist
MariaDB [CSD2204S2018]> SELECT firts_name, last_name FROM employees WHERE employee_id NOT IN (SELECT DISTINCT(manager_id) FROM employees WHERE manager_id != 0);
ERROR 1054 (42S22): Unknown column 'firts_name' in 'field list'
MariaDB [CSD2204S2018]> SELECT first_name, last_name FROM employees WHERE employee_id NOT IN (SELECT DISTINCT(manager_id) FROM employees WHERE manager_id != 0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT b.first_name, b.last_name FROM employees b WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id = b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set, 3 warnings (0.04 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(department_id) FROM employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT department_id, department_name FROM departments WHERE department_id IN(SELECT DISTINCT(department_id) FROM employees);
+---------------+------------------+
| department_id | department_name  |
+---------------+------------------+
|            10 | Administration   |
|            20 | Marketing        |
|            30 | Purchasing       |
|            40 | Human Resources  |
|            50 | Shipping         |
|            60 | IT               |
|            70 | Public Relations |
|            80 | Sales            |
|            90 | Executive        |
|           100 | Finance          |
|           110 | Accounting       |
+---------------+------------------+
11 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT a.department_id,b.first_name, b.last_name a.department_name FROM departments a WHERE a.department_id IN(SELECT DISTINCT(b.department_id) FROM employees b);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '.department_name FROM departments a WHERE a.department_id IN(SELECT DISTINCT(b.d' at line 1
MariaDB [CSD2204S2018]> SELECT a.department_id,b.first_name, b.last_name, a.department_name FROM departments a WHERE a.department_id IN(SELECT DISTINCT(b.department_id) FROM employees b);
ERROR 1054 (42S22): Unknown column 'b.first_name' in 'field list'
MariaDB [CSD2204S2018]> SELECT first_name, last_name, (SELECT dapartment_name FROM departments d WHERE d.department_id = e.department_id) "department name" FROM employees e;
ERROR 1054 (42S22): Unknown column 'dapartment_name' in 'field list'
MariaDB [CSD2204S2018]> SELECT first_name, last_name, (SELECT department_name FROM departments d WHERE d.department_id = e.department_id) "department name" FROM employees e;
+-------------+-------------+------------------+
| first_name  | last_name   | department name  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT AVG(salary) GROUP BY department_id FROM employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'GROUP BY department_id FROM employees' at line 1
MariaDB [CSD2204S2018]> SELECT AVG(salary) FROM employees GROUP BY department_id;
+--------------+
| AVG(salary)  |
+--------------+
|  7000.000000 |
|  4400.000000 |
|  9500.000000 |
|  4150.000000 |
|  6500.000000 |
|  3475.555556 |
|  5760.000000 |
| 10000.000000 |
|  8955.882353 |
| 19333.333333 |
|  8600.000000 |
| 10150.000000 |
+--------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees WHERE IN(SELECT AVG(salary) FROM employees GROUP BY department_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'IN(SELECT AVG(salary) FROM employees GROUP BY department_id)' at line 1
MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary IN (SELECT AVG(salary) FROM employees GROUP BY department_id);
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         123 | Shanta     | Vollman   |  6500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         155 | Oliver     | Tuvault   |  7000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         161 | Sarath     | Sewall    |  7000.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         176 | Jonathon   | Taylor    |  8600.00 |
|         178 | Kimberely  | Grant     |  7000.00 |
|         200 | Jennifer   | Whalen    |  4400.00 |
|         203 | Susan      | Mavris    |  6500.00 |
|         204 | Hermann    | Baer      | 10000.00 |
+-------------+------------+-----------+----------+
14 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary > ANY (SELECT AVG(salary) FROM employees GROUP BY department_id);
+-------------+-------------+------------+----------+
| employee_id | first_name  | last_name  | salary   |
+-------------+-------------+------------+----------+
|         100 | Steven      | King       | 24000.00 |
|         101 | Neena       | Kochhar    | 17000.00 |
|         102 | Lex         | De Haan    | 17000.00 |
|         103 | Alexander   | Hunold     |  9000.00 |
|         104 | Bruce       | Ernst      |  6000.00 |
|         105 | David       | Austin     |  4800.00 |
|         106 | Valli       | Pataballa  |  4800.00 |
|         107 | Diana       | Lorentz    |  4200.00 |
|         108 | Nancy       | Greenberg  | 12000.00 |
|         109 | Daniel      | Faviet     |  9000.00 |
|         110 | John        | Chen       |  8200.00 |
|         111 | Ismael      | Sciarra    |  7700.00 |
|         112 | Jose Manuel | Urman      |  7800.00 |
|         113 | Luis        | Popp       |  6900.00 |
|         114 | Den         | Raphaely   | 11000.00 |
|         120 | Matthew     | Weiss      |  8000.00 |
|         121 | Adam        | Fripp      |  8200.00 |
|         122 | Payam       | Kaufling   |  7900.00 |
|         123 | Shanta      | Vollman    |  6500.00 |
|         124 | Kevin       | Mourgos    |  5800.00 |
|         137 | Renske      | Ladwig     |  3600.00 |
|         141 | Trenna      | Rajs       |  3500.00 |
|         145 | John        | Russell    | 14000.00 |
|         146 | Karen       | Partners   | 13500.00 |
|         147 | Alberto     | Errazuriz  | 12000.00 |
|         148 | Gerald      | Cambrault  | 11000.00 |
|         149 | Eleni       | Zlotkey    | 10500.00 |
|         150 | Peter       | Tucker     | 10000.00 |
|         151 | David       | Bernstein  |  9500.00 |
|         152 | Peter       | Hall       |  9000.00 |
|         153 | Christopher | Olsen      |  8000.00 |
|         154 | Nanette     | Cambrault  |  7500.00 |
|         155 | Oliver      | Tuvault    |  7000.00 |
|         156 | Janette     | King       | 10000.00 |
|         157 | Patrick     | Sully      |  9500.00 |
|         158 | Allan       | McEwen     |  9000.00 |
|         159 | Lindsey     | Smith      |  8000.00 |
|         160 | Louise      | Doran      |  7500.00 |
|         161 | Sarath      | Sewall     |  7000.00 |
|         162 | Clara       | Vishney    | 10500.00 |
|         163 | Danielle    | Greene     |  9500.00 |
|         164 | Mattea      | Marvins    |  7200.00 |
|         165 | David       | Lee        |  6800.00 |
|         166 | Sundar      | Ande       |  6400.00 |
|         167 | Amit        | Banda      |  6200.00 |
|         168 | Lisa        | Ozer       | 11500.00 |
|         169 | Harrison    | Bloom      | 10000.00 |
|         170 | Tayler      | Fox        |  9600.00 |
|         171 | William     | Smith      |  7400.00 |
|         172 | Elizabeth   | Bates      |  7300.00 |
|         173 | Sundita     | Kumar      |  6100.00 |
|         174 | Ellen       | Abel       | 11000.00 |
|         175 | Alyssa      | Hutton     |  8800.00 |
|         176 | Jonathon    | Taylor     |  8600.00 |
|         177 | Jack        | Livingston |  8400.00 |
|         178 | Kimberely   | Grant      |  7000.00 |
|         179 | Charles     | Johnson    |  6200.00 |
|         184 | Nandita     | Sarchand   |  4200.00 |
|         185 | Alexis      | Bull       |  4100.00 |
|         188 | Kelly       | Chung      |  3800.00 |
|         189 | Jennifer    | Dilly      |  3600.00 |
|         192 | Sarah       | Bell       |  4000.00 |
|         193 | Britney     | Everett    |  3900.00 |
|         200 | Jennifer    | Whalen     |  4400.00 |
|         201 | Michael     | Hartstein  | 13000.00 |
|         202 | Pat         | Fay        |  6000.00 |
|         203 | Susan       | Mavris     |  6500.00 |
|         204 | Hermann     | Baer       | 10000.00 |
|         205 | Shelley     | Higgins    | 12000.00 |
|         206 | William     | Gietz      |  8300.00 |
+-------------+-------------+------------+----------+
70 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees a WHERE salary > ANY (SELECT AVG(salary) FROM employees b GROUP BY department_id) AND a.department_id = b.department_id ;
ERROR 1054 (42S22): Unknown column 'b.department_id' in 'where clause'
MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees a WHERE salary > (SELECT AVG(salary) FROM employees b GROUP BY department_id);
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) FROM employees GROUP BY department_id);
ERROR 1242 (21000): Subquery returns more than 1 row
MariaDB [CSD2204S2018]> SELECT AVG(salary), department_id FROM employees GROUP BY department_id;
+--------------+---------------+
| AVG(salary)  | department_id |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT employee_id, first_name, last_name, salary FROM employees e WHERE salary > (SELECT AVG(salary) FROM employees GROUP BY department_id HAVING department_id = e.department_id);
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(salary) FROM employees e1 WHERE 5 = (SELECT COUNT(DISTINCT salary) FROM employees e2 WHERE e2.salary >= e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(salary) FROM employees e1 WHERE 4 = (SELECT COUNT(DISTINCT salary) FROM employees e2 WHERE e2.salary <= e1.salary);
+---------+
| salary  |
+---------+
| 2500.00 |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM employees ORDER BY employee_id DESC LIMIT 10) e1 ORDER BY employee_id ASC;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(department_id) FROM employees;
+---------------+
| department_id |
+---------------+
|             0 |
|            10 |
|            20 |
|            30 |
|            40 |
|            50 |
|            60 |
|            70 |
|            80 |
|            90 |
|           100 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT department_id, department_name FROM departments WHERE NOT IN (SELECT DISTINCT(department_id) FROM employees);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'IN (SELECT DISTINCT(department_id) FROM employees)' at line 1
MariaDB [CSD2204S2018]> SELECT department_id, department_name FROM departments WHERE department_id NOT IN (SELECT DISTINCT(department_id) FROM employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT salary FROM employees ORDER BY salary DESC;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 10500.00 |
| 10500.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8200.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3300.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3000.00 |
|  3000.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2700.00 |
|  2700.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2400.00 |
|  2400.00 |
|  2200.00 |
|  2200.00 |
|  2100.00 |
+----------+
107 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(salary) FROM employees ORDER BY salary DESC LIMIT 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> exit;
