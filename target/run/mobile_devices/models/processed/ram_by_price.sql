
  
    
    
    create  table prod_mobile_devices."ram_by_price"
    as
        
SELECT "id",
    price_range / ram AS ram_per_price,
    price_range,
    ram
FROM prod_mobile_devices."mobile_device_specs"
WHERE price_range IS NOT NULL

  