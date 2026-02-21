-- Exercise
-- Joining Subqueries in FROM

-- Instructions 01
-- Create the subquery to be used in the next step,
-- which selects the country ID and match ID (id)
-- from the match table.
-- Filter the query for matches with greater than
-- or equal to 10 goals.

-- MY SOLUTION:

SELECT 
	-- Select the country ID and match ID
	country_id, 
    ID
FROM match
-- Filter for matches with 10 or more goals in total
WHERE (home_goal + away_goal) >= 10;

-- Exercise
-- Joining Subqueries in FROM

-- Instructions 02
-- Construct a subquery that selects only matches
-- with 10 or more total goals.
-- INNER JOIN the subquery onto country in the main query.
-- Select name from country and COUNT() the id
-- column from match.

-- MY SOLUTION:

SELECT
	-- Select country name and the count match IDs
    c.name AS country_name,
    COUNT(sub.id) AS matches
FROM country AS c
-- Inner join the subquery onto country
-- Select the country id and match id columns
inner join (SELECT country_id, id 
           FROM match
           -- Filter the subquery by matches with 10+ goals
           WHERE (home_goal + away_goal) >= 10) AS sub
ON c.id = sub.country_id
GROUP BY country_name;
