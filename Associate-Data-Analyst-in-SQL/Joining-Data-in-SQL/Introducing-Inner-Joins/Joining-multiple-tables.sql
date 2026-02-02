-- Exercise
-- Joining multiple tables


-- Instructions 1:
-- Do an INNER JOIN of countries AS c (left) with populations AS p (right)
-- Join on the code column
-- Select the country name and fertility_rate

-- MY SOLUTION:

-- Select relevant fields
select name,fertility_rate
-- Inner join countries and populations, aliased, on code
from countries as c
inner join populations as p
on c.code=p.country_code

-- Instructions 2:
-- Chain an INNER JOIN with the economies table AS e
-- Join on the code column
-- Select year and unemployment_rate from the economies table

-- MY SOLUTION:

-- Select fields
SELECT name, e.year, fertility_rate,unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
inner join economies as e
-- Match on country code
on c.code=e.code;