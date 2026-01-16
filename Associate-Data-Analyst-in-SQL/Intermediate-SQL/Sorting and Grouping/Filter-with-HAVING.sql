-- Exercise
-- Filter with HAVING

-- Instructions
-- Select country from the films table
-- Get the distinct count of certification
-- Alias the count as certification_count
-- Group the results by country
-- Filter results to only include counts greater than 10

-- MY SOLUTION:

-- Select the country and distinct count of certification as certification_count
Select country,count (distinct certification) as certification_count
from films
-- Group by country
group by country
-- Filter results to countries with more than 10 different certifications
having count(distinct certification)>10