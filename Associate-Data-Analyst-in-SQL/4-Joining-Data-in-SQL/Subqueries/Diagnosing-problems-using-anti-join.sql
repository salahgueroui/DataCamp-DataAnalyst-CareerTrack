-- Exercise
-- Diagnosing problems using anti join

-- Instructions 1
-- Begin by writing a query to return the code and name
-- (in this order, not aliased) for all countries
-- in the continent of Oceania from the countries table.
-- Observe the number of records returned and compare
-- this with the provided INNER JOIN, which returns 15 records.

-- MY SOLUTION:

Select code,name 
from countries
where continent='Oceania'

-- Instructions 2
-- Now, build on your query to complete your anti join
-- by adding an additional filter to return every country
-- code that is not included in the currencies table.

-- MY SOLUTION:

SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
  and code not in
    (SELECT code
    FROM currencies);