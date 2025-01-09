Ques 1:-> Grant the SELECT privilege on the "employees" table to a specific user.
Query: CREATE ROLE user1 WITH LOGIN PASSWORD 'firstUser';
Output:

CREATE ROLE
 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

Query: CREATE ROLE user2 WITH LOGIN PASSWORD 'password2';
Output:

CREATE ROLE
                             List of roles
 Role name |                         Attributes                         
-----------+------------------------------------------------------------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
 user1     | 
 user2     | 

         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | staff | table | postgres
(1 row)

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

INSERT 0 2
Main Query: GRANT SELECT ON employees TO user1;
Output:
GRANT



CREATE ROLE
CREATE ROLE
Ques 2:-> Grant the INSERT privilege on the "employees" table to a group of users.
Query: GRANT insert_group TO user2;
Output:

GRANT
GRANT
                                 Access privileges
 Schema | Name  | Type  |     Access privileges      | Column privileges | Policies 
--------+-------+-------+----------------------------+-------------------+----------
 public | staff | table | postgres=arwdDxtm/postgres+|                   | 
        |       |       | user1=r/postgres          +|                   | 
        |       |       | user2=ar/postgres         +|                   | 
        |       |       | user3=a/postgres          +|                   | 
        |       |       | user4=a/postgres           |                   | 
(1 row)

INSERT 0 1
         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | staff | table | postgres
(1 row)

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           1 | Ayush      | Nagar     |  50000
           2 | Varun      | thakur    |  59000
           3 | Ashutosh   | Bro       |  40000
(3 rows)
Ques 3:-> Revoke the UPDATE privilege on the "employees" table from a specific user.

Main Query: REVOKE UPDATE ON employees FROM user1;
Output:
REVOKE
                                 Access privileges
 Schema | Name  | Type  |     Access privileges      | Column privileges | Policies 
--------+-------+-------+----------------------------+-------------------+----------
 public | staff | table | postgres=arwdDxtm/postgres+|                   | 
        |       |       | user1=r/postgres          +|                   | 
        |       |       | user2=ar/postgres         +|                   | 
        |       |       | user3=a/postgres          +|                   | 
        |       |       | user4=a/postgres           |                   | 
(1 row)

CREATE TABLE
Ques 4:-> Grant all privileges on the "products" table to a specific role.
Query: CREATE ROLE CEO WITH LOGIN PASSWORD 'HeadOfCompany';
Output:
CREATE ROLE
GRANT
                                     Access privileges
 Schema |   Name   | Type  |       Access privileges        | Column privileges | Policies 
--------+----------+-------+--------------------------------+-------------------+----------
 public | products | table | postgres=arwdDxtm/postgres    +|                   | 
        |          |       | manager_role=arwdDxtm/postgres |                   | 
(1 row)
Ques 5:-> Revoke the DELETE privilege on the "products" table from all users.

Main Query: REVOKE DELETE ON products FROM PUBLIC;
Output:
REVOKE
                                     Access privileges
 Schema |   Name   | Type  |       Access privileges        | Column privileges | Policies 
--------+----------+-------+--------------------------------+-------------------+----------
 public | products | table | postgres=arwdDxtm/postgres    +|                   | 
        |          |       | manager_role=arwdDxtm/postgres |                   | 
(1 row)

GRANT
                                    Access privileges
 Schema |    Name     | Type  |     Access privileges      | Column privileges | Policies 
--------+-------------+-------+----------------------------+-------------------+----------
 public | departments | table | postgres=arwdDxtm/postgres+|                   | 
        |             |       | user4=ar/postgres          |                   | 
(1 row)

            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | departments | table | postgres
(1 row)

 department_id | department_name 
---------------+-----------------
(0 rows)
Ques 6:-> Grant the SELECT and INSERT privileges on the "departments" table to a specific user.
Query: CREATE ROLE Mentor WITH LOGIN PASSWORD 'Mentor123';
Output:
CREATE ROLE
REVOKE
Main Query: REVOKE ALL PRIVILEGES ON departments FROM Student;
Output:
REVOKE
                                    Access privileges
 Schema |    Name     | Type  |     Access privileges      | Column privileges | Policies 
--------+-------------+-------+----------------------------+-------------------+----------
 public | departments | table | postgres=arwdDxtm/postgres+|                   | 
        |             |       | user4=ar/postgres          |                   | 
(1 row)

      List of schemas
  Name  |       Owner       
--------+-------------------
 public | pg_database_owner
(1 row)

CREATE SCHEMA

Output:
ALTER TABLE

Query: ALTER TABLE departments SET SCHEMA AllTables;
Output:
ALTER TABLE

Query: ALTER TABLE employees SET SCHEMA AllTables;
Output:
ALTER TABLE

GRANT
         List of schemas
     Name     |       Owner       
--------------+-------------------
 public       | pg_database_owner
 sales_schema | postgres
(2 rows)

                            Access privileges
 Schema | Name | Type | Access privileges | Column privileges | Policies 
--------+------+------+-------------------+-------------------+----------
(0 rows)

CREATE SCHEMA
Ques 9:-> Revoke the USAGE privilege on a specific schema from a group of users.

Main Query: REVOKE USAGE ON SCHEMA AllTables FROM user1, user2, Student;
Output:
REVOKE
          List of schemas
      Name      |       Owner       
----------------+-------------------
 finance_schema | postgres
 public         | pg_database_owner
 sales_schema   | postgres
(3 rows)

                            Access privileges
 Schema | Name | Type | Access privileges | Column privileges | Policies 
--------+------+------+-------------------+-------------------+----------
(0 rows)

Ques 10:-> Grant the CONNECT privilege to a new user.
Query: CREATE ROLE new_user WITH LOGIN PASSWORD 'newUser123';
Output:
CREATE ROLE

Main Query: GRANT CONNECT ON DATABASE company TO new_user;
Output:
GRANT
                                                                    List of databases
   Name    |  Owner   | Encoding | Locale Provider |          Collate           |           Ctype            | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+----------------------------+----------------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =Tc/postgres         +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres+
           |          |          |                 |                            |                            |        |           | new_user=c/postgres
 inventory | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
(5 rows)

