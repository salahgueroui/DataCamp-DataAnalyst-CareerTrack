-- Exercise
-- Comparing two set operations

-- Instructions 1
-- Perform an appropriate set operation that returns all pairs of
-- country code and year (in that order) from economies and populations,
-- excluding duplicates.
-- Order the results by country code and year.

-- MY SOLUTION:

select code,year
from economies
union 
select country_code,year
from populations
order by code,year 

-- Instructions 2
-- Amend the query to return all combinations (including duplicates)
-- of country code and year in the economies or populations tables.

-- MY SOLUTION:

SELECT code, year
FROM economies
-- Set theory clause
UNION all
SELECT country_code, year
FROM populations
ORDER BY code, year;