-- Project: Analyzing Students' Mental Health
-- Dataset: students
-- Environment: PostgreSQL
-- Output DataFrame name must remain: df


-- Task:
-- Analyze how length of stay impacts mental health scores
-- for international students.


-- Requirements:
-- 1. Return exactly nine rows and five columns
-- 2. Columns (in this order):
--    - stay
--    - count_int
--    - average_phq
--    - average_scs
--    - average_as
-- 3. Averages must be rounded to two decimal places
-- 4. Only include international students
-- 5. Sort results by stay in descending order


-- MY SOLUTION:
select stay,
	count(*)as count_int,
	round(avg(todep),2)as average_phq,
	round(avg(tosc),2)as average_scs,
	round(avg(toas),2)as average_as
from students
where inter_dom='Inter'
	and stay is not null	
group by stay 
order by stay desc
limit 9
