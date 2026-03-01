-- Exercise
-- What's OVER here?

-- Instructions
-- SELECT the league name and average total goals scored from league and match.
-- Complete the window function so it calculates the RANK() of average goals scored across all leagues in the database.
-- ORDER the rank OVER the average total of home and away goals scored.

-- MY SOLUTION:

SELECT 
	-- Select the league name and average goals scored
	l.name AS league,
    avg(m.home_goal + m.away_goal) AS avg_goals,
    -- Rank each league over the average goals
    rank() over(order by AVG(m.home_goal + m.away_goal)) AS league_rank
FROM league AS l
LEFT JOIN match AS m 
ON l.id = m.country_id
WHERE m.season = '2011/2012'
GROUP BY l.name
-- Order the query by the rank you created
ORDER BY league_rank;