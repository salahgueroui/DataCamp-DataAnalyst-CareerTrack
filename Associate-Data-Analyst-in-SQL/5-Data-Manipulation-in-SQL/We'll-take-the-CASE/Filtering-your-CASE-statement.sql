-- Exercise
-- Filtering your CASE statement

-- Instructions
-- Use the CASE statement in the WHERE clause to filter
-- where hometeam_id is 9857 and home goals exceed away goals.
-- Use the CASE statement in the WHERE clause to filter
-- where awayteam_id is 9857 and away goals exceed home goals.
-- End the CASE statement by excluding games that Bologna did not win.

-- MY SOLUTION:

SELECT 
	season,
    date,
	home_goal,
	away_goal
FROM matches_italy
WHERE 
	-- Find games where home_goal is more than away_goal
	case when hometeam_id = 9857 and home_goal > away_goal then 'Bologna Win'
		-- Find games where away_goal is more than home_goal
        when awayteam_id = 9857 and away_goal > home_goal then 'Bologna Win' 
        -- Exclude games not won by Bologna
		end IS NOT null;