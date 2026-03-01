-- Exercise
-- Filtering using scalar subqueries

-- Instructions
-- Calculate triple the average home + away goals
-- scored across all matches in a subquery.
-- Filter the main query for matches where the total goals
-- (home + away goals) exceed the value in the subquery.

-- MY SOLUTION:

SELECT 
    date,
	home_goal,
	away_goal
FROM matches_2013_2014
-- Filter for matches where total goals is greater than 3x the average
WHERE (home_goal + away_goal) > 
       (SELECT 3 * AVG(home_goal + away_goal)
        FROM matches_2013_2014); 