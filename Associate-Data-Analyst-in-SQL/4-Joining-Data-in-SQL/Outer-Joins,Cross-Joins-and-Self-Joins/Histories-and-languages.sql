-- Exercise
-- Histories and languages


-- Instructions
-- Select country name and language name
-- Perform an INNER JOIN between countries (aliased as c) and languages (aliased as l)
-- Join the tables using the code field
-- Filter the results to include only the countries with codes 'PAK' and 'IND'

-- MY SOLUTION:

SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
from countries as c
inner join languages as l
using (code)
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');

-- Instructions 2

-- Change the INNER JOIN to a different type of join
-- Use a CROSS JOIN between countries (aliased as c) and languages (aliased as l)
-- Keep selecting country name and language name
-- Filter the results to include only country codes 'PAK' and 'IND'
-- Observe how the output differs from the INNER JOIN

-- MY SOLUTION:

SELECT c.name AS country, l.name AS language
FROM countries AS c        
-- Perform a cross join to languages (alias as l)
cross join languages as l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');