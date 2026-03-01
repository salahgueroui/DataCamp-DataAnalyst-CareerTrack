-- Exercise
-- Using CASE and AVG to derive fractions

-- Instructions
-- Within an AVG() function, complete the CASE statement
-- by checking if m.home_goal is not equal to m.away_goal,
-- assigning a value of 0 if this condition is met.
-- Repeat this process to compare home and away goals
-- in '2014/2015', aliasing as ties_2014_2015.

-- MY SOLUTION:

SELECT 
	c.name AS country,
    -- Calculate the fraction of tied games in each season
	avg(case when m.season='2013/2014' AND m.home_goal = m.away_goal THEN 1
			WHEN m.season='2013/2014' AND m.home_goal != m.away_goal THEN 0
			END) AS ties_2013_2014,
	avg(case when m.season='2014/2015' and m.home_goal = m.away_goal then 1
			WHEN m.season='2014/2015' and m.home_goal != m.away_goal THEN 0
			END) AS ties_2014_2015
FROM country AS c
LEFT JOIN matches AS m
ON c.id = m.country_id
GROUP BY country;