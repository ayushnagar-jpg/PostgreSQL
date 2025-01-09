Q1=> Create a transaction to insert two new employees and update the salary of an existing employee
Q2=>Commit the transaction to save the changes.
Query=>
BEGIN;
 INSERT INTO staff(employee_id,first_name,last_name,salary)VALUES(3,'akshya','singh',6000);
 INSERT INTO staff (employee_id, first_name, last_name, salary) VALUES (4, 'Jane', 'Smith', 65000);
 UPDATE staff SET salary = 6000 WHERE employee_id = 1;
 COMMIT;

BEGIN
INSERT 0 1
INSERT 0 1
UPDATE 1
COMMIT
 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           2 | Varun      | thakur    |  59000
           3 | Ashutosh   | Bro       |  40000
           3 | akshya     | singh     |   6000
           4 | Jane       | Smith     |  65000
           1 | Ayush      | Nagar     |   6000
(5 rows)
Q3=>Create a transaction to delete a product and insert a new product
Q4=>Rollback the transaction to undo the changes.
Q5=>Create a transaction to update the price of a product and insert a new

Query=>
BEGIN;
UPDATE products SET price = 12.99 WHERE product_id = 2;
INSERT INTO products (product_name, price, quantity) VALUES ('Updated Product', 19.99, 50);
SAVEPOINT my_savepoint;
UPDATE products SET price = 25.99 WHERE product_id = 3;
 ROLLBACK TO SAVEPOINT my_savepoint;
COMMIT;



BEGIN
DELETE 0
INSERT 0 1
ROLLBACK
 product_id | product_name | price | quantity 
------------+--------------+-------+----------
(0 rows)

BEGIN
UPDATE 0
INSERT 0 1
SAVEPOINT
UPDATE 0
ROLLBACK
COMMIT
 product_id |  product_name   | price | quantity 
------------+-----------------+-------+----------
          2 | Updated Product | 19.99 |       50
(1 row)

