
  
    
    
    create  table prod_mobile_devices."price_range_for_specs"
    as
        

SELECT price_range,AVG(ram) AS avg_ram,
        
    AVG(clock_speed) AS avg_clock_speed,
        
    AVG(int_memory) AS avg_int_memory,
        
    AVG(n_cores) AS avg_n_cores
    
FROM prod_mobile_devices."mobile_device_specs"
WHERE price_range IS NOT NULL
GROUP BY price_range

  