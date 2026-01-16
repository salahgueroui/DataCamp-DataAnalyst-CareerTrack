-- Exercise
-- HAVING and sorting

-- Instructions
-- Select a grouping column and an aggregated value
-- Alias the aggregated value
-- Group the results by the grouping column
-- Filter grouped results using HAVING with a threshold
-- Sort the results by the aggregated value in descending order

-- MY SOLUTION:

-- Select the country and average_budget from films
select country,avg(budget)as average_budget
from films
-- Group by country
group by country
-- Filter to countries with an average_budget of more than one billion
having avg(budget)>1000000000
-- Order by descending order of the aggregated budget
order by average_budget desc