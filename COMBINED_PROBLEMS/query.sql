Problem: A table stores customer addresses. You need to create a trigger that updates the state_name column based on the state_code whenever the state_code is updated. The state_code to state_name mapping is stored in a separate lookup table.
Solution: Combine a trigger with a JOIN operation to retrieve the corresponding state_name from the lookup table and update the state_name column in the customer addresses table.

Query:  CREATE TABLE state_lookup (
          state_code VARCHAR(10) PRIMARY KEY,
          state_name VARCHAR(100) NOT NULL
        );

Output:
CREATE TABLE

                     Table "public.state_lookup"
   Column   |          Type          | Collation | Nullable | Default 
------------+------------------------+-----------+----------+---------
 state_code | character varying(10)  |           | not null | 
 state_name | character varying(100) |           | not null | 
Indexes:
    "state_lookup_pkey" PRIMARY KEY, btree (state_code)
CREATE TABLE
QUERY:
INSERT INTO customer_addresses (customer_id, address, state_code, state_name)
VALUES
(1, '123 Elm St', 'CA', 'California'),
(2, '456 Oak St', 'NY', 'New York');

INSERT 0 4
CREATE FUNCTION


QUERY:
CREATE OR REPLACE FUNCTION update_state_name()
RETURNS TRIGGER AS $$
BEGIN
    -- Update the state_name column based on the state_code using a JOIN with the state_lookup table
    UPDATE customer_addresses
    SET state_name = (SELECT state_name
                      FROM state_lookup
                      WHERE state_lookup.state_code = NEW.state_code)
    WHERE customer_addresses.customer_id = NEW.customer_id;

    -- Return the updated row
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE
INSERT 0 2
CREATE FUNCTION
CREATE TRIGGER
UPDATE 1
 customer_id |  address   | state_code | state_name 
-------------+------------+------------+------------
           2 | 456 Oak St | NY         | New York
           1 | 123 Elm St | TX         | Texas
(2 rows)
QUERY:
UPDATE customer_addresses
SET state_code = 'UP'
WHERE customer_id = 1;


UPDATE 1
 customer_id |  address   | state_code | state_name 
-------------+------------+------------+------------
           2 | 456 Oak St | NY         | New York
           1 | 123 Elm St | UP         | 
(2 rows)



