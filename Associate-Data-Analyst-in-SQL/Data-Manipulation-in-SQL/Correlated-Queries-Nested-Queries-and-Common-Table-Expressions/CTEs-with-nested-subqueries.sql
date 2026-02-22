-- Exercise
-- CTEs with nested subqueries

-- Instructions
-- Declare a CTE that calculates the total goals from matches in August of the '2013/2014' season.
-- Filter the list on the inner subquery to only select matches in August of the '2013/2014' season.
-- LEFT JOIN the CTE onto the league table using country_id from the match_list CTE.

-- MY SOLUTION:

-- Set up your CTE
with match_list as (
    SELECT 
  		country_id,
  	   (home_goal + away_goal) AS goals
    FROM match
  	-- Create a list of match IDs to filter data in the CTE
    WHERE id IN ( 
       SELECT id
       FROM match
       WHERE season = '2013/2014' AND EXTRACT(MONTH FROM date) = 08))
-- Select the league name and average of goals in the CTE
SELECT 
	l.name,
    avg(match_list.goals)
FROM league AS l
-- Join the CTE onto the league table using country_id
LEFT JOIN match_list ON l.id = match_list.country_id
GROUP BY l.name;