CREATE DATABASE
CREATE TABLE
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | students | table | postgres
(1 row)

                         Table "public.students"
     Column     |          Type          | Collation | Nullable | Default 
----------------+------------------------+-----------+----------+---------
 studentid      | integer                |           | not null | 
 firstname      | character varying(50)  |           |          | 
 lastname       | character varying(50)  |           |          | 
 enrollmentdate | date                   |           |          | 
 email          | character varying(100) |           |          | 
Indexes:
    "students_pkey" PRIMARY KEY, btree (studentid)
    "students_email_key" UNIQUE CONSTRAINT, btree (email)

CREATE TABLE
                        Table "public.courses"
   Column   |          Type          | Collation | Nullable | Default 
------------+------------------------+-----------+----------+---------
 courseid   | integer                |           | not null | 
 coursename | character varying(100) |           |          | 
 credits    | integer                |           |          | 
Indexes:
    "courses_pkey" PRIMARY KEY, btree (courseid)

CREATE TABLE
                  Table "public.enrollments"
    Column    |     Type     | Collation | Nullable | Default 
--------------+--------------+-----------+----------+---------
 enrollmentid | integer      |           | not null | 
 studentid    | integer      |           |          | 
 courseid     | integer      |           |          | 
 grade        | numeric(3,2) |           |          | 
Indexes:
    "enrollments_pkey" PRIMARY KEY, btree (enrollmentid)
Foreign-key constraints:
    "enrollments_courseid_fkey" FOREIGN KEY (courseid) REFERENCES courses(courseid)
    "enrollments_studentid_fkey" FOREIGN KEY (studentid) REFERENCES students(studentid)

INSERT 0 1
                         Table "public.students"
     Column     |          Type          | Collation | Nullable | Default 
----------------+------------------------+-----------+----------+---------
 studentid      | integer                |           | not null | 
 firstname      | character varying(50)  |           |          | 
 lastname       | character varying(50)  |           |          | 
 enrollmentdate | date                   |           |          | 
 email          | character varying(100) |           |          | 
Indexes:
    "students_pkey" PRIMARY KEY, btree (studentid)
    "students_email_key" UNIQUE CONSTRAINT, btree (email)
Referenced by:
    TABLE "enrollments" CONSTRAINT "enrollments_studentid_fkey" FOREIGN KEY (studentid) REFERENCES students(studentid)

          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | students | table | postgres
(1 row)

 studentid | firstname | lastname | enrollmentdate |     email     
-----------+-----------+----------+----------------+---------------
         1 | Tarun     | Chabra   | 2024-02-03     | tarun@abc.com
(1 row)

INSERT 0 3
 studentid | firstname | lastname | enrollmentdate |     email      
-----------+-----------+----------+----------------+----------------
         1 | Tarun     | Chabra   | 2024-02-03     | tarun@abc.com
         2 | Adish     | Bansal   | 2024-03-03     | adish@abc.com
         3 | Tanmay    | Arora    | 2024-04-03     | Tanmay@abc.com
         4 | Raghav    | Singh    | 2024-03-03     | Raghav@abc.com
(4 rows)

INSERT 0 1
 courseid | coursename | credits 
----------+------------+---------
        1 | Maths      |       5
(1 row)

INSERT 0 4
 courseid | coursename | credits 
----------+------------+---------
        1 | Maths      |       5
        2 | Science    |       5
        3 | Hindi      |       4
        4 | Geography  |       4
        5 | Arts       |       3
(5 rows)

INSERT 0 1
INSERT 0 3
 enrollmentid | studentid | courseid | grade 
--------------+-----------+----------+-------
            1 |         1 |        1 |  9.00
            2 |         2 |        2 |  8.00
            3 |         3 |        3 |  7.00
            4 |         4 |        4 |  8.00
(4 rows)

CREATE PROCEDURE
CALL
CALL
 enrollmentid | studentid | courseid | grade 
--------------+-----------+----------+-------
            2 |         2 |        2 |  8.00
            3 |         3 |        3 |  7.00
            4 |         4 |        4 |  8.00
            1 |         1 |        1 |  8.00
(4 rows)

CREATE TABLE
CREATE FUNCTION
CREATE TRIGGER
 courseid | studentcount 
----------+--------------
(0 rows)

