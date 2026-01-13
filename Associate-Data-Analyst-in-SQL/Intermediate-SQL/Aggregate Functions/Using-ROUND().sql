-- Exercise
-- Using ROUND()


-- Instructions
-- Calculate the average facebook_likes to one decimal place
-- and assign to the alias avg_facebook_likes.

-- MY SOLUTION:

select round(avg(facebook_likes),1)as avg_facebook_likes
from reviews