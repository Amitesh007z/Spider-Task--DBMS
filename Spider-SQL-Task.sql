C:\Users\AMITESH>mysql -u Amitesh -p
Enter password: **************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.37 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE inventoryDB;
ERROR 1007 (HY000): Can't create database 'inventorydb'; database exists

mysql> DROP DATABASE inventoryDB;
Query OK, 1 row affected (0.04 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.01 sec)

mysql> CREATE DATABASE inventoryDB;
Query OK, 1 row affected (0.01 sec)

mysql> USE products;
ERROR 1049 (42000): Unknown database 'products'

mysql> USE inventoryDB;
Database changed

mysql> CREATE TABLE products(name VARCHAR(255) NOT NULL,description TEXT,price DECIMAL(10,2) NOT NULL,quantity INT NOT NULL,category VARCHAR(255));
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO products (name, description, price, quantity, category) VALUES  ("ZERO TO ONE","book by peter thiel",12,2,"book");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO products (name, description, price, quantity, category) VALUES  ("Boat","Boat Earphones",38,4,"Electr
onics");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO products (name, description, price, quantity, category) VALUES  ("Asus"," A Laptop",1218,2,"laptop");

Query OK, 1 row affected (0.01 sec)

mysql> SHOW products;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'products' at line 1

mysql> SELECT * FROM products;
+-------------+---------------------+---------+----------+-------------+
| name        | description         | price   | quantity | category    |
+-------------+---------------------+---------+----------+-------------+
| ZERO TO ONE | book by peter thiel |   12.00 |        2 | book        |
| Boat        | Boat Earphones      |   38.00 |        4 | Electronics |
| Asus        |  A Laptop           | 1218.00 |        2 | laptop      |
+-------------+---------------------+---------+----------+-------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM products where price<50;
+-------------+---------------------+-------+----------+-------------+
| name        | description         | price | quantity | category    |
+-------------+---------------------+-------+----------+-------------+
| ZERO TO ONE | book by peter thiel | 12.00 |        2 | book        |
| Boat        | Boat Earphones      | 38.00 |        4 | Electronics |
+-------------+---------------------+-------+----------+-------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM products WHERE quantity>2;
+------+----------------+-------+----------+-------------+
| name | description    | price | quantity | category    |
+------+----------------+-------+----------+-------------+
| Boat | Boat Earphones | 38.00 |        4 | Electronics |
+------+----------------+-------+----------+-------------+
1 row in set (0.00 sec)

mysql> UPDATE products SET price= 1000 WHERE name="Asus";
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM products;
+-------------+---------------------+---------+----------+-------------+
| name        | description         | price   | quantity | category    |
+-------------+---------------------+---------+----------+-------------+
| ZERO TO ONE | book by peter thiel |   12.00 |        2 | book        |
| Boat        | Boat Earphones      |   38.00 |        4 | Electronics |
| Asus        |  A Laptop           | 1000.00 |        2 | laptop      |
+-------------+---------------------+---------+----------+-------------+
3 rows in set (0.00 sec)

mysql> DELETE FROM products WHERE name="ZERO TO ONE";
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM products;
+------+----------------+---------+----------+-------------+
| name | description    | price   | quantity | category    |
+------+----------------+---------+----------+-------------+
| Boat | Boat Earphones |   38.00 |        4 | Electronics |
| Asus |  A Laptop      | 1000.00 |        2 | laptop      |
+------+----------------+---------+----------+-------------+
2 rows in set (0.00 sec)

mysql>