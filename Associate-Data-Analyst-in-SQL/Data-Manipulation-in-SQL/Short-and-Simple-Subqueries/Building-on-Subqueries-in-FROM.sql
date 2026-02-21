-- Exercise
-- Building on Subqueries in FROM

-- Instructions
-- Complete the subquery inside the FROM clause.
-- Select the country name from the country table,
-- along with the date, the home_goal, the away_goal,
-- and the total_goals columns from the match table.
-- Create a column in the subquery that adds home and away goals,
-- called total_goals.
-- Select the country, date, home_goal, and away_goal
-- in the main query.
-- Filter the main query for games with 10 or more total goals.

-- MY SOLUTION:

SELECT
	-- Select country, date, home, and away goals from the subquery
    country,
    date,
    home_goal,
    away_goal
FROM 
	-- Select country name, date, home_goal, away_goal, and total goals in the subquery
	(SELECT c.name AS country, 
     	    m.date, 
     		m.home_goal, 
     		m.away_goal,
           (m.home_goal + m.away_goal) AS total_goals
    FROM match AS m
    LEFT JOIN country AS c
    ON m.country_id = c.id) AS subq
-- Filter by total goals scored in the main query
WHERE total_goals >= 10;