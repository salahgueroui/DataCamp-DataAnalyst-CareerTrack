-- Exercise
-- Clean up with CTEs

-- Instructions
-- Complete the syntax to declare your CTE.
-- Select the country_id and match id from the match table in your CTE.
-- LEFT JOIN the CTE to the league table using country_id.

-- MY SOLUTION:

-- Set up your CTE
with match_list as (
    SELECT 
  		country_id, 
  		id
    FROM match
    WHERE (home_goal + away_goal) >= 10)
-- Select league name and count of matches from the CTE
SELECT
    l.name AS league,
    COUNT(match_list.id) AS matches
FROM league AS l
-- Join the CTE to the league table using country_id
LEFT JOIN match_list ON l.id = match_list.country_id
GROUP BY l.name;