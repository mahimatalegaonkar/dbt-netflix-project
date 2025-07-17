
  
    

        create or replace transient table MOVIELENS.DEV.fct_genome_scores
         as
        (with src_scores as (
    select * from MOVIELENS.DEV.src_genome_score_data
)
select 
    movie_id,
    tag_id,
    ROUND(relevance, 4) as relevance_score
from src_scores
where relevance_score > 0
        );
      
  