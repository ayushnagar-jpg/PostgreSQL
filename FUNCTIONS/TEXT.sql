FUNCTIONS=>>>>>>>

Q1=>>
What is the difference between a function and a stored procedure?

1. SP may or may not return a value but UDF must return a value. The return statement of the function returns control to the calling program and returns the result of the function. 
2. SP can have input/output parameters but UDF only has input parameters.
3.We can call UDF from SP but cannot call SP from a function. 
4. We cannot use SP in SQL statements like SELECT, INSERT, UPDATE, DELETE, MERGE, etc. but we can use them with UDF.
5. SP is not allowed to be used in SELECT statements, but UDF can be used.
6. SP cannot be used anywhere in the WHERE/HAVING/SELECT part of SQL queries, but UDF can be used.
7. The execution plan can be re-used in SP but in UDF it will be compiled every time.
8. We can use try-catch exception handling in SP but we cannot do that in UDF.
9. We can use transactions in SP but it is not possible in UDF.
10. We can consider UDF as an expression but it is not possible in SP.
11. SP cannot be used in the join clause but it is possible in UDF as a resultset.

13. Advantages of using UDF– 

Enables faster execution
Modular Programming
Can reduce network traffic (data)
      Advantages of using SP–

Improved security measures
Client/server traffic is reduced.
Programming abstraction and efficient code reuse
Pre-compiled Executio



Q2==>>>
How do you create a function in PostgreSQL?

QUERY=>
CREATE FUNCTION my_function(param1 INT, param2 TEXT)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN 'Hello, ' || param2 || '! You passed number ' || param1;
END;
$$;



CREATE DATABASE
CREATE DATABASE
CREATE FUNCTION
             my_function             
-------------------------------------
 Hello, AYUSHHH! You passed number 5
(1 row)

Q3=>>
How do you return a value from a function?

