select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select id as from_field
    from "mobile_devices"."main"."ram_by_price"
    where id is not null
),

parent as (
    select id as to_field
    from mobile_device_specs
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test