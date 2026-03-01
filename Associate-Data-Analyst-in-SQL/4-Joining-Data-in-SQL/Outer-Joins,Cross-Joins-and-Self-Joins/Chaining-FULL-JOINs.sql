-- Exercise
-- Chaining FULL JOINs


-- Instructions
-- Select country name, region, language name, and currency fields
-- Start from countries table (aliased as c1)
-- Perform a FULL JOIN with languages (aliased as l) using code
-- Chain another FULL JOIN with currencies (aliased as c2) using code
-- Filter results for regions ending with 'esia'

-- MY SOLUTION:

SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
Full join languages as l
using(code)
-- Full join with currencies (alias as c2)
full join currencies as c2
using(code)
WHERE region LIKE 'M%esia';