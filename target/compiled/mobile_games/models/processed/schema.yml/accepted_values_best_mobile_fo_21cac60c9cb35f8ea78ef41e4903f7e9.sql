
    
    

with all_values as (

    select
        price_range as value_field,
        count(*) as n_records

    from dev_mobile_games."best_mobile_for_price"
    group by price_range

)

select *
from all_values
where value_field not in (
    '0.0','1.0','2.0','3.0'
)


