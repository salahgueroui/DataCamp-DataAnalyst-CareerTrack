-- Exercise
-- Setting up the away team CTE

-- Instructions
-- Complete the CASE statement syntax.
-- Fill out the logical operators identifying each match as a win, loss, or tie for Manchester United.
-- Join the tables on awayteam_id and team_api_id.

-- MY SOLUTION:

SELECT 
	m.id, 
    t.team_long_name,
    -- Identify matches as home/away wins or ties
	case when m.home_goal > m.away_goal then 'MU Loss'
		when m.home_goal < m.away_goal then 'MU Win'
        else 'Tie' end AS outcome
-- Join the match table's awayteam_id to the team table
FROM match AS m
LEFT JOIN team AS t 
ON m.awayteam_id = t.team_api_id
WHERE 
	-- Filter for 2014/2015 and Manchester United as the away team
	m.season = '2014/2015'
	AND t.team_long_name = 'Manchester United';