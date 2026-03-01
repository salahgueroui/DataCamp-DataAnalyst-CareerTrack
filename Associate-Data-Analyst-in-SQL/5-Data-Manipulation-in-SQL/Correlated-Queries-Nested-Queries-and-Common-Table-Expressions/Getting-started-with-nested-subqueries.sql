-- Exercise
-- Getting started with nested subqueries

-- Instructions
-- Complete a nested subquery to select the country_id
-- for 'England Premier League' from league,
-- which will be used to filter the parent subquery.

-- MY SOLUTION:

SELECT 
    season,
    MAX(home_goal + away_goal) AS max_goals,
    (SELECT MAX(home_goal + away_goal) 
     FROM match 
     WHERE season = main.season
     -- Subquery to get the max goals in an 'England Premier League' match for the same season
     AND country_id IN (select country_id
     from League
     where name='England Premier League')
    ) AS pl_max_goals
FROM match AS main
GROUP BY season;