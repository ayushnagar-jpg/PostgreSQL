CREATE DATABASE
CREATE TABLE
CREATE TABLE
INSERT 0 4
                        Table "public.staff"
   Column   |         Type          | Collation | Nullable | Default 
------------+-----------------------+-----------+----------+---------
 first_name | character varying(50) |           |          | 
 last_name  | character varying(50) |           |          | 
 age        | integer               |           |          | 
 department | character varying(50) |           |          | 
 salary     | numeric               |           |          | 



INSERT 0 4
INSERT 0 6
Q1=>
How can you use a subquery to find employees who earn more than the average salary?

QUERY=>
SELECT first_name, last_name, salary
FROM staff
WHERE salary > (SELECT AVG(salary) FROM staff);


 first_name | last_name | salary 
------------+-----------+--------
 Sam        | Brown     |  60000
 Emily      | Davis     |  70000
 Sophie     | Lee       |  62000
(3 rows)

Q2=>
What is the difference between EXISTS and IN subqueries?


IN=> SELECT first_name, last_name 
FROM staff
WHERE department IN (SELECT department_name FROM departments);

 first_name | last_name | salary 
------------+-----------+--------
 John       | Doe       |  50000
 Jane       | Smith     |  45000
 Sam        | Brown     |  60000
 Emily      | Davis     |  70000
 Chris      | Johnson   |  48000
 Sophie     | Lee       |  62000
(6 rows)

EXISTS=>
SELECT first_name, last_name 
FROM staff s
WHERE EXISTS (SELECT 1 FROM departments d WHERE d.department_name = s.department);


 first_name | last_name 
------------+-----------
 John       | Doe
 Jane       | Smith
 Sam        | Brown
 Emily      | Davis
 Chris      | Johnson
 Sophie     | Lee
(6 rows)

CREATE TABLE
INSERT 0 3
CREATE TABLE
INSERT 0 5
INSERT 0 3

Q3=>
How can you use a correlated subquery to find customers who have placed the most orders?

QUERY=>
SELECT c.customer_id, c.name
FROM customers c
WHERE (SELECT COUNT(*) FROM orders o WHERE o.customer_id = c.customer_id) = 
      (SELECT MAX(order_count) FROM (SELECT customer_id, COUNT(*) AS order_count FROM orders GROUP BY customer_id) sub);


 customer_id | name  
-------------+-------
           1 | Alice
(1 row)


Q4=>
 Can you use a subquery in the FROM clause? If so, how?
QUERY=>
SELECT department, avg_salary 
FROM (SELECT department, AVG(salary) AS avg_salary FROM staff GROUP BY department) AS dept_avg
WHERE avg_salary > 50000;


 department |     avg_salary     
------------+--------------------
 Finance    | 70000.000000000000
 IT         | 61000.000000000000
(2 rows)


Q5=>
How can you use a subquery to find the department with the highest average salary?

QUERY=>
SELECT department, AVG(salary) AS avg_salary
FROM staff
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;


 department |     avg_salary     
------------+--------------------
 Finance    | 70000.000000000000
(1 row)


Q7=>
How can you optimize a subquery to improve performance?

QUERY=>
SELECT s.first_name, s.last_name, s.salary
FROM staff s
JOIN (SELECT AVG(salary) AS avg_salary FROM staff) avg_sub
ON s.salary > avg_sub.avg_salary;


 first_name | last_name | salary 
------------+-----------+--------
 Sam        | Brown     |  60000
 Emily      | Davis     |  70000
 Sophie     | Lee       |  62000
(3 rows)


Q8=> Can you use a subquery within another subquery?

QUERY=>
SELECT first_name, last_name 
FROM staff 
WHERE salary > (SELECT AVG(salary) 
                 FROM (SELECT salary FROM staff WHERE department = 'IT') AS subquery);


 first_name | last_name 
------------+-----------
 Emily      | Davis
 Sophie     | Lee
(2 rows)


Q9=> How can you use a subquery to find duplicate records in a table?

QUERY=> 
SELECT first_name, last_name, department, COUNT(*) 
FROM staff 
GROUP BY first_name, last_name, department 
HAVING COUNT(*) > 1;

 first_name | last_name 
------------+-----------
 Emily      | Davis
 Sophie     | Lee
(2 rows)

Q10=> 
What are some real-world examples of how subqueries are used in business applications?

Example=>
Find Customers Who Have Never Placed an Order

QUERY=>
SELECT c.customer_id, c.name 
FROM customers c
WHERE NOT EXISTS (SELECT 1 
                  FROM orders o 
                  WHERE o.customer_id = c.customer_id);

 customer_id |  name   
-------------+---------
           5 | Bob
           6 | Charlie
           4 | Alice
(3 rows)

