with raw_links_data as (
    select * from MOVIELENS.raw.raw_links_data
)

select
    movieId as movie_id,
    imdbId as imdb_id,
    tmdbId as tmdb_id
from raw_links_data