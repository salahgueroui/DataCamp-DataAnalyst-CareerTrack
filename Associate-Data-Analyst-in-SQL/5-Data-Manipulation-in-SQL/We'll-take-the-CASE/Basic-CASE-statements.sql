-- Exercise
-- Basic CASE statements

-- Instructions
-- Create a CASE statement that identifies
-- whether a match in Germany included
-- FC Bayern Munich, FC Schalke 04,
-- or 'Other' as the home team.

-- MY SOLUTION:

SELECT 
	case when hometeam_id = 10189 then 'FC Schalke 04'
        when hometeam_id = 9823 then 'FC Bayern Munich'
         ELSE 'Other' END AS home_team,
	COUNT(id) AS total_matches
FROM matches_germany
GROUP BY home_team;