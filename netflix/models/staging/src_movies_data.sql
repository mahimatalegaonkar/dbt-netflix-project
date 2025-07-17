WITH raw_movies_data as (
    select * from {{ source('netflix','r_movies') }}
)
SELECT 
    movieId AS movie_id,
    title,
    genres
FROM raw_movies_data