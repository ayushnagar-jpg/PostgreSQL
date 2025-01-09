                                                                    List of databases
   Name    |  Owner   | Encoding | Locale Provider |          Collate           |           Ctype            | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+----------------------------+----------------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 inventory | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
(5 rows)

            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | departments | table | postgres
 public | staff       | table | postgres
(2 rows)

         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | staff | table | postgres
(1 row)

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

CREATE ROLE
 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)

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
GRANT
GRANT
 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           1 | Ayush      | Nagar     |  50000
           2 | Varun      | thakur    |  59000
(2 rows)

                             List of roles
 Role name |                         Attributes                         
-----------+------------------------------------------------------------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
 user1     | 
 user2     | 

                                                                    List of databases
   Name    |  Owner   | Encoding | Locale Provider |          Collate           |           Ctype            | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+----------------------------+----------------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 inventory | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
           |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
(5 rows)

                                 Access privileges
 Schema | Name  | Type  |     Access privileges      | Column privileges | Policies 
--------+-------+-------+----------------------------+-------------------+----------
 public | staff | table | postgres=arwdDxtm/postgres+|                   | 
        |       |       | user1=r/postgres          +|                   | 
        |       |       | user2=r/postgres           |                   | 
(1 row)

CREATE ROLE
CREATE ROLE
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
CREATE ROLE
GRANT
                                     Access privileges
 Schema |   Name   | Type  |       Access privileges        | Column privileges | Policies 
--------+----------+-------+--------------------------------+-------------------+----------
 public | products | table | postgres=arwdDxtm/postgres    +|                   | 
        |          |       | manager_role=arwdDxtm/postgres |                   | 
(1 row)

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

CREATE ROLE
REVOKE
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

CREATE ROLE
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

