-- Exercise
-- ALL the subqueries EVERYWHERE

-- Instructions
-- Extract the average number of total goals in a SELECT subquery.
-- Calculate the average total goals for the specific stage
-- in the main query.
-- Filter both subqueries and the main query so that only data
-- from the 2012/2013 season is included.
-- GROUP the query by the m.stage column.

-- MY SOLUTION:

SELECT 
	-- Select the stage and average goals for each stage
	m.stage,
    ROUND(avg(m.home_goal + m.away_goal),2) AS avg_goals,
    -- Select the average overall goals for the 2012/2013 season
    ROUND((SELECT avg(home_goal + away_goal) 
           FROM match 
           WHERE season = '2012/2013'),2) AS overall
FROM match AS m
-- Filter for the 2012/2013 season
WHERE season = '2012/2013'
-- Group by stage
GROUP BY stage;