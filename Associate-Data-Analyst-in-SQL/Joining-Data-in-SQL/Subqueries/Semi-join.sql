-- Exercise
-- Semi join

-- Instructions 1
-- Select country code as a single field from the countries table,
-- filtering for countries in the 'Middle East' region.

-- MY SOLUTION:

Select code
from countries
where region = 'Middle East'

-- Instructions 2
-- Write a second query to SELECT the name of each unique language
-- appearing in the languages table; do not use column aliases here.
-- Order the result set by name in ascending order.

-- MY SOLUTION:

-- Select unique language names
Select distinct(name)
FROM languages
-- Order by the name of the language
order by name;

-- Instructions 3
-- Create a semi join out of the two queries you've written.
-- Use a bracketed subquery to filter the unique languages
-- returned in the first query for only those languages
-- spoken in the 'Middle East'.

-- MY SOLUTION:

SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
where code in
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;