-- Exercise
-- This is a LEFT JOIN, right?


-- Instructions:
-- Select the city name, country code, country name, region, and city proper population
-- Use cities AS c1 as the left table
-- Join countries AS c2 as the right table
-- First, perform an INNER JOIN using code
-- Then, change the join to a LEFT JOIN
-- Order the results by code in descending order

-- MY SOLUTION:

SELECT 
    c1.name AS city,
    code,
    c2.name AS country,
    region,
    city_proper_pop
FROM cities AS c1
-- Perform an inner join with cities as c1 and countries as c2 on country code
inner join countries as c2
on c2.code=c1.country_code
ORDER BY code DESC;

---------------------------------------------------------------------

SELECT 
	c1.name AS city, 
    code, 
    c2.name AS country,
    region, 
    city_proper_pop
FROM cities AS c1
-- Join right table (with alias)
left join countries as c2
ON c1.country_code = c2.code
ORDER BY code DESC;