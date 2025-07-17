with ratings as (
    select distinct user_id from MOVIELENS.DEV.src_ratings_data
),

tags as(
    select distinct user_id from MOVIELENS.DEV.src_tags_data
)

select distinct user_id
from (
    select * from ratings
    union
    select * from tags
)