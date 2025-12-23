-- Exercise
-- Using AND


-- Instructions 1
-- Select the title and release_year for all German-language films
-- released before 2000.

-- MY SOLUTION:

select title,release_year
from films
where language = 'German'
    and release_year < 2000 ;

-- Instructions 2
-- Update the query from the previous step to show German-language films
-- released after 2000 rather than before.

-- MY SOLUTION:

SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';

-- Instructions 3
-- Select all details for German-language films released after 2000
-- but before 2010 using only WHERE and AND.

-- MY SOLUTION:
