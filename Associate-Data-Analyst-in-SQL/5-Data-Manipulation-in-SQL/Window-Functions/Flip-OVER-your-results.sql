-- Exercise
-- Flip OVER your results

-- Instructions
-- Select the league name and average total goals scored from league and match.
-- Complete the window function to rank each league from highest to lowest average goals scored.
-- ORDER the main query BY the rank you just created.

-- MY SOLUTION:

SELECT 
	-- Select the league name and average goals scored
	l.name AS league,
    avg(m.home_goal + m.away_goal) AS avg_goals,
    -- Rank leagues in descending order by average goals
    rank() over(order by avg(m.home_goal + m.away_goal) desc) AS league_rank
FROM league AS l
LEFT JOIN match AS m 
ON l.id = m.country_id
WHERE m.season = '2011/2012'
GROUP BY l.name
-- Order the query by the rank you created
order by league_rank;