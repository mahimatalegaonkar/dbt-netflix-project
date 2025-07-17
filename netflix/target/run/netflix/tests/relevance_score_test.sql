
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- select 
--     movie_id,
--     tag_id,
--     relevance_score
-- from MOVIELENS.DEV.fct_genome_scores
-- where relevance_score <= 0


    select * from MOVIELENS.DEV.fct_genome_scores where
    
        MOVIE_ID IS NULL OR
    
        TAG_ID IS NULL OR
    
        RELEVANCE_SCORE IS NULL OR
    
    FALSE

  
  
      
    ) dbt_internal_test