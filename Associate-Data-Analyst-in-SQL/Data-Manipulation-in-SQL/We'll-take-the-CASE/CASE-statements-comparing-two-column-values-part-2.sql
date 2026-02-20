-- Exercise
-- CASE statements comparing two column values part 2

-- Instructions
-- Complete the CASE statement to identify Barcelona's
-- away team games as wins, losses, or ties.
-- Left join the teams_spain table team_api_id column
-- on the matches_spain table hometeam_id column.
-- Filter the query to only include matches where
-- Barcelona (awayteam_id = 8634) was the away team.

-- MY SOLUTION:

SELECT  
	m.date,
	t.team_long_name AS opponent,
	case when m.home_goal < m.away_goal then 'Barcelona win!'
        WHEN m.home_goal > m.away_goal then 'Barcelona loss :(' 
        else 'Tie' end AS outcome
FROM matches_spain AS m
LEFT JOIN teams_spain AS t 
ON m.hometeam_id = t.team_api_id
-- Filter for Barcelona
WHERE m.awayteam_id= 8634;