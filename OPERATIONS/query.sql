 Problem: Calculate the total sales amount for each order by summing the product price and quantity for each order item.

 Solution: Use the SUM() function with appropriate joins and calculations to determine the total sales amount.

QUERY:
SELECT 
    o.order_id,
    SUM(p.price * oi.quantity) AS total_sales_amount
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
JOIN 
    orders o ON oi.order_id = o.order_id
GROUP BY 
    o.order_id;


 OUTPUT:
 order_id | total_sales_amount 
----------+--------------------
        2 |                300
        1 |            1800.00
(2 rows)

Problem: Find all customers who placed an order in the last 30 days.
Solution: Use the current_date function and the - operator to calculate the date 30 days ago and then filter the orders based on the order date.

QUERY:
SELECT 
    DISTINCT c.customer_id,
    c.first_name,
    c.last_name
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
WHERE 
    o.order_date >= current_date - INTERVAL '30 days';


OUTPUT:
 customer_id | first_name | last_name 
-------------+------------+-----------
           1 | Ayush      | Nagar
           2 | Varun      | Thakur
(2 rows)

