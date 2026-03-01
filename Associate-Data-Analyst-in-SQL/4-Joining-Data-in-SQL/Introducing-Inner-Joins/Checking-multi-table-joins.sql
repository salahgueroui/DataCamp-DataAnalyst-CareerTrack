-- Exercise
-- Checking multi-table joins


-- Instructions:
-- Select the country name, year, fertility_rate, and unemployment_rate
-- Join countries AS c with populations AS p on country code
-- Join economies AS e on country code
-- Add an additional join condition so that the join also matches on year
-- Ensure both code AND year match between tables

-- MY SOLUTION:

SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
and p.year=e.year ;