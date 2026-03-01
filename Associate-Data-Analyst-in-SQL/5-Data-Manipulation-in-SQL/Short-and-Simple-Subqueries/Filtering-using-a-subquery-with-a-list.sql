-- Exercise
-- Filtering using a subquery with a list

-- Instructions
-- Create a subquery in the WHERE clause that retrieves
-- all unique hometeam_id values from the match table.
-- Select the team_long_name and team_short_name
-- from the team table.
-- Exclude all values from the subquery in the main query.

-- MY SOLUTION:

SELECT 
	-- Select the team long and short names
	team_long_name,
	team_short_name
FROM team 
-- Exclude all values from the subquery
WHERE team_api_id not in
     (Select DISTINCT hometeam_id  FROM match);