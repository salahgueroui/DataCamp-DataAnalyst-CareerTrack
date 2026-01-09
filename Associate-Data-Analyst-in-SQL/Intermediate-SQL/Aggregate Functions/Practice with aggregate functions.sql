-- Exercise
-- Practice with aggregate functions


-- Instructions 1
-- Use the SUM() function to calculate the total duration of all films
-- and alias with total_duration.

-- MY SOLUTION:

select sum(duration)as total_duration
from films

-- Instructions 2
-- Calculate the average duration of all films and alias with average_duration.

-- MY SOLUTION:

select avg(duration)as average_duration
from films

-- Instructions 3
-- Find the most recent release_year in the films table,
-- aliasing as latest_year.

-- MY SOLUTION:

select max(release_year)as latest_year
from films 

-- Instructions 4
-- Find the duration of the shortest film and use the alias shortest_film.

-- MY SOLUTION:
