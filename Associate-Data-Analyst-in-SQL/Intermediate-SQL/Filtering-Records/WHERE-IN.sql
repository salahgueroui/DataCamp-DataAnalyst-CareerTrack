-- Exercise
-- WHERE IN


-- Instructions 1
-- Select the title and release_year of all films released in 1990 or 2000
-- that were longer than two hours.

-- MY SOLUTION:

select title,release_year
from films
where release_year in (1990,2000)
    and duration>120

-- Instructions 2
-- Select the title and language of all films in English, Spanish,
-- or French using IN.

-- MY SOLUTION:

select title,language
from films
where language in ('English','Spanish','French')

-- Instructions 3
-- Select the title, certification, and language of all films certified
-- NC-17 or R that are in English, Italian, or Greek.

-- MY SOLUTION:

select title,certification,language
from films
where certification in ('NC-17','R')
    and language in ('English','Italian','Greek')