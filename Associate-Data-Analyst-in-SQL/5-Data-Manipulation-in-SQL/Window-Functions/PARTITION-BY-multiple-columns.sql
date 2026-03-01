-- Exercise
-- PARTITION BY multiple columns

-- Instructions
-- Construct two window functions partitioning the average of home and away goals by season and month.
-- Filter the dataset by Legia Warszawa's team ID (8673) so that the window calculation only includes matches involving them.

-- MY SOLUTION:

SELECT 
	date,
	season,
	home_goal,
	away_goal,
	CASE WHEN hometeam_id = 8673 THEN 'home' 
         ELSE 'away' END AS warsaw_location,
	-- Calculate average goals partitioned by season and month
    avg(home_goal) over(partition by season, 
         	EXTRACT(month FROM date)) AS season_mo_home,
    avg(away_goal) over(partition by season, 
         	EXTRACT(month FROM date)) AS season_mo_away
FROM match
WHERE 
	hometeam_id = 8673
    OR awayteam_id = 8673
ORDER BY (home_goal + away_goal) DESC;