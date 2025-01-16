CREATE TABLE
INSERT 0 5
INSERT 0 5
INSERT 0 5
CREATE TABLE
INSERT 0 5
 order_id |  customer_name  | order_date | total_amount 
----------+-----------------+------------+--------------
        1 | Ayush Nagar     | 2024-01-05 |       250.50
        2 | Priyanshu Singh | 2024-01-10 |       175.00
        3 | Varun Cutie     | 2024-01-15 |       320.75
        4 | Abhinav Latharr | 2024-02-01 |       400.00
        5 | Akshay KAT      | 2024-02-10 |       150.25
        6 | Ayush Nagar     | 2024-01-05 |       250.50
        7 | Priyanshu Singh | 2024-01-10 |       175.00
        8 | Varun Cutie     | 2024-01-15 |       320.75
        9 | Abhinav Latharr | 2024-02-01 |       400.00
       10 | Akshay kat      | 2024-02-10 |       150.25
       11 | Ayush Nagar     | 2024-01-05 |       250.50
       12 | Priyanshu Singh | 2024-01-10 |       175.00
       13 | Varun Cutie     | 2024-01-15 |       320.75
       14 | Abhinav Latharr | 2024-02-01 |       400.00
       15 | Akshay kat      | 2024-02-10 |       150.25
(15 rows)

 product_id |    product_name     |                            product_description                            |  price  
------------+---------------------+---------------------------------------------------------------------------+---------
          1 | Wireless Headphones | High-quality noise-canceling wireless headphones with Bluetooth 5.0.      |  150.00
          2 | Gaming Laptop       | Powerful gaming laptop with a high-refresh-rate screen and dedicated GPU. | 1200.00
          3 | Smartphone          | Latest smartphone with an OLED display and a high-resolution camera.      |  800.00
          4 | Mechanical Keyboard | RGB mechanical keyboard with customizable keys and fast response time.    |  100.00
          5 | Smartwatch          | Fitness tracking smartwatch with heart rate monitoring and GPS.           |  200.00
(5 rows)

DELETE 9
 order_id |  customer_name  | order_date | total_amount 
----------+-----------------+------------+--------------
        1 | Ayush Nagar     | 2024-01-05 |       250.50
        2 | Priyanshu Singh | 2024-01-10 |       175.00
        3 | Varun Cutie     | 2024-01-15 |       320.75
        4 | Abhinav Latharr | 2024-02-01 |       400.00
        5 | Akshay KAT      | 2024-02-10 |       150.25
       10 | Akshay kat      | 2024-02-10 |       150.25
(6 rows)

CREATE INDEX
CREATE INDEX
 order_id | customer_name | order_date | total_amount 
----------+---------------+------------+--------------
        1 | Ayush Nagar   | 2024-01-05 |       250.50
(1 row)

 order_id |  customer_name  | order_date | total_amount 
----------+-----------------+------------+--------------
        1 | Ayush Nagar     | 2024-01-05 |       250.50
        2 | Priyanshu Singh | 2024-01-10 |       175.00
        3 | Varun Cutie     | 2024-01-15 |       320.75
        4 | Abhinav Latharr | 2024-02-01 |       400.00
(4 rows)

CREATE INDEX
 product_id |    product_name     |                         product_description                          | price  
------------+---------------------+----------------------------------------------------------------------+--------
          1 | Wireless Headphones | High-quality noise-canceling wireless headphones with Bluetooth 5.0. | 150.00
(1 row)

