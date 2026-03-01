-- Exercise
-- Get team names with a subquery

-- Instructions 01
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

-- Exercise
-- Get team names with a subquery

-- Instructions 02
-- Add a second subquery to the FROM statement to get the away team name, changing only the hometeam_id.
-- Left join both subqueries to the match table on the id column.

-- MY SOLUTION:

SELECT
	m.date,
    -- Get the home team name and away team name from the subqueries
    home.hometeam_name,
    away.awayteam_name,
    m.home_goal,
    m.away_goal
FROM match AS m

-- Join the home subquery to the match table
left join (
  SELECT match.id, team.team_long_name AS hometeam_name
  FROM match
  LEFT JOIN team
  ON match.hometeam_id = team.team_api_id) AS home
ON home.id = m.id

-- Join the away subquery to the match table
left join (
  SELECT match.id, team.team_long_name AS awayteam_name
  FROM match
  LEFT JOIN team
  -- Get the away team ID in the subquery
  ON match.awayteam_id = team.team_api_id) AS away
ON away.id = m.id;