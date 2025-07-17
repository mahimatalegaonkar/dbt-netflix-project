

with fct_ratings as (
    select * from MOVIELENS.DEV.fct_ratings
),
seed_dates as (
    select * from MOVIELENS.DEV.seed_movie_release_dates
)
select 
    f.*,
    case
        when d.release_date is null then 'unknown'
        else 'known'
    end as release_info_available
from fct_ratings f
left join seed_dates d
on f.movie_id = d.movie_id