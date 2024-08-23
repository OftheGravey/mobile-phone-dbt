
  
    
    

    create  table
      "mobile_devices"."main"."ram_by_price_v2__dbt_tmp"
  
    as (
      
SELECT
    id,
    price_range,
    price_range / ram AS ram_per_price
FROM mobile_device_specs
WHERE price_range IS NOT NULL
    );
  
  