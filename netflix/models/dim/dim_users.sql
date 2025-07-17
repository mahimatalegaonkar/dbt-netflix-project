with ratings as (
    select distinct user_id from {{ ref('src_ratings_data') }}
),

tags as(
    select distinct user_id from {{ ref('src_tags_data')}}
)

select distinct user_id
from (
    select * from ratings
    union
    select * from tags
)