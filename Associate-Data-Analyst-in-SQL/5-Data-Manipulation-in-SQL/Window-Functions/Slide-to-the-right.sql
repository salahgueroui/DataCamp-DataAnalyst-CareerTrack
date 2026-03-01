-- Exercise
-- Slide to the right

-- Instructions
-- Complete the window function by:
-- Assessing the running total of away goals scored by FC Utrecht.
-- Assessing the running average of away goals scored.
-- Ordering both the running average and running total BY date descending.

-- MY SOLUTION:

SELECT
    -- Select the date and away goals
    date,
    away_goal,
    -- Create a running total sum and running average of away goals
    sum(away_goal) over(ORDER BY date DESC
         ROWS BETWEEN current row AND unbounded following) AS running_total,
    avg(away_goal) over(ORDER BY date DESC
         ROWS BETWEEN current row AND unbounded following) AS running_avg
FROM match
WHERE 
	awayteam_id = 9908 
    AND season = '2011/2012';