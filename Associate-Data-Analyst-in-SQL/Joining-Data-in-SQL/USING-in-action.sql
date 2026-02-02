-- Exercise
-- USING in action

-- Instruction:
-- Use the country code field to complete the INNER JOIN with USING
-- Do not change any alias names

-- MY SOLUTION:

SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
using (code)