-- Exercise
-- In CASE of rivalry

-- Instructions
-- Construct the CASE statement identifying who won each match.
-- Fill in the operators to identify Barcelona or Real Madrid as the winner.

-- MY SOLUTION:

SELECT 
	date,
	CASE WHEN hometeam_id = 8634 THEN 'FC Barcelona' 
         ELSE 'Real Madrid CF' END as home,
	CASE WHEN awayteam_id = 8634 THEN 'FC Barcelona' 
         ELSE 'Real Madrid CF' END as away,
	-- Identify possible home match outcomes
	case when home_goal > away_goal and hometeam_id = 8634 THEN 'Barcelona win!'
        WHEN home_goal < away_goal and awayteam_id = 8633 THEN 'Real Madrid win!'
        ELSE 'Tie!' end as outcome
FROM matches_spain
WHERE hometeam_id = 8634 AND awayteam_id = 8633;