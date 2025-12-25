-- Exercise
-- Using OR


-- Instructions 1
-- Select the title and release_year for films released in 1990 or 1999
-- using only WHERE and OR.

-- MY SOLUTION:

select title,release_year
from films
where release_year=1990
    or release_year=1999


-- Instructions 2
-- Update the query to include only films that were released in 1990 or 1999
-- and were in English or Spanish.

-- MY SOLUTION:

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
 and (language='English' or language='Spanish' );


-- Instructions 3
-- Update the query to include only films that were released in 1990 or 1999,
-- were in English or Spanish, and took in more than $2,000,000 gross.

-- MY SOLUTION:

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
and gross>2000000;