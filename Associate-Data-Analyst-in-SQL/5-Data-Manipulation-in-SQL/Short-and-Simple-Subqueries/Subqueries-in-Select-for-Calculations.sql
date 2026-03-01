-- Exercise
-- Subqueries in Select for Calculations

-- Instructions
-- Select the average goals scored in a match for each league
-- in the main query.
-- Select the average goals scored in a match overall
-- for the '2013/2014' season in the subquery.
-- Subtract the subquery from the average number of goals
-- calculated for each league.
-- Filter the main query so that only games from
-- the '2013/2014' season are included.

-- MY SOLUTION:

SELECT
	-- Select the league name and average goals scored
	l.name AS league,
	ROUND(avg(m.home_goal + m.away_goal),2) AS avg_goals,
    -- Subtract the overall average from the league average
	ROUND(AVG(m.home_goal + m.away_goal) - 
		(SELECT avg(home_goal + away_goal)
		 FROM match 
         WHERE season = '2013/2014' ),2) AS diff
FROM league AS l
LEFT JOIN match AS m
ON l.country_id = m.country_id
-- Only include 2013/2014 results
WHERE season = '2013/2014' 
GROUP BY l.name;