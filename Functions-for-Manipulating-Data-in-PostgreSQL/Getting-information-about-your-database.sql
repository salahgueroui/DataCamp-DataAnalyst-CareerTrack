-- Exercise
-- Getting information about your database

-- Instructions
-- Select all columns from the INFORMATION_SCHEMA.TABLES system database.
-- Limit the results to rows where table_schema is 'public'.

-- MY SOLUTION:

 -- Select all columns from the TABLES system database
 SELECT * 
 FROM INFORMATION_SCHEMA.TABLES
 -- Filter by schema
 WHERE table_schema ='public';

 -- Instructions
-- Select all columns from the INFORMATION_SCHEMA.COLUMNS system database.
-- Limit the results to rows where table_name is 'actor'.

-- MY SOLUTION:

 -- Select all columns from the COLUMNS system database
 SELECT * 
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_name = 'actor';