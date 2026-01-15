-- Exercise
-- Sorting multiple fields


-- Instructions 1
-- Select the release_year, duration, and title of films
-- ordered by release year and duration, in that order.

-- MY SOLUTION:

select release_year,duration,title
from films
order by release_year,duration

-- Instructions 2
-- Select the certification, release_year, and title from films
-- ordered first by certification (alphabetically)
-- and second by release_year, starting with the most recent year.

-- MY SOLUTION:

Select certification,release_year,title
from films
order by certification,release_year desc