CREATE DATABASE
CREATE DATABASE
                                                                       List of databases
      Name       |  Owner   | Encoding | Locale Provider |          Collate           |           Ctype            | Locale | ICU Rules |   Access privileges   
-----------------+----------+----------+-----------------+----------------------------+----------------------------+--------+-----------+-----------------------
 company         | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =Tc/postgres         +
                 |          |          |                 |                            |                            |        |           | postgres=CTc/postgres+
                 |          |          |                 |                            |                            |        |           | new_user=c/postgres
 e_commerce      | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 ecommerce_store | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 inventory       | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 library_stm     | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 library_system  | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 my_database     | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 postgres        | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 system_library  | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
 template0       | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
                 |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
 template1       | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | =c/postgres          +
                 |          |          |                 |                            |                            |        |           | postgres=CTc/postgres
 university      | postgres | UTF8     | libc            | English_United States.1252 | English_United States.1252 |        |           | 
(12 rows)

CREATE DATABASE
CREATE TABLE
         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | books | table | postgres
(1 row)

                                           Table "public.books"
      Column      |         Type          | Collation | Nullable |                Default                 
------------------+-----------------------+-----------+----------+----------------------------------------
 book_id          | integer               |           | not null | nextval('books_book_id_seq'::regclass)
 title            | character varying(20) |           |          | 
 author           | character varying(30) |           |          | 
 publication_year | integer               |           |          | 
 genre            | character varying(20) |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)

CREATE TABLE
                                         Table "public.members"
   Column   |         Type          | Collation | Nullable |                  Default                   
------------+-----------------------+-----------+----------+--------------------------------------------
 member_id  | integer               |           | not null | nextval('members_member_id_seq'::regclass)
 name       | character varying(30) |           |          | 
 address    | character varying(30) |           |          | 
 contact_no | integer               |           |          | 
Indexes:
    "members_pkey" PRIMARY KEY, btree (member_id)

CREATE TABLE
                                     Table "public.borrowings"
    Column     |  Type   | Collation | Nullable |                     Default                      
---------------+---------+-----------+----------+--------------------------------------------------
 borrowing_id  | integer |           | not null | nextval('borrowings_borrowing_id_seq'::regclass)
 book_id       | integer |           |          | 
 member_id     | integer |           |          | 
 borrow_date   | date    |           | not null | 
 due_date      | date    |           | not null | 
 returned_date | date    |           | not null | 
Indexes:
    "borrowings_pkey" PRIMARY KEY, btree (borrowing_id)
Foreign-key constraints:
    "borrowings_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)
    "borrowings_member_id_fkey" FOREIGN KEY (member_id) REFERENCES members(member_id)

INSERT 0 6
                                           Table "public.books"
      Column      |         Type          | Collation | Nullable |                Default                 
------------------+-----------------------+-----------+----------+----------------------------------------
 book_id          | integer               |           | not null | nextval('books_book_id_seq'::regclass)
 title            | character varying(20) |           |          | 
 author           | character varying(30) |           |          | 
 publication_year | integer               |           |          | 
 genre            | character varying(20) |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)
Referenced by:
    TABLE "borrowings" CONSTRAINT "borrowings_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)

 book_id | title |  author   | publication_year |   genre    
---------+-------+-----------+------------------+------------
       1 | book1 | Ayush     |            -2004 | Healthcare
       2 | book2 | abhinav   |            -1991 | Action
       3 | book3 | varun     |            -2010 | romance
       4 | book3 | priyanshu |            -1993 | pyschology
       5 | book4 | aman      |            -1998 | funny
       6 | book5 | Aryan     |            -1992 | crime
(6 rows)

ALTER TABLE
 book_id | title |  author   | publication_year |   genre    
---------+-------+-----------+------------------+------------
       1 | book1 | Ayush     | 2004-01-01 BC    | Healthcare
       2 | book2 | abhinav   | 1991-01-01 BC    | Action
       3 | book3 | varun     | 2010-01-01 BC    | romance
       4 | book3 | priyanshu | 1993-01-01 BC    | pyschology
       5 | book4 | aman      | 1998-01-01 BC    | funny
       6 | book5 | Aryan     | 1992-01-01 BC    | crime
(6 rows)

 book_id | title | author | publication_year | genre 
---------+-------+--------+------------------+-------
       6 | book5 | Aryan  | 1992-01-01 BC    | crime
(1 row)

INSERT 0 1
 member_id | name | address | contact_no 
-----------+------+---------+------------
         1 | ajay | Delhi   | 1234567897
(1 row)

INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
 member_id | name  | address | contact_no 
-----------+-------+---------+------------
         1 | ajay  | Delhi   | 1234567897
         2 | abay  | Mohali  |  987654322
         3 | Arun  | Noida   |   98756422
         4 | Tarun | Kerela  |  498756422
         5 | Rohan | Punjab  |  983756422
(5 rows)

INSERT 0 1
 borrowing_id | book_id | member_id | borrow_date |  due_date  | returned_date 
--------------+---------+-----------+-------------+------------+---------------
            2 |       1 |         1 | 2025-01-01  | 2025-01-15 | 2025-01-16
(1 row)

INSERT 0 1
 borrowing_id | book_id | member_id | borrow_date |  due_date  | returned_date 
--------------+---------+-----------+-------------+------------+---------------
            2 |       1 |         1 | 2025-01-01  | 2025-01-15 | 2025-01-16
            3 |       2 |         2 | 2025-01-04  | 2025-01-15 | 2025-01-20
(2 rows)

INSERT 0 1
INSERT 0 1
INSERT 0 1
 borrowing_id | book_id | member_id | borrow_date |  due_date  | returned_date 
--------------+---------+-----------+-------------+------------+---------------
            2 |       1 |         1 | 2025-01-01  | 2025-01-15 | 2025-01-16
            3 |       2 |         2 | 2025-01-04  | 2025-01-15 | 2025-01-20
            4 |       3 |         3 | 2025-04-05  | 2025-06-16 | 2025-04-14
            5 |       4 |         4 | 2025-07-15  | 2025-08-04 | 2025-08-05
            6 |       5 |         5 | 2025-09-01  | 2025-09-05 | 2025-10-07
(5 rows)

 book_id | title | author | publication_year |   genre    
---------+-------+--------+------------------+------------
       1 | book1 | Ayush  | 2004-01-01 BC    | Healthcare
(1 row)

 book_id | title | author | publication_year | genre 
---------+-------+--------+------------------+-------
(0 rows)

 member_id | name | contact_no 
-----------+------+------------
         2 | abay |  987654322
(1 row)

