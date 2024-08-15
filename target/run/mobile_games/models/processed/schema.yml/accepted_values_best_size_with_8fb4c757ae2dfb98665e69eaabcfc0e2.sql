select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      
    
    

with all_values as (

    select
        price_range as value_field,
        count(*) as n_records

    from dev_mobile_games."best_size_with_best_specs"
    group by price_range

)

select *
from all_values
where value_field not in (
    '0.0','1.0','2.0','3.0'
)



      
    ) dbt_internal_test