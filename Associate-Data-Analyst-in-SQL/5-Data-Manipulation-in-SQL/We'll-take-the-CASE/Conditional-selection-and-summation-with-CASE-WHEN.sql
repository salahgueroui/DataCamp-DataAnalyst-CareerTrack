-- Exercise
-- Conditional selection and summation with CASE WHEN

-- Instructions
-- Create a CASE statement to calculate the total number of home goals
-- where hometeam_id is 8560.
-- Create a second CASE statement to calculate the total number of away goals
-- where awayteam_id is 8560, aliasing the column as away_goals.
-- Group the query by season.

-- MY SOLUTION:

SELECT season,
	-- SUM the home goals
    sum(case when hometeam_id = 8560 THEN home_goal END) AS home_goals,
    -- SUM the away goals
    sum(case when awayteam_id = 8560 THEN away_goal END) AS away_goals
FROM match
-- Group the results by season
group by season