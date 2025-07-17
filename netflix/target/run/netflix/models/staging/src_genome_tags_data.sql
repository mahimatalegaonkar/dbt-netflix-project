
  create or replace   view MOVIELENS.DEV.src_genome_tags_data
  
   as (
    with raw_genome_tags_data as (
    select * from movielens.raw.raw_genome_tags_data
)
select 
    tagId as tag_id,
    tag
from raw_genome_tags_data
  );

