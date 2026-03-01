-- Exercise
-- Getting started with correlated subqueries

-- Instructions
-- Start the subquery in WHERE by taking the average/mean
-- of the home and away goals.
-- Complete the subquery column references so that country_id
-- is matched in the main and sub tables.

-- MY SOLUTION:

SELECT 
	main.country_id,
    main.date,
    main.home_goal,
    main.away_goal
FROM match AS main
WHERE 
	-- Filter the main query by the subquery
	(home_goal + away_goal) > 
        (SELECT AVG((sub.home_goal + sub.away_goal) * 3)
         FROM match AS sub
         -- Join the main query to the subquery with country_id in WHERE
         WHERE main.country_id = sub.country_id);