select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

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



      
    ) dbt_internal_test