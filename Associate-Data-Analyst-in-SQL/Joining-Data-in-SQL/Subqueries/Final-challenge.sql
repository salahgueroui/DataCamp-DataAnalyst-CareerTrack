-- Exercise
-- Final challenge

-- Instructions
-- From the cities table, return:
-- the city name, country code,
-- proper population, and metro area population.
-- Also calculate city_perc as:
-- city_proper_pop / metroarea_pop * 100.
-- Include only capital cities by filtering
-- with a subquery on the countries table.
-- Keep only countries in Europe
-- or continents whose name ends with 'America'.
-- Exclude rows where metroarea_pop is NULL.
-- Do not use table aliasing.
-- Order the results by city_perc
-- from largest to smallest.
-- Return only the top 10 rows.

-- MY SOLUTION:

-- Select fields from cities
select name,country_code,city_proper_pop,metroarea_pop,(city_proper_pop / metroarea_pop * 100) as city_perc
from cities
-- Use subquery to filter city name
where name in (select capital
               from countries
               where continent = 'Europe'or continent like '%America')
-- Add filter condition such that metroarea_pop does not have null values
and metroarea_pop is not null
-- Sort and limit the result
order by city_perc desc
limit 10;

