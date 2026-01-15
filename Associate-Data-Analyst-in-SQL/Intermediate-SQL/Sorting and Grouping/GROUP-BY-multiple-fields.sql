-- Exercise
-- GROUP BY multiple fields


-- Instructions
-- Select the release_year, country, and the maximum budget
-- Alias the maximum budget as max_budget
-- Group by release_year and country
-- Order results by release_year and country

-- MY SOLUTION:

select release_year,country,max(budget) as max_budget
from films
group by release_year,country
order by release_year


