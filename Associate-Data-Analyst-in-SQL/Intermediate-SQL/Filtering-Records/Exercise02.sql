-- Exercise
-- Using WHERE with text


-- Instructions-----------
-- Select and count the language field using the alias count_spanish.
-- Apply a filter to select only Spanish from the language field.

-- MY SOLUTION:-------------

select Count(language)as count_spanish
from films
where language='Spanish';