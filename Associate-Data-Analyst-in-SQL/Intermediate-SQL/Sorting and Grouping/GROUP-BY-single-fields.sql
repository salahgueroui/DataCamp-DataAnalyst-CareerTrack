
-- Exercise
-- GROUP BY single fields


-- Instructions 1
-- Select the release_year and count of films released in each year
-- alias the count as film_count.

-- MY SOLUTION:

select release_year,count(title) as film_count
from films
group by release_year

-- Instructions 2
-- Select the release_year and average duration
-- alias the average as avg_duration
-- group by release_year.

-- MY SOLUTION:

select release_year,avg(duration)as avg_duration
from films
group by release_year