-- Exercise
-- LIKE and NOT LIKE


-- Instructions 1
-- Select the names of all people whose names begin with 'B'.

-- MY SOLUTION:

select name
from people
where name like 'B%'

-- Instructions 2
-- Select the names of people whose names have 'r' as the second letter.

-- MY SOLUTION:

SELECT name
FROM people
-- Select the names that have r as the second letter
where name like '_r%'

-- Instructions 3
-- Select the names of people whose names don't start with 'A'.

-- MY SOLUTION:

SELECT name
FROM people
-- Select names that don't start with A
where name not like 'A%'