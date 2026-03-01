-- Exercise
-- INTERSECT

-- Instructions
-- Return all city names that are also country names
-- using a set operation.

-- MY SOLUTION:

select name 
from countries
intersect
select name 
from cities
