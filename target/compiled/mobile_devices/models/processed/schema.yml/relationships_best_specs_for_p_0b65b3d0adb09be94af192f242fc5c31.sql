
    
    

with child as (
    select id as from_field
    from prod_mobile_devices."best_specs_for_price"
    where id is not null
),

parent as (
    select id as to_field
    from prod_mobile_devices."mobile_device_specs"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