QUERY==>
CREATE FUNCTION add_numbers(a INT, b INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN a + b;
END;
$$;

CREATE FUNCTION

SELECT add_numbers(10, 5);

 add_numbers 
-------------
          15
(1 row)

SELECT add_numbers(5, 5);

 add_numbers 
-------------
          10
(1 row)


Q4=>
Can a function have side effects?

ANS=>
Yes, a function in PostgreSQL can have side effects, especially when it modifies the database, interacts with external systems,
or alters the session state. However, this is generally discouraged for pure functions because the primary purpose of a function 
is to compute and return a value without causing external changes.

QUERY=>
CREATE FUNCTION update_salary(employee_id INT, new_salary DECIMAL)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE staff SET salary = new_salary WHERE employee_id = employee_id;
END;
$$;



CREATE FUNCTION
CREATE TABLE
INSERT 0 3
DROP FUNCTION
CREATE FUNCTION
DROP FUNCTION
CREATE FUNCTION
 update_salary 
---------------
 
(1 row)

 employee_id | salary 
-------------+--------
(0 rows)

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

INSERT 0 1
 update_salary 
---------------
 
(1 row)

Q5=>>>
What are some common data types that can be returned by a function?
ANS=>
Common data types a function can return include:

Scalar types: INTEGER, TEXT, DECIMAL, BOOLEAN, DATE, etc.
Composite types: RECORD (a row of fields of different data types).
Table types: You can return entire result sets (tables) using RETURNS TABLE.
Arrays: You can return arrays of any data type, like RETURNS INTEGER[] or RETURNS TEXT[].
Setof types: You can return a set of rows (like RETURNS SETOF RECORD).

QUERY=>
CREATE FUNCTION get_employees()
RETURNS TABLE(employee_id INT, first_name TEXT, last_name TEXT, salary DECIMAL)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY 
    SELECT employee_id, first_name, last_name, salary 
    FROM staff;
END;
$$;

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           4 | John       | Doe       |  50000
(1 row)

SELECT * FROM get_employees();
 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           1 | Alice      | Johnson   |  60000
           2 | Bob        | Smith     |  55000
           3 | Charlie    | Davis     |  45000
           4 | John       | Doe       |  50000
(4 rows)



Q6=> How can you use functions to improve code readability and maintainability?

-Reusability: You can encapsulate logic inside functions, making your code reusable across different queries and applications.
-Abstraction: Hide complex queries or calculations inside functions, so developers don’t need to deal with the complexity every time they need the logic.
-Separation of Concerns: Functions allow you to separate business logic from application logic, making the system more modular and maintainable.
-Cleaner Queries: Instead of embedding complex calculations or conditions inside queries, you can call functions to handle those tasks.



Q7=>How can you use functions to perform complex calculations?
QUERY=>
CREATE FUNCTION calculate_bonus(salary DECIMAL, performance_rating INT)
RETURNS DECIMAL
LANGUAGE plpgsql
AS $$
BEGIN
    IF performance_rating = 5 THEN
        RETURN salary * 0.20; 
    ELSIF performance_rating = 4 THEN
        RETURN salary * 0.15; 
    ELSE
        RETURN salary * 0.10;  
    END IF;
END;
$$;

CREATE FUNCTION
 employee_id | first_name | last_name 
-------------+------------+-----------
           1 | Alice      | Johnson
           2 | Bob        | Smith
           3 | Charlie    | Davis
           4 | John       | Doe
(4 rows)

CREATE FUNCTION

SELECT calculate_bonus(50000, 4);
 calculate_bonus 
-----------------
        10000.00
(1 row)

SELECT calculate_bonus(50000, 4);
 calculate_bonus 
-----------------
         7500.00
(1 row)

Q8==>>
What are some performance considerations when using functions?

-Function Execution Overhead: Every time a function is called, there is some overhead due to context switching. Complex functions with many operations can negatively affect performance.
-Inlined Functions: For simple functions, PostgreSQL may inline them to avoid overhead, but this doesn’t always happen, especially with complex functions.
-Set-Based Operations: Whenever possible, design functions to work on sets of rows rather than one row at a time, as set-based operations are more efficient.
-Avoid Using Functions in WHERE Clause: When functions are used in the WHERE clause of a query, PostgreSQL may need to invoke the function repeatedly, which could slow down performance.


Q9==>>>>
How can you use functions to implement custom business logic?

=>Functions are great for implementing complex business logic that needs to be executed on the database level. For example, functions can:
-Handle complex calculations (like taxes, commissions, or discounts).
-Enforce data validation (e.g., ensuring that product prices meet certain conditions).
-Implement access control (e.g., checking user roles or permissions before allowing an operation).


QUERY=>
CREATE FUNCTION check_permission(p_user_id INT, p_action TEXT)
RETURNS BOOLEAN AS $$
BEGIN
    RETURN EXISTS (
        SELECT 1 
        FROM user_permissions 
        WHERE user_id = p_user_id 
        AND action = p_action
    );
END;
$$ LANGUAGE plpgsql;



CREATE TABLE
INSERT 0 4
CREATE FUNCTION


SELECT check_permission(1, 'edit_post');

 check_permission 
------------------
 t
(1 row)

 check_permission 
------------------
 f
(1 row)

 check_permission 
------------------
 t
(1 row)

 check_permission 
------------------
 f
(1 row)




Q10==>>>
 What are some examples of built-in functions in PostgreSQL?

Aggregate Functions: COUNT(), SUM(), AVG(), MIN(), MAX().
String Functions: LENGTH(), CONCAT(), SUBSTRING(), TRIM().
Mathematical Functions: ROUND(), POWER(), SQRT(), CEIL(), FLOOR()

Ex1=>
Getting Current Date and Time
SELECT NOW();

               now                
----------------------------------
 2025-01-16 09:41:49.725067+05:30
(1 row)


Ex2=>
 Concatenating Strings
 SELECT CONCAT('Hello', ' ', 'World') AS greeting;

  greeting   
-------------
 Hello World
(1 row)


EX3=>
Calculating Power
SELECT POWER(2, 3) AS power_result; 


 power_result 
--------------
            8
(1 row)

EX4=>
Finding Square Root
SELECT SQRT(49) AS square_root;

 square_root 
-------------
           7
(1 row)

Ex5=>
Adding and Subtracting Intervals
SELECT NOW() + INTERVAL '1 week' AS next_week;

            next_week             
----------------------------------
 2025-01-23 09:43:01.735471+05:30
(1 row)

