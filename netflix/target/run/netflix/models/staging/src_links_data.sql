
  create or replace   view MOVIELENS.DEV.src_links_data
  
   as (
    with raw_links_data as (
    select * from movielens.raw.raw_links_data
)

select
    movieId as movie_id,
    imdbId as imdb_id,
    tmdbId as tmdb_id
from raw_links_data
  );

