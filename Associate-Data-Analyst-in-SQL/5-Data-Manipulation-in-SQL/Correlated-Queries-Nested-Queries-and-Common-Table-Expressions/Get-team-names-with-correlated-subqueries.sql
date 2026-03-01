-- Exercise
-- Get team names with correlated subqueries

-- Instructions 01
-- Using a correlated subquery in the SELECT statement,
-- match the team_api_id column from team to the hometeam_id from match.

-- MY SOLUTION:

SELECT
    m.date,
   (SELECT team_long_name
    FROM team AS t
    -- Connect the team's team_api_id to the match's hometeam_id
    WHERE t.team_api_id = m.hometeam_id) AS hometeam
FROM match AS m;

-- Exercise
-- Get team names with correlated subqueries

-- Instructions 02
-- Create a second correlated subquery in SELECT, yielding the away team's name.
-- Select the home_goal and away_goal columns from match in the main query.

-- MY SOLUTION:

SELECT
    m.date,
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.hometeam_id) AS hometeam,
    -- Connect the team to the match table
    (SELECT team_long_name
     FROM team AS t
     WHERE t.team_api_id = m.awayteam_id) AS awayteam,
    -- Select home_goal and away_goal
     home_goal,
     away_goal
FROM match AS m;