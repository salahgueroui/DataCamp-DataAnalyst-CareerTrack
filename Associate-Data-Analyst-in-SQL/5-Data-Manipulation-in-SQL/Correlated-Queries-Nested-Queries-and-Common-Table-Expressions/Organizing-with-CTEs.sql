-- Exercise
-- Organizing with CTEs

-- Instructions
-- Declare your CTE, where you create a list of all matches with the league name.
-- Select the league, date, home, and away goals from the CTE.
-- Filter the main query for matches with 10 or more goals.

-- MY SOLUTION:

-- Set up your CTE
with match_list as (
  -- Select the league name, date, home, and away goals
    SELECT 
  		l.name AS league, 
     	date, 
  		m.home_goal, 
  		m.away_goal,
       (m.home_goal + m.away_goal) AS total_goals
    FROM match AS m
    LEFT JOIN league as l ON m.country_id = l.id)
-- Select the league, date, home, and away goals from the CTE
SELECT match_list.league, date,match_list.home_goal, match_list.away_goal
FROM match_list
-- Filter by total goals
WHERE total_goals >=10;