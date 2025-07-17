

with src_ratings as (
    select * from MOVIELENS.DEV.src_ratings_data
)
select
    user_id,
    movie_id,
    rating,
    rating_timestamp
from src_ratings
where rating is not null


    and rating_timestamp > (select max(rating_timestamp) from MOVIELENS.DEV.fct_ratings)
