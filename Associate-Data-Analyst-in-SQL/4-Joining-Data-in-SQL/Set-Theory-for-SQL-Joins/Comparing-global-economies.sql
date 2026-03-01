-- Exercise
-- Comparing global economies

-- Instructions
-- Begin by selecting all fields from economies2015
-- Create a second query that selects all fields from economies2019
-- Combine the two queries using a set operation that excludes duplicates
-- Order the final result by code and year

-- MY SOLUTION:

-- Select all fields from economies2015
select *
from economies2015
-- Set operation
union
-- Select all fields from economies2019
select *
from economies2019
ORDER BY code, year;