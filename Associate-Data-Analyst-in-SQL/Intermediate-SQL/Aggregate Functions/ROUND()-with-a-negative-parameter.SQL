-- Exercise
-- ROUND() with a negative parameter


-- Instructions
-- Calculate the average budget from the films table,
-- alias as avg_budget_thousands, and round to the nearest thousand.

-- MY SOLUTION

SELECT ROUND (AVG(budget),-3) as avg_budget_thousands
from films