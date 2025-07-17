with raw_genome_tags_data as (
     select * from MOVIELENS.raw.raw_genome_tags_data
)
select 
    tagId as tag_id,
    tag
from raw_genome_tags_data