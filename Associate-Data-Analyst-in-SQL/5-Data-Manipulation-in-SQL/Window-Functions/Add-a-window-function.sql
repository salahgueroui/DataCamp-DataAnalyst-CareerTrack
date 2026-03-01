-- Exercise
-- Add a window function

-- Instructions
-- Set up the CTEs so that the home and away teams each have a name, ID, and score associated with them.
-- Select the date, home team name, away team name, home goals, and away goals scored in the main query.
-- Rank the matches and order by the difference in scores in descending order.

-- MY SOLUTION:

-- Set up the home team CTE

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
-- Select columns and and rank the matches by goal difference
SELECT DISTINCT
    m.date,
    home.team_long_name AS home_team,
    away.team_long_name AS away_team,
    m.home_goal, m.away_goal,
    rank() over(order by ABS(home_goal - away_goal) desc) as match_rank
-- Join the CTEs onto the match table
FROM match AS m
inner JOIN home ON m.id = home.id
inner JOIN away ON m.id = away.id
WHERE m.season = '2014/2015'
      AND ((home.team_long_name = 'Manchester United' AND home.outcome = 'MU Loss')
      OR (away.team_long_name = 'Manchester United' AND away.outcome = 'MU Loss'));
