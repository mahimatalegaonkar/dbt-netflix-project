
  create or replace   view MOVIELENS.DEV.src_genome_score_data
  
   as (
    with raw_genome_scores as (
    select * from movielens.raw.raw_genome_scores_data
)
select
    movieId as movie_id,
    tagId as tag_id,
    relevance
from raw_genome_scores
  );

