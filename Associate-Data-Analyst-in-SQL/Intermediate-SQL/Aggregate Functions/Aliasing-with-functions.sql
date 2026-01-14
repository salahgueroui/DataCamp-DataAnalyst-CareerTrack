-- Exercise
-- Aliasing with functions


-- Instructions 1
-- Select the title and duration in hours for all films and alias as duration_hours.
-- Since the current durations are in minutes, you'll need to divide duration by 60.0.

-- MY SOLUTION:

SELECT title,(duration/60.0) as duration_hours
FROM films;

-- Instructions 2
-- Calculate the percentage of people who are no longer alive
-- and alias the result as percentage_dead.

-- MY SOLUTION:

SELECT ((count(deathdate)) * 100.0 / count (name)) AS percentage_dead
FROM people;


-- Instructions 3
-- Find how many decades (period of ten years) the films table covers
-- by using MIN() and MAX(); alias as number_of_decades.

-- MY SOLUTION:

SELECT (max(release_year)-min(release_year)) / 10.0 AS number_of_decades
FROM films;