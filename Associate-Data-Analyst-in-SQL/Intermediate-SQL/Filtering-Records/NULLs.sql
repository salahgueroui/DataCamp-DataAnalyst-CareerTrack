-- Exercise
-- Practice with NULLs


-- Instructions 1
-- Select the title of every film that doesn't have a budget associated with it
-- and use the alias no_budget_info.

-- MY SOLUTION:

select title as no_budget_info
from films
where budget is null

-- Instructions 2
-- Count the number of films with a language associated with them
-- and use the alias count_language_known.

-- MY SOLUTION:

select  count (language) as count_language_known
from films
--where language is not null