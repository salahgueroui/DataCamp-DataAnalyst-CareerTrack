-- Exercise
-- Nest a subquery in FROM

-- Instructions 1/3
-- Generate a list of matches where at least one team scored 5 or more goals.

-- MY SOLUTION:

-- Select matches where a team scored 5+ goals
SELECT
	country_id,
    season,
	id
FROM match
WHERE home_goal >=5 OR away_goal >=5;

-- Exercise
-- Nest a subquery in FROM

-- Instructions 2/3
-- Turn the query from the previous step into a subquery in the FROM statement.
-- COUNT the match table id's generated in the previous step.

-- MY SOLUTION:

-- Count match ids
SELECT
    country_id,
    season,
    count(id) AS matches
-- Set up and alias the subquery
FROM (
	SELECT
    	country_id,
    	season,
    	id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5)
    AS subquery
GROUP BY country_id, season;

-- Exercise
-- Nest a subquery in FROM

-- Instructions 3/3
-- Finally, declare the same query from step 2 as a subquery in FROM with the alias outer_s.
-- Left join it to the country table using the outer query's country_id column.
-- Calculate an AVG of high scoring matches per country in the main query.

-- MY SOLUTION:

SELECT
	c.name AS country,
    -- Calculate the average matches per season
	avg(outer_s.matches) AS avg_seasonal_high_scores
FROM country AS c
-- Left join outer_s to country
left join (
  SELECT country_id, season,
         COUNT(id) AS matches
  FROM (
    SELECT country_id, season, id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) AS inner_s
  -- Close parentheses and alias the subquery
  GROUP BY country_id, season) as outer_s
ON c.id = outer_s.country_id
GROUP BY country;