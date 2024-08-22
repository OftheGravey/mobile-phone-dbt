
  
    
    

    create  table
      "mobile_devices"."main"."ram_by_price__dbt_tmp"
  
    as (
      
SELECT "id",
    price_range / ram AS ram_per_price,
    price_range,
    ram
FROM 'mobile_device_specs'
WHERE price_range IS NOT NULL
    );
  
  