-- Exercise
-- Joining with aliased tables
-- Instructions:
-- Select fields using table aliases
-- Join the countries table (aliased as c) with the economies table (aliased as e)
-- Use an INNER JOIN
-- Match the tables using the code column (do NOT use USING)
-- Select the following columns in order:
--   - code from countries (aliased as country_code)
--   - name
--   - year
--   - inflation_rate

-- MY SOLUTION:

-- Select fields with aliases
select c.code as country_code ,name,year,inflation_rate
FROM countries AS c
-- Join to economies (alias e)
inner join economies AS e
-- Match on code field using table aliases
on c.code=e.code