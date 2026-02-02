-- Exercise
-- Inspecting a relationship

-- Instruction 1:
-- Select the country name, aliased as country, from the countries table.

-- MY SOLUTION:

select name as country
from countries

-- Instruction 2:
-- Add an alias for the countries table
-- Perform an INNER JOIN with the languages table (aliased)
-- Join on the code column using the USING keyword
-- Select the country name and the language name (aliased)

-- MY SOLUTION:

-- Select country and language names (aliased)
SELECT c.name AS country,l.name as language
-- From countries (aliased)
FROM countries as c
-- Join to languages (aliased)
inner join languages as l
-- Use code as the joining field with the USING keyword
using (code);

--Instructions 3:
--Add a WHERE clause to find how many countries speak the language 'Bhojpuri'.

-- MY SOLUTION:

-- Select country and language name (aliased)
SELECT c.name AS country, l.name AS language
-- From countries (aliased)
FROM countries AS c
-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING(code)
-- Filter for the Bhojpuri language
where l.name = 'Bhojpuri';