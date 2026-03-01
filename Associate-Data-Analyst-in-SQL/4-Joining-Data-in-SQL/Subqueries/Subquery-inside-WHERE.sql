-- Exercise
-- Subquery inside WHERE

-- Instructions 1
-- Begin by calculating the average life expectancy
-- from the populations table.
-- Filter your answer to use records from 2015 only.

-- MY SOLUTION:

-- Select average life_expectancy from the populations table
Select avg(life_expectancy)
from populations
-- Filter for the year 2015
where year=2015

-- Instructions 2
-- Nest the average life expectancy calculation
-- inside another query.
-- Use this value to filter the populations table
-- for records where life_expectancy is
-- 1.15 times higher than the average.
-- Filter the results for the year 2015 only.

-- MY SOLUTION:

SELECT *
FROM populations
WHERE year = 2015
-- Filter for only those populations where life expectancy is 1.15 times higher than average
  AND life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015);