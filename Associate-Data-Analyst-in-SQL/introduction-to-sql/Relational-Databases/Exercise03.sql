-- Exercise
-- Aliasing

-- Instructions
-- Add an alias to the SQL query to rename the author column to unique_author in the result set.

-- MY SOLUTION:

SELECT DISTINCT author as unique_author
FROM books;
