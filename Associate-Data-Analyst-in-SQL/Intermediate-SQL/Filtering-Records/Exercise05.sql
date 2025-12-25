-- Exercise
-- Using BETWEEN


-- Instructions 1
-- Select the title and release_year of all films released between
-- 1990 and 2000 (inclusive) using BETWEEN.

-- MY SOLUTION:

select title,release_year
from films
where release_year between 1990 and 2000

-- Instructions 2
-- Update the query to include only Spanish-language films.

-- MY SOLUTION:

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
and budget>100000000
;

-- Instructions 3
-- Update the query to include only films with budgets over $100 million.

-- MY SOLUTION:

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Restrict the query to only Spanish-language films
and language='Spanish';

-- Instructions 4
-- Combine all filters to get Spanish-language films released between
-- 1990 and 2000 (inclusive) with budgets over $100 million.

-- MY SOLUTION:
