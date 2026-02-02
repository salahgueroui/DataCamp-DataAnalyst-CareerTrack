-- Exercise
-- Comparing joins


-- Instructions 1
-- Perform a FULL JOIN with countries (left) and currencies (right)
-- Filter for the North America region OR NULL country names
-- Order results by region

-- MY SOLUTION:

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
full Join currencies
USING (code)
-- Where region is North America or name is null
WHERE name IS null OR 
       region='North America'
ORDER BY region;

-- Instructions 2
-- Repeat the same query
-- Change the FULL JOIN to a LEFT JOIN with the currencies table
-- Observe how the output changes

-- MY SOLUTION:

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
left join currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

-- Instructions 3
-- Repeat the same query again
-- Perform an INNER JOIN between countries and currencies
-- Compare the result with the FULL JOIN and LEFT JOIN outputs

-- MY SOLUTION:

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
inner join currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;