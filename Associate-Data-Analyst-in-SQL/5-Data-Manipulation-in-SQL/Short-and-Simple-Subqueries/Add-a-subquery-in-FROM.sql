-- Exercise
-- Add a subquery in FROM

-- Instructions
-- Calculate the average total goals from the match table
-- for each stage in the FROM clause subquery.
-- Add a subquery to the WHERE clause that calculates
-- the overall average total goals.
-- Filter the main query for stages where the average
-- total goals is higher than the overall average.
-- Select the stage and avg_goals columns
-- from the s subquery into the main query.

-- MY SOLUTION:

SELECT 
	-- Select the stage and average goals from the subquery
	s.stage,
	ROUND (s.avg_goals,2) AS avg_goals
FROM 
	-- Select the stage and average goals in 2012/2013
	(SELECT
		 stage,
         avg(home_goal + away_goal) AS avg_goals
	 FROM match
	 WHERE season = '2012/2013'
	 GROUP BY stage) AS s
WHERE 
	-- Filter the main query using the subquery
	s.avg_goals > (SELECT avg(home_goal + away_goal) 
                    FROM match WHERE season = '2012/2013');