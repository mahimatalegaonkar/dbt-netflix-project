
 
with raw_tags_data as (
    select * from MOVIELENS.raw.raw_tags_data
)

select 
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
from raw_tags_data