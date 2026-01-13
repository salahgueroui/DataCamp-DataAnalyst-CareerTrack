-- Exercise
-- Combining aggregate functions with WHERE


-- Instructions 1
-- Use the SUM() function to calculate the total gross for all films
-- made in the year 2000 or later, and use the alias total_gross.

-- MY SOLUTION:

select sum(gross)as total_gross
from films
where release_year>=2000

-- Instructions 2
-- Calculate the average amount grossed by all films whose titles
-- start with the letter 'A' and alias with avg_gross_A.

-- MY SOLUTION:

select avg(gross)as avg_gross_A
from films
where title like 'A%'

-- Instructions 3
-- Calculate the lowest gross film in 1994 and use the alias lowest_gross.

-- MY SOLUTION:

select min (gross)as lowest_gross
from films
where release_year = 1994

-- Instructions 4
-- Calculate the highest gross film between 2000 and 2012, inclusive,
-- and use the alias highest_gross.

-- MY SOLUTION:

select max (gross)as highest_gross
from films
where release_year between 2000 and 2012