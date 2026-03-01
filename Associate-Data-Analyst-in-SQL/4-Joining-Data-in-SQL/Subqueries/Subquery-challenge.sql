-- Instructions-----------
-- Select country code, inflation_rate, and unemployment_rate from the economies table.
-- Filter the code field for countries whose gov_form contains the word "Republic" or "Monarchy".

-- MY SOLUTION:-------------

-- Select relevant fields
select code,inflation_rate,unemployment_rate
from economies
WHERE year = 2015 
  AND code IN
-- Subquery returning country codes filtered on gov_form
	(select code
   from countries
   where gov_form like '%Republic%' or gov_form like '%Monarchy%'
  )
ORDER BY inflation_rate;