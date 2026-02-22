-- Exercise
-- PARTITION BY a column

-- Instructions
-- Complete the two window functions that calculate the home and away goal averages.
-- PARTITION the window functions BY season to calculate separate averages for each season.
-- Filter the query to only include matches played by Legia Warszawa, id = 8673.

-- MY SOLUTION:

SELECT
	date,
	season,
	home_goal,
	away_goal,
	CASE WHEN hometeam_id = 8673 THEN 'home' 
		 ELSE 'away' END AS warsaw_location,
    -- Calculate separately the average home and away goals scored, partitioned by season
    avg(home_goal) over(partition by season) AS season_homeavg,
    avg(away_goal) over(partition by season) AS season_awayavg
FROM match
-- Filter the data set for Legia Warszawa (id 8673) matches only
WHERE 
	hometeam_id = 8673 
    OR awayteam_id = 8673
ORDER BY (home_goal + away_goal) DESC;