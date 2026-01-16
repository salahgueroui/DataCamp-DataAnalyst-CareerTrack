--Exercise

--Answering business questions

--In the real world, every SQL query starts with a business question. Then it is up to you to decide how to write the query that answers the question. Let's try this out.
--Using the films table: which release_year had the most language diversity?
--Take your time to translate this question into code and test your queries in the console.
--"Most language diversity" can be interpreted as COUNT(DISTINCT ___). Now over to you.

--Instructions
--Possible answers
--2005
--1916
--2006
--1990

-- MY SOLUTION:

select release_year,count(distinct (language))as lang_deversity 
from films
group by release_year 
orde/r by lang_deversity desc
limit 1

--2006
