
  
    
    
    create  table prod_mobile_games."best_specs_for_price"
    as
        

SELECT "index",
    mpr.price_range,mpr.ram,
        
    mpr.clock_speed,
        
    mpr.int_memory,
        
    mpr.n_cores
    
FROM prod_mobile_games."mobile_price_rante"  mpr
INNER JOIN prod_mobile_games."price_range_for_specs" prs
ON  mpr.price_range = prs.price_range AND
    
        mpr.ram > prs.avg_ram
        
            AND
        
    
        mpr.clock_speed > prs.avg_clock_speed
        
            AND
        
    
        mpr.int_memory > prs.avg_int_memory
        
            AND
        
    
        mpr.n_cores > prs.avg_n_cores
        
    
WHERE mpr.price_range IS NOT NULL

  