-- Exercise
-- Rounding results


-- Instructions
-- Update the query by adding ROUND() around the calculation
-- and round to two decimal places.
-- Round duration_hours to two decimal places
--SELECT title, duration / 60.0 AS duration_hours
--FROM films;

-- MY SOLUTION:

SELECT title,ROUND(( duration / 60.0),2) AS duration_hours
FROM films;