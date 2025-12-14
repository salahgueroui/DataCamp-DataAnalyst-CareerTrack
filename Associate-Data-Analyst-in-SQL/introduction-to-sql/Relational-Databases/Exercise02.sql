-- Exercise
-- Making queries DISTINCT

-- Instructions 1
-- Select only the unique authors from the books table.

-- MY SOLUTION:

SELECT DISTINCT(author)
FROM books;

-- Instructions 2
-- Update the code to return the unique author and genre combinations in the books table.

-- MY SOLUTION:

SELECT DISTINCT (author),genre
FROM books;
