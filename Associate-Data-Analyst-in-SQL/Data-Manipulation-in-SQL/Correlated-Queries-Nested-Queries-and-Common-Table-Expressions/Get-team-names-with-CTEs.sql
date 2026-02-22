-- Exercise
-- Get team names with CTEs

-- Instructions 1/3
-- Select id from match and team_long_name from team.
-- Join these two tables together on hometeam_id in match
-- and team_api_id in team.

--MY SOLUTION--

SELECT 
	-- Select match id and team long name
    m.id, 
    team_long_name AS hometeam
FROM match AS m
-- Join team to match using team_api_id and hometeam_id
LEFT JOIN team AS t 
ON m.hometeam_id = t.team_api_id;

-- Exercise
-- Get team names with CTEs

-- Instructions 2/3
-- Declare the query from the previous step as a common table expression.
-- SELECT everything from the CTE into the main query.
-- Your results will not change at this step.

-- MY SOLUTION:

-- Declare the home CTE
WITH home AS (
	SELECT m.id, t.team_long_name AS hometeam
	FROM match AS m
	LEFT JOIN team AS t 
	ON m.hometeam_id = t.team_api_id)
-- Select everything from home
SELECT *
FROM home;

-- Exercise
-- Get team names with CTEs

-- Instructions 3/3
-- Declare the second CTE, away. Join it to the first CTE on the id column.
-- The date, home_goal, and away_goal columns have been added to the CTEs.
-- SELECT them into the main query.

-- MY SOLUTION:

WITH home AS (
  SELECT m.id, m.date, 
  		 t.team_long_name AS hometeam, m.home_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.hometeam_id = t.team_api_id),
-- Declare and set up the away CTE
away AS (
  SELECT m.id, m.date, 
  		 t.team_long_name AS awayteam, m.away_goal
  FROM match AS m
  LEFT JOIN team AS t 
  ON m.awayteam_id = t.team_api_id)
-- Select date, home_goal, and away_goal
SELECT 
	home.date,
    home.hometeam,
    away.awayteam,
    home.home_goal,
    away.away_goal
-- Join away and home on the id column
FROM home
INNER JOIN away
ON home.id = away.id;