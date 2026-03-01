-- Exercise
-- Slide to the left

-- Instructions
-- Complete the window function by:
-- Assessing the running total of home goals scored by FC Utrecht.
-- Assessing the running average of home goals scored.
-- Ordering both the running average and running total BY the date.

-- MY SOLUTION:

SELECT 
	date,
	home_goal,
	away_goal,
    -- Create a running total and running average of home goals
    sum(home_goal) over(ORDER BY date 
         ROWS BETWEEN unbounded preceding AND current row) AS running_total,
    avg(home_goal) over(ORDER BY date 
         ROWS BETWEEN unbounded preceding AND current row) AS running_avg
FROM match
WHERE 
	hometeam_id = 9908 
	AND season = '2011/2012';