-- Exercise
-- Sorting single fields


-- Instructions 1
-- Select the name of each person in the people table,
-- sorted alphabetically.

-- MY SOLUTION:

SELECT name
FROM people
ORDER BY name


-- Instructions 2
-- Select the title and duration for every film,
-- from longest duration to shortest.

-- MY SOLUTION:

Select title,duration
from films
ORDER BY duration DESC