-- Exercise
-- Subquery inside SELECT

-- Instructions 
-- Write a LEFT JOIN with countries on the left
-- and cities on the right, joining on country code.
-- In the SELECT statement, include:
--   - country names as country
--   - the count of cities in each country as cities_num
-- Group by country.
-- Sort by cities_num in descending order
-- and country in ascending order.
-- Limit the result to the first nine records.

-- MY SOLUTION:

-- Find top nine countries with the most cities
SELECT countries.name AS country, COUNT(*) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country
LIMIT 9;

-- Instructions 
-- Rewrite the query to return the same result
-- using a subquery instead of a JOIN.
-- Order the results in the same way
-- and limit to the top nine countries.

-- MY SOLUTION:
