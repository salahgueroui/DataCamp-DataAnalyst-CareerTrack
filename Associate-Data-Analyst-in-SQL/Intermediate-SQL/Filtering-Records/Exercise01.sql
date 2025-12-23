-- Exercise
-- Using WHERE with numbers


-- Instructions 1
-- Select the film_id and imdb_score from the reviews table
-- and filter on scores higher than 7.0.

-- MY SOLUTION:

Select film_id,imdb_score
from reviews
where imdb_score>7.0

-- Instructions 2
-- Select the film_id and facebook_likes of the first ten records
-- with less than 1000 likes from the reviews table.

-- MY SOLUTION:----------------

Select film_id,facebook_likes
from reviews
where facebook_likes<1000
limit 10

-- Instructions 3
-- Count how many records have a num_votes of at least 100,000;
-- use the alias films_over_100K_votes.

-- MY SOLUTION:

select count(num_votes)as films_over_100K_votes
from reviews
where num_votes>=100000