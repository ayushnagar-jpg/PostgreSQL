Problem: A table stores birthdates as strings in the format 'YYYY-MM-DD'. You need to calculate the age of customers.
Solution: Cast the birthdate column to a date type and then use date functions to calculate the age.

QUERY>
UPDATE customers
SET birthdate = '1990-05-15'
WHERE customer_id = 1;

UPDATE customers
SET birthdate = '1995-08-20'
WHERE customer_id = 2;

SELECT 
    customer_id,
    first_name,
    last_name,
    birthdate,
    TIMESTAMPDIFF(YEAR, CAST(birthdate AS DATE), CURDATE()) AS age
FROM customers;



ALTER TABLE
UPDATE 1
 birthdate  |          age           
------------+------------------------
            | 
 1990-05-15 | 34 years 8 mons 2 days
(2 rows)

 customer_id | birthdate  |          age           
-------------+------------+------------------------
           2 |            | 
           1 | 1990-05-15 | 34 years 8 mons 2 days
(2 rows)

UPDATE 1
 customer_id | birthdate  |           age           
-------------+------------+-------------------------
           1 | 1990-05-15 | 34 years 8 mons 2 days
           2 | 1995-08-20 | 29 years 4 mons 28 days
(2 rows)

ALTER TABLE
UPDATE 1
UPDATE 1
ALTER TABLE

Problem: A column stores a boolean value as 'Y' or 'N'. You need to perform logical operations on this column.
Solution: Cast the 'Y' and 'N' values to boolean (TRUE/FALSE) using CASE expressions or custom functions.

QUERIES=> ALTER TABLE orders ADD COLUMN subscribed CHAR(1);
UPDATE orders
SET subscribed = 'Y'
WHERE customer_id = 1;

UPDATE orders
SET subscribed = 'N'
WHERE customer_id = 2;

SELECT 
    order_id,
    customer_id,
    CASE
        WHEN subscribed = 'Y' THEN TRUE
        WHEN subscribed = 'N' THEN FALSE
        ELSE NULL
    END AS is_subscribed
FROM orders;


UPDATE 3
 order_id | customer_id | is_subscribed 
----------+-------------+---------------
        1 |           1 | t
        2 |           1 | t
        3 |           2 | f
(3 rows)

