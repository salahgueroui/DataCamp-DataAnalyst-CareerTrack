-- Exercise
-- VIEWing your query

-- Instructions 1
-- Create a view called Library_authors.

-- MY SOLUTION:

CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Instructions 2
--Check that the view was created by selecting all columns from library_authors.

-- MY SOLUTION:
