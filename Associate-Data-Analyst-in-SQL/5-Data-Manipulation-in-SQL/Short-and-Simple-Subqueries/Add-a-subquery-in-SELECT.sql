-- Exercise
-- Add a subquery in SELECT

-- Instructions
-- Create a subquery in SELECT that yields the average total goals
-- scored in the 2012/2013 season and stores it in a column named overall_avg.
-- Create a subquery in FROM that calculates the average total goals
-- scored in each stage during the 2012/2013 season.
-- Filter the main query for stages where the average total goals
-- exceeds the overall average in 2012/2013.

-- MY SOLUTION:

SELECT 
	-- Select the stage and average goals from s
	s.stage,
    ROUND(s.avg_goals,2) AS avg_goal,
    -- Select the overall average for 2012/2013
    (Select avg(home_goal + away_goal) FROM match WHERE season = '2012/2013') AS overall_avg
FROM 
	-- Select the stage and average goals in 2012/2013 from match
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