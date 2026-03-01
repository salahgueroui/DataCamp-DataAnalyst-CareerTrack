-- Exercise
-- Comparing a country to itself
-- Instructions

-- Perform an INNER JOIN of the populations table with itself
-- Alias the first instance of populations as p1
-- Alias the second instance of populations as p2
-- Join the tables using the country_code field
-- Select country_code from p1
-- Select the size field from p1 and p2
-- Alias p1.size as size2010
-- Alias p2.size as size2015
-- Keep the selected columns in this exact order

-- MY SOLUTION:

-- Select aliased fields from populations as p1
select p1.country_code,p1.size as size2010,p2.size as size2015
from populations as p1
-- Join populations as p1 to itself, alias as p2, on country code
inner join populations as p2
using (country_code)

-- Instructions
-- Extend the WHERE clause to compare records from two different years
-- Keep only records where p1.year is five years before p2.year
-- This allows comparing population size in 2010 with population size in 2015
-- Do not change table aliases (p1 and p2)
-- Do not change selected columns

-- MY SOLUTION:

SELECT
    p1.country_code,
    p1.size AS size2010,
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
  AND p1.year = (p2.year - 5);
