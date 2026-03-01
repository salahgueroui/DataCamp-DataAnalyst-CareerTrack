-- Exercise
-- Putting the CTEs together

-- Instructions
-- Declare the home and away CTEs before your main query.
-- Join your CTEs to the match table using a LEFT JOIN.
-- Select the relevant data from the CTEs into the main query.
-- Select the date from match, team names from the CTEs, and home/away goals from match in the main query.

-- MY SOLUTION:

-- Set up the home team CTE
with home as (
  SELECT m.id, t.team_long_name,
	  CASE WHEN m.home_goal > m.away_goal THEN 'MU Win'
		   WHEN m.home_goal < m.away_goal THEN 'MU Loss' 
  		   ELSE 'Tie' END AS outcome
  FROM match AS m
  LEFT JOIN team AS t ON m.hometeam_id = t.team_api_id),
-- Set up the away team CTE
away as (
  SELECT m.id, t.team_long_name,
	  CASE WHEN m.home_goal > m.away_goal THEN 'MU Loss'
		   WHEN m.home_goal < m.away_goal THEN 'MU Win' 
  		   ELSE 'Tie' END AS outcome
  FROM match AS m
  LEFT JOIN team AS t ON m.awayteam_id = t.team_api_id)
-- Select the date, team names and goals
SELECT DISTINCT
    m.date,
    home.team_long_name AS home_team_name,
    away.team_long_name AS away_team_name,
    m.home_goal,
    m.away_goal
-- Join the CTEs onto the match table
FROM match AS m
inner JOIN home ON m.id = home.id
inner JOIN away ON m.id = away.id
WHERE m.season = '2014/2015'
      AND (home.team_long_name = 'Manchester United' 
           OR away.team_long_name = 'Manchester United');