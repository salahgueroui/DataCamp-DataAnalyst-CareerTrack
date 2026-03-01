-- Exercise
-- Determining data types

-- Instructions
-- Select the column name and data type
-- from the INFORMATION_SCHEMA.COLUMNS system database.
-- Limit the results to only include the customer table.

-- MY SOLUTION:

-- Get the column name and data type
SELECT
 	column_name,
    data_type

-- From the system database information schema
FROM INFORMATION_SCHEMA.COLUMNS
-- For the customer table
WHERE table_name = 'customer';