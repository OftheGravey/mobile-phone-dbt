select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        price_range as value_field,
        count(*) as n_records

    from "mobile_devices"."main"."ram_by_price_v1"
    group by price_range

)

select *
from all_values
where value_field not in (
    '0.0','1.0','2.0','3.0'
)



      
    ) dbt_internal_test