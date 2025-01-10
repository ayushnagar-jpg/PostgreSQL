1.Design a database for an e-commerce store.
Identify the primary key for the customers table.
Define the foreign key relationship between orders and customers

CREATE DATABASE
CREATE TABLE
                                   Table "public.customers"
   Column    |  Type   | Collation | Nullable |                    Default                     
-------------+---------+-----------+----------+------------------------------------------------
 customer_id | integer |           | not null | nextval('customers_customer_id_seq'::regclass)
 name        | text    |           | not null | 
 email       | text    |           | not null | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (customer_id)
    "customers_email_key" UNIQUE CONSTRAINT, btree (email)

CREATE TABLE
                                            Table "public.orders"
   Column    |            Type             | Collation | Nullable |                 Default                  
-------------+-----------------------------+-----------+----------+------------------------------------------
 order_id    | integer                     |           | not null | nextval('orders_order_id_seq'::regclass)
 customer_id | integer                     |           |          | 
 order_date  | timestamp without time zone |           |          | CURRENT_TIMESTAMP
Indexes:
    "orders_pkey" PRIMARY KEY, btree (order_id)
Foreign-key constraints:
    "orders_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(customer_id)

2.Create a database for a library system.
Determine the primary key for the books table.
Establish a foreign key relationship between borrowers and books.



CREATE DATABASE
CREATE TABLE
                               Table "public.books"
 Column  |  Type   | Collation | Nullable |                Default                 
---------+---------+-----------+----------+----------------------------------------
 book_id | integer |           | not null | nextval('books_book_id_seq'::regclass)
 title   | text    |           | not null | 
 author  | text    |           | not null | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)

CREATE TABLE
                                   Table "public.borrowers"
   Column    |  Type   | Collation | Nullable |                    Default                     
-------------+---------+-----------+----------+------------------------------------------------
 borrower_id | integer |           | not null | nextval('borrowers_borrower_id_seq'::regclass)
 name        | text    |           | not null | 
 book_id     | integer |           |          | 
 borrow_date | date    |           | not null | 
Indexes:
    "borrowers_pkey" PRIMARY KEY, btree (borrower_id)
Foreign-key constraints:
    "borrowers_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)


3.Design a database for a university.
Identify the primary key for the students table.
Define the foreign key relationship between courses and students.



CREATE DATABASE
CREATE TABLE
                                  Table "public.students"
   Column   |  Type   | Collation | Nullable |                   Default                    
------------+---------+-----------+----------+----------------------------------------------
 student_id | integer |           | not null | nextval('students_student_id_seq'::regclass)
 name       | text    |           | not null | 
 email      | text    |           | not null | 
Indexes:
    "students_pkey" PRIMARY KEY, btree (student_id)
    "students_email_key" UNIQUE CONSTRAINT, btree (email)

CREATE TABLE
                                  Table "public.courses"
   Column    |  Type   | Collation | Nullable |                                                 Table "public.courses"
   Column    |  Type   | Collation | Nullable |                  Default                   
-------------+---------+-----------+----------+--------------------------------------------
 course_id   | integer |           | not null | nextval('courses_course_id_seq'::regclass)
 course_name | text    |           | not null | 
 student_id  | integer |           |          | 
Indexes:
    "courses_pkey" PRIMARY KEY, btree (course_id)
Foreign-key constraints:
    "courses_student_id_fkey" FOREIGN KEY (student_id) REFERENCES students(student_id)

                                  Table "public.courses"
   Column    |  Type   | Collation | Nullable |                  Default                   
-------------+---------+-----------+----------+--------------------------------------------
 course_id   | integer |           | not null | nextval('courses_course_id_seq'::regclass)
 course_name | text    |           | not null | 
 student_id  | integer |           |          | 
Indexes:
    "courses_pkey" PRIMARY KEY, btree (course_id)
Foreign-key constraints:
    "courses_student_id_fkey" FOREIGN KEY (student_id) REFERENCES students(student_id)

CREATE DATABASE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
INSERT 0 2
INSERT 0 3
INSERT 0 3
INSERT 0 2
 customer_id | first_name | last_name |     email     |    city    
-------------+------------+-----------+---------------+------------
           1 | Ayush      | Nagar     | abc@gmail.com | Saharanpur
           2 | Varun      | Thakur    | def@gmail.com | UNA
(2 rows)

 order_id | customer_id |         order_date         | total_amount 
----------+-------------+----------------------------+--------------
        1 |           1 | 2025-01-10 13:41:02.366502 |          200
        2 |           1 | 2025-01-10 13:41:02.366502 |          150
        3 |           2 | 2025-01-10 13:41:02.366502 |          350
(3 rows)

 product_id |  name  |  category   | price 
------------+--------+-------------+-------
          1 | Laptop | electronics |  1200
          2 | Phone  | Electronics |   800
          3 | Table  | Furniture   |   150
(3 rows)

 employee_id | first_name | last_name | age | department | salary 
-------------+------------+-----------+-----+------------+--------
           1 | Emma       | Johnson   |  30 | IT         |  70000
           2 | Mark       | Brown     |  45 | HR         |  50000
(2 rows)

Aggregate Functions
Find the average salary of employees in each department.

 department |     avg_salary     
------------+--------------------
 IT         | 70000.000000000000
 HR         | 50000.000000000000
(2 rows)



Calculate the total sales for each product category.
  category   | total_sales 
-------------+-------------
 Furniture   |         150
 Electronics |         800
 electronics |        1200
(3 rows)


Determine the maximum and minimum prices of products in the inventory
 max_price | min_price 
-----------+-----------
      1200 |       150
(1 row)

Count the number of orders placed by each customer.
 customer_id | order_count 
-------------+-------------
           2 |           1
           1 |           2
(2 rows)


Find the total revenue generated by each salesperson.
 salesperson_id | total_revenue 
----------------+---------------
(0 rows)



Clauses
Retrieve the names of all customers from the city of 'New York'.

 first_name | last_name 
------------+-----------
(0 rows)

 first_name | last_name 
------------+-----------
 Ayush      | Nagar
(1 row)


Find all orders placed after a specific date.

 order_id | customer_id |         order_date         | total_amount 
----------+-------------+----------------------------+--------------
        1 |           1 | 2025-01-10 13:41:02.366502 |          200
        2 |           1 | 2025-01-10 13:41:02.366502 |          150
        3 |           2 | 2025-01-10 13:41:02.366502 |          350
(3 rows)


List all products with a price between $50 and $100.

 product_id | name | category | price 
------------+------+----------+-------
(0 rows)

Join the customers and orders tables to display customer information for each order.
 first_name | last_name | order_id | total_amount 
------------+-----------+----------+--------------
 Ayush      | Nagar     |        1 |          200
 Ayush      | Nagar     |        2 |          150
 Varun      | Thakur    |        3 |          350
(3 rows)

Group orders by customer and calculate the total amount spent by each customer
 customer_id | total_spent 
-------------+-------------
           2 |         350
           1 |         350
(2 rows)


Sort the results of a query by a specific column in ascending or descending order.

 product_id |  name  |  category   | price 
------------+--------+-------------+-------
          1 | Laptop | electronics |  1200
          2 | Phone  | Electronics |   800
          3 | Table  | Furniture   |   150
(3 rows)

Limit the number of rows returned by a query to a specific value.
 product_id |  name  |  category   | price 
------------+--------+-------------+-------
          1 | Laptop | electronics |  1200
          2 | Phone  | Electronics |   800
          3 | Table  | Furniture   |   150
(3 rows)

Aliases
Create an alias for the full name of a customer by concatenating their first and last names.

  full_name   
--------------
 Ayush Nagar
 Varun Thakur
(2 rows)

