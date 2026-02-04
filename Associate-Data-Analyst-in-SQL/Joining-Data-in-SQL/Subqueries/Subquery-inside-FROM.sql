-- Exercise
-- Subquery inside FROM


-- Instructions-----------
-- Begin with a query that groups by each country code from the languages table
-- and counts the number of languages spoken in each country as lang_num.
-- In the SELECT statement, return code and lang_num (in that order).

-- MY SOLUTION:-------------

Select code,count(name) as lang_num
from languages
group by code


-- Instructions-----------
-- Select local_name from the countries table,
-- together with the aliased lang_num from the subquery (aliased as sub).
-- Use a WHERE clause to match the code field from countries with the code field from sub.

-- MY SOLUTION:-------------

Select local_name,sub.lang_num
from countries as c,
  (SELECT code, COUNT(*) AS lang_num
  FROM languages
  GROUP BY code) AS sub
-- Where codes match
where c.code = sub.code
ORDER BY lang_num DESC;