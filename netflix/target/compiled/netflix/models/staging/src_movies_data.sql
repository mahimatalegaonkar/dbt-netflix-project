WITH raw_movies_data as (
    select * from MOVIELENS.raw.raw_movies_data
)
SELECT 
    movieId AS movie_id,
    title,
    genres
FROM raw_movies_data