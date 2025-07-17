{{
    config(materialized='table')
}}

with raw_ratings_data as (
    select * from {{ source('netflix','r_ratings') }}
)

select 
    userId as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
FROM raw_ratings_data