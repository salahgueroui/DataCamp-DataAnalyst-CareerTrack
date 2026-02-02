-- Exercise
-- Choosing your join
-- Instructions

-- Complete the join of countries AS c with populations AS p
-- Use an appropriate join condition on the country code
-- Filter the results to include only records from the year 2010
-- Sort the results by life expectancy (life_exp) in ascending order
-- Limit the output to five countries

-- MY SOLUTION:

SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
inner join populations as p
ON c.code = p.country_code
-- Filter for only results in the year 2010
where p.year = 2010
-- Sort by life_exp
order by life_exp
-- Limit to five records
limit 5;