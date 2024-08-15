
  
    
    
    create  table dev_mobile_games."price_range_for_specs"
    as
        

SELECT price_range,
    AVG(ram) avg_ram,
    AVG(clock_speed) avg_clock_speed,
    AVG(int_memory) avg_int_memory,
    AVG(n_cores) avg_n_cores, 
    AVG(px_height) avg_px_height,
    AVG(px_width) avg_px_width
FROM dev_mobile_games."mobile_price_rante"
WHERE price_range IS NOT NULL
GROUP BY price_range

  