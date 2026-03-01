-- Exercise
-- Building on your LEFT JOIN


-- Instructions 1
-- Complete the LEFT JOIN with the countries table on the left
-- and the economies table on the right on the code field.
-- Filter the records for the year 2010.

-- MY SOLUTION:

SELECT name, region, gdp_percapita
FROM countries AS c
LEFT JOIN economies AS e
-- Match on code fields
using (code)
-- Filter for the year 2010
where year = 2010;

-- Instructions 2
-- Modify the query to calculate the average GDP per capita
-- by region using AVG().

-- MY SOLUTION:

-- Select region, and average gdp_percapita as avg_gdp

select region,avg(gdp_percapita) as avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by region
GROUP BY region;

-- Instructions 3
-- Order the result set by the average GDP per capita from highest to lowest.
--Return only the first 10 records in your result.

-- MY SOLUTION:

SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
-- Order by descending avg_gdp
order by AVG(gdp_percapita) desc
-- Return only first 10 records
limit 10