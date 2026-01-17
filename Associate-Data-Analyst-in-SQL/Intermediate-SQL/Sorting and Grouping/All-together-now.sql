-- Exercise
-- All together now


-- Instructions 1
-- Select the release_year from the films table
-- Filter for films released after 1990
-- Group the results by release_year

-- MY SOLUTION:

select release_year
from films
where release_year>1990 
group by release_year

-- Instructions 2
-- Modify the query to include:
--  - the average budget aliased as avg_budget
--  - the average gross aliased as avg_gross

-- MY SOLUTION:

SELECT release_year,avg(budget)as avg_budget,avg(gross)as avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- Instructions 3
-- Modify the query so that only years
-- with an average budget greater than 60 million are included

-- MY SOLUTION:______

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
having avg(budget)>60000000;

-- Instructions 4
-- Order the results by highest average gross
-- Limit the output to one result

-- MY SOLUTION:____

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one____
ORDER BY AVG(gross) DESC
LIMIT 1
