-- Exercise
-- Correlated subquery with multiple conditions

-- Instructions
-- Complete the subquery to select the matches
-- with the highest number of total goals.
-- Match the subquery to the main query using
-- the country_id and season columns in both tables.

-- MY SOLUTION:

SELECT 
	main.country_id,
    main.date,
    main.home_goal,
    main.away_goal
FROM match AS main
WHERE 
	-- Filter for matches with the maximum number of total goals scored
	(home_goal + away_goal) = 
        (SELECT max(sub.home_goal + sub.away_goal)
         FROM match AS sub
         -- Join the main query to the subquery in WHERE
         WHERE main.country_id = sub.country_id
               AND main.season = sub.season);