
  
    

        create or replace transient table MOVIELENS.DEV.src_ratings_data
         as
        (

with raw_ratings_data as (
    SELECT * FROM movielens.raw.raw_ratings_data
)

select 
    userId as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) AS rating_timestamp
FROM raw_ratings_data
        );
      
  