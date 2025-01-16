Q1=>>
How do you create a view in PostgreSQL?
QUERY=>
CREATE VIEW employee_view AS
SELECT first_name, last_name, department, salary
FROM staff
WHERE salary > 50000;

Q2=>>What are the benefits of using views?

Simplification: Views can simplify complex queries by encapsulating them in a reusable object.
Abstraction: They provide a layer of abstraction, hiding the complexity of the underlying data structure.
Reusability: Views allow you to write a query once and reuse it multiple times.
Security: Views allow you to expose only specific columns or rows, hiding sensitive data.
Consistency: Views ensure that the same logic is consistently applied across the application.

Q3=>
How can you update data through a view?

QUERY=>
UPDATE all_employees SET department = 'HR' WHERE first_name = 'Ayush' AND last_name = 'Nagar';

CREATE VIEW
 employee_id | first_name | last_name | age | department | salary 
-------------+------------+-----------+-----+------------+--------
(0 rows)
CREATE VIEW
 employee_id | first_name | last_name | age | department | salary 
-------------+------------+-----------+-----+------------+--------
           1 | Emma       | Johnson   |  30 | IT         |  70000
           2 | Mark       | Brown     |  45 | HR         |  50000
           3 | John       | Doe       |  30 | Sales      |  55000
           4 | Jane       | Smith     |  28 | Sales      |  60000
(4 rows)

 employee_id | first_name | last_name | age | department | salary 
-------------+------------+-----------+-----+------------+--------
           1 | Emma       | Johnson   |  30 | IT         |  70000
           2 | Mark       | Brown     |  45 | HR         |  50000
           3 | John       | Doe       |  30 | Sales      |  55000
           4 | Jane       | Smith     |  28 | Sales      |  60000
(4 rows)


Q4. What are the limitations of using views?

Performance: Views can impact performance, especially if they involve complex joins or aggregations, as they execute the underlying query each time they are accessed.
Non-Updatable Views: Views with joins, aggregations, DISTINCT, or other complex SQL constructs may not allow updates.
No Indexing: Views themselves don’t have indexes. Performance relies on the indexing of the underlying tables.
Dependence on Base Tables: Changes in the structure of base tables (like removing columns) can break the view.
Complexity: Nested views (views based on other views) can make maintenance difficult and slow down performance.

Q5. How can you use views to improve data security?
Column-Level Security: You can create views that expose only certain columns from a table, thus hiding sensitive information.
Row-Level Security: Views can restrict access to rows based on user roles or other criteria.
Access Control: By granting access to views instead of base tables, you can control which data is accessible to users.

QUERY=>>
CREATE VIEW public_employee_view AS
SELECT employee_id, first_name, last_name, department
FROM staff;


INSERT 0 2
CREATE VIEW
 employee_id | first_name | last_name | age | department | salary 
-------------+------------+-----------+-----+------------+--------
           1 | Emma       | Johnson   |  30 | IT         |  70000
           2 | Mark       | Brown     |  45 | HR         |  50000
           3 | John       | Doe       |  30 | Sales      |  55000
           4 | Jane       | Smith     |  28 | Sales      |  60000
(4 rows)

Q6==>>
How can you use views to simplify complex queries?
QUERY=>
CREATE VIEW high_salary_employees AS
SELECT employee_id, first_name, last_name, department, salary
FROM staff
WHERE salary > 50000;


CREATE VIEW
 employee_id | first_name | last_name | department 
-------------+------------+-----------+------------
           1 | Emma       | Johnson   | IT
           3 | John       | Doe       | Sales
           4 | Jane       | Smith     | Sales
           2 | Mark       | Brown     | HR
(4 rows)

CREATE VIEW
 employee_id | first_name | last_name | department | salary 
-------------+------------+-----------+------------+--------
           1 | Emma       | Johnson   | IT         |  70000
           3 | John       | Doe       | Sales      |  55000
           4 | Jane       | Smith     | Sales      |  60000
(3 rows)


Q7=> 7. How do you drop a view in PostgreSQL?
DROP VIEW view_name;

DROP VIEW high_salary_employees;
DROP VIEW
DROP VIEW

Q8=> Can a view be based on another view?

QUERY=>
CREATE VIEW department_sales AS
SELECT department, SUM(salary) AS total_salary
FROM staff
GROUP BY department;

CREATE VIEW high_sales_department AS
SELECT department
FROM department_sales
WHERE total_salary > 100000;

CREATE VIEW
CREATE VIEW

 department | total_salary 
------------+--------------
 Sales      |       115000
 IT         |        70000
 HR         |        50000
(3 rows)

 

Q9=> What are some common use cases for views?
Reporting: Views can simplify reporting by predefining complex aggregation or filtering logic.
Data Abstraction: Views provide an abstraction layer between users and the underlying table structures.
Security: Views are used to expose only necessary columns or rows to users while hiding sensitive data.
Data Transformation: Views can be used to transform data (e.g., formatting, calculations) for specific use cases without modifying the original tables.
Simplification: Views can make complex queries more readable and reusable, reducing duplication of logic.

QUERY=>
CREATE VIEW monthly_sales_summary AS
SELECT salesperson_id, SUM(total_amount) AS total_sales
FROM sales
GROUP BY salesperson_id;


CREATE VIEW
 salesperson_id | total_sales 
----------------+-------------
(0 rows)

