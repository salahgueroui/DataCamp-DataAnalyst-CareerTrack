-- Exercise
-- Your first join


-- Instructions 1
-- Select all columns from the cities table
-- Use the SQL shortcut that selects everything

-- MY SOLUTION:

select *
from cities

-- Instructions 2
-- Perform an inner join between cities and countries
-- Join the tables using the country code column

-- MY SOLUTION:

SELECT * 
FROM cities 
-- Inner join to countries
Inner join countries
-- Match on country codes
on cities.country_code = countries.code

-- Instructions 3
-- Select specific columns from both tables
-- Choose the required city and country fields only

-- MY SOLUTION:

SELECT cities.name as city,countries.name as country,countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;