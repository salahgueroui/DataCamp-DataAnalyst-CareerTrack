-- Exercise
-- WHERE do people live?

-- Instructions
-- Return the name, country_code, and urbanarea_pop
-- from the cities table.
-- Include only capital cities by filtering
-- using a subquery on the countries table.
-- Do not alias the selected columns.
-- Order the results by urbanarea_pop
-- from largest to smallest.

-- MY SOLUTION:

-- Select relevant fields from cities table
select name,country_code,urbanarea_pop
from cities
-- Filter using a subquery on the countries table
where name in(select capital
              from countries)
ORDER BY urbanarea_pop DESC;