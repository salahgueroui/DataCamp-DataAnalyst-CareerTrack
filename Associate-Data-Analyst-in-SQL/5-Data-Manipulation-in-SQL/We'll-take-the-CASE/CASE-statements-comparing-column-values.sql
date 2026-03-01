-- Exercise
-- CASE statements comparing column values

-- Instructions
-- Create a CASE statement to identify matches
-- as home wins, home losses, or ties.

-- MY SOLUTION:

SELECT 
	date,
	-- Identify home wins, losses, or ties
	case when home_goal > away_goal then 'Home win!'
        when home_goal < away_goal then 'Home loss :(' 
        else 'Tie' end as outcome
FROM matches_spain;