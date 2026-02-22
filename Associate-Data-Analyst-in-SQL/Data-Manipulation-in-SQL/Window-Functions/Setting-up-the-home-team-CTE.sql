-- Exercise
-- Setting up the home team CTE

-- Instructions
-- Create a CASE statement that identifies each match as a win, lose, or tie for 'Manchester United'.
-- Fill out the logical operators for each WHEN clause in the CASE statement (greater than, less than, equals).
-- Join the tables on hometeam_id from match, and team_api_id from team.
-- Filter the query to only include games from the '2014/2015' season where 'Manchester United' was the home team.

-- MY SOLUTION:

SELECT 
	m.id, 
    t.team_long_name,
    -- Identify matches as home/away wins or ties
	case when m.home_goal > m.away_goal then 'MU Win'
		when m.home_goal < m.away_goal then 'MU Loss'
        else 'Tie' end AS outcome
FROM match AS m
-- Left join team on the hometeam_ID and team_API_id
LEFT JOIN team AS t 
ON m.hometeam_id = t.team_api_id
WHERE 
	-- Filter for 2014/2015 and Manchester United as the home team
	m.season = '2014/2015'
	AND t.team_long_name ='Manchester United' ;