-- Exercise
-- Filtering with more complex subquery conditions

-- Instructions
-- Create a subquery in the WHERE clause that retrieves
-- all hometeam_ID values from match
-- with a home_goal score greater than or equal to 8.
-- Select the team_long_name and team_short_name
-- from the team table.
-- Include all values from the subquery in the main query.

-- MY SOLUTION:

SELECT
	-- Select the team long and short names
	team_long_name,
	team_short_name
FROM team
-- Subquery to filter for teams with 8 or more home goals
WHERE team_api_id in
	  (SELECT hometeam_id 
       FROM match
       WHERE home_goal >= 8);