
  
    

        create or replace transient table MOVIELENS.DEV.dim_genome_tags
         as
        (with src_tags_data as (
    select * from MOVIELENS.DEV.src_genome_tags_data
)
select
    tag_id,
    INITCAP(TRIM(tag)) as tag_name
from src_tags_data
        );
      
  