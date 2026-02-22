-- Exercise
-- Get team names with a subquery

-- Instructions
-- Create a query that left joins team to match in order to get the identity of the home team.
-- This becomes the subquery in the next step.

-- MY SOLUTION:

SELECT 
	m.id, 
    t.team_long_name AS hometeam
-- Left join match and team
FROM match AS m
left join team as t
ON m.hometeam_id = team_api_id;