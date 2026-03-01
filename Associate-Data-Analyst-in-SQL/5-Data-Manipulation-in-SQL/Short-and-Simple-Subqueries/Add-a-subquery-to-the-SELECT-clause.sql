-- Exercise
-- Add a subquery to the SELECT clause

-- Instructions
-- In the subquery, select the average total goals by adding
-- home_goal and away_goal.
-- Filter the subquery so only the '2013/2014' season is calculated.
-- In the main query, select the average total goals by adding
-- home_goal and away_goal.
-- Filter the main query the same way as the subquery.
-- GROUP the query BY the league name.

-- MY SOLUTION:

SELECT 
	l.name AS league,
    -- Round the average of the league's total goals
    ROUND(avg(m.home_goal + m.away_goal), 2) AS avg_goals,
    -- Select and round the average total goals for the season
    (SELECT ROUND(avg(home_goal + away_goal), 2) 
     FROM match
     WHERE season = '2013/2014') AS overall_avg
FROM league AS l
LEFT JOIN match AS m
ON l.country_id = m.country_id
-- Filter for the 2013/2014 season
WHERE season = '2013/2014'
GROUP BY l.name;