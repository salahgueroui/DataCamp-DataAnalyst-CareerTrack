-- Exercise
-- The match is OVER

-- Instructions
-- Select the match id, country name, season, home_goal, and away_goal
-- from the match and country tables.
-- Complete the query to calculate the average number of goals scored overall
-- and include the aggregate value in each row using a window function.

-- MY SOLUTION:

SELECT 
	-- Select the match id, country name, season, home, and away goals
	m.id, 
    c.name AS country, 
    m.season,
	m.home_goal,
	m.away_goal,
    -- Use a window to include the aggregate average in each row
	avg(m.home_goal + m.away_goal) over() AS overall_avg
FROM match AS m
LEFT JOIN country AS c ON m.country_id = c.id;