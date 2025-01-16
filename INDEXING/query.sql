CREATE TABLE
INSERT 0 5
INSERT 0 5
INSERT 0 5
CREATE TABLE
INSERT 0 5
Problem: A table storing customer orders is experiencing slow query performance, particularly when filtering by customer name or order date.
Solution: Create indexes on the customer_name and order_date columns to speed up data retrieval for queries involving these columns.

Query: CREATE INDEX idx_customer_name ON customer_orders (customer_name);
Output: 


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


Problem: A table storing product information with frequent searches on product descriptions is causing slow response times.
Solution: Create a GIN index on the product_description column to efficiently handle full-text search queries.

Query: CREATE INDEX idx_product_description ON products USING gin(to_tsvector('english', product_description));
Output:
CREATE INDEX
 product_id |    product_name     |                         product_description                          | price  
------------+---------------------+----------------------------------------------------------------------+--------
          1 | Wireless Headphones | High-quality noise-canceling wireless headphones with Bluetooth 5.0. | 150.00
(1 row)

                                              Table "public.products"
       Column        |         Type          | Collation | Nullable |                   Default                    
---------------------+-----------------------+-----------+----------+----------------------------------------------
 product_id          | integer               |           | not null | nextval('products_product_id_seq'::regclass)
 product_name        | character varying(50) |           | not null | 
 price               | numeric(10,2)         |           | not null | 
 category            | character varying(50) |           | not null | 
 product_description | text                  |           |          | 
Indexes:
    "products_pkey" PRIMARY KEY, btree (product_id)
    "idx_product_description" gin (to_tsvector('english'::regconfig, product_description))