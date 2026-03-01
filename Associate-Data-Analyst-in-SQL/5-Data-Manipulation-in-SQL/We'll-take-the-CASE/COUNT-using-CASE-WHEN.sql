-- Exercise
-- COUNT using CASE WHEN

-- Instructions
-- Create a CASE WHEN statement counting the matches
-- played in the '2012/2013' season.
-- Create a CASE WHEN statement counting the matches
-- played in the '2013/2014' season,
-- aliasing as matches_2013_2014.

-- MY SOLUTION:

SELECT 
	c.name AS country,
    -- Count matches in 2012/2013
	count(case when m.season = '2012/2013' then m.id END) AS matches_2012_2013,
    -- Count matches in 2013/2014
	count(case when m.season = '2013/2014' then m.id end) AS matches_2013_2014
FROM country AS c
LEFT JOIN match AS m
ON c.id = m.country_id
GROUP BY country;