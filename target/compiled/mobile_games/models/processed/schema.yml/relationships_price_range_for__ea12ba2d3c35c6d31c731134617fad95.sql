
    
    

with child as (
    select index as from_field
    from dev_mobile_games."price_range_for_specs"
    where index is not null
),

parent as (
    select index as to_field
    from dev_mobile_games."mobile_price_rante"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


