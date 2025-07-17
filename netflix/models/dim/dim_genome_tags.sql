with src_tags_data as (
    select * from {{ ref('src_genome_tags_data') }}
)
select
    tag_id,
    INITCAP(TRIM(tag)) as tag_name
from src_tags_data