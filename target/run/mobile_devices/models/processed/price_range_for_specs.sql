
  
    
    

    create  table
      "mobile_devices"."main"."price_range_for_specs__dbt_tmp"
  
    as (
      

SELECT price_range,AVG(ram) AS avg_ram,
        
    AVG(clock_speed) AS avg_clock_speed,
        
    AVG(int_memory) AS avg_int_memory,
        
    AVG(n_cores) AS avg_n_cores
    
FROM 'mobile_device_specs'
WHERE price_range IS NOT NULL
GROUP BY price_range
    );
  
  