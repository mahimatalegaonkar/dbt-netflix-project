with raw_genome_tags_data as (
     select * from {{ source('netflix','r_genome_tags') }}
)
select 
    tagId as tag_id,
    tag
from raw_genome_tags_data