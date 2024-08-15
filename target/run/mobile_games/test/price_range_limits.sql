select
      count(*) as failures,
      case when count(*) != 0
        then 'true' else 'false' end as should_warn,
      case when count(*) != 0
        then 'true' else 'false' end as should_error
    from (
      SELECT price_range
FROM dev_mobile_games."ram_by_price"
WHERE price_range < 0 or price_range > 3
      
    ) dbt_internal_test