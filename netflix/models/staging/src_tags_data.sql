{{
    config(materialized='table')
}}
 
with raw_tags_data as (
    select * from {{ source('netflix','r_tags') }}
)

select 
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) AS tag_timestamp
from raw_tags_data