-- Exercise
-- You've got it, EXCEPT...

-- Instructions
-- Return all cities that do not have the same name as a country.
-- Order the results by name.

-- MY SOLUTION:

select name
from cities
except
select name 
from countries
ORDER BY name;